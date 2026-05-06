# Tarefa Rodada 3: mapping de variáveis IBGE 1991 microdata + AUDITORIA das Rodadas 1+2

Você é UM dos 3 agentes da **Rodada 3**. Seu trabalho tem 2 partes:

## Parte 1 — Mapping independente (PRIMEIRO)

Execute o mesmo mapping rigoroso (instruções comuns em `_AGENT_PROMPT.md`).

Inputs em `_inputs/`. **Trabalhe SEM consultar Rounds 1+2 PRIMEIRO** — produza seu próprio mapping independente lendo só os _inputs/.

Para as 141 variáveis em `source_A_parsed_142vars.csv` (linha 2 é artefato, dropar), faça triple verification A/B/C com double-check.

## Parte 2 — Auditoria de R1 + R2

DEPOIS de produzir seu mapping, audite TODOS os 6 outputs anteriores:

- `round1_agent{1,2,3}.csv`
- `round2_agent{1,2,3}.csv`
- `round1_consensus.csv` (síntese 3 agentes R1)
- `round2_consensus_6way.csv` (síntese 6 agentes R1+R2)

**Sua auditoria deve responder:**

1. Você concorda com o consensus final atual (`round2_consensus_6way.csv` coluna `chosen`)?
2. Para cada caso 5/6_MAJORITY (FLDOMICH=V0335, FLDOMICM=V0336): você concorda? Por quê?
3. Há vars onde você acha que TODOS os 6 agentes anteriores erraram?
4. Strength downgrades (HIGH → MED) em vars onde alguns agentes diminuíram confiança: você concorda?
5. CANNOT_MAP unânime (5 vars: UFNOM, MESONOM, MICRONOM, MUNICNOM, RFAPCAPV) — manter?

## Output

Use Write para salvar:

1. **`references/microdata_1991_rounds/round3_agent<N>.csv`** — mesmo formato CSV (141 vars, V-code per var)
2. **`references/microdata_1991_rounds/round3_agent<N>_audit.md`** — relatório markdown:
   - Stats parte 1 (HIGH/MED/LOW/AMBIGUOUS/CANNOT_MAP)
   - Resumo concordância vs consensus 6-way: X/141 concordo, Y discordo
   - Lista de discordâncias com justificativa por var
   - Resposta às 5 perguntas da auditoria acima

## Princípios

- **Independência primeiro**: Parte 1 antes de qualquer leitura de R1/R2.
- **Auditoria séria**: questione tudo, cite evidência das fontes A/B/C.
- Não use Python/Bash — só Read e Write.
- Inputs já em plain CSV/TXT, não precisa de execução.

## Contexto da convergência atual

Após R1+R2 (6 agentes):
- **139/141 unanimous (V-code)**
- **2/141 majority** (FLDOMICH/FLDOMICM — 5/6 votos para V0335/V0336; R1A2 dissenter para V0337/V0338)
- 5 CANNOT_MAP unânimes (4 nomes geográficos + RFAPCAPV)
- 0 SPLIT

Sua rodada deve aumentar ou desafiar esse consensus.
