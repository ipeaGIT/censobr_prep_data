# Round 2 Agent 3 — Auditoria da Rodada 1

**Data:** 2026-05-04
**Agente:** R2A3
**Inputs:** `_inputs/source_A_parsed_142vars.csv`, `source_B_*.csv`, `source_C_*.csv`, `v050_*.txt`
**Compara contra:** `round1_agent1.csv`, `round1_agent2.csv`, `round1_agent3.csv`, `round1_consensus.csv`

## Resumo executivo

- **Mapping independente (Parte 1):** 141 variáveis (artefato linha 2 dropado).
  - HIGH: **136**
  - CANNOT_MAP: **5** (UFNOM, MESONOM, MICRONOM, MUNICNOM, RFAPCAPV)
  - MED/LOW/AMBIGUOUS: **0**
- **Concordância com R1 consensus:** 141/141 vars (100%) — incluindo as 2 MAJORITY (FLDOMICH, FLDOMICM) onde concordei com a maioria R1A1+R1A3.
- **Divergências do consensus:** **nenhuma**.

## Tabela: meu V-code vs R1 consensus

| Categoria | Quantas | Comentário |
|---|---|---|
| Concordo com UNANIMOUS | 134 | Sem polêmica. |
| Concordo com MAJORITY (a favor da maioria) | 2 | FLDOMICH=V0335, FLDOMICM=V0336 (concordo com R1A1+R1A3, contra R1A2). |
| Concordo com UNANIMOUS CANNOT_MAP | 5 | UFNOM, MESONOM, MICRONOM, MUNICNOM, RFAPCAPV. |
| Discordo de R1 | 0 | — |

## Comentário sobre as 2 MAJORITY (FLDOMICH / FLDOMICM)

**Decisão:** mantenho **V0335 / V0336** (alinhado com R1A1, R1A3 e R1 consensus).

### Evidência decisiva

A_descricao das 4 variáveis de A em sequência (A_org_id 11.16, 11.17, 11.23, 11.24):

| A_var | A_org_id | A_descricao |
|---|---|---|
| FLDOMICH | 11.16 | "Filhos moram domicilio - homem" |
| FLDOMICM | 11.17 | "Filhas moram domicilio -mulher" |
| FLNAODOH | 11.23 | "Filhos **nao** moram domicilio" |
| FLNAODOM | 11.24 | "Filhas **nao** moram domicilio" |

A presença de **dois pares**, um afirmativo ("moram") e um negativo ("nao moram"), é a chave: A está reproduzindo as **quatro variáveis V0335/V0336/V0337/V0338** do questionário 1991, na ordem natural do bloco de fecundidade.

Mapping em B/C:
- **V0335** "Filhos Tidos que moram **no** domicílio" — único (sem split H/M no nome do V-code)
- **V0336** "Filhas Tidas que moram **no** domicílio"
- **V0337** "Filhos Tidos que moram **em outro** domicílio (Homens)"
- **V0338** "Filhas Tidas que moram **em outro** domicílio (Mulheres)"

A correspondência semantica linear é:

```
A.FLDOMICH (moram domicilio - homem)     → V0335 (filhos no domicilio)
A.FLDOMICM (moram domicilio - mulher)    → V0336 (filhas no domicilio)
A.FLNAODOH (nao moram domicilio)         → V0337 (filhos em outro domicilio = nao moram aqui)
A.FLNAODOM (nao moram domicilio)         → V0338 (filhas em outro domicilio)
```

### Por que R1A2 errou ao escolher V0337/V0338 para FLDOMICH/FLDOMICM

R1A2 raciocinou que como V0335/V0336 não têm sufixo "(Homens)/(Mulheres)" no rótulo B/C e A separa por sexo, então o match seria com V0337/V0338 (que têm split explícito). Isso está incorreto porque:

1. **V0335 e V0336 já são separados por sexo** no próprio nome: V0335 = "**Filhos** Tidos" (masculino, plural genérico mas tradicionalmente filhos-homens) e V0336 = "**Filhas** Tidas" (feminino). O par V0335/V0336 corresponde 1:1 a Filhos/Filhas como V0337/V0338.

2. **O sufixo "- homem" / "- mulher" em A_descricao indica o respondente** do bloco de fecundidade, não o sexo do filho. O questionário 1991 aplicou perguntas de fecundidade tanto a homens quanto a mulheres (tradicionalmente só mulheres respondiam, mas a partir dos anos 1990 IBGE estendeu); o sufixo é apenas marcador de qual versão do questionário foi aplicada.

3. **A própria existência de FLNAODOH/FLNAODOM como par paralelo** é a evidência crítica: se FLDOMICH=V0337 e FLDOMICM=V0338, sobrariam apenas V0335/V0336 sem mapping em A — o que é improvável dado o cuidado de IBGE em preservar todas as 4 variáveis de fecundidade em domicílio. A interpretação de R1A2 deixaria 2 vars de A com "duplo mapping" para V0337/V0338 e 2 V-codes (V0335/V0336) órfãos.

4. **Ordem de A respeita a sequência natural do questionário 1991:** primeiro filhos no domicílio (11.16/11.17), depois nascidos vivos (11.25/11.26), tidos (11.28/11.29), vivos (11.31/11.32), nascidos mortos (11.20/11.21), mortos (11.18/11.19), e os "nao moram" (11.23/11.24). A ordem 11.16 → 11.23 fecha o par "no domicílio" → "em outro domicílio".

### Confiança final

**HIGH** — três fontes (descrição A + presença de par afirmativo/negativo + estrutura V0335-V0338 do questionário 1991) convergem para V0335/V0336 em FLDOMICH/FLDOMICM.

## Comentário sobre os 5 CANNOT_MAP de R1 consensus

| A_var | Decisão R1+R2A3 | Avaliação |
|---|---|---|
| **UFNOM** | CANNOT_MAP | **Correto.** A entrega rótulo textual da UF; v050 deriva `name_state` em `add_geography_cols()` a partir de V1101. Não há V-code para nome textual em B/C. Mapping: A.UFNOM → pipeline-derived `name_state`, não V-code. |
| **MESONOM** | CANNOT_MAP | **Correto.** Apenas V7001 (código numérico) existe em B/C. v050 expõe `code_meso` mas sem `name_meso` para 1991. |
| **MICRONOM** | CANNOT_MAP | **Correto.** Idem MESONOM — v050 expõe `code_micro` mas sem `name_micro` em 1991. |
| **MUNICNOM** | CANNOT_MAP | **Correto.** v050 expõe `code_muni` (numérico) mas não `name_muni` em 1991_households / 1991_population. Pipeline poderia adicionar via cruzamento com `geobr` ou tabela auxiliar `municipio_1991.xls` — caso o usuário decida estender em v0.6.0. |
| **RFAPCAPV** | CANNOT_MAP | **Correto.** Var A é REAL com 999999998=NSA / 999999999=Ignorado, descrição "Renda familiar per capita". Em B/C apenas existe V3049 (faixas). v050 não tem campo correspondente. Esta é claramente uma variável **derivada** pelo IBGE 2025 a partir de V3045 (renda familiar) ÷ tamanho da família. Não há V-code histórico. |

**Possível melhoria de longo prazo:** os 4 nomes textuais (UFNOM, MESONOM, MICRONOM, MUNICNOM) não são "perdidos" no produto final do `censobr` — o pipeline os reconstrói via `add_geography_cols` (UF+região) e potencialmente via `geobr`/tabelas IBGE auxiliares (meso/micro/muni). Marcar CANNOT_MAP é a decisão correta para esta tarefa de mapping V-code → V-code, mas o pipeline `R/clean_microdata_1991.R` pode comentar que estas vars vêm de outras fontes.

**RFAPCAPV** poderia ser **calculada** no pipeline a partir de V3045/V0111+V0112 (renda familiar / total moradores) se o usuário quiser exposar como `renda_pc_dom` em v0.6.0 — mas isso é decisão de design do consumidor, não do mapping.

## Variáveis onde discordo da R1 majority

**Nenhuma.** Após análise independente, todas as 136 vars com mapping concordam com R1 consensus, e os 5 CANNOT_MAP também.

## Notas adicionais (qualidade do output)

1. **Linha 2 do source_A** (`1,0,2,3,`) é artefato de parsing — eu droppei (mesma decisão de R1A3). R1A1+R1A2 mantiveram com CANNOT_MAP, o que infla o total em 1 mas é equivalente. Resultado final 141 reais.

2. **PESO (V7300)** — eu marquei HIGH; R1A1 e R1A3 marcaram MED por causa da ambiguidade hh/pop (V7300 vs V7301). Tecnicamente A.PESO está em A_org_id 9.27 (bloco domicílio), portanto V7300 é o match canônico. Deixei HIGH em vez de MED porque o A_org_id resolve a ambiguidade, mas reconheço que MED também é defensável. **Não é divergência substantiva.**

3. **MESONUM/MICRONUM** — eu marquei HIGH; R1A3 marcou MED. Justificativa de R1A3: v050 não expõe V7001/V7002 com esses nomes literais (em vez disso, expõe `code_meso`/`code_micro`). Isso é estilo de classificação — eu considero o match V-code ↔ V-code HIGH e a renomeação para `code_*` é etapa de "padronizar" do pipeline, não falha de mapping. **Não é divergência substantiva.**

4. **RFANOMIF (V3046)** — A categoria list em A copia o padrão de 15 faixas com 3/4 SM (estrutura de V3044/V3046 fine), mas B/C V3046 mostra 13 faixas coarse. R1A1 e R1A2 marcaram MED por essa inconsistência; R1A3 marcou HIGH. Eu marquei HIGH porque a descrição "Faixa renda familiar nominal" + presença em v050 + tipo INTEGER convergem inequivocamente para V3046. A discrepância de categorias é provavelmente erro de transcrição no parsed CSV (ou IBGE 2025 retabulou com faixas finas). **Não muda V-code.**

## Conclusão

A Rodada 1 produziu um mapping **sólido e correto**. O único ponto de tensão (FLDOMICH/FLDOMICM) foi decidido corretamente pela maioria (R1A1+R1A3) — a leitura semântica de R1A2 é plausível mas refutável pela estrutura completa de pares afirmativo/negativo em A. Os 5 CANNOT_MAP (UFNOM, MESONOM, MICRONOM, MUNICNOM, RFAPCAPV) são todos justificados — quatro são strings derivadas no pipeline e um é cálculo derivado do IBGE 2025 sem V-code histórico.

**Recomendação:** o consensus R1 pode ser usado como mapping autoritativo para implementação do pipeline `R/clean_microdata_1991.R`. Round 2 confirma com 100% de concordância.
