# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project autonomy

This project (`censobr_prep_data`) is **always opened as a standalone workspace** — never with the parent `censobr_e_prepData/` folder. The consumer package `censobr` lives at `..\censobr\` on disk, but is treated as a separate project handled in a separate VS Code window / Claude Code session. Changes to the consumer go through PRs on `https://github.com/ipeaGIT/censobr`, not from this session.

Defense-in-depth: PreToolUse hooks in `.claude/settings.json` block any `Edit`/`Write`/`NotebookEdit` or destructive Bash command that targets `..\censobr\` (in case a path slips through by mistake). Read-only access to `..\censobr\` is allowed.

## Rules — read before any work

All rules live in [.claude/rules/](.claude/rules/) and are obligatory:

- **[scope.md](.claude/rules/scope.md)** — INVIOLÁVEL. Edits only inside `censobr_prep_data/`.
- **[recuperacao-sessao.md](.claude/rules/recuperacao-sessao.md)** — protocol to run at session start / after context compression.
- **[plan-first-workflow.md](.claude/rules/plan-first-workflow.md)** — non-trivial tasks require a written plan saved to disk before any code is written.
- **[minimal-changes.md](.claude/rules/minimal-changes.md)** — surgical edits only; protected-function list; no opportunistic refactor.
- **[test-first-protocol.md](.claude/rules/test-first-protocol.md)** — validate on 1 small UF (RR/AC) before processing 27 states; investigation loop until "absolute certainty".

If a hook blocks an action, stop and explain to the user what would need to change — do not try to work around it.

## What this repo is

Data-preparation companion to the [`censobr`](https://github.com/ipeaGIT/censobr) R package. It downloads raw Brazilian Census files from the IBGE FTP, parses/cleans them, and writes compressed parquet files that are uploaded as assets to GitHub Releases on `ipeaGIT/censobr`. End users never run this repo — they consume the published parquet files via the `censobr` package. The README is intentionally empty.

## Pipeline orchestration (`_targets.R`)

The pipeline uses [`targets`](https://books.ropensci.org/targets/) + `tarchetypes` + `crew`. Functions in `R/` are auto-sourced via `targets::tar_source('./R')`. Common commands:

- `targets::tar_make()` — run/resume the pipeline
- `targets::tar_visnetwork()` — view the DAG
- `targets::tar_read(<name>)` — read a materialized target (e.g. `tar_read(raw_tracts_paths_2010)`)
- `targets::tar_meta(fields = warnings, complete_only = TRUE)` — inspect warnings/errors after a failed run

`coress <- 1` is hardcoded at the top of `_targets.R` to avoid rate-limiting from the IBGE FTP — do not bump it without testing FTP behavior. Inside individual cleaning functions (e.g. `clean_tracts_2010`), `furrr::future_map` parallelizes by state with its own worker count (currently 8).

Outputs land in `./data/` (gitignored); raw downloads in `./data_raw/` (gitignored); `crew` worker logs in `./logs/crew_workers/`.

## Code layout: two R folders

- **`R/`** — functions sourced by the targets pipeline. Currently only the **2010 census tracts** flow is wired up (`download_tract_2010` → `clean_tracts_2010` → `save_tracts_2010`). Use this folder as the template when porting more years/datasets into the pipeline.
- **`R_ainda_sem_targets/`** — legacy standalone scripts not yet refactored into targets, covering microdata (1960/1970/1980/1991/2000/2010) and aggregated census tracts (2000/2010/2022). Run them manually with `source()`. The `_targets.R` skeleton already has section headers (`# 01. microdata 1960`, etc.) reserved for migrating these in.

When adding new years/datasets, prefer porting them into `R/` + `_targets.R` rather than expanding `R_ainda_sem_targets/`.

## Shared utilities (`R/support_fun.R`)

Centralized helpers used throughout the pipeline. Reuse before reinventing:

- `download_file_censobr()` — parallel httr2 downloads with timeout/SSL handling (replaces older `RCurl`/`curl` calls).
- `unzip_censobr()` — base R `unzip()` with a `system2("unzip", ...)` fallback for files that fail.
- `list_folders(ftp)` — scrapes IBGE FTP HTML index for filenames.
- `add_state_info()` / `add_region_info()` — robust state/region code+name imputation; tolerates historical spellings (e.g. `Goyaz`, `Districto Federal`, `Guanabara`) — important for pre-1960 data.
- `dicionario_municipality` / `dicionario_state` + `rename_cols_censobr()` — fuzzy column-name standardization across heterogeneous IBGE exports.
- `write_censobr_parquet()` — the canonical writer (zstd level 22). Always use this instead of `arrow::write_parquet` directly.
- `UF_SIGLAS` — 27-state vector. Note that 2010 SP comes in two pieces: `SP_Capital` and `SP_Exceto_Capital`.

`R/add_geography_cols.R` adds `code_muni`, `code_state`, `name_state`, `code_region`, etc. Pay attention to its year-specific source column map (1980→`V2`, 1991→`V1101`, 2000→`V0103`/`V0102`, 2010→`V0002`/`V0001`, 2022→`CD_MUN`). When adding a new year, extend the `case_when` blocks there.

## Read guides and schemas

- `read_guides/*.csv` — fixed-width parsing dictionaries with columns `int_pos`, `fin_pos`, `var_name`, `length`, `decimal_places`, `col_type`. Consumed by `convert_raw_to_parquet()` via `readr::read_fwf`. Decimal handling is implicit: values are divided by `10^decimal_places` post-read.
- `R/schema_col_classes.R` — `get_schema(year, dataset)` returns hardcoded `arrow::schema()` objects per (year, dataset). When opening combined parquet datasets across states, this schema enforces consistent integer widths (`int8`/`int16`/`int32`/`int64`).

## Known data quirks (don't "fix" these — they are real)

- **2010 tracts RS**: `RS_20231030.zip` is explicitly deleted in favor of `RS_20241211.zip` (see `census_tracts_2010.R:48`).
- **`ÿ` character corruption** in some 2010 xls files (e.g. `Pessoa07_CE.xls`, `Entorno05_RO.xls`) — currently stripped to empty string.
- **Goiás 2010 `Pessoa02`** has malformed `V01`–`V09` column names (vs. `V001`–`V009` elsewhere); the fix is currently commented out in `clean_tracts_2010` — re-enable if processing GO Pessoa data.
- `code_weighting` for 2010 tracts is joined in from `geobr::read_census_tract(year = 2010)`.

## Publishing artifacts

Final parquet files are uploaded to GitHub Releases on `ipeaGIT/censobr` via `piggyback::pb_upload()` (template in `R_ainda_sem_targets/z_upload_assets.R`; placeholder commented at the bottom of `_targets.R`). Requires `GITHUB_TOKEN` in `~/.Renviron`. The release tag is the data version (e.g. `v0.3.0`, `v2.0.0`), not a code version.
