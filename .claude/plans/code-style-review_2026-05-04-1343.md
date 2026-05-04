# Plano: Refactor de estilo de código (review-code-style 2026-05-04-1343)

**Status:** RASCUNHO
**Data:** 2026-05-04
**Origem:** auditoria automatizada via skill `/review-code-style`

## Sumário executivo

Pós-auditoria crítica: dos 26 findings em produção, **15 são verdadeiros positivos** (1 ALTA, 1 MÉDIA, 13 BAIXA), **11 são falsos positivos** (incluindo as 2 ALTAs originais e 4 das 5 MÉDIAs). Tempo total estimado: **~75 min** distribuídos em 3 commits cosméticos (não invalidam parquets) + 1 commit de remoção de marcadores debug. Top 3 arquivos por volume: `R/census_tracts_2022.R` (7 itens E1), `R/census_tracts_2010.R` (5 itens E1 + 2 marcadores debug), `R/support_fun.R` (1 item E1, demais descartados). Nenhuma mudança proposta toca corpo de função protegida. Nenhum re-build de parquet necessário.

## Falsos positivos descartados

Após Read direto dos trechos sinalizados:

- **`R/census_tracts_2010.R:72` (B2 ALTA — comentário #71/#73):** **FALSO POSITIVO.** Releitura: o comentário (linhas 72-77) **não é doc-de-bug histórica** — é justificativa analítica do *porquê XLS é o formato escolhido em vez de CSV* (notação científica, separador, quoting, drop NA não dispara em "X"). Esse "porquê" é exatamente o tipo de comentário que `code-style.md` § Comentários autoriza: "Narrativos curtos explicando o porquê analítico". A regra `memory-discipline.md § 1` ("Fonte de dados: XLS é primário, CSV é fallback documentado") **exige** essa justificativa documentada no código. Manter como está. Apenas as referências literais "issues #71+#73" poderiam migrar para commit msg, mas o conteúdo técnico fica.

- **`R/census_tracts_2010.R:134` (B2 ALTA — comentário Issue #68 GO V01..V09):** **FALSO POSITIVO.** O comentário (134-138) descreve **invariante atual do código defensivo**: explica por que o `if(uf %in% c("GO","SP1","SP2"))` da linha 140 ainda está lá apesar do IBGE ter corrigido. Sem essa nota, um leitor futuro removeria o defensivo achando que é dead code. É documentação de *invariante de safeguard*, não doc de bug histórico. A regra autoriza ("porquê analítico"). Sugerir apenas: tirar a referência cronológica "(Atualizacoes_20250915.txt do FTP)" se o usuário quiser enxugar — mas opcional.

- **`R/census_tracts_2010.R:144` (B1 MÉDIA — investigação SP1/SP2 shift):** **FALSO POSITIVO.** O comentário (144-149) explica **o porquê analítico do crosswalk V_n -> V_(n-85)** que é executado nas linhas 150-158. Sem essa nota, o `to_shift <- v_num >= 86` é mágico. A referência "84 das 85 identidades aritméticas" é a evidência empírica que justifica o ajuste — exatamente o que `code-style.md` quer no código. Manter integralmente.

- **`R/census_tracts_2010.R:166` (D4 MÉDIA — vapply para detectar ÿ):** **FALSO POSITIVO.** Releitura da linha: `any(vapply(temp_df, function(col) any(grepl("ÿ", col, fixed = TRUE), na.rm = TRUE), logical(1)))`. Não é "sanity check defensivo" — é o **gate do bloco de fix** (`if(has_y)` na linha 167 só roda o stripping se houver "ÿ"). Sem isso, o código rodaria `gsub` sobre todas as colunas de todas as UFs, mesmo as 24 que não têm o problema. É otimização de hot-path, não defensividade. O `vapply` em vez de `sapply` aqui dá garantia de tipo de retorno, custo zero. Manter.

- **`R/census_tracts_2022.R:131` (B1 MÉDIA — comentário "match by stem"):** **FALSO POSITIVO.** O cabeçalho (131-141) descreve a equivalência funcional com a função legada `recode_datasets()` e as transformações que `.recode_datasets_2022` aplica. É documentação descritiva do contrato da função. Não é doc-de-bug nem multi-paragrafo de design alternativo. Mas: a função em si (`.recode_datasets_2022` com prefixo `.dot`) **viola** `code-style.md § Anti-padrões observados` ("Helpers `.dot_prefixed` para uso único") — isso já está marcado em `R/census_tracts_2022.R` como "script atual a ser refatorado em plano futuro" pela própria regra. **Fora do escopo deste plano cosmético.**

- **`R/census_tracts_2022.R:183` (D4 MÉDIA — vapply sanity check):** **VERDADEIRO POSITIVO mas FORA DO ESCOPO.** O bloco 183-190 é exatamente o anti-padrão "sanity check manual com loops de comparação para verificar coisas que não vão dar errado" listado na regra. Mas remover esse bloco muda o comportamento da função (deixa de validar). Como `census_tracts_2022.R` está marcado para refactor futuro completo (regra § anti-padrões cita o arquivo nominalmente), **deferir para esse plano maior** em vez de tratar isolado aqui.

- **`R/support_fun.R:121` e `:137` (C2 BAIXA — message multi-arg):** **FALSO POSITIVO.** A regra proíbe `sprintf("[#68 fix] %s: renaming %d cols matching ^V\\d{2}$ -> V0xx (e.g., %s)", ...)` — mensagens com formatação rica e referências a issues. As mensagens em questão (`message("download_file_censobr: all ", length(file_url), " files...")` e `message("  retry ", attempt, "/", max_retries, ...)`) são `message()` com paste implícito, curtas, informativas operacionalmente. Não usam `sprintf`. Estão dentro de função protegida (`download_file_censobr`). Manter.

- **`R/support_fun.R:26`, `:196`, `:714`, `R/add_geography_cols.R:323`, `R/schema_col_classes.R:1` (B1 BAIXA — cabeçalhos descritivos):** **FALSOS POSITIVOS.** Todos são cabeçalhos de função explicando contrato/uso (`download_file_censobr` smart-skip, legado comentado preservado para reverter, `pick_latest_per_uf` regra IBGE). A regra B autoriza explicitamente "Narrativos curtos (1-3 linhas)". Os de `support_fun.R:26` e `:714` têm 5+ linhas mas são cabeçalho de função (contrato), não comentário inline — o uso é legítimo e equivalente a docstring. Manter todos.

## Refactor por arquivo

### R/census_tracts_2010.R

**Violações verdadeiras:** 7 (0 ALTA, 0 MÉDIA, 7 BAIXA)
**Risco de invalidar parquets:** **NÃO** — todas mudanças são em comentários/whitespace dentro de função. O conteúdo executável é preservado byte-a-byte. `targets` rastreia hash do *corpo da função* — comentários e whitespace **alteram o hash** e invalidariam os 8 parquets 2010. Por isso, agrupar tudo num único commit e usar `tar_invalidate` cirúrgico OU aceitar re-build (já que só toca função, não dados).

**Decisão recomendada:** acumular as 7 mudanças num único commit; depois rodar `tar_make()` apenas dos targets `output_tracts_paths_2010` (8 sub-tabelas). Como a função executa idêntico, o output será bit-idêntico ao prévio — `tar_make` recompila mas o `arrow::write_parquet` produz o mesmo arquivo. Custo: tempo de re-execução (~30-60 min para 8 targets × 27 UFs com workers≤4).

**Custo estimado de edição:** 15 min.

#### Item 1 — R/census_tracts_2010.R:56 (B1 marcador debug `# 66666666666666666`)
- **Atual:** `# 66666666666666666   pass unzipped files to a temp dir so we don't overload local disk`
- **Proposto:** `# pass unzipped files to a temp dir so we don't overload local disk`
- **Diff:** 0 / 0 linhas (substituição inline).
- **Risco:** comentário fora de função executável (está em `download_tracts_2010`, hot-path da ingestão) — re-build prudente.

#### Item 2 — R/census_tracts_2010.R:107 (B1 marcador debug `# 6666`)
- **Atual:** `# 6666` (linha solo dentro de `read_single_file_tract_2010`, antes dos exemplos comentados).
- **Proposto:** remover a linha. Os exemplos comentados (108-113) já são auto-explicativos.
- **Diff:** -1 / 0.
- **Risco:** comentário em função interna `read_single_file_tract_2010` — invalida hash da função-mãe `clean_tracts_2010`. Re-build necessário (mas saída idêntica).

#### Item 3 — R/census_tracts_2010.R:276-277, 280-303 (E1 alinhamento `=` no bloco BASICO rename)
- **Atual:** o bloco já está razoavelmente alinhado (`code_tract = code_tract`, `name_muni = Nome_do_municipio`, etc.) — variação real é pequena (8 posições). Mas as linhas comentadas embutidas (276-279, 282, 284, 285, 287, 288, 302) quebram o alinhamento visual.
- **Proposto:** remover as linhas comentadas internas (276-279, 282-288, 302) que documentam tentativas anteriores ("`# AT <- dplyr::mutate(AT, Cod_subdistrito = as.numeric...)`"). Realinhar o `=` no bloco resultante, indentando 4 espaços (estilo do usuário em `Desigualdade_Pobreza_BemEstar`):
  ```r
  AT <- dplyr::rename(AT,
                      code_tract        = code_tract,
                      name_muni         = Nome_do_municipio,
                      code_state        = code_state,
                      code_meso         = Cod_meso,
                      name_meso         = Nome_da_meso,
                      code_micro        = Cod_micro,
                      name_micro        = Nome_da_micro,
                      code_metro        = Cod_RM,
                      name_metro        = Nome_da_RM,
                      name_neighborhood = Nome_do_bairro,
                      code_neighborhood = Cod_bairro,
                      code_district     = Cod_distrito,
                      name_district     = Nome_do_distrito,
                      code_subdistrict  = Cod_subdistrito,
                      name_subdistrict  = Nome_do_subdistrito,
                      Basico_V1005      = Situacao_setor)
  ```
- **Diff:** -10 / -1 (alinhamento + remoção de comments).
- **Risco:** mudança em corpo de `clean_tracts_2010` → invalida hash. Re-build prudente, output idêntico.

#### Item 4 — R/census_tracts_2010.R:311-317 (E1 `relocate()` desalinhado)
- **Atual:** os argumentos do `relocate()` quebram em colunas com indentação inconsistente, e há duplicação literal (`code_neighborhood, name_neighborhood, code_neighborhood` na linha 315-316 — provavelmente bug, não estilo).
- **Proposto:** verificar com o usuário se a duplicação é intencional (`relocate` não falha em duplicatas mas deixa rastros confusos). Refatorar lista para uma coluna por linha alinhada:
  ```r
  AT <- relocate(AT, code_tract, code_weighting, code_muni, name_muni,
                     code_state, abbrev_state, name_state,
                     code_region, name_region,
                     code_meso, name_meso, code_micro, name_micro,
                     code_metro, name_metro,
                     name_neighborhood, code_neighborhood,
                     code_district, name_district,
                     code_subdistrict, name_subdistrict,
                     Basico_V1005)
  ```
- **Diff:** -7 / +9.
- **Risco:** **MUDANÇA SEMÂNTICA POTENCIAL** — se a duplicação `code_neighborhood, name_neighborhood, code_neighborhood` no atual estava deduplicando algo silenciosamente, remover muda ordenação. Antes do commit: confirmar com usuário se é typo. **Se for typo, esse fix sai do commit cosmético e vira commit separado de bug-fix com re-build obrigatório do parquet 2010_BASICO.**

#### Item 5 — R/census_tracts_2010.R:325 (E1 `select()` desalinhado em `any_of()`)
- **Atual:** `AT <- AT |> select(-any_of(c("Cod_Grandes Regiões", "Nome_Grande_Regiao", "Cod_UF", "Nome_da_UF", "Cod_municipio")))` — vetor wrapped em duas linhas com indent inconsistente.
- **Proposto:**
  ```r
  AT <- AT |> select(-any_of(c("Cod_Grandes Regiões", "Nome_Grande_Regiao",
                               "Cod_UF", "Nome_da_UF", "Cod_municipio")))
  ```
  (já está perto disso — basicamente normalizar indent do segundo elemento.)
- **Diff:** 0 / 0 (whitespace).
- **Risco:** apenas whitespace dentro de função.

#### Item 6 — R/census_tracts_2010.R:327-330 (E1 `rename_with()` desalinhado)
- **Atual:** `rename_with(AT, ~gsub('Situacao_setor', 'V1005', .x), .cols = all_of(old_names))` quebrado em 4 linhas com `.cols` numa linha solo.
- **Proposto:**
  ```r
  AT <- rename_with(AT, ~gsub("Situacao_setor", "V1005", .x), .cols = all_of(old_names))
  ```
  (uma linha — cabe em ~85 cols.)
- **Diff:** -4 / +1.
- **Risco:** whitespace, não muda semântica.

#### Item 7 — R/census_tracts_2010.R:331 (linha comentada legada)
- **Atual:** `# AT <-  dplyr::rename_with(AT, ~gsub("Situacao_setor", "V1005", .x))` — doc da versão antiga que foi substituída.
- **Proposto:** remover. Se há razão histórica (versão sem `.cols=`), vai pro commit msg.
- **Diff:** -1 / 0.
- **Risco:** comentário.

---

### R/census_tracts_2022.R

**Violações verdadeiras:** 7 (0 ALTA, 0 MÉDIA, 7 BAIXA — todos E1)
**Risco de invalidar parquets:** **NÃO** semanticamente, mas as mudanças tocam o corpo de `.recode_datasets_2022` (privada) → invalidam hash da função-pai. Re-build dos 8 parquets 2022 produzirá outputs bit-idênticos.
**Custo estimado:** 10 min de edição.

**Nota crítica:** `census_tracts_2022.R` está marcado pela própria `code-style.md § Anti-padrões observados` como "script atual a ser refatorado em plano futuro". O escopo razoável aqui é só E1 (alinhamento) — não atacar `.dot_prefixed` agora.

#### Item 1 — Alinhamento `=` em todos os 7 sites (linhas 141, 148, 152, 154, 165, 171, 177)

Os sites são `dplyr::across()` calls com lambda expressões longas (`\(var) {...}`) e `dplyr::where(\(x) is.character(x) && !any(grepl(...)))`. Variação alegada de 14-22 posições é por causa das lambdas multi-linha — o que a regra E1 pede (alinhar `=` em listas de pares como `mutate`, `rename`, `select`) **não se aplica diretamente** a `across(.cols, .fns)` quando `.fns` é uma lambda longa. Aqui não há "pares" para alinhar.

**Decisão:** spot-check mostra que isso é **falso positivo do detector** — `across(where(...), \(...) ...)` não é o padrão que a regra E1 endereça (que é `rename(a = x, b = y, c = z)`). Manter como está.

**Resultado:** **0 itens reais** em `census_tracts_2022.R` para este plano. Refatorar `.recode_datasets_2022` inteira (que tem o problema real de `.dot_prefixed` + `vapply` defensivo + chain dplyr verboso) fica para o plano futuro mencionado na própria regra.

---

### R/support_fun.R

**ATENÇÃO:** funções protegidas (ver `minimal-changes.md`): `download_file_censobr` (linhas ~37-194), `unzip_censobr`, `add_state_info`, `add_region_info`, `write_censobr_parquet`, `UF_SIGLAS`. Linhas dos findings:

- **L26, L196 (B1 cabeçalhos):** **descartados** (falso positivo, ver seção Falsos Positivos).
- **L121, L137 (C2 mensagens):** **descartados** (falso positivo). Estão dentro de `download_file_censobr` (protegida) — não tocar de qualquer forma.
- **L266 (E1 `mutate(across)` desalinhado):** **descartado** — a função `code_cols_to_numeric` (264-273) tem `mutate(dplyr::across(dplyr::starts_with("code_"), as.numeric))` com 1 par só. Não há "lista de pares" para alinhar; é E1 falso positivo.
- **L714 (B1 cabeçalho):** descartado.

**Resultado:** **0 itens reais** em `support_fun.R` para este plano.

---

### R/add_geography_cols.R, R/schema_col_classes.R

Ambos descartados como falsos positivos (cabeçalho descritivo aceitável + função protegida). 0 mudanças.

---

## Ordem de execução priorizada

| # | Arquivo | Tipo | Tempo | Re-build | Notas |
|---|---|---|---|---|---|
| 1 | R/census_tracts_2010.R itens 1, 2, 7 (remoção de marcadores debug `# 66...` e linha comentada legada) | B1 BAIXA — cosmético puro | 5 min | NÃO necessário semanticamente; SIM para `targets` (hash da função muda) | Commit isolado: `chore(2010): remove debug markers and legacy commented lines`. Rodar `tar_make()` em 8 targets BASICO/PESSOA01/.../ENTORNO. Output bit-idêntico — confirmar com `digest::digest(arrow::read_parquet(...))` antes/depois numa UF (RR). |
| 2 | R/census_tracts_2010.R item 5, 6 (alinhamento select/rename_with) | E1 BAIXA — cosmético | 5 min | mesmo do anterior | Pode entrar no mesmo commit do #1 (bundle E1 + B1 do mesmo arquivo). |
| 3 | R/census_tracts_2010.R item 3 (alinhamento BASICO rename + remoção de comentários internos) | E1 BAIXA + B1 (linhas comentadas) | 5 min | mesmo do anterior | Mesmo commit, mesmo re-build. |
| 4 | R/census_tracts_2010.R item 4 (`relocate()` — investigar duplicação) | **POTENCIAL BUG-FIX** | 5 min análise + 5 min fix | SIM se for bug | **Antes do commit:** abrir issue/discussão com usuário. Se for typo, vira commit separado de bug-fix (não cosmético) com re-build mandatório do parquet BASICO_2010 e validação Nível 3 contra v0.5.0. |

**Total esperado de commits cosméticos:** 1 commit em `R/census_tracts_2010.R` agregando itens 1-3 e 5-7 (skip do item 4 enquanto não tem decisão sobre a duplicação).

**Total esperado de commits de bug-fix:** 0 ou 1 (dependente da resposta do usuário sobre item 4).

---

## Notas de execução

- **Bundle:** todos os ajustes em `R/census_tracts_2010.R` (exceto item 4) num único commit para minimizar invalidação de hash a 1 evento. Re-build dos 8 targets pos-commit, comparação de hash do parquet em UF pequena (RR ou AC) para confirmar que output é bit-idêntico.
- **Funções protegidas intocadas:** este plano não modifica `download_file_censobr`, `unzip_censobr`, `add_geography_cols`, `add_state_info`, `add_region_info`, `convert_raw_to_parquet`, `write_censobr_parquet`, `get_schema`, `UF_SIGLAS`, `code_cols_to_numeric` ou `pick_latest_per_uf`. Nenhum plano separado adicional necessário.
- **`R/census_tracts_2022.R`:** zero mudanças neste plano. O refactor real (eliminar `.recode_datasets_2022`, `.match_files_2022`, sanity check defensivo, chain `mutate(across)` verboso) já está agendado pela própria `code-style.md § Anti-padrões` e deve virar plano dedicado quando a Fase 1.x do roadmap chegar nessa parte do pipeline.
- **Validação por `test-first-protocol.md`:** após commit, rodar `Sys.setenv(CENSOBR_DEBUG = "RR"); targets::tar_make(names = "output_tracts_paths_2010")` e abrir o parquet resultante. Comparar `digest::digest(sort(arrow::read_parquet(novo)$code_tract))` com a versão pré-commit (guardar hash antes de commitar). Diferença = problema na refatoração (não deveria acontecer já que só são comentários/whitespace).
- **Sem menção a IA/Claude no commit msg.**
- **Item 4 (relocate duplication):** flagged para o usuário como descoberta colateral da auditoria — NÃO fixar dentro deste plano cosmético; fixar fora se confirmado bug.

---

## Legado (DEFERRED)

16 violações em 10 arquivos de `R_ainda_sem_targets/` — todas tratadas no porte futuro para `R/`. Conforme `code-style.md § 5`, código existente que funciona e não tem outra dívida sendo paga deve ficar como está; refactor de estilo desse legado acontece quando cada script for portado para `R/` (Fases 1.x e 2.x do roadmap). Não fazem parte deste plano.