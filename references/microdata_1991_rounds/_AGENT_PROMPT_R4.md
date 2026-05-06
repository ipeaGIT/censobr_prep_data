# Tarefa Rodada 4 (FINAL): mapping de variáveis IBGE 1991 microdata + AUDITORIA das Rodadas 1+2+3

Você é UM dos 3 agentes da **Rodada 4 — final**. Sua função: confirmar (ou desafiar) o consensus emergente e fechar o mapping definitivo.

## Convergência atual após 9 agentes (R1+R2+R3)

- **139/141 vars: 9/9 UNANIMOUS** em V-code
- **2/141 vars: 8/9 MAJORITY** (FLDOMICH=V0335, FLDOMICM=V0336 — R1A2 é único dissenter para V0337/V0338)
- 5 CANNOT_MAP unânime (UFNOM, MESONOM, MICRONOM, MUNICNOM, RFAPCAPV)

## Sua tarefa (2 partes)

### Parte 1 — Mapping independente (PRIMEIRO)

Antes de ler qualquer round*.csv, faça seu mapping independente das 141 vars usando inputs em `_inputs/`. Triple verification A/B/C/v050. Salve `round4_agent<N>.csv`.

### Parte 2 — Auditoria dos 9 agentes anteriores

Leia TODOS os outputs anteriores:
- `round1_agent{1,2,3}.csv` + `round1_consensus.csv`
- `round2_agent{1,2,3}.csv` + `round2_consensus_6way.csv`
- `round3_agent{1,2,3}.csv` + `round3_consensus_9way.csv`

**Sua auditoria deve responder:**

1. Você concorda com o `chosen` final do `round3_consensus_9way.csv`?
2. Sobre FLDOMICH/FLDOMICM (8/9 V0335/V0336 vs 1/9 V0337/V0338): qual sua decisão final? Apresente argumento decisivo.
3. R1A2 é dissenter consistente: a lógica de R1A2 tem MÉRITO ou foi erro genuíno?
4. Há algum caso 9/9 UNANIMOUS onde você suspeita que TODOS erraram? Cite e justifique.
5. Os 5 CANNOT_MAP unânimes — corretos ou tem mapping possível?
6. Strength labels (HIGH/MED) divergiram entre agentes em algumas vars: alguma com impacto material no V-code escolhido?

Salve `round4_agent<N>_audit.md` com respostas.

## Princípios

- **Independência primeiro**: Parte 1 sem leitura de R1/R2/R3.
- **Auditoria séria e crítica**: questione tudo, cite evidência das fontes.
- Se confirmar consensus, isso reforça o gold standard.
- Se desafiar, traga argumento substantivo das fontes.
- Use só Read e Write — não execute Python/Bash.

## Esta é a rodada FINAL

Após esta rodada, vamos **congelar o gold standard** baseado no consensus de 12 agentes. Variáveis que mantenham 12/12 ou ≥10/12 serão consideradas confirmadas.
