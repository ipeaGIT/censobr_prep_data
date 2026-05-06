# Round 3 Agent 2 — Mapping + Audit Report

## Parte 1 — Stats do mapping independente

Total: **141 variáveis** (linha 2 artefato dropada).

| evidence_strength | count |
|-------------------|-------|
| HIGH              | 136   |
| MED               | 0     |
| LOW               | 0     |
| AMBIGUOUS         | 0     |
| CANNOT_MAP        | 5     |

CANNOT_MAP unânimes detectados: UFNOM, MESONOM, MICRONOM, MUNICNOM, RFAPCAPV.

## Resumo da concordância vs `round2_consensus_6way.csv`

- **141/141 concordo** com `chosen` do consensus 6-way.
- **0/141 discordo.**

Inclui:
- FLDOMICH = V0335 (concordo com 5/6_MAJORITY)
- FLDOMICM = V0336 (concordo com 5/6_MAJORITY)
- 5 CANNOT_MAP (concordo)
- 134 demais V-codes (concordo)

Diferença secundária — minha avaliação de `evidence_strength` foi mais alta em alguns pontos onde o consensus 6-way registrou MED para alguns agentes (ex.: PESO, MIULTMUD, RFANOMIF, MESONUM/MICRONUM). Isso não muda o V-code escolhido; é apenas leitura de confiança individual.

## Resposta às 5 perguntas da auditoria

### 1. Concordo com o consensus final atual (`chosen`)?

**Sim, integralmente.** Os 141 V-codes escolhidos são todos defensáveis com base em A/B/C/v050:
- 134 unânimes têm match descritivo + categórico + presença em v050 — sólidos.
- 5 CANNOT_MAP são corretos: 4 nomes geográficos textuais (UFNOM/MESONOM/MICRONOM/MUNICNOM) não têm V-code histórico (o `censobr` carrega `name_*` como helper geográfico, não como V-code), e RFAPCAPV é a renda per capita em valor numérico contínuo, ausente em B/C (que só listam V3049 = faixas).
- 2 majority (FLDOMICH/FLDOMICM) — ver pergunta 2.

### 2. Concordo com FLDOMICH=V0335 / FLDOMICM=V0336?

**Sim, com confiança HIGH.** A evidência é nítida quando se lê os pares completos:

| A_var       | A_descricao                       | B/C V-code | B/C Descrição                                            |
|-------------|-----------------------------------|------------|----------------------------------------------------------|
| FLDOMICH    | "Filhos moram domicilio - homem"  | V0335      | "Filhos Tidos que moram no domicílio"                    |
| FLDOMICM    | "Filhas moram domicilio - mulher" | V0336      | "Filhas Tidas que moram no domicílio"                    |
| FLNAODOH    | "Filhos nao moram domicilio"      | V0337      | "Filhos Tidos que moram em outro domicílio (Homens)"     |
| FLNAODOM    | "Filhas nao moram domicilio"      | V0338      | "Filhas Tidas que moram em outro domicílio (Mulheres)"   |

Argumentos a favor de V0335/V0336:
- A_descricao "moram domicilio" (afirmativo) bate semanticamente com B/C "moram no domicílio".
- A_descricao "nao moram domicilio" (negativo, em FLNAODOH/FLNAODOM) bate com B/C "moram em outro domicílio".
- Existem **dois pares ortogonais** em A (DOMIC vs NAODO) e **dois pares ortogonais** em B/C (335-336 vs 337-338). O pareamento natural é DOMIC↔335-336 e NAODO↔337-338. Trocar (a hipótese do dissenter R1A2) deixaria FLNAODOH sem alvo coerente.
- O "homem"/"mulher" no sufixo de A é gênero do filho contado (homem=filho, mulher=filha), correspondendo aos rótulos "(Homens)"/"(Mulheres)" em B/C — não muda a identificação.

R1A2 dissentiu para V0337/V0338 (LOW), mas isso é internamente inconsistente: se FLDOMICH=V0337, então FLNAODOH (que R1A2 também propôs como V0337) colidiria. A maioria dos agentes (5/6) chegou ao pareamento correto.

### 3. Há vars onde acho que TODOS os 6 anteriores erraram?

**Não.** Revi as 141 vars e em todas o V-code escolhido pelo consensus é o que minha análise independente também produziu. Não identifiquei caso de erro coletivo.

### 4. Strength downgrades (HIGH → MED): concordo?

Casos com MED em alguns agentes:
- **PESO** → V7300: minha leitura é HIGH. PESO em A é seção 9.x (domicílio), e V7300 é o peso de domicílio em B/C/v050 (V7301 é o peso de pessoa). O contexto é claro. MED é conservador mas não muda a escolha.
- **MESONUM/MICRONUM** → V7001/V7002: HIGH. As 3 fontes têm a mesma descrição "Mesorregião"/"Microrregião". MED é excessivo.
- **MIULTMUD** → V0313: HIGH. A_descricao "Última mudança" + categorias `0=Menos de 1 ano | 98=Nunca mudou` batem exatamente com V0313 "Anos de Moradia na Situação do Domicílio" + categorias `00=menos de um ano | 98=nunca mudou`. A redação é diferente mas categorias confirmam.
- **MIANTEMU** → V3191: HIGH. V3191 é descrita como "Município... declarado no quesito 319", e A_descricao "Município moradia anterior" pareia 1-1 (V0319 é o UF anterior, V3191 é o município anterior). MED viria de R1A2 que duvidou da especificação temporal "anterior" vs "01/09/86", mas o pareamento V0319↔V3191 (anterior) e V0321↔V3211 (em 01/09/86) é estrutural no IBGE 1991.
- **RFANOMIF** → V3046: HIGH. Faixa de renda nominal familiar. As 13 categorias batem 1-1.

Os downgrades parecem ter sido cautela individual, não erro material. Mantenho HIGH no meu mapping mas não reclamo do consensus — o V-code é o mesmo.

### 5. CANNOT_MAP unânime (5 vars): manter?

**Manter, todos os 5.** Argumentos:

- **UFNOM** (Nome da UF), **MESONOM** (Nome da Mesorregiao), **MICRONOM** (Nome da Microrregiao), **MUNICNOM** (Nome do municipio): são strings textuais com o **nome** da unidade geográfica. O IBGE 1991 não codifica nomes como variáveis V-prefixadas — o nome é derivado do código via tabelas auxiliares (uf_1991.xls, mesorregiao_1991.xls, etc., referenciadas em B). No consumidor `censobr`, isso é resolvido por colunas helper (`name_state`, etc.) construídas em pipeline a partir do código. Não há V-code histórico porque nunca houve. A nova edição IBGE 2025 incluiu os nomes pré-resolvidos como conveniência DBF — algo que não existia em 1991.

- **RFAPCAPV** (Renda familiar per capita, valor numérico contínuo): B/C listam apenas V3049 = **faixas** de renda per capita familiar, mas não há V-code para o **valor contínuo** per capita. v050 confirma — não está presente em nenhuma lista. Provavelmente é uma variável **derivada** introduzida pelo IBGE 2025 (renda total familiar V3045 dividida por número de membros), não preservada nos arquivos históricos. CANNOT_MAP correto.

## Conclusão

O consensus 6-way está **sólido**. Minha rodada não desafia nenhuma escolha de V-code — apenas reforça a confiança em FLDOMICH/FLDOMICM=V0335/V0336 com argumentação estrutural (par DOMIC vs NAODO força o pareamento) e questiona alguns downgrades MED→HIGH que são cosméticos.

Para o pipeline `censobr_prep_data`, o mapping consensus pode ser usado como ground truth para porte do microdados 1991. As 5 CANNOT_MAP precisam de tratamento especial: as 4 vars de nome geográfico devem ser ignoradas em favor das colunas helper `name_*` injetadas em `add_geography_cols.R`; RFAPCAPV pode ser recomputada (V3045/contagem familiar) ou deixada de fora.
