# Round 4 — Agent 2 Audit (FINAL)

## Resumo executivo

Após mapping independente das 141 vars (Parte 1) e auditoria dos 9 outputs anteriores R1+R2+R3 + consensus 9-way:

- **141/141 concordo com o `chosen` final** do `round3_consensus_9way.csv` (incluindo os 5 CANNOT_MAP/empty e os 2 MAJORITY).
- **0 discordâncias substantivas.**
- **R1A2** é o único dissenter (FLDOMICH=V0337, FLDOMICM=V0338) e cometeu erro genuíno — descartar.

## Pergunta 1 — Concordo com o `chosen` final do `round3_consensus_9way.csv`?

**Sim, em 141/141 vars.** Meu mapping da Parte 1 (round4_agent2.csv) bate 100% com o `chosen` do consensus 9-way:

- 134 vars com V-code não-vazio → mesmos V-codes que o consensus.
- 5 CANNOT_MAP/empty (UFNOM, MESONOM, MICRONOM, MUNICNOM, RFAPCAPV) → idênticos ao consensus.
- 2 MAJORITY (FLDOMICH=V0335, FLDOMICM=V0336) → concordo com a maioria.

Não identifiquei nenhuma variável onde meu mapping divirja do `chosen`.

## Pergunta 2 — FLDOMICH/FLDOMICM: V0335/V0336 vs V0337/V0338. Decisão final.

**DECISÃO FINAL: FLDOMICH = V0335, FLDOMICM = V0336.**

### Argumento decisivo

A evidência é múltipla e converge. O par crítico está nas duas linhas adjacentes do dicionário IBGE 2025 (source A):

| A_var   | org_id | A_descricao                       |
|---------|--------|-----------------------------------|
| FLDOMICH | 11.16  | Filhos moram domicilio - homem    |
| FLDOMICM | 11.17  | Filhas moram domicilio - mulher   |
| ...     |        |                                   |
| FLNAODOH | 11.23  | Filhos nao moram domicilio        |
| FLNAODOM | 11.24  | Filhas nao moram domicilio        |

E em B (pedrosouza_pessoas) + C (layout_population):

| V-code | Descrição                                                |
|--------|----------------------------------------------------------|
| V0335  | Filhos Tidos que moram no domicílio                      |
| V0336  | Filhas Tidas que moram no domicílio                      |
| V0337  | Filhos Tidos que moram em outro domicílio (Homens)       |
| V0338  | Filhas Tidas que moram em outro domicílio (Mulheres)     |

**Mapeamento sem ambiguidade:**

1. **Semântica da descrição:** "moram domicilio" (sem negação) = moram NESTE domicílio = V0335/V0336. "NAO moram domicilio" = moram em OUTRO = V0337/V0338. A presença explícita do prefixo "FLNAODO*" para o caso "não" confirma que o par "FLDOMIC*" (sem "NAO") é o caso afirmativo.

2. **Bijetividade do mapping:** se mapearmos FLDOMICH = V0337 (como R1A2), ficamos com FLNAODOH também candidato a V0337 — o que duplica o V-code e deixa V0335 sem correspondente em A. Isso seria inconsistente e contradiz a regra de unicidade de V-codes em qualquer mapping bem-formado. R1A2 admite essa duplicação implicitamente nos seus notes ("FLDOMICH (11.16) e FLNAODOH (11.23) both map plausibly to V0337") — esse já é o sinal vermelho.

3. **Posição no questionário 1991:** o quesito da fertilidade pergunta separadamente "filhos que moram aqui" e "filhos que moram em outro lugar" — V0335-V0338 é a sequência canônica IBGE (335/336 = aqui, 337/338 = em outro). A ordem em A (FLDOMIC* em 11.16-17 antes de FLNAODO* em 11.23-24) também respeita a sequência semântica original.

4. **v050_present_pop:** todos quatro V-codes (V0335, V0336, V0337, V0338) estão presentes no parquet 1991_population v0.5.0 — então essa não desempata. Mas as outras 3 evidências são decisivas.

**Conclusão:** V0335/V0336 com confiança HIGH, não MAJORITY. A "controvérsia" é artifício de um único agente (R1A2) que cometeu erro de leitura de descrição.

## Pergunta 3 — R1A2: a lógica de R1A2 tem MÉRITO ou foi erro genuíno?

**Erro genuíno.** Lendo os notes próprios de R1A2:

- Em FLDOMICH: "best guess by name 'FLDOMICH' ... V0337 fits split convention but **semantic of 'moram domicilio' is opposite**. Tagging LOW with note"
- Em FLNAODOH: "FLDOMICH (11.16) and FLNAODOH (11.23) **both map plausibly to V0337** — A may have duplicated the V-code or be using two different items"

Ou seja, R1A2 **viu o problema** (semântica oposta + duplicação implícita), mas **escolheu mesmo assim a opção semanticamente errada**, marcando LOW/AMBIGUOUS. A heurística que ele aplicou foi "split by sex" (V0335/V0336 em B/C não têm split -H/-M no nome do V-code, mas V0337/V0338 têm). Isso é uma falsa pista — em B/C, V0335 = "Filhos Tidos que moram no domicílio" ENGLOBA homens (a contraparte feminina é V0336, idem com "Filhas"), e V0337/V0338 explicitam "(Homens)/(Mulheres)" só por estar separando em outro domicílio. O sufixo (Homens)/(Mulheres) está em todos os 4 V-codes implicitamente; o de B só explicitou em V0337/V0338. R1A2 leu "split convention" onde não havia diferenciação real.

**Não há mérito.** É erro genuíno de leitura semântica, agravado por o próprio agente reconhecer a inconsistência e ainda assim manter a escolha. Os outros 8 agentes (incluindo o próprio R1A2 nas rodadas 2 e 3, e meu mapping independente em R4) corrigem para V0335/V0336.

## Pergunta 4 — Há algum 9/9 UNANIMOUS onde TODOS erraram?

**Não identifiquei nenhum.** Revisei sistematicamente os 134 V-codes unânimes contra A, B, C e v050. Casos que dei atenção especial:

- **METROP → V7003:** A inclui categorias 10=Brasília e 11=Vitória que B/C não listam (param em 9=Porto Alegre). Mas isso é heterogeneidade entre dicionários (Brasília só passou a ser RM depois; Vitória idem); o V-code é correto. v050 confirma V7003.
- **MIANTEMU → V3191:** B/C rotulam V3191 como "morava em 01/09/1986" mas o quesito 319 é "moradia anterior" (NÃO 1986). Há erro evidente de label em B/C — mas o V-code é o canônico para o item "anterior" (1991) na sequência V3191/V3211. Confirmado pelo agrupamento dos quesitos no formulário e pela presença de V3191 no v050. UNANIMOUS é correto.
- **MIULTMUD → V0313:** A descreve "Última mudança" (categorias 0=Menos 1 ano, 98=Nunca mudou). B/C V0313 é "Anos de Moradia na Situação do Domicílio" (00=menos um ano, 98=nunca mudou). As categorias batem perfeitamente; o nome em A é simplificação/abreviação do conceito. Concordo com unanimidade.
- **EMPESTB → V0351:** A categoria 7 em A é "Afazeres domesticos" mas B/C V0351 categoria 7 é "Trabalhador doméstico". Esta divergência sugere erro de transcrição em A (IBGE 2025) — mas o V-code permanece V0351 (todas outras categorias batem). Concordo com unanimidade.
- **PESO → V7300:** PESO em A não distingue domicílio vs pessoa, mas v050 tem V7300 em hh + pop e V7301 em pop. PESO em A está na seção de domicílio (org_id 9.27); V7300 é o peso domiciliar. Correto.

Não há 9/9 com erro coletivo.

## Pergunta 5 — Os 5 CANNOT_MAP unânimes — corretos ou tem mapping possível?

**Os 5 estão corretos.** Análise individualizada:

1. **UFNOM** ("Nome da UF"): variável textual com nome literal da UF (ex.: "Rondônia"). Em B/C/v050 só existe V1101 com o **código** da UF (11, 12, 13...). Não há V-code histórico para o **nome**. CANNOT_MAP correto. (Em parquets do censobr v050, o nome aparece como `name_state`, derivado do `code_state`.)

2. **MESONOM** ("Nome da Mesorregião"): idem — V7001 é só o código. CANNOT_MAP correto.

3. **MICRONOM** ("Nome da Microrregião"): idem — V7002 é só o código. CANNOT_MAP correto.

4. **MUNICNOM** ("Nome do município"): idem — V1102 é só o código. CANNOT_MAP correto. (No censobr v050 o nome aparece como `name_muni` quando feito o join com `geobr` ou tabela auxiliar.)

5. **RFAPCAPV** ("Renda familiar per capita", REAL): essa é a única que merece debate. A tem o **valor numérico** da renda per capita real. Em B/C/v050 só vejo a **faixa** V3049 ("Faixas de Rendimento Nominal Médio Mensal Familiar Per Capita") — não o valor contínuo. O par usual é V3045 (renda fam nominal valor) + V3046/V3047/V3049 (faixas). Mas **não há um V-code 'V305X' para 'renda familiar per capita VALOR'** em B nem em C, e o v050 confirma a ausência. RFAPCAPV é provavelmente uma variável **derivada** que o IBGE 2025 disponibilizou (V3045 / número de moradores), mas que os microdados originais 1991 não publicavam pré-calculada. CANNOT_MAP correto — embora seja um caso onde, no porte para o pipeline, o usuário poderia **calcular** RFAPCAPV a partir de V3045 e número de moradores na família.

## Pergunta 6 — Strength labels (HIGH/MED) divergiram em algumas vars: impacto material?

**Nenhum impacto material no V-code escolhido.** Verifiquei: nenhuma divergência de strength entre agentes coincidiu com divergência de V-code (exceto em FLDOMICH/FLDOMICM, já tratada). Strength é uma anotação de confiança pessoal; o que importa para o gold standard é o V-code escolhido, e este é unânime ou maioria robusta em 141/141.

No meu mapping, marquei MED em duas vars onde os outros agentes podem ter marcado HIGH:

- **MIANTEMU → V3191:** MED por causa do mismatch entre nome em B/C ("morava em 01/09/1986") e descrição em A ("moradia anterior") + referência ao quesito 319. V-code é correto, mas a evidência textual de B/C é imperfeita.
- **MIULTMUD → V0313:** MED porque os labels em A ("Última mudança") e B/C ("Anos de Moradia") são diferentes — a equivalência é via categorias, não via descrição. V-code correto.

Em ambos casos, o V-code converge — só a confiança subjetiva difere.

## Conclusão final

O consensus 9-way em `round3_consensus_9way.csv` é **sólido e pode ser congelado como gold standard**. Minha decisão FINAL para os 2 casos MAJORITY:

- **FLDOMICH = V0335** (não V0337) — HIGH confidence
- **FLDOMICM = V0336** (não V0338) — HIGH confidence

Após esta R4, recomendo elevar essas duas vars de 8/9_MAJORITY para 11/12_NEAR_UNANIMOUS (assumindo que R4A1 e R4A3 também concordem com V0335/V0336). Os 5 CANNOT_MAP permanecem como CANNOT_MAP no gold standard final, com nota de que RFAPCAPV é potencialmente derivável a partir de V3045 + tamanho da família.

**Discordâncias listadas:** zero discordâncias com o `chosen` final do consensus 9-way.
