# AGENTS.md

This file gives working instructions to coding agents operating in this repository.

## Purpose

This repository is for processing, organizing and harmonizing census tract-level variables for the 2010 and 2022 Brazilian Censuses. 

## Repository map

- Main code lives in `code/`
- Raw input data lives in `data/raw/`
- Cleaned data lives in `data/cleaned/`
- Documentation lives in `docs/`
- Logs live in `logs/`
- Generated outputs should go to `results/` unless the task clearly belongs somewhere else.


## General Working Rules

- Prefer small, reversible changes.
- Read the relevant files before editing them.
- Do not delete or overwrite raw data files in `data/raw/`.
- Do not rename files or move directories unless the task explicitly requires it.
- Keep changes focused on the user request; avoid unrelated cleanup.
- Preserve the existing project structure unless there is a strong reason to change it.

## Code Style

- Follow existing project style and patterns.
- Prefer consistency with nearby code over generic best practices.
- Keep functions small unless there is a clear reason not to.
- Prefer clear, simple R code over clever compact code.
- Use descriptive variable names.
- Add brief comments only when the logic is not obvious.
- Avoid introducing new dependencies unless necessary.

## Data Safety

- Treat files in `data/raw/` as immutable source data.
- Write derived data, exports, logs, and temporary artifacts outside `data/raw/`.
- If a task could modify source data, stop and ask first.
- Be careful with large files and avoid unnecessary copies.

## Scripts And Execution

- Prefer updating existing scripts in `code/` before creating new ones.
- If adding a new script, use a descriptive numeric prefix only if that matches the project pattern.
- Assume scripts may be run manually on Windows with PowerShell.
- Use relative paths within the repository when practical.

## Validation

- After making code changes, run the smallest reasonable validation step.
- If full validation is expensive, do a targeted check and note what was not verified.
- Do not claim a script ran successfully unless it was actually executed.

## Git And Change Safety

- Never discard or revert user changes unless explicitly asked.
- Avoid destructive commands.
- Keep commits focused if asked to prepare commits.

## Communication

- Briefly explain what changed, why it changed, and how it was checked.
- Flag assumptions clearly.
- If repository conventions are unclear, prefer the existing files over inventing new patterns.
