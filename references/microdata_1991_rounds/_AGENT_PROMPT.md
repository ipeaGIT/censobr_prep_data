# Tarefa: mapping de variáveis IBGE 1991 microdata (FTP descritivo → V-code histórico)

Você é UM dos 3 agentes da rodada atual. Trabalhe **INDEPENDENTEMENTE** dos outros 2 — não consulte o output deles em `references/microdata_1991_rounds/round*_agent*.csv`.

Sua função: produzir mapping completo das **142 variáveis** do IBGE 2025 FTP DBF para os V-codes históricos usados pelo `censobr` v0.5.0.

## Inputs (todos PLAIN TEXT — leia com tool Read)

Diretório: `D:/Dropbox/Software/R_Packages/censobr_e_prepData/censobr_prep_data/references/microdata_1991_rounds/_inputs/`

- **`source_A_parsed_142vars.csv`** — versão LIMPA: 142 var-defs em colunas `A_var, A_org_id, A_descricao, A_tipo, A_categories` (categories joined com " | "). **Use este como sua tabela primária — é o que você vai mapear.**
- **`source_A_ibge_2025_dictionary.csv`** — dump RAW da Documentação 1991.xls do FTP IBGE 2025. 1298 linhas. Use só se precisar verificar contexto/valores categóricos com mais detalhe.
- **`source_B_pedrosouza_domicilios.csv`** — 48 V-codes domicílio: `Ano | Variável | Label | Descrição | População a qual se aplica | Observação | Categorias`
- **`source_B_pedrosouza_pessoas.csv`** — 101 V-codes pessoa, mesma estrutura
- **`source_C_layout_population.csv`** — 102 rows V-code + descrição + categorias detalhadas
- **`source_C_layout_households.csv`** — 49 rows idem
- **`v050_1991_households_columns.txt`** — colunas (uma por linha) do parquet 1991_households_v0.5.0
- **`v050_1991_population_columns.txt`** — idem para population

## Sua tarefa: para CADA UMA das 142 variáveis em A

1. **Identificar** A_var, A_descricao, A_categories (já parseadas no source_A_parsed_142vars.csv)
2. **Buscar match em B** (dom + pes — vars de domicílio podem aparecer em pessoa também por denormalização)
3. **Buscar match em C** (Population sheet + Households sheet — algumas vars aparecem em ambas)
4. **Cross-check em v0.5.0**: V-code proposto está em `v050_1991_households_columns.txt` ou `v050_1991_population_columns.txt`?
5. **DOUBLE-CHECK**: re-leia a variável nas 3 fontes uma 2ª vez antes de finalizar:
   - Descrição semanticamente equivalente (admite variação de redação, abreviação, acentos)
   - Categorias / valores possíveis batem
   - Tipo (string vs integer) consistente
6. **Decidir** evidence_strength e propor V-code:
   - **HIGH** — 3 sources agree (descrição + categorias + presença em v050)
   - **MED** — 2 sources concordam, 3ª ambígua/ausente
   - **LOW** — só 1 source clara, outras divergem
   - **AMBIGUOUS** — múltiplos candidatos plausíveis
   - **CANNOT_MAP** — não há match claro

## Output

Use a tool **Write** para salvar UMA tabela CSV em `references/microdata_1991_rounds/round1_agent<N>.csv` (substituir `<N>` por seu número de agente, dado no prompt específico).

Header + 142 data rows no formato exato:

```
A_var,A_org_id,A_descricao,proposed_vcode,B_match_vcode,B_match_desc,C_match_vcode,C_match_desc,v050_present_pop,v050_present_hh,evidence_strength,notes
```

Regras do CSV:
- Vírgula como separador. Strings com vírgula interna ficam entre aspas duplas.
- `proposed_vcode` no formato `V0099` (com `V` + 4 dígitos zero-padded). Se CANNOT_MAP, vazio.
- `B_match_vcode` / `C_match_vcode`: V-code formal ou vazio.
- `v050_present_pop` / `v050_present_hh`: `Y` ou `N`.
- `notes`: explique escolha em casos não-óbvios. Liste candidatos alternativos considerados.

Após salvar, retorne na sua mensagem final:
- Confirmação de Write OK
- Stats: contagem por evidence_strength
- Lista das ~5-15 variáveis que você marcou AMBIGUOUS ou CANNOT_MAP, com explicação curta de cada caso

## Princípios

- **Triple verification SÉRIA.** Se A diz uma coisa, B outra, C outra — marque AMBIGUOUS, não chute.
- **Variação de redação é OK** desde que SEMANTIC equivalente: "Numero de Banheiros" vs "Banheiros" → match. "Forma de abastecimento de água" vs "Abastecimento de água" → match.
- **Categorias decidem casos duvidosos.** Se duas vars têm descrições parecidas mas categorias diferentes, são variáveis diferentes.
- **Não invente.** Se não conseguir confirmar em pelo menos 2 fontes, marque LOW ou CANNOT_MAP.
- **Trabalhe SOZINHO.** Não consulte outros round*_agent*.csv neste diretório.

## Exemplos guia

**Match HIGH (3 sources agree):**
- A: `BANHEIRO`, "Numero de Banheiros", categories ~ "1=Sim, 2=Não" (ou similar)
- B: `V0213`, descrição "Banheiros"
- C: `V0213`, descrição "Banheiros", categorias batem
- v050: `V0213` em population
→ proposed_vcode=V0213, evidence_strength=HIGH

**Match AMBIGUOUS:**
- A: `OCUPACAO`, "Ocupação principal", categorias = códigos de ocupação
- B candidato `V0529` "Ocupação atual" (categorias diferentes)
- B candidato `V0530` "Ocupação/cargo últimos 12 meses" (mais alinhado)
- → notes: "ambíguo entre V0529 e V0530; V0530 tem categorias mais alinhadas"
- → evidence_strength=AMBIGUOUS

**CANNOT_MAP:**
- A: descrição não tem equivalente claro em B+C+v050.
- → notes: "var realmente nova IBGE 2025, sem equivalente histórico"

## Cuidados conhecidos

- A não tem V-code (ao contrário de 1980 que tinha "NNN-Description" no Rótulo). Você vai mapear DESCRIÇÕES e CATEGORIAS.
- Section markers em A já foram removidos do source_A_parsed.
- Variáveis de domicílio aparecem em B_pessoas também (denormalização) — não confundir.
- v0.5.0 households V-cols ⊂ population V-cols em geral (vars dom denormalizadas em pes em v050).
- Use `_inputs/source_A_ibge_2025_dictionary.csv` (raw) só se precisar de mais contexto além do parsed.
