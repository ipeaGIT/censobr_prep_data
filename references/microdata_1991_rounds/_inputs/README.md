# Inputs pré-processados para agentes da auditoria 1991

Arquivos plain-text (CSV/TXT) que agentes podem ler com tool Read sem precisar executar Python.

## Source A — IBGE 2025 (FTP)

- **`source_A_ibge_2025_dictionary.csv`** — dump RAW da Documentação/Dicionário 1991.xls
  extraída do zip FTP. 1298 linhas. Header na linha 2.
  Estrutura por bloco: linha de var-definition (col 0=org_id, col 1=descritivo
  uppercase, col 2=descricao, col 3=tipo) seguida de linhas "Categorías" + categorias.

- **`source_A_parsed_142vars.csv`** — versão limpa/parseada com APENAS as 142 var-defs:
  colunas `A_var, A_org_id, A_descricao, A_tipo, A_categories` (categories joined com " | ").
  Section markers (9=DOMICIL, 10=FAMILIA, 11=PESSOA) já removidos.

## Source B — Pedro Souza (V-coded historic)

- **`source_B_pedrosouza_domicilios.csv`** — 48 vars, cols `Ano,Variável,Label,Descrição,População a qual se aplica,Observação,Categorias`
- **`source_B_pedrosouza_pessoas.csv`** — 101 vars, mesmas colunas

## Source C — layout_1991 (V-coded com categorias detalhadas)

- **`source_C_layout_population.csv`** — 102 rows, cols `Variavel | Descrição | Categorias`
- **`source_C_layout_households.csv`** — 49 rows, mesmas colunas

## v0.5.0 schemas (presença de V-code no parquet publicado)

- **`v050_1991_households_columns.txt`** — uma coluna por linha
- **`v050_1991_population_columns.txt`** — uma coluna por linha
