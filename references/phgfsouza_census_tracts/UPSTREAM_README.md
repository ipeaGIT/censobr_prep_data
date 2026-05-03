# Census Tracts from the 2010 and 2022 Censuses
 
> Temporary README for presenting the project on GitHub.

This repository brings together scripts, derived data, and documentation to process, organize, and harmonize census tract-level variables from the 2010 and 2022 Brazilian Demographic Censuses.

The work is still under development. In its current state, the project focuses on downloading census tract files with the `{censobr}` package, documenting the sources used, and preparing the foundation for later stages of calculation, cleaning, and harmonization.

## Objectives

- Download census tract data from the 2010 and 2022 Censuses.
- Organize raw files in Parquet format.
- Document questionnaires, manuals, dictionaries, and relevant sources.
- Build a harmonized dataset of variables comparable across the two censuses.
- Produce reproducible outputs for territorial-level analysis.

## Repository Structure

```text
code/                 R scripts for the workflow
data/raw/             Raw data downloaded from {censobr}
data/cleaned/         Cleaned and harmonized data
docs/                 Documentation, transcripts, and dictionaries
results/              Results, intermediate artifacts, and checks
logs/                 Execution logs, when applicable
```

Large raw data files, PDFs, and other heavy artifacts are not versioned in Git.

## Current Workflow

The main workflow starts from `code/master.r`, which loads the project configuration and runs the data download:

```r
source("code/master.r")
```

The script `code/01-download-data.r` downloads the available 2010 and 2022 census tract datasets and saves the files in `data/raw/`.

Currently planned datasets:

- 2010: `Basico`, `Domicilio`, `DomicilioRenda`, `Responsavel`, `ResponsavelRenda`, `Pessoa`, `PessoaRenda`, `Entorno`.
- 2022: `Basico`, `Domicilio`, `ResponsavelRenda`, `Pessoas`, `Indigenas`, `Quilombolas`, `Entorno`, `Obitos`, `Preliminares`.

## Main Dependencies

The project uses R and currently relies on the following packages:

- `{censobr}`
- `{purrr}`
- `{here}`
- `{rio}`

Dependencies are loaded in `code/_setup.r`.

## Documentation

The `docs/` folder organizes supporting project materials:

- `docs/original/`: primary sources from IBGE or `{censobr}`.
- `docs/transcripts/`: Markdown versions of original documents.
- `docs/data_dictionaries/`: dictionaries for the files in `data/raw/`.

These files help track variable definitions, check consistency across years, and document harmonization decisions.

## Status

This README is an initial and temporary version. It should be updated as the workflow for cleaning, total calculation, harmonization, and result generation is consolidated.
