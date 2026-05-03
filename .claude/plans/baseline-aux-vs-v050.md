# Baseline — `censoBR_aux_Dados` vs v0.5.0 (Fase 0.2 do plano revisado)

**Status:** CONCLUÍDO
**Data:** 2026-05-02
**Plano-pai:** `~/.claude/plans/2026-05-02_plano-revisado-pipeline-completo.md`
**Pergunta da Fase 0.2:** os parquets em `censoBR_aux_Dados/<ano>/microdados da amostra/` são **raw post-FWF** (consumíveis como input do nosso pipeline) ou **pós-recodificação v0.5.0** (output de pipeline anterior — usá-los seria bypass)?

## Resposta resumida

**Tipologia do aux folder esclarecida:**

| Tipo | Anos | Naming | Origem real |
|---|---|---|---|
| Inputs raw (CSV) | 1970/1980/1991 | `Censo.<ano>.brasil.<tabela>.amostra.<%>.csv` | IBGE/Pedro Souza, true raw |
| Inputs binários compilados | 1960 | `Censo.1960.brasil.<...>.amostraCompilada.censobr.<fst\|parquet>` | Compilação pessoal do Rogério (terminal, sem fonte FWF) |
| Outputs antigos (microdata 2000/2010) | 2000/2010 | `<ano>_<dataset>.parquet` (sem sufixo de versão) | Output de execução antiga do legacy `microdata_sample_<ano>.R` |
| Mirror v0.5.0 (setores) | 2000, 2022 | `<ano>_tracts_<tabela>_v0.5.0.parquet` | Cópia literal dos assets de release |
| (sem aux) | setores 2010 | — | Pipeline já cabeado faz download FTP direto |
| Documentação | todos | PDFs / xlsx / docs | IBGE |

**Implicação direta:** os parquets `<ano>_<dataset>.parquet` (microdata 2000/2010) são **outputs antigos**, não inputs raw. Servem como input do novo pipeline **na medida em que reproduzem o que v0.5.0 espera** — o que varia caso a caso.

## Comparação aux vs v0.5.0 (microdata)

| Dataset | rows aux / v0.5 | cols aux / v0.5 | colunas só em v0.5 | type mismatches |
|---|---|---|---|---|
| 2000 families | 5 691 294 / 5 691 294 | 33 / 33 | — | 3 (code_muni/state/region: string vs int32) |
| 2000 households | 5 304 712 / 5 304 711 (Δ=-1) | 87 / 87 | `P001` (aux tem `PESO_DOMIC`) | 3 (code_muni/state/region) |
| **2000 population** | **20 274 413 / 20 274 413** | **169 / 190** | **24 colunas (V4621, V4622, V4631, V0464, V4354, V4451..., M0435, M4523, M4621..., P001)** | **135** |
| 2010 deaths / mortality | 111 555 / 111 555 | 26 / 26 | — | 3 |
| 2010 emigration | 53 777 / 53 777 | 26 / 26 | — | 3 |
| 2010 households | 6 192 332 / 6 192 332 | 83 / 83 | — | 3 |
| 2010 population | 20 635 472 / 20 635 472 | 251 / 251 | — | 3 |

(Todos os "type mismatches" residuais são `code_muni`/`code_state`/`code_region` como `string` em aux mas `int32` em v0.5.0 — diferença de uma cast simples no estágio padronizar.)

## Diagnóstico por edição

### 2010 microdata — aux ≈ v0.5.0 (✅ consumível)

Os 4 parquets de 2010 microdata em aux têm **mesmo número de linhas, mesmas colunas** que v0.5.0 — diferem apenas em 3 type casts (códigos geográficos como string em vez de int32). Aux foi produzido por execução do legacy `microdata_sample_2010.R` em algum momento entre ago/2023 (data dos arquivos) e jun/2025 (release v0.5.0), com schema essencialmente idêntico.

**Decisão para Fase 2.1 (porte microdata 2010):** ler aux como input canônico. Padronizar adicionando cast `as.integer()` nos códigos geográficos. Saída deve reproduzir v0.5.0 com paridade rígida (modulo o cast intencional).

### 2000 microdata — gap material em population (⚠️ decisão necessária)

- **2000 families** ≈ v0.5.0 (only type cast diff). ✅ consumível.
- **2000 households** ≈ v0.5.0 com 2 ressalvas:
  - 1 linha a menos no aux (5 304 712 vs 5 304 711 — possível dedup feito em v0.5.0).
  - Coluna `PESO_DOMIC` em aux ↔ `P001` em v0.5.0 — provável renaming durante padronização.
  - Manageable: descobrir a regra exata do dedup + aplicar rename. ✅ consumível com fixups.
- **2000 population** ⚠️ **gap real**:
  - Aux: 169 colunas; v0.5.0: 190 colunas. **24 colunas a mais em v0.5.0**, das quais 14 são V-prefix (V0464, V4219, V4239, V4269, V4279, V4354, V4451, V4461, V4621, V4622, V4631, V4632, V4671, V4672) e 9 são M-prefix (M0435, M4523, M4621, M4622, M4631, M4632, M0464, M4671, M4672) + `P001`.
  - Hipótese: aux foi gerada por uma versão antiga de `readguide_2000_population.csv` (hoje com 184 linhas — não contém os V/M acima), e o read guide foi expandido depois para a release v0.5.0.
  - Cols V*/M* não existentes no read guide atual sugerem que o `convert_raw_to_parquet()` baseado neste guia **NÃO** vai produzir os parquets de paridade com v0.5.0 sem expansão do guide.

### Setores em aux

- **Setores 2000:** 6 parquets com sufixo `_v0.5.0.parquet` em `agregados por setor/`. Mirror local de release. NÃO usar como input — são output. Fonte real: FTP IBGE 2000 (URL `https://ftp.ibge.gov.br/Censos/Censo_Demografico_2000/Dados_do_Universo/Agregado_por_Setores_Censitarios/`).
- **Setores 2010:** ausente em aux. Pipeline já cabeado faz download FTP direto.
- **Setores 2022:** 8 parquets com sufixo `_v0.5.0.parquet` em `agregados por setor/` (faltando `Preliminares`, presente em v0.5.0). Mirror local. Não usar como input — fonte real: FTP IBGE 2022.

## Decisões a confirmar com Rogério (atualização à pendência A do plano-pai)

**Pendência A do plano-pai era:** "Aux parquets de 2000/2010 microdata: raw ou pós-recodificação? Bloqueia o desenho de 2.2 e 2.3."

**Resposta da Fase 0.2:**
- Para 2010 microdata, aux é "pós-recodificação **mas equivalente a v0.5.0**" — funciona como input.
- Para 2000 microdata, aux é "pós-recodificação **incompleta vs v0.5.0**" — funciona apenas para families e households (com fixups); **bloqueia population**.

**Nova decisão a tomar para 2000 population (Fase 2.2 do plano-pai):**

(A) **Aceitar regressão controlada.** v0.6.0 sai com 2000 population de 169 cols (vs 190 em v0.5.0). Documentar as 24 cols ausentes no NEWS do `censobr` como "removidas". Quebra paridade rígida explicitamente para essa tabela.

(B) **Trazer o FWF original para o aux folder.** O legacy `microdata_sample_2000.R` lê de `R:/Dropbox/bases_de_dados/censo_demografico/censo_2000/microdados_txt/` (drive de rede do Rogério). Copiar para `censoBR_aux_Dados/2000/microdados da amostra/<txt>/` torna o pipeline reprodutível sem dependência do R: drive. Em seguida, expandir `readguide_2000_population.csv` para incluir as 24 cols faltantes e rodar `convert_raw_to_parquet()` no novo pipeline.

(C) **Misto.** Curto prazo: usar aux com regressão para 2000 population (opção A). Médio prazo: trazer FWF e fazer o re-parsing completo (opção B), upgrade na próxima release.

Pessoal recomendação: **C**, pra não bloquear o porte de 2000 microdata na Fase 2 do roadmap. Investigar o que são as 24 cols (V4621/V4622/V4631 são provavelmente variáveis IBGE puladas; M-prefix são *medianas* derivadas). Se o conhecimento das colunas for crítico para usuários downstream do `censobr`, escalar para opção B.

**Mesma pergunta análoga para 2010 microdata:** trazer FWF para aux folder no longo prazo? Hoje aux tem só os parquets — se o read guide 2010 ganhar novas cols no futuro, ficamos travados. **Recomendação:** trazer o FWF (TXT) também, para não criar dependência futura.

## Estado dos arquivos no disco

- `data_raw/baseline_compare/v0.5.0_microdata/` — 7 microdata parquets v0.5.0 (~1.6 GB) + 6 setores 2000 v0.5.0 (~340 MB), gitignored.
- `data_raw/baseline_compare/v0.5.0/` — 8 setores 2010 v0.5.0 (Fase 0.1).
- `data_raw/baseline_compare/v0.6.0/` — 8 setores 2010 v0.6.0 pre-release (Fase 0.1).
- `censoBR_aux_Dados/<year>/...` — 23 GB no Dropbox local, fonte canônica de inputs/docs.

## Decisões registradas

- ✅ Tipologia do aux folder esclarecida (5 categorias acima).
- ✅ Aux 2010 microdata = consumível direto, paridade rígida atingível.
- ✅ Aux 2000 microdata = consumível para families/households com fixups; **gap material em population**.
- ✅ Aux setores = mirror local de v0.5.0, **não** servem como input.
- ⏳ Pendente decisão sobre 2000 population (A/B/C) — Rogério.
- ⏳ Pendente decisão sobre trazer FWF para aux no longo prazo (2000+2010 microdata) — Rogério.

## Próxima fase

Após decisão A/B/C acima:
- **Fase 0.3** — bug fixes em setores 2010 (plano dedicado, com base na evidência da [`baseline-2010-tracts.md`](baseline-2010-tracts.md)).
- **Fase 1.1** — porte setores 2022 (input via FTP, dicionário canônico em `references/phgfsouza_census_tracts/`).

A Fase 2 (microdata) só começa após Fase 1 + decisão sobre 2000 population.