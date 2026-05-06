# Round 4 — Agent 1 Audit (FINAL)

## Resumo executivo

Concordo com **141/141** dos `chosen` finais do `round3_consensus_9way.csv`. Meu mapping independente
(Parte 1, `round4_agent1.csv`) reproduz o gold standard sem desvios. Sobre o único ponto de divergência
do nono painel (FLDOMICH/FLDOMICM, 8/9 vs 1/9), o consensus está correto: V0335/V0336.

---

## Pergunta 1 — Concordância com `round3_consensus_9way.csv`

**Sim, concordo com 141/141 dos `chosen`**, incluindo:

- 136 unanimidades 9/9 confirmadas pelo meu mapping independente.
- 2 maiorias 8/9 (FLDOMICH=V0335, FLDOMICM=V0336) — concordo com a maioria, ver Pergunta 2.
- 5 CANNOT_MAP unânimes (UFNOM, MESONOM, MICRONOM, MUNICNOM, RFAPCAPV) — concordo, ver Pergunta 5.

Não desafio nenhum mapping.

---

## Pergunta 2 — FLDOMICH/FLDOMICM: V0335/V0336 vs V0337/V0338

**Decisão final: V0335 / V0336 (consensus 8/9 está correto).**

### Argumento decisivo: prevenção de colisão de mapeamento

A planilha A do FTP IBGE 2025 contém DUAS variáveis distintas com semântica oposta:

| A_var | A_descricao | A_categories |
|---|---|---|
| FLDOMICH | "Filhos **moram** domicilio - homem" | 0=Nenhum \| 70=Nao tem \| 99=Ignorado \| 100=NSA |
| FLNAODOH | "Filhos **nao moram** domicilio" | 0=Nenhum \| 70=Nao tem \| 80=Nao sabe \| 99=Ignorado \| 100=NSA |

E B/C contêm DOIS V-codes complementares:

| V-code | B/C label |
|---|---|
| V0335 | "Filhos Tidos que moram **no** domicílio" |
| V0337 | "Filhos Tidos que moram **em outro** domicílio (Homens)" |

A correspondência semântica é direta:

- FLDOMICH ("Filhos **moram** domicílio") ↔ V0335 ("moram **no** domicílio")
- FLNAODOH ("Filhos **não moram** domicílio") ↔ V0337 ("moram em **outro** domicílio")

A leitura de R1A2 (FLDOMICH → V0337, FLNAODOH → V0337) **colide**: dois A_vars distintos
mapeariam ao mesmo V-code histórico. Pior: no CSV de R1A2 (linhas 73-74 e 80-81), tanto
FLDOMICM quanto FLNAODOM apontam para V0338 — colisão explícita. Isso é tecnicamente
impossível porque FLNAODOH/FLNAODOM e FLDOMICH/FLDOMICM têm categorias e domínios distintos
(uma exclui "Nao sabe"=80, outra inclui).

### Argumento secundário: leitura literal da descrição A

A_descricao de FLDOMICH é "Filhos **moram** domicilio - homem" — verbo **afirmativo**. Não há
"em outro" ou "fora". A interpretação natural em PT-BR é "filhos que moram aqui, neste domicílio",
não "filhos que moram em outro lugar". V0335 ("moram **no** domicílio") é a tradução literal.

### Argumento terciário: presença em v050

V0335 e V0337 ambos estão em `v050_1991_population_columns.txt`. Esse critério não desempata
sozinho, mas confirma que o pipeline v0.5.0 já carregava AMBOS os V-codes, o que só faz sentido
se mapearem a A_vars diferentes (FLDOMICH≠FLNAODOH).

### Conclusão

R1A2 errou. V0335/V0336 é o mapping correto.

---

## Pergunta 3 — R1A2 é dissenter consistente: mérito ou erro?

R1A2 é **dissenter genuinamente errado** neste caso, e o erro é diagnosticável.

A nota de R1A2 ("description semantics may be inverted in IBGE 2025 export … LOW")
sugere que ele/ela suspeitou que o IBGE poderia ter trocado o significado das descrições.
Mas R1A2 **não testou** essa hipótese contra a evidência mais simples disponível: a
EXISTÊNCIA SIMULTÂNEA de FLDOMICH e FLNAODOH no mesmo arquivo A. Se o IBGE quisesse
designar "filhos em outro domicílio" como FLDOMICH, não haveria razão para também
publicar FLNAODOH ("não moram domicilio") como variável separada.

Mérito da abordagem cética de R1A2 (em geral): saudável questionar; o LOW strength
foi correto enquanto não havia evidência decisiva.
Erro concreto deste caso: ignorar a colisão de mapeamento que o próprio CSV gera
(V0337 atribuído a duas A_vars diferentes; V0338 idem).

A heurística certa para o caso geral: quando A tem 2 vars com semântica oposta e
B/C tem 2 V-codes complementares, a correspondência preserva a oposição. Ou seja,
match positivo ↔ V-code positivo, match negativo ↔ V-code negativo. R1A2 violou isso.

---

## Pergunta 4 — Algum 9/9 UNANIMOUS suspeito?

Revi os 136 unanimidades. Não encontro nenhum onde suspeite que TODOS erraram. Casos
dignos de menção (mas que mantenho confirmados):

### MIULTMUD → V0313 (9/9)

A_descricao "Ultima mudanca", categories `0=Menos de 1 ano | 98=Nunca mudou`. V0313 em B/C é
"Anos de Moradia na Situação do Domicílio" com domínio idêntico (`00=menos de um ano | 01-97=anos | 98=nunca mudou`).
A descrição em A é menos literal que em B, mas as categorias batem com precisão (em particular, 98=nunca mudou
é específico e não aparece em outras vars de migração). **Confirmado.**

### SITSET → V1061 (9/9)

A diz "Situação do Setor", V1061 em B/C diz "Situação do Domicílio". Conceitualmente são quase a
mesma coisa no censo IBGE 1991: a situação do setor (urbano/rural com gradações) é atribuída a cada
domicílio. As 8 categorias batem 1:1 (Área urbanizada, Não urbanizada, etc.). **Confirmado.**

### NUMFAM → V0304 (9/9)

A diz "Familia a que pertence", B/C diz "Tipo de Família". As 7 categorias batem (Única,
Dom Coletivo, 1ª-5ª família convivente). A redação difere semanticamente
(NUMFAM sugere ID/contagem; V0304 sugere tipologia), mas as categorias são
idênticas e o domínio é claramente o mesmo conceito IBGE. **Confirmado.**

### SITDESO → V0358 (9/9)

A diz "Situacao desocupado", V0358 é "Condição de Atividade". As 10 categorias
batem (Sem ocupação, Procurando trabalho, Aposentado, Pensionista, Vive de Rendas,
Detento, Estudante, Doente, Afazeres, NSA). O nome A é informal mas o domínio é o mesmo. **Confirmado.**

Nenhum erro detectado nos 9/9.

---

## Pergunta 5 — Os 5 CANNOT_MAP são corretos?

**Sim, todos os 5 estão corretos.**

| A_var | A_descricao | Justificativa CANNOT_MAP |
|---|---|---|
| UFNOM | Nome da UF | A é STRING textual ("Rondônia"). B/C têm apenas V1101 com **código** numérico. v050 tem `name_state` derivado in pipeline, sem V-code IBGE histórico. |
| MESONOM | Nome da Mesorregiao | Idem — apenas V7001 é código. |
| MICRONOM | Nome da Microrregiao | Idem — apenas V7002 é código. |
| MUNICNOM | Nome do municipio | Idem — apenas V1102 é código. |
| RFAPCAPV | Renda familiar per capita (REAL) | B e C cobrem apenas a **faixa** (V3049). O VALOR per capita real não tem V-code próprio em 1991 — é derivado em pós-processamento. v050 confirma: V3049 está, mas não há V-code para valor per capita. |

Todas as cinco são genuinamente novas variáveis derivadas que o IBGE 2025 acrescentou na
DBF mas que não existem como V-codes no layout histórico de 1991. Não há mapping possível.

---

## Pergunta 6 — Strength labels divergiram com impacto material?

Comparando R1A1, R1A2, R1A3 (e em escala R1+R2+R3): houve variação esperada entre HIGH/MED
em vars com redação A diferente da redação B/C (SITSET, NUMFAM, MIULTMUD, SITDESO, etc.).
**Em nenhum caso a divergência de strength alterou o V-code escolhido.** Todos os 9 agentes
acabaram propondo o mesmo V-code, mesmo quando alguns marcaram MED em vez de HIGH. A única
divergência substantiva (R1A2 em FLDOMICH/FLDOMICM) já foi tratada na Pergunta 2.

A diferença entre HIGH e MED neste corpus refletiu mais a tolerância pessoal de cada agente
ao "ruído de redação" (e.g., "Situacao do Setor" vs "Situação do Domicílio") do que evidência
empírica diferente.

Recomendação para o gold standard: padronizar strength em HIGH apenas quando todas as três
fontes (A, B, C) compartilham descrição **e** categorias; MED quando categorias batem mas a
descrição usa redação substancialmente diferente; LOW reservar a casos onde não há paridade
de categorias — neste corpus, esse caso é raro e nenhum dos 141 entrou nele com V-code aceito.

---

## Veredito final

O gold standard de 9 agentes é robusto. Após este 10º painel independente, mantenho:

- **136 vars** UNANIMOUS reconfirmadas.
- **2 vars** (FLDOMICH=V0335, FLDOMICM=V0336) confirmadas via argumento de colisão.
- **5 vars** CANNOT_MAP corretas.

Total: **141/141 confirmados**. Pronto para congelar como gold standard ao final da Rodada 4.
