# Round 3 — Agente 3 — Auditoria

## Parte 1 — Stats do mapping independente

Total de variáveis processadas: **141** (linha 2 artefato dropada).

| Evidence strength | Count |
|---|---:|
| HIGH | 136 |
| MED | 0 |
| LOW | 0 |
| AMBIGUOUS | 0 |
| CANNOT_MAP | 5 |

**CANNOT_MAP (5):**
- `UFNOM` — A é nome textual da UF (string); B/C só têm V1101 numérico. v050 traz `name_state` derivado, sem V-code direto.
- `MESONOM` — idem mesorregião; só V7001 numérico em B/C.
- `MICRONOM` — idem microrregião; só V7002 numérico.
- `MUNICNOM` — idem município; só V1102 numérico.
- `RFAPCAPV` — A descreve valor REAL de "Renda familiar per capita". B/C não têm V-code de valor per capita (apenas faixas em V3049). Ausente em v050.

## Parte 2 — Comparação contra `round2_consensus_6way.csv`

**Concordância: 141/141 vars (100%) — concordo integralmente com o consensus 6-way.**

Discordâncias: **0**.

Verifiquei var-por-var todos os 141 V-codes do `chosen` em `round2_consensus_6way.csv` contra meu `round3_agent3.csv`:
- Os 136 V-codes HIGH meus batem 1:1 com o consensus.
- Os 5 CANNOT_MAP meus (UFNOM/MESONOM/MICRONOM/MUNICNOM/RFAPCAPV) batem com os 5 CANNOT_MAP unânimes do consensus.

## Resposta às 5 perguntas da auditoria

### 1. Você concorda com o consensus final atual (`chosen`)?

**Sim, integralmente.** Os 141 V-codes do `chosen` (incluindo 5 vazios para CANNOT_MAP) refletem corretamente o que A/B/C indicam. Em particular:
- Pares family-vital (FLTIDOSH/FLTIDOSM/FLTIDOST → V3352/V3353/V3351; FLNAVIVH/FLNAVIVM/FLNAVIVT → V3355/V3356/V3354; FLVIVOSH/FLVIVOSM/FLVIVOST → V3361/V3362/V3360; FLMORTOH/FLMORTOM → V3539/V3540; FLNAMORH/FLNAMORM/FLNAMORT → V0341/V0342/V3357) estão todos consistentes.
- Pares migratórios (MIANTEMU/MIMO86MU → V3191/V3211; MIANTEUF/MIMO86UF → V0319/V0321; MIANTEZN/MIMO86ZN → V0320/V0322) estão corretos: V3191/V0319/V0320 referem-se ao "morava antes" (Q319), e V3211/V0321/V0322 ao "morava em 01/09/1986" (Q321) — as duas são variáveis distintas no questionário 1991.
- Renda total/principal (RTOTALPV → V3561, RPRINCIV → V0356, RPRINCIF → V3564, RTONOMIF → V3562, RTOREALF → V3563) estão corretas: o "real pessoal" (RTOREALF) bate com "Real Total" (V3563) que se aplica à pessoa.

### 2. Para FLDOMICH=V0335 e FLDOMICM=V0336 (5/6 majority): concordo? Por quê?

**Sim, concordo. Concordo com a maioria 5/6, NÃO com o dissenter R1A2.**

Evidência decisiva em B (`source_B_pedrosouza_pessoas.csv`):
- Linha 727: `V0335,Filhos Tidos que moram no domicílio` — descrição neutra mas o nome do par com V0336 (logo abaixo) torna óbvio o split por sexo.
- Linha 728: `V0336,Filhas Tidas que moram no domicílio` — explicitamente "**Filhas**" (feminino), confirmando que V0335/V0336 É um par split por sexo (V0335=Filhos homem, V0336=Filhas mulher).
- Linha 729: `V0337,Filhos Tidos que moram em outro domicílio (Homens)` — explicitamente "outro domicílio".
- Linha 730: `V0338,Filhas Tidas que moram em outro domicílio (Mulheres)` — explicitamente "outro domicílio".

Portanto o IBGE 1991 publicou DOIS pares split por sexo:
- V0335/V0336: filhos/filhas que **moram no domicílio**.
- V0337/V0338: filhos/filhas que **moram em outro domicílio**.

A var `FLDOMICH` ("Filhos moram domicilio - homem") + `FLDOMICM` ("Filhas moram domicilio -mulher") na descrição A casam exatamente com o par "moram no domicílio" → **V0335/V0336**. As vars `FLNAODOH`/`FLNAODOM` ("Filhos não moram domicilio") casam com **V0337/V0338**.

O dissenter R1A2 argumentou que V0335/V0336 seriam "neutros sem split por sexo" e que V0337/V0338 seriam o melhor match porque têm split — isso é incorreto. A leitura cuidadosa do label `V0336,Filhas Tidas que moram no domicílio` mostra que V0335/V0336 também é split (V0335=Filhos, V0336=Filhas, plurais marcados em masculino/feminino). O R1A2 também viola o teste de consistência: se FLDOMICH=V0337, então FLNAODOH também seria V0337, mas FLNAODOH unanimemente é V0337 — não pode ser ambos.

**Decisão final: manter V0335/V0336 para FLDOMICH/FLDOMICM. Decisão estável; R1A2 errou.**

### 3. Há vars onde acho que TODOS os 6 agentes anteriores erraram?

**Não.** Auditei todos os 141 mapeamentos e nenhum me parece incorreto. Os 5 CANNOT_MAP unânimes são justificáveis pelas evidências (não há V-code para nome textual em B/C; não há V-code para valor per-capita).

### 4. Strength downgrades HIGH→MED em vars onde alguns agentes diminuíram confiança: concordo?

Os principais downgrades vistos no consensus:
- **MESONUM/MICRONUM**: alguns agentes marcaram MED por estarem ausentes em v050 population (linhas 53/54 do v050_hh confirmam que estão presentes em households apenas). Eu marco HIGH porque (a) descrição idêntica em A/B/C, (b) categorias compatíveis (códigos numéricos com aux file), (c) presença em v050 households. A ausência em population é convenção do v0.5.0 (vars de domicílio não denormalizadas para população neste caso específico), não falha de identificação. **Discordo do downgrade — V7001/V7002 é HIGH.**
- **MIULTMUD**: alguns agentes marcaram MED. Eu marco HIGH porque categorias batem perfeitamente: "0=Menos de 1 ano" e "98=Nunca mudou" em A correspondem a "00=menos de um ano de moradia, 98=nunca mudou" em B/C. **Discordo do downgrade — é HIGH.**
- **PESO**: alguns marcaram MED. V7300 é claramente o peso domicílio em B/C; aparece em ambas as v050 listas (households linha 57, population linha 152). **Discordo do downgrade — é HIGH.**
- **RFANOMIF**: alguns marcaram MED por divergência aparente nas faixas. Comparando A (13 faixas com 1/4, 1/2, 1, 2, 3, 5, 10, 15, 20, 30 SM) com B/C V3046 (13 faixas idênticas: 1/4, 1/2, 1, 2, 3, 5, 10, 15, 20, 30 SM) — **batem exatamente**. O suposto desencontro em "3/4" não existe em V3046 (esse é o padrão de V3044 renda casal e V3049 per capita, que têm o split mais fino de quartas). **Discordo do downgrade — é HIGH.**
- **MIANTEMU**: alguns marcaram MED. V3191 está claramente vinculado ao Q319 (moradia anterior) por descrição em B/C. **Discordo do downgrade — é HIGH.**

**Resumo: discordo dos downgrades HIGH→MED feitos por alguns R1/R2 agentes. Todos os 5 casos têm evidência tripla e merecem HIGH.** Mas como o V-code (`chosen`) está correto em todos, isso é discussão de strength label — não muda o mapping.

### 5. CANNOT_MAP unânime (UFNOM, MESONOM, MICRONOM, MUNICNOM, RFAPCAPV): manter?

**Sim, manter para todos os 5.**

- `UFNOM/MESONOM/MICRONOM/MUNICNOM`: B/C codificam apenas a versão numérica (V1101, V7001, V7002, V1102). Os nomes textuais não têm V-code histórico. v050 population/households deriva `name_state`/`name_region` via lookup downstream (`R/add_geography_cols.R`), não via V-code direto. Não inventar V-code.
- `RFAPCAPV`: B/C não têm V-code para "valor da renda familiar per capita". V3049 é apenas faixa. V3045 é renda familiar (não per capita). v050 não traz coluna equivalente. A var é genuinamente nova/sem mapeamento histórico — IBGE 2025 derivou-a internamente como REAL.

## Conclusão

O consensus 6-way está correto. Minha rodada (R3A3) replicou independentemente os mesmos 141 V-codes (incluindo CANNOT_MAP) e ratifica especialmente o desempate FLDOMICH/FLDOMICM = V0335/V0336.

Discordâncias identificadas são apenas de **strength label** (alguns vars merecem HIGH onde foram marcados MED), nunca de V-code.
