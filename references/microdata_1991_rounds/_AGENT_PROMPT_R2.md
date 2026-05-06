# Tarefa Rodada 2: mapping de variáveis IBGE 1991 microdata + AUDITORIA da Rodada 1

Você é UM dos 3 agentes da **Rodada 2**. Seu trabalho tem 2 partes:

## Parte 1 — Mapping independente

Execute o mesmo mapping rigoroso da Rodada 1 (instruções comuns em `_AGENT_PROMPT.md`).

Inputs em `_inputs/`. Para cada uma das **141 variáveis** em `source_A_parsed_142vars.csv` (uma das linhas é artefato — você decide se inclui ou drop), faça triple verification A/B/C com double-check.

**Trabalhe sem consultar Round 1 PRIMEIRO** — produza seu próprio mapping independente lendo só os _inputs/. Só depois compare com Round 1 (Parte 2).

## Parte 2 — Auditoria da Rodada 1

DEPOIS de produzir seu mapping independente, faça auditoria dos 3 outputs da Rodada 1:

- `round1_agent1.csv`
- `round1_agent2.csv`
- `round1_agent3.csv`
- `round1_consensus.csv` (síntese: UNANIMOUS/MAJORITY/SPLIT)

Para cada variável onde você DISCORDA do consenso da Rodada 1 (UNANIMOUS) OU acha que a Rodada 1 errou em algum caso MAJORITY/SPLIT:

1. Documente sua discordância com justificativa
2. Cite evidência das 3 fontes A/B/C que sustenta sua escolha
3. Indique se mantém o V-code que escolheu independentemente OU se mudou após auditoria

## Output

Use Write para salvar:

1. **`references/microdata_1991_rounds/round2_agent<N>.csv`** — mesmo formato CSV do round1, suas 141 variáveis com proposed_vcode/strength/notes
2. **`references/microdata_1991_rounds/round2_agent<N>_audit.md`** — relatório markdown com:
   - Resumo: quantas vars você concordou com consenso R1 vs discordou
   - Lista de divergências com justificativa por var
   - Comentário sobre as 2 MAJORITY de R1 (FLDOMICH, FLDOMICM): você concorda com majority V0335/V0336 ou com R1A2 V0337/V0338? Por quê?
   - Sua opinião sobre os 5 CANNOT_MAP (UFNOM/MESONOM/MICRONOM/MUNICNOM/RFAPCAPV): correto descartar ou tem mapping possível?

## Princípios

- **Independência primeiro**: forme sua opinião lendo só A/B/C/v050 antes de olhar Round 1.
- **Auditoria séria**: questione casos onde você não concorda; cite evidência.
- **Triple verification mantida**: seu mapping primário ainda exige A+B+C+v050 cross-check.
- Não use Python/Bash — só Read e Write.

## Nota sobre o "artefato"

A linha 2 de `source_A_parsed_142vars.csv` tem `1,0,2,3,` que parece artefato de parsing. R1A3 dropou; R1A1+R1A2 mantiveram. **Você decide** após inspecionar.
