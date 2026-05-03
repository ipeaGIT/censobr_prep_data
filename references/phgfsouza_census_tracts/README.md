# `phgfsouza/census_tracts` — frozen reference copy

Frozen mirror of selected files from the **private** repo
`https://github.com/phgfsouza/census_tracts/`, owned by Pedro H. G. F. Souza
(Rogério also has access).

## Provenance

- Upstream commit: `f895871fe6188bc6d31cfd7e923badcced0e0447`
- Upstream date: `2026-04-30`
- Mirrored on: `2026-05-02`
- License upstream: not declared (used here under owner authorization).

## Why a frozen copy

The dictionaries and crosswalks here are the canonical machine-readable
specification of what each column in the 2010/2022 census tract parquets
should contain. Versioning a frozen copy means:

- Future sessions can validate pipeline output against this spec without
  re-querying the private upstream.
- Diffs over time tell us when upstream changes a definition (refresh on
  demand by re-running the download script — see "Refresh" below).
- The pipeline's reproducibility doesn't depend on private-repo access.

## What's mirrored

| Path | Size | Purpose |
|---|---|---|
| `data_dictionaries/2010_censobr_data_dictionary.csv` | 2.1 MB | Coluna-a-coluna dos 8 parquets de setores 2010 (Basico, Domicilio, DomicilioRenda, Entorno, Pessoa, PessoaRenda, Responsavel, ResponsavelRenda) |
| `data_dictionaries/2010_censobr_data_dictionary.md`  | 651 KB | Idem, formato legível |
| `data_dictionaries/2022_censobr_data_dictionary.csv` | 1.9 MB | Coluna-a-coluna dos 9 parquets de setores 2022 (inclui Indigenas, Quilombolas, Obitos, Preliminares) |
| `data_dictionaries/2022_censobr_data_dictionary.md`  | 614 KB | Idem, formato legível |
| `crosswalks/household_types.csv`                     | 4.4 KB | Mapeamento de tipos de domicílio entre 2010 e 2022 |
| `crosswalks/household_types.md`                      | 5.7 KB | Documentação do crosswalk |
| `transcripts/2010_*.md`                              | 800 KB | Transcrições MD de PDFs IBGE 2010 (dicionário, manual, questionário, confidencialidade) |
| `transcripts/2022_*.md`                              | 1.2 MB | Transcrições MD de PDFs IBGE 2022 |
| `UPSTREAM_README.md` / `UPSTREAM_AGENTS.md`          | 5 KB  | Documentação do projeto upstream (contexto) |

## What's NOT mirrored

- Scripts em R (`code/`) do upstream — fora de escopo, reúso não previsto.
- `logs/` (relatórios Quarto) — não relevantes.
- Layouts de microdados ou anos pré-2010 — **upstream não tem**, nosso
  `D:\Dropbox\Software\R_Packages\censobr_e_prepData\censoBR_aux_Dados\`
  é a fonte canônica para isso.

## Como usar no pipeline

**Padrão recomendado:** ler o CSV do dicionário no início de cada porte para
descobrir programaticamente quais colunas o output deveria ter, com tipos e
roles (`primary_key`/`geo_id`/`descriptor`/`measure`).

```r
dict_2010 <- arrow::read_csv_arrow(
  "references/phgfsouza_census_tracts/data_dictionaries/2010_censobr_data_dictionary.csv"
)

# colunas esperadas no parquet de Basico
dict_2010 |>
  dplyr::filter(dataset_name == "Basico") |>
  dplyr::select(column_name, type_parquet, label_pt, key_role)
```

Use casos imediatos (Fase 0.3 do plano):
- **Issue #71 (V009 NA):** consultar `label_pt` confirma que V009 do Basico
  é "Valor do rendimento nominal médio mensal das pessoas de 10 anos ou
  mais". Comparar contra o que o XLS do IBGE entrega depois do parsing.
- **Issue #70 (Pessoa02 V170 vs V255):** ver quantas colunas `pessoa02_V*`
  o dicionário lista — referência canônica.
- **Validação geral pós-fix:** comparar `setdiff(names(parquet),
  dict$column_name)` para detectar colunas extras ou faltantes.

## Refresh

Para atualizar (ex.: novo commit upstream):

```bash
SHA=$(gh api repos/phgfsouza/census_tracts/commits/main --jq .sha)
DEST=references/phgfsouza_census_tracts

# Re-baixar via gh api (autenticado; raw.githubusercontent.com não funciona com
# repo privado sem token):
for f in \
  docs/data_dictionaries/2010_censobr_data_dictionary.csv \
  docs/data_dictionaries/2010_censobr_data_dictionary.md \
  docs/data_dictionaries/2022_censobr_data_dictionary.csv \
  docs/data_dictionaries/2022_censobr_data_dictionary.md \
  docs/crosswalks/household_types.csv \
  docs/crosswalks/household_types.md
do
  gh api "repos/phgfsouza/census_tracts/contents/$f" \
    -H "Accept: application/vnd.github.raw" \
    > "$DEST/$(echo "$f" | sed 's|docs/||')"
done
# Atualizar o SHA registrado neste README após refresh.
```

## Atribuição

Quando código do pipeline usar estes arquivos, citar como:
`Souza, Pedro H. G. F. (2026). census_tracts. https://github.com/phgfsouza/census_tracts/ (private repo, accessed 2026-05-02 at commit f895871).`
