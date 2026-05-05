# Plano: porte de setores 2000 para o pipeline `targets`

**Status:** RASCUNHO (aguardando aprovação)
**Data:** 2026-05-04

## Contexto

Setores 2010 e 2022 estão fechados em `R/census_tracts_2010.R` + `R/census_tracts_2022.R` (commits `cf4bf6d` e anteriores). Resta portar setores **2000**, hoje só presente como script standalone em `R_ainda_sem_targets/census_tracts_aggreg_2000.R` (411 linhas, autoria do Rogério).

A v0.5.0 publicou **6 parquets** para 2000 setores que ficam disponíveis localmente em `D:/Dropbox/Software/R_Packages/censobr_e_prepData/censoBR_aux_Dados/2000/agregados por setor/` — servirão de baseline rígido para validação.

## Achados da investigação

### v0.5.0 baseline (todos com 215.811 linhas)

| Tabela | Cols | V cols (range / prefixos) |
|---|---|---|
| Basico       |  33 | `VAR01`–`VAR14` (14) — **renomeado em v0.5.0**, IBGE entrega como `V001`–`V014` (a confirmar no smoke test) |
| Domicilio    | 255 | `V0001`–`V0236` (236, sem prefixo de tema — 1 sub-tabela apenas) |
| Morador      | 184 | `V0237`–`V0401` (165, sem prefixo — 1 sub-tabela) |
| Responsavel  | 947 | `responsavel1_V0402` … `responsavel5_V1329` (5 sub-tabelas) |
| Pessoa       | 937 | `pessoa1_V1330` … `pessoa7_V2247` (7 sub-tabelas) |
| Instrucao    | 988 | `instrucao1_V2248` … `instrucao5_V3044` (5 sub-tabelas) |

**Numeração contínua entre temas.** Diferente de 2010 (cada tema reinicia em V001), o IBGE 2000 numera as variáveis sequencialmente do universo todo. Domicilio começa em V0001, Morador continua de V0237, Responsavel de V0402, Pessoa de V1330, Instrucao de V2248. Isso significa que as colunas V originais nos XLS já estão num esquema único — o prefixo de tema (`pessoa1_`, `responsavel2_`) é adicionado por nós ao consolidar sub-tabelas.

### Geo cols (19, comuns a todos os 6 parquets)

`code_tract`, `code_state`, `name_state`, `code_meso`, `name_meso`, `code_micro`, `name_micro`, `code_metro`, `name_metro`, `code_muni`, `name_muni`, `code_district`, `name_district`, `code_subdistrict`, `name_subdistrict`, `code_neighborhood`, `name_neighborhood`, `situacao`, `code_type`.

**Não tem** em 2000: `code_region`, `name_region`, `code_weighting`, `code_situacao`, `area_km2`, `code_favela`, `code_intermediate`, `code_immediate`, `code_aglomerado`, `code_urban_concentration`, `code_nucleo_urbano`. Manter paridade rígida — não enriquecer.

### FTP IBGE

- **URL:** `https://ftp.ibge.gov.br/Censos/Censo_Demografico_2000/Dados_do_Universo/Agregado_por_Setores_Censitarios/`
- **28 zips:** `Agregado_de_setores_2000_<UF>.zip` para 26 UFs + `SP_RM` + `SP_Exclusive_RM` (SP dividido).
- Sem sufixo de data — não precisa de `pick_latest_per_uf` para 2000.

### Schema de filenames dentro do zip

Pelo legacy (`separate(col = tmp, sep = "_", into = c("prefix", "uf"))`), os XLS dentro de cada zip seguem `<prefix>_<UF>.xls`, onde `prefix` mapeia para tema:
- `Basico` → `Basico_AC.xls`
- `Domicilio01` → `Domicilio01_AC.xls`
- `DomicilioRenda01` (?) — verificar smoke test
- `Pessoa01`–`Pessoa07` → `Pessoa01_AC.xls` … `Pessoa07_AC.xls`
- `Responsavel01`–`Responsavel05`
- `Instrucao01`–`Instrucao05`
- `Morador01`

Filenames com `compatibiliza|descri|instalad` são descartados pelo legacy.

### Slot reservado em `_targets.R`

Linha 101: `# 07. census tracts 2000 ---`. Espaço vazio entre 07 (2000) e 08 (2010).

## Objetivo

Produzir 6 parquets nacionais em `./data/tracts/2000/`:
- `2000_tracts_Basico.parquet`
- `2000_tracts_Domicilio.parquet`
- `2000_tracts_Morador.parquet`
- `2000_tracts_Pessoa.parquet`
- `2000_tracts_Responsavel.parquet`
- `2000_tracts_Instrucao.parquet`

Com **paridade rígida vs v0.5.0**: mesmas colunas (modulo `code_*` que viram `numeric` per convenção v0.6.0), mesmas linhas (215.811).

## Abordagem

Espelhar arquitetura de `R/census_tracts_2022.R` (template canônico do mesmo autor):
- 3 funções públicas (`download_*`, `clean_*`, `save_*`).
- 3 helpers top-level (`recode_datasets_2000`, `recode_basico_2000`, `make_theme_dataset_2000`).
- Corpo procedural nos helpers (não encapsular em sub-funções).
- `data.table` quando o tamanho pedir; `dplyr` aceito onde já funciona no legacy.
- Pipeline branch por tema (`map(table_names_tracts_2000)`), igual a 2010/2022.

Reusar do `support_fun.R`:
- `download_file_censobr()` (scrape + download paralelo com retry).
- `unzip_censobr()` (extrai XLS dos zips).
- `list_folders()` (lista FTP HTML index).
- `code_cols_to_numeric()` (convenção v0.6.0).
- `write_censobr_parquet()` (zstd-22).

## Arquivos a modificar

| Arquivo | Mudança |
|---|---|
| `R/census_tracts_2000.R` (novo) | 3 funções públicas + 3 helpers, ~280–320 linhas |
| `_targets.R` linha 101 | adicionar 4 `tar_target` (raw_paths, table_names, clean_branch, save_branch) |

Nenhuma função protegida (`support_fun.R`, `add_geography_cols.R`, etc.) precisa mudar.

## Estrutura de `R/census_tracts_2000.R` (esboço)

```r
# 2000 census tracts (agregados por setor).
# Adaptado de R_ainda_sem_targets/census_tracts_aggreg_2000.R para arquitetura
# targets: 3 funcoes publicas (download_tract_2000, clean_tracts_2000,
# save_tracts_2000) + 3 helpers top-level.
# Convencao v0.6.0: code_* todas numeric (aplicado em save).

recode_datasets_2000 <- function(df){
  variants <- c("CD_setor", "COD_SETOR", "CD_SETOR", "SETOR")
  present  <- intersect(names(df), variants)
  if(present != "CD_setor"){
    df <- df |> rename("CD_setor" = !!sym(present))
  }

  df_recoded <- df |>
    mutate(CD_setor = as.numeric(CD_setor)) |>
    mutate_if(is.character, \(var){
      var <- iconv(var, to = "utf-8")
      var <- str_squish(var)
      ifelse((nchar(var) %in% 1) & (var %in% c("X",",",".")), NA_character_, var)
    }) |>
    mutate_if(is.character, \(var) str_replace(string = var, pattern = ",", ".")) |>
    mutate_if(\(x) !any(grepl(x = str_to_lower(x), pattern = "[a-z]")),
              \(x) suppressWarnings(as.numeric(x))) |>
    mutate_if(is.character, \(x) ifelse(x %in% "", NA_character_, x))

  test_missings <- sapply(names(df), \(var){
    all((df[[var]] %in% c("X",",",".","")) == is.na(df_recoded[[var]]) |
        (is.na(df[[var]]) == is.na(df_recoded[[var]])))
  })
  if(!all(test_missings)) stop("Missing values criados onde nao deveriam")

  df_recoded |> select(CD_setor, everything())
}


recode_basico_2000 <- function(raw_xls_paths, dataset_info_2000){
  basico_files <- dataset_info_2000$file[dataset_info_2000$theme == "Basico"]
  basico_list  <- lapply(basico_files, \(f) readxl::read_excel(path = f))
  datasets_basico <- do.call(bind_rows, basico_list)
  names(datasets_basico) <- str_to_upper(names(datasets_basico))
  datasets_basico <- recode_datasets_2000(datasets_basico)

  datasets_basico |>
    rename(code_tract        = CD_setor,
           code_state        = COD_UF,
           name_state        = NOME_DA_UF,
           code_meso         = COD_MESO,
           name_meso         = NOME_DA_MESO,
           code_micro        = COD_MICRO,
           name_micro        = NOME_DA_MICRO,
           code_metro        = COD_RM,
           name_metro        = NOME_DA_RM,
           code_muni         = COD_MUNICIPIO,
           name_muni         = NOME_DO_MUNICIPIO,
           code_district     = COD_DISTRITO,
           name_district     = NOME_DO_DISTRITO,
           code_subdistrict  = COD_SUBDISTRITO,
           name_subdistrict  = NOME_DO_SUBDISTRITO,
           code_neighborhood = COD_BAIRRO,
           name_neighborhood = NOME_DO_BAIRRO,
           situacao          = SITUACAO,
           code_type         = TIPO_DO_SETOR)
  # NOTA: o rename V001-V014 -> VAR01-VAR14 pode ser necessario aqui — confirmar
  # no smoke test e adicionar antes do return se aplicavel.
}


make_theme_dataset_2000 <- function(theme_i, raw_xls_paths, dataset_basico, dataset_info_2000){
  # leitura XLS por sub-tabela (prefix), empilhamento por UF, recode,
  # add prefixo de tema as V cols, full_join entre sub-tabelas, left_join geo do basico.
  # Estrutura idem make_theme_dataset_2022 (paridade de fluxo), mas le XLS via readxl
  # e suporta prefixos numericos (Pessoa01-07, Responsavel01-05, Instrucao01-05).
}


download_tract_2000 <- function(){
  dest_dir <- "./data_raw/tracts/2000"
  xls_dir  <- file.path(dest_dir, "xls")
  dir.create(dest_dir, recursive = TRUE, showWarnings = FALSE)
  dir.create(xls_dir,  recursive = TRUE, showWarnings = FALSE)

  ftp <- 'https://ftp.ibge.gov.br/Censos/Censo_Demografico_2000/Dados_do_Universo/Agregado_por_Setores_Censitarios/'
  listed <- list_folders(ftp)
  listed <- listed[grepl("\\.zip$", listed)]
  all_urls <- paste0(ftp, listed)

  download_file_censobr(file_url = all_urls, dest_dir = dest_dir)
  unzip_censobr(zip_dir = dest_dir, out_zip = xls_dir)

  xls_paths <- list.files(xls_dir, pattern = "\\.xls$", full.names = TRUE,
                          recursive = TRUE, ignore.case = TRUE)
  xls_paths <- xls_paths[!grepl("compatibiliza|descri|instalad", xls_paths, ignore.case = TRUE)]
  if(length(xls_paths) == 0) stop("No XLS files extracted to ", xls_dir)
  unique(xls_paths)
}


clean_tracts_2000 <- function(raw_xls_paths, tbl_name){
  # 1. Construir dataset_info_2000 a partir dos paths (separar prefix/UF, derivar theme).
  # 2. recode_basico_2000 -> dataset_basico.
  # 3. Se tbl_name == "Basico": return dataset_basico.
  #    Senao: make_theme_dataset_2000 com filtro por theme.
  # 4. Anexar table_name. Return.
}


save_tracts_2000 <- function(cleaned_dt){
  tbl <- cleaned_dt$table_name[1]
  message("Saving tracts 2000: ", tbl)
  dir.create("./data/tracts/2000/", recursive = TRUE, showWarnings = FALSE)
  out <- cleaned_dt
  out$table_name <- NULL
  out <- code_cols_to_numeric(out)
  dest_file <- paste0("./data/tracts/2000/2000_tracts_", tbl, ".parquet")
  write_censobr_parquet(out, dest_file)
  dest_file
}
```

## Bloco `# 07.` em `_targets.R`

```r
  # 07. census tracts 2000 ---------------------------------------------------------------

  # download (also unzips). Returns paths to all extracted XLSs.
  tar_target(name = raw_tracts_paths_2000,
             command = download_tract_2000(),
             format = 'file'
             ),

  tar_target(name = table_names_tracts_2000,
             command = c("Basico",
                         "Domicilio",
                         "Morador",
                         "Responsavel",
                         "Pessoa",
                         "Instrucao")
             ),

  # branch per theme: read XLSs per UF, recode, prefix V cols, join, attach geo
  tar_target(name = clean_tract_table_2000,
             command = clean_tracts_2000(raw_tracts_paths_2000, table_names_tracts_2000),
             pattern = map(table_names_tracts_2000)
             ),

  # branch per theme: cast code_* to numeric (v0.6.0 convention) + save parquet
  tar_target(name = output_tracts_paths_2000,
             command = save_tracts_2000(clean_tract_table_2000),
             pattern = map(clean_tract_table_2000),
             format = 'file'
             ),
```

## Validação (loop de investigação)

### Passo 1 — smoke test 1 UF (RR, ~1 MB)

Antes de wirear no `_targets.R`, rodar localmente em script temp:

```r
source("R/support_fun.R")
source("R/census_tracts_2000.R")

dest_dir <- "./data_raw/tracts/2000"
xls_dir  <- file.path(dest_dir, "xls_RR_only")
dir.create(xls_dir, recursive = TRUE)
download_file_censobr(file_url = "https://ftp.ibge.gov.br/Censos/Censo_Demografico_2000/Dados_do_Universo/Agregado_por_Setores_Censitarios/Agregado_de_setores_2000_RR.zip",
                      dest_dir = dest_dir)
unzip(zipfile = file.path(dest_dir, "Agregado_de_setores_2000_RR.zip"), exdir = xls_dir)

# Listar XLS que vieram, e olhar os headers do Basico_RR.xls
xlsfiles <- list.files(xls_dir, pattern = "\\.xls$", full.names = TRUE, recursive = TRUE, ignore.case = TRUE)
print(basename(xlsfiles))

# Inspect Basico headers
basico_rr <- readxl::read_excel(grep("Basico", xlsfiles, value = TRUE), n_max = 5)
print(names(basico_rr))   # confirmar se eh V001-V014 ou VAR01-VAR14
```

**Deliverables do smoke:**
- Confirmar lista de prefixos reais (Pessoa01-07, Responsavel01-05, Instrucao01-05, Domicilio01, Morador01).
- Confirmar names exatos das cols geo no Basico (case e exatidao do `recode_basico_2000`).
- Confirmar se VAR01-VAR14 vem do XLS ou se v0.5.0 fez rename adicional. Se for o segundo caso, **precisamos adicionar o rename** ao `recode_basico_2000`.

### Passo 2 — implementar `R/census_tracts_2000.R`

Após smoke confirmar premissas, escrever as 6 funcoes seguindo a estrutura acima.

### Passo 3 — wireamento + smoke pipeline

Adicionar bloco `# 07.` em `_targets.R`. Rodar:

```r
targets::tar_make(names = "raw_tracts_paths_2000")  # ~10 min download
targets::tar_make(names = "output_tracts_paths_2000")  # full pipeline 2000
```

### Passo 4 — comparação contra v0.5.0 baseline

```r
library(arrow)
ref_dir <- "D:/Dropbox/Software/R_Packages/censobr_e_prepData/censoBR_aux_Dados/2000/agregados por setor"
new_dir <- "./data/tracts/2000"

for(tbl in c("Basico","Domicilio","Morador","Responsavel","Pessoa","Instrucao")){
  ref <- arrow::read_parquet(file.path(ref_dir, sprintf("2000_tracts_%s_v0.5.0.parquet", tbl)))
  new <- arrow::read_parquet(file.path(new_dir, sprintf("2000_tracts_%s.parquet", tbl)))

  cat("\n=== ", tbl, " ===\n", sep="")
  cat("rows ref:", nrow(ref), "  rows new:", nrow(new), "  match:", nrow(ref)==nrow(new), "\n")
  cat("cols ref:", ncol(ref), "  cols new:", ncol(new), "  match:", ncol(ref)==ncol(new), "\n")
  cat("setdiff ref->new:", paste(setdiff(names(ref), names(new)), collapse=","), "\n")
  cat("setdiff new->ref:", paste(setdiff(names(new), names(ref)), collapse=","), "\n")
}
```

**Criterios de PASS:**
- Linhas iguais nos 6 (215.811).
- `setdiff(names(ref), names(new)) == character(0)` nos 6 (modulo eventuais cols `table_name` esquecidas).
- `setdiff(names(new), names(ref)) == character(0)` nos 6.
- Tipos: todas `code_*` em `new` viram numeric (intencional v0.6.0 — paridade quebrada em **tipo**, paridade preservada em **estrutura**).

## Riscos

1. **Basico VAR01-VAR14:** o legacy nao mostra esse rename — pode ter sido feito downstream em v0.5.0. Smoke test resolve.
2. **SP dividido:** `SP_RM` + `SP_Exclusive_RM` — rbind direto deve funcionar (mesmo schema), mas confirmar no Pessoa/Instrucao (que tem mais sub-tabelas).
3. **Encoding:** legacy faz `iconv(var, to = "utf-8")` (sem `from`); pode haver caracteres latin1 nos XLS de 2000. Smoke test deve flagrar.
4. **Tempo de execucao:** XLS via `readxl` e mais lento que CSV; 28 zips × 6 sub-tabelas × ate 7 prefixos = volume parecido com 2010 (~25min). Aceitavel.
5. **Memoria:** Pessoa (937 cols) + Instrucao (988 cols) sao maiores que qualquer tabela 2010 (max 2008 cols em Pessoa 2010). Aplicar `gc()` rigoroso entre prefixos. Workers ≤4 do `tar_option_set` ja cobre.

## Decisoes registradas (a confirmar com usuario)

- ✅ Espelhar template `R/census_tracts_2022.R` (autoria do Rogerio).
- ✅ Manter as 19 geo cols sem enriquecer com `code_region`/`name_region` (paridade rigida v0.5.0).
- ✅ Convencao v0.6.0: `code_*` numeric.
- ✅ Sem `pick_latest_per_uf` (FTP 2000 nao tem versionamento por data).
- ❓ **Investigar smoke test:** VAR01-VAR14 vem do XLS ou e rename downstream?

## Ordem de execucao

1. Smoke test RR (download + inspect Basico headers + listar prefixos).
2. (Se necessario) ajustar plano com base no smoke.
3. Escrever `R/census_tracts_2000.R`.
4. Adicionar bloco `# 07.` em `_targets.R`.
5. `tar_make()` do bloco.
6. Validacao Nivel 3 (comparacao com v0.5.0 baseline).
7. Commit + push.