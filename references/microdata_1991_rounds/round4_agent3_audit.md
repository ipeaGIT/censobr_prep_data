# Round 4 — Agente 3 — Auditoria Final dos 9 agentes (R1+R2+R3)

## Sumário

- 141/141 das minhas escolhas independentes (Parte 1) batem com o `chosen` do `round3_consensus_9way.csv`.
- Concordo integralmente com o consensus 9-way.
- Decisão FINAL sobre FLDOMICH/FLDOMICM: **V0335 / V0336**.
- 5/5 CANNOT_MAP unânimes (UFNOM, MESONOM, MICRONOM, MUNICNOM, RFAPCAPV) **mantidos** — corretos.
- R1A2 foi dissenter genuíno por erro: trocou V0335/V0336 por V0337/V0338 nas duas variáveis FLDOMICH/FLDOMICM. Erro reverso (mapeou "moram domicilio" como "moram em outro domicílio").

---

## Pergunta 1 — Concorda com `chosen` do round3_consensus_9way.csv?

**Sim, integralmente.** Cada uma das minhas 141 propostas independentes na Parte 1 (round4_agent3.csv) é idêntica ao `chosen` do consensus 9-way. Isso inclui:

- 134 linhas com 9/9 UNANIMOUS V-codes — minha escolha bate.
- 2 linhas com 8/9 MAJORITY (FLDOMICH=V0335, FLDOMICM=V0336) — minha escolha bate com a maioria.
- 5 linhas com (empty) unânime — também propus CANNOT_MAP.

Não há nenhuma divergência entre meu mapping independente e o consensus.

---

## Pergunta 2 — FLDOMICH / FLDOMICM (8/9 V0335/V0336 vs 1/9 V0337/V0338): decisão final?

**Decisão final: V0335 (FLDOMICH) e V0336 (FLDOMICM).**

### Argumento decisivo

Olhando para os labels de B (Pedro Souza) e C (layout IBGE) lado a lado:

| V-code | Label B+C | Distinção semântica |
|---|---|---|
| V0335 | Filhos Tidos que moram **no** domicílio | filhos homens **residentes neste domicílio** |
| V0336 | Filhas Tidas que moram **no** domicílio | filhas mulheres **residentes neste domicílio** |
| V0337 | Filhos Tidos que moram **em outro** domicílio (Homens) | filhos homens **residentes alhures** |
| V0338 | Filhas Tidas que moram **em outro** domicílio (Mulheres) | filhas mulheres **residentes alhures** |

A descrição A `FLDOMICH = "Filhos moram domicilio - homem"` (sem o qualificador "outro" ou "não") alinha-se literalmente com V0335 — "Filhos Tidos que moram no domicílio". E na própria source A, existe a variável **FLNAODOH = "Filhos nao moram domicilio"** mapeada para V0337 (9/9 UNANIMOUS no consensus). Há simetria perfeita:

- FLDOMICH ↔ V0335 (moram **no** domicílio)
- FLNAODOH ↔ V0337 (moram **em outro** domicílio = "não moram no domicílio")
- FLDOMICM ↔ V0336
- FLNAODOM ↔ V0338

Se R1A2 estivesse certo (FLDOMICH=V0337), então FLDOMICH e FLNAODOH apontariam ambos para V0337 — colisão impossível. O fato de FLNAODOH=V0337 ter consenso 9/9 (incluindo R1A2) prova por contradição que FLDOMICH **não pode** ser V0337.

Reforço adicional: as categorias de A para FLDOMICH (`0=Nenhum | 70=Nao tem | 99=Ignorado | 100=NSA`) são consistentes com ambos os V-codes (todos os V-codes desse tema seguem padrão semelhante em categorias-código), portanto categorias não desempatam — o desempate vem da semântica do label e da simetria com FLNAODOH.

---

## Pergunta 3 — R1A2 dissenter consistente: tem mérito ou foi erro genuíno?

**Erro genuíno, não tem mérito.**

R1A2 dissentiu em apenas 2/141 vars (FLDOMICH e FLDOMICM), e nas 139 restantes concordou com os outros agentes. O padrão sugere uma **inversão pontual** entre o par "moram no domicílio" (V0335/V0336) e "moram em outro domicílio" (V0337/V0338) — provavelmente um lapso de leitura ou interpretação invertida da descrição A "Filhos moram domicilio - homem" como "Filhos moram [em outro] domicilio".

A prova de inconsistência interna do R1A2: ele marcou FLNAODOH=V0337 e FLDOMICH=V0337 — duas variáveis A diferentes mapeadas ao mesmo V-code, o que é semanticamente impossível dado que A as distingue como "moram no" vs "não moram no" domicílio. Em consequência, R1A2 deixou V0335/V0336 sem mapping reverso e duplicou V0337/V0338.

Conclusão: erro localizado por inversão direcional, não interpretação válida alternativa.

---

## Pergunta 4 — Algum 9/9 UNANIMOUS onde suspeito que TODOS erraram?

**Não. Verifiquei caso a caso e mantenho os 134 unânimes.**

Casos que examinei com mais atenção (potencialmente sutis):

1. **MIULTMUD ↔ V0313** (`Anos de Moradia na Situação do Domicílio`). A label A "Ultima mudanca" é vaga, mas as categorias `0=Menos de 1 ano | 98=Nunca mudou` batem **literalmente** com a definição V0313 do layout C ("00 = menos de um ano de moradia; 01 a 97 = número de anos de moradia; 98 = nunca mudou"). Confirmado.

2. **MIANTEMU ↔ V3191** (`Município ou País Estrangeiro em que morava em 01/09/1986 (declarado no quesito 319)`). A própria descrição B/C de V3191 menciona "01/09/1986" — o que poderia confundir com V3211 (também 01/09/1986). Porém o sufixo do V3191 é "declarado no quesito 319" (residência **anterior**, complementa V0319), enquanto V3211 é "declarado no quesito 321" (residência em 1986, complementa V0321). MIANTEMU = "moradia anterior" → V3191. MIMO86MU = "moradia em 86" → V3211. Confirmado: dois quesitos distintos no censo, ambos coletam município mas com referências de tempo diferentes (anterior vs 5 anos atrás).

3. **EDCURSNS ↔ V0326**. Nome A "Curso nao seriado" e B/C "Grau que freqüenta em curso não seriado". Mismatch superficial (curso vs grau), mas as categorias 0-6 (Pré-escolar, Alfa adultos, Supletivo 1º/2º, Pré-vestibular, Mestrado/Doutorado) batem perfeitamente. Confirmado.

4. **PESO ↔ V7300**. A descrição é REAL, e v050 households tem V7300 (não V7301). Em v050 population há V7301 também. PESO está no record de domicílio do dump A (org_id 9.27 ainda no bloco 9 = domicílio), portanto V7300 correto. Nas vinhetas seria denormalizado para população via merge.

5. **SITDESO ↔ V0358** ("Condição de Atividade"). O nome A "Situacao desocupado" sugere apenas pessoas sem ocupação, mas as categorias incluem `1=Procurando trabalho - já trabalhou`, `2=Procurando trabalho - nunca trabalhou`, `3=Aposentado`, ..., `8=Doente ou inválido`, `9=Afazeres domésticos`. Isso é exatamente V0358 que captura todas as pessoas que não trabalharam nos últimos 12 meses (PNAD-style). Confirmado.

Não identifiquei nenhum caso onde TODOS os 9 agentes possam ter errado.

---

## Pergunta 5 — Os 5 CANNOT_MAP unânimes (UFNOM, MESONOM, MICRONOM, MUNICNOM, RFAPCAPV) — corretos?

**Sim. Mantenho CANNOT_MAP em todos os 5.**

### Os 4 nomes textuais (UFNOM, MESONOM, MICRONOM, MUNICNOM)

Estas são strings textuais (`STRING` em A) com nomes de UF/meso/micro/município. O dicionário histórico do IBGE 1991 só tem **códigos numéricos** correspondentes:

- UFNOM ↔ V1101 é código (11=RO, ..., 53=DF), não string de nome.
- MESONOM ↔ V7001 é código (do arquivo auxiliar mesorregiao_1991.xls).
- MICRONOM ↔ V7002 é código (microrregiao_1991.xls).
- MUNICNOM ↔ V1102 é código (municipio_1991.xls).

O IBGE 2025 (source A) **adicionou colunas textuais novas** que não existem no layout original 1991. Mapeá-las para V-codes históricos seria errado. O caminho correto no pipeline `censobr` é **derivar `name_state` etc. do código via crosswalks** (`add_state_info()`, `add_region_info()` em `R/support_fun.R`), tal como já é feito para outros anos. Por isso CANNOT_MAP é a marcação adequada — não há V-code histórico, e a coluna é redundante com derivação a partir do código.

### RFAPCAPV (Renda familiar per capita, REAL)

A pergunta é: existe um V-code para o **valor numérico** de renda familiar per capita em 1991? Confiro:

- V3045 = Rendimento Nominal Médio Mensal **Familiar** (valor)
- V3049 = **Faixas** de Rendimento Nominal Médio Mensal Familiar **Per Capita**
- Não há V-code para o **valor** per capita (apenas faixas via V3049).

Faz sentido: no censo 1991 o IBGE fornecia o valor familiar agregado (V3045), as faixas familiares (V3046, V3047), e as faixas per capita (V3049), mas **não** o valor per capita absoluto numérico. RFAPCAPV é uma adição computada do IBGE 2025 (talvez derivando V3045 / total moradores). Sem V-code histórico equivalente: CANNOT_MAP é correto.

Caminho no pipeline: se necessário, derivar no censobr a partir de V3045 / nº moradores (igual como o IBGE 2025 fez), nunca mapear "criando" um V-code inexistente.

---

## Pergunta 6 — Strength labels (HIGH/MED) divergiram em algumas vars: impacto material?

**Nenhuma divergência em strength tem impacto material no V-code escolhido.** Em todas as vars onde os agentes divergiram entre HIGH/MED, o V-code proposto foi idêntico. As divergências de strength são:

- Vars com B+C concordando mas que NÃO estão em v050 households nem population (ex: V3357 FLNAMORT, V3354 FLNAVIVT, V3352-V3353 FLTIDOSH/M, V3355-V3356 FLNAVIVH/M). Alguns agentes marcaram MED (porque v050 ausente é uma "fonte ausente"), outros HIGH (porque B e C concordam fortemente e o v050 não inclui todas as variáveis publicáveis). Eu marquei MED nesses casos no meu round4_agent3.csv, alinhado com a interpretação mais conservadora.

- MIANTEMU (V3191) — mais ambíguo (pode confundir com V3211). Alguns marcaram HIGH outros MED. Isto não afeta o V-code escolhido (V3191 unânime).

Nenhum desses casos altera o V-code escolhido, apenas o nível de certeza declarada. Para fins de gold standard congelado, o V-code é o que conta.

---

## Conclusão final da auditoria

O consensus 9-way está **sólido e correto** em todas as 141 variáveis. Recomendo **congelar o gold standard** com:

- 139 vars unânimes (incluindo os 5 CANNOT_MAP).
- 2 vars majoritárias (FLDOMICH=V0335, FLDOMICM=V0336) — confirmadas pela auditoria pela simetria com FLNAODOH/M (V0337/V0338).
- Total: 141 mapeamentos finais, com confiança máxima em 139 e confiança alta em 2.

Após inclusão dos 3 agentes de R4 (assumindo que outros agentes R4 também confirmem), o gold standard ficará efetivamente em **12/12** ou **≥10/12** em todas as 141 vars, atendendo o critério da rodada final.
