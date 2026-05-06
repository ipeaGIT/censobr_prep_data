# Round 2 — Agent 2 — Audit Report

## Parte 1: mapping independente

- **141 vars** mapeadas (linha 2 do source A `1,0,2,3,` foi DROP — claro artefato de parsing de section marker, sem A_var/A_descricao válidos).
- **CSV produzido:** `round2_agent2.csv`.

### Stats por evidence_strength

| Strength    | Count |
|-------------|-------|
| HIGH        | 135   |
| MED         | 1     |
| LOW         | 0     |
| AMBIGUOUS   | 0     |
| CANNOT_MAP  | 5     |
| **TOTAL**   | **141** |

A única MED: `RFANOMIF` (V3046) — descrição bate ("Faixa renda familiar nominal" ↔ V3046 "Faixas de Rendimento Nominal Médio Mensal Familiar"), mas categorias em A são finas (1/4-1/2-3/4-1-1 1/4...) enquanto V3046 em B/C tem faixas grossas (1/4-1/2-1-2-3-5...). É provável artefato de transcrição IBGE 2025 — V3046 é o único V-code com a descrição exata "faixa renda familiar nominal", e está presente em v050 population.

5 CANNOT_MAP: `UFNOM`, `MESONOM`, `MICRONOM`, `MUNICNOM`, `RFAPCAPV`.

## Parte 2: auditoria da Rodada 1

### Comparação linha-a-linha com `round1_consensus.csv`

| Categoria de consenso R1 | Vars | Concordo | Discordo |
|--------------------------|------|----------|----------|
| UNANIMOUS V-code         | 134  | 134      | 0        |
| UNANIMOUS CANNOT_MAP     | 5    | 5        | 0        |
| MAJORITY                 | 2    | 2        | 0        |
| SPLIT                    | 0    | —        | —        |
| **TOTAL**                | **141** | **141** | **0** |

**Resultado:** concordo com 141/141 vars do consensus R1. Nenhuma divergência.

### Análise das 2 MAJORITY: FLDOMICH e FLDOMICM

R1 dividiu-se: R1A1+R1A3 escolheram **V0335/V0336**; R1A2 escolheu **V0337/V0338**. Consensus = MAJORITY V0335/V0336.

**Minha posição: concordo com a majority (V0335/V0336).**

Justificativa, evidência das 3 fontes:

#### A (IBGE 2025 dictionary)
- `FLDOMICH` "Filhos moram domicilio - homem" — categorias `0=Nenhum | 70=Nao tem | 99=Ignorado | 100=NSA`.
- `FLDOMICM` "Filhas moram domicilio -mulher" — categorias `0=Nenhuma | 99=Ignorado | 100=NSA`.
- Existem também `FLNAODOH` (11.23) "**Filhos nao moram domicilio**" e `FLNAODOM` (11.24) "**Filhas nao moram domicilio**". Estas duas vars complementares são a chave da decisão: A separa explicitamente "moram" (FLDOMIC*) de "não moram" (FLNAODO*).

#### B (pedrosouza pessoas)
- V0335 "**Filhos Tidos que moram no domicílio**" (numérico)
- V0336 "**Filhas Tidas que moram no domicílio**" (numérico)
- V0337 "**Filhos Tidos que moram em outro domicílio (Homens)**" (numérico)
- V0338 "**Filhas Tidas que moram em outro domicílio (Mulheres)**" (numérico)

#### C (layout populations)
Idêntico a B para V0335-V0338.

#### Conclusão
"Filhos **moram domicilio**" (sem negação) ↔ "Filhos Tidos que **moram no domicílio**" → V0335.  
"Filhos **nao moram domicilio**" ↔ "Filhos Tidos que moram em **outro** domicílio" → V0337.

A correspondência é 1:1 e simétrica. O sufixo "homem"/"mulher" em A se refere ao sexo dos FILHOS (V0335 = filhos = masculinos; V0336 = filhas = femininas) — não ao sexo do respondente (no IBGE só mulheres respondiam fertilidade em 1991).

**R1A2 errou.** Provavelmente confundiu "moram domicilio" como ambíguo ou interpretou como "moram em domicílio (qualquer um)" — leitura que não se sustenta dado o par complementar FLDOMIC*/FLNAODO* em A. O CSV de R1A2 deu strength=LOW (não HIGH), indicando que ele próprio reconheceu a fragilidade.

### Análise dos 5 CANNOT_MAP

Concordo com todos: descarte correto.

#### `UFNOM`, `MESONOM`, `MICRONOM`, `MUNICNOM`
Estas são **strings com nome textual** (e.g. "São Paulo", "Sergipe"). Em B e C, só existem V-codes para os **códigos numéricos** correspondentes:
- UFNOM ↔ V1101 (código UF) — sem V-code para nome
- MESONOM ↔ V7001 (código mesorregião) — sem V-code para nome
- MICRONOM ↔ V7002 (código microrregião) — sem V-code para nome
- MUNICNOM ↔ V1102 (código município) — sem V-code para nome

B inclusive nota explicitamente "Ver arquivo auxiliar uf_1991.xls", "Ver arquivo auxiliar mesorregiao_1991.xls", etc. — ou seja, os nomes são derivados de tabelas auxiliares, não fazem parte do registro fixed-width. v050 deriva `name_state` no pipeline a partir de `code_state`, mas isso é pós-processamento.

CANNOT_MAP é a marcação correta. Ao processar o IBGE 2025 DBF, estas colunas podem ser:
- (a) ignoradas (preferível — derivadas no pipeline a partir do código);
- (b) preservadas como "name_*" mas sem V-code histórico associado.

#### `RFAPCAPV`
A_descricao "Renda familiar per capita" (REAL). B/C 1991 não trazem V-code para o **valor** per capita — só V3049 "Faixas de Rendimento Nominal Médio Mensal Familiar Per Capita" (faixa). Não está em v050. É campo derivado calculado pelo IBGE 2025 em pós-processamento. CANNOT_MAP correto.

Observação: este é exatamente o tipo de var "nova IBGE 2025" mencionada no prompt comum como exemplo de CANNOT_MAP — sem equivalente histórico.

### Tratamento da linha artefato

Linha 2 do `source_A_parsed_142vars.csv` é `1,0,2,3,` — sem A_var, sem A_descricao, claramente artefato de parsing (provavelmente section header da Documentação 1991.xls do FTP IBGE 2025 que sobreviveu ao parser).

**Decisão: DROP** (mesma decisão de R1A3; R1A1+R1A2 mantiveram). Total final: 141 linhas.

Justificativa: incluir a linha artefato como CANNOT_MAP polui as métricas e implica que existe uma var real que não pôde ser mapeada. Não existe — é simplesmente lixo de parsing. R1A3 acertou em droppar.

## Resumo

- Mapping independente: 141 vars, 135 HIGH + 1 MED + 5 CANNOT_MAP.
- Auditoria: **0 divergências** vs consensus R1.
- Posição sobre FLDOMICH/FLDOMICM: **V0335/V0336** (majority R1, R1A2 errou).
- Posição sobre 5 CANNOT_MAP: **descarte correto**, sem mapping possível.
- Linha artefato: **DROP**.

A Rodada 1 produziu um consensus sólido. A única ambiguidade real foi FLDOMICH/FLDOMICM, e a majority foi para o V-code correto.
