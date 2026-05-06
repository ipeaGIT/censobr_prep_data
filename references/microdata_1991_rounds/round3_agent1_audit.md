# Round 3 — Agent 1 — Auditoria

Data: 2026-05-04. Mapping independente das 141 vars + auditoria das Rodadas 1+2 (6 agentes anteriores + 2 consensos).

## Parte 1 — Stats do meu mapping

Total: 141 variáveis (linha 2 artefato dropada conforme R3).

| Evidence Strength | Contagem |
|---|---|
| HIGH | 136 |
| MED  | 0 |
| LOW  | 0 |
| AMBIGUOUS | 0 |
| CANNOT_MAP | 5 |

**CANNOT_MAP (5):** UFNOM, MESONOM, MICRONOM, MUNICNOM, RFAPCAPV — mesmas 5 do consensus unânime.

Justificativa de toda evidência ser HIGH ou CANNOT_MAP: para cada uma das 136 vars mapeadas, descrição semântica + categorias coincidem entre A, B (Pedro Souza), C (layout IBGE) e o V-code está presente em pelo menos um dos parquets v050. Não encontrei caso ambíguo restante (mesmo FLDOMICH/M tem evidência interna firme, ver Q2 abaixo).

## Parte 2 — Concordância vs `round2_consensus_6way.csv`

**141/141 concordo** com o V-code escolhido (`chosen`) na coluna do consensus 6-way. **0/141 discordâncias.**

Pares relevantes verificados explicitamente:
- FLDOMICH=V0335, FLDOMICM=V0336 (coincidente com 5/6 majority).
- FLNAODOH=V0337, FLNAODOM=V0338 (par "moram em outro").
- 5 CANNOT_MAP unânimes idênticos ao meu set.

## Respostas às 5 perguntas

### Q1 — Você concorda com o consensus final atual (`chosen` em `round2_consensus_6way.csv`)?

**Sim, 141/141.** Cada V-code escolhido bate com o que produzi independentemente lendo só os _inputs/. Não vejo nenhuma var em que o consenso esteja errado ou onde uma alternativa melhor exista nas fontes A/B/C.

### Q2 — Caso 5/6 MAJORITY (FLDOMICH=V0335, FLDOMICM=V0336): você concorda? Por quê?

**Concordo. V0335/V0336 está correto. R1A2 (dissenter para V0337/V0338) errou.**

Evidência:

1. **Estrutura pareada IBGE.** B/C definem dois pares distintos:
   - V0335 ("Filhos Tidos que moram no domicílio") + V0336 ("Filhas Tidas que moram no domicílio") — *moram aqui*.
   - V0337 ("Filhos Tidos que moram em outro domicílio (Homens)") + V0338 ("Filhas Tidas que moram em outro domicílio (Mulheres)") — *moram em outro*.

2. **A documentação 1991 espelha o mesmo par dual:**
   - FLDOMICH (org_id 11.16) "Filhos moram domicílio - homem" + FLDOMICM (11.17) "Filhas moram domicílio - mulher" — *moram aqui*.
   - FLNAODOH (11.23) "Filhos não moram domicílio" + FLNAODOM (11.24) "Filhas não moram domicílio" — *não moram aqui*.

3. **A descrição semântica decide.** A_descricao para FLDOMICH é "Filhos **moram** domicílio - homem" (afirmativo, sem negação). V0335 = "que moram no domicílio". Mapeamento direto.

4. **Categorias compatíveis.** V0335/V0336 são "Campo numérico, sem categorias" em B/C (count de filhos). A para FLDOMICH dá "0=Nenhum | 70=Não tem | 99=Ignorado | 100=NSA" — cabe num campo numérico de count com sentinelas.

5. **Erro de R1A2 detectável:** confundiu o par positivo (FLDOMICH/M = moram aqui = V0335/V0336) com o par negativo (FLNAODOH/M = não moram aqui = V0337/V0338). Como FLNAODOH/M já tem mapeamento unânime para V0337/V0338, atribuir V0337/V0338 também a FLDOMICH/M criaria colisão (duas A_var distintas → mesmo V-code), sintoma claro de erro.

**Decisão: manter consensus V0335/V0336.** Forte (HIGH) confiança.

### Q3 — Há vars onde você acha que TODOS os 6 agentes anteriores erraram?

**Não.** Releitura completa das 136 vars mapeadas confirma todos os V-codes do consensus. Nenhum erro coletivo identificado.

Pontos onde reverifiquei com cuidado extra (todos confirmados):

- **MIULTMUD → V0313** (consensus). A descrição "Última mudança", categorias `0=Menos 1 ano | 98=Nunca mudou`. V0313 é "Anos de Moradia na Situação do Domicílio" com categorias `00=menos 1 ano, 01-97 anos, 98=nunca mudou`. Match por categorias-sentinela exatas. Confirmado.
- **MIANTEMU → V3191** (consensus). A_descricao "Município moradia anterior" (referência a V0319), V3191 em B/C diz "Município ... morava em 01/09/1986 (declarado no quesito 319)". A descrição B/C é literalmente do quesito 319 = moradia anterior. Match correto.
- **METROP → V7003**. A lista 12 categorias (0-11, incluindo Brasília=10 e Vitória=11). B/C lista só 10 (0-9, sem Brasília/Vitória). Não é divergência — é IBGE 2025 estendendo a tabela RM. V-code mapeia para V7003 mesmo assim (mesma variável conceitual).

### Q4 — Strength downgrades (HIGH → MED) onde alguns agentes diminuíram confiança: você concorda?

Vars com mix de strengths no consensus (não-uniformes HIGH/HIGH/HIGH/HIGH/HIGH/HIGH):

- **MESONUM, MICRONUM** (HIGH/HIGH/MED/MED/HIGH/HIGH) — alguns marcaram MED porque B/C dão "Ver arquivo auxiliar" (sem categorias enumeradas inline). Eu marquei HIGH: o V-code é sólido, e a ausência de enumeração é estrutural (códigos numéricos exaustivos vão em arquivo auxiliar — convenção IBGE). **Discordo do downgrade**, mas é matter of degree, não de mapping. Mantém V7001/V7002.
- **MIULTMUD, RFANOMIF** (HIGH/HIGH/MED/MED/HIGH/HIGH e MED/MED/HIGH/MED/MED/HIGH respectivamente) — marquei HIGH em ambos. RFANOMIF tem 13 faixas idênticas em A/B/C; redação do A é "Faixa renda dom nominal" enquanto B/C dizem "Faixas de Rendimento Nominal Médio Mensal Domiciliar" — variação aceitável. **Discordo do MED**, deveria ser HIGH.
- **MIANTEMU** (HIGH/MED/HIGH/HIGH/HIGH/HIGH) — HIGH para mim. R1A2 talvez tenha hesitado pela referência cruzada A↔V0319/V3191. Justificada minha HIGH.
- **PESO** (MED/HIGH/MED/MED/HIGH/HIGH) — HIGH para mim. PESO é REAL, V7300 (households) e V7301 (population) são "Peso ou Fator para Expansão da Amostra". A variável PESO claramente é V7300 (vem na seção 9 = domicílio); o par V7301 é só pessoas. Match único e correto.
- **FLDOMICH/FLDOMICM** (mixed) — HIGH para mim, conforme Q2.
- **FLNAODOH/FLNAODOM** (HIGH/AMBIGUOUS/HIGH/HIGH/HIGH/HIGH) — HIGH para mim. Mais uma vez, par dual com V0335/V0336 é claro.

**Resumo:** os downgrades para MED em algumas dessas vars parecem excesso de conservadorismo de alguns agentes. Os V-codes em si estão corretos; o que muda é a confiança expressa. Não recomendo alterar `chosen`, apenas registrar que strength real é HIGH na maioria dos casos.

### Q5 — CANNOT_MAP unânime (5 vars: UFNOM, MESONOM, MICRONOM, MUNICNOM, RFAPCAPV): manter?

**Manter, sim.**

- **UFNOM/MESONOM/MICRONOM/MUNICNOM:** são campos textuais com nomes humanos (UFs/regiões/municípios). B/C só dispõem dos códigos correspondentes (V1101, V7001, V7002, V1102) — não há V-code histórico para os nomes string. O ecossistema censobr resolve isso no pipeline via `add_state_info()` / `add_geography_cols()`, gerando `name_state`, `name_region`, etc. — não vêm do bruto IBGE. CANNOT_MAP histórico está correto; no pipeline, essas A_vars do FTP 2025 podem ser **descartadas** (já reconstruímos os nomes via `geobr`/dicionário interno).
- **RFAPCAPV (Renda familiar per capita, REAL):** B/C têm V3049 (faixa per capita) mas nenhum V-code numérico para o valor per capita em si. Em v0.5.0 nem o households nem o population parquet têm uma coluna desse tipo (verifiquei nos `v050_*_columns.txt` — sem candidato). A IBGE 2025 deve estar derivando `RFAPCAPV` do quociente `RFAMILIV (V3045) / soma_pessoas_familia`, mas não há V-code histórico para essa derivação. CANNOT_MAP correto; no pipeline pode-se **calcular dinamicamente** ou simplesmente **omitir**, decisão de design downstream.

## Conclusão

Consensus 6-way é robusto. **Recomendo congelar como gold standard de mapping 1991** e seguir com a fase de implementação do pipeline (recodificação + padronização). Único item de atenção: documentar no código que UFNOM/MESONOM/MICRONOM/MUNICNOM/RFAPCAPV ficam de fora do schema padronizado (descarte ou recompute via geografia/derivação).
