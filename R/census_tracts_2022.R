# 2022 census tracts (agregados por setor)
#
# Three public functions, mirroring the wired 2010 template:
#   download_tract_2022(overwrite) -> character vector of CSV paths
#   clean_tracts_2022(raw_csv_paths, tbl_name) -> tibble with $table_name col
#   save_tracts_2022(cleaned_dt)              -> path to written parquet
#
# Convention v0.6.0: all code_* columns are numeric (double). See
# `code_cols_to_numeric()` in support_fun.R.


# ---- dataset_info: theme, prefix, filename pattern ---------------------------

# Pattern matches the IBGE filenames with or without a date suffix
# (e.g. "Agregados_por_setores_basico_BR.csv" or
# "Agregados_por_setores_basico_BR_20250417.csv"). Date-hardcoded names in the
# legacy script broke when IBGE re-published; we match by stem instead.
.dataset_info_2022 <- function(){
  tibble::tribble(
    ~theme, ~prefix, ~pattern,

    "Basico",           NA_character_,    "^Agregados_por_setores_basico_BR(_\\d{8})?\\.csv$",

    "Domicilio",        "domicilio01",    "^Agregados_por_setores_caracteristicas_domicilio1_BR(_\\d{8})?\\.csv$",
    "Domicilio",        "domicilio02",    "^Agregados_por_setores_caracteristicas_domicilio2_BR(_\\d{8})?\\.csv$",
    "Domicilio",        "domicilio03",    "^Agregados_por_setores_caracteristicas_domicilio3_BR(_\\d{8})?\\.csv$",

    "Pessoas",          "alfabetizacao",  "^Agregados_por_setores_alfabetizacao_BR(_\\d{8})?\\.csv$",
    "Pessoas",          "raca",           "^Agregados_por_setores_cor_ou_raca_BR(_\\d{8})?\\.csv$",
    "Pessoas",          "demografia",     "^Agregados_por_setores_demografia_BR(_\\d{8})?\\.csv$",
    "Pessoas",          "parentesco",     "^Agregados_por_setores_parentesco_BR(_\\d{8})?\\.csv$",

    "ResponsavelRenda", NA_character_,    "^Agregados_por_setores_renda_responsavel_BR(_\\d{8})?\\.csv$",

    "Indigenas",        "domicilios",     "^Agregados_por_setores_domicilios_indigenas_BR(_\\d{8})?\\.csv$",
    "Indigenas",        "pessoas",        "^Agregados_por_setores_pessoas_indigenas_BR(_\\d{8})?\\.csv$",

    "Quilombolas",      "domicilios",     "^Agregados_por_setores_domicilios_quilombolas_BR(_\\d{8})?\\.csv$",
    "Quilombolas",      "pessoas",        "^Agregados_por_setores_pessoas_quilombolas_BR(_\\d{8})?\\.csv$",

    # IBGE FTP filename has "domicilios" with an accented i ("domicílios"), but
    # the byte representation depends on encoding (URL-encoded as %c3%ad in zip
    # name; appears garbled as "domic_lios" or "domic..lios" after unzip on
    # some systems). Permissive regex: 0-4 bytes between "domic" and "lios".
    "Entorno",          "domicilios",     "^Agregados_por_setores_entorno_domic.{0,4}lios_BR(_\\d{8})?\\.csv$",
    "Entorno",          "faces",          "^Agregados_por_setores_entorno_faces_BR(_\\d{8})?\\.csv$",
    "Entorno",          "moradores",      "^Agregados_por_setores_entorno_moradores_BR(_\\d{8})?\\.csv$",

    "Obitos",           NA_character_,    "^Agregados_por_setores_obitos_BR(_\\d{8})?\\.csv$"
  )
}


# ---- download stage ---------------------------------------------------------

# Download zipped census tract CSVs from three IBGE FTP endpoints, unzip them,
# and return the paths of the extracted CSV files. Reuses helpers from
# support_fun.R: list_folders(), download_file_censobr(), unzip_censobr().
#
# Smart skip + per-URL retry are handled by download_file_censobr (HEAD-based
# size+mtime check). No overwrite flag needed; unchanged remote files are kept.
download_tract_2022 <- function(){

  dest_dir <- "./data_raw/tracts/2022"
  csv_dir  <- file.path(dest_dir, "csv")
  dir.create(dest_dir, recursive = TRUE, showWarnings = FALSE)
  dir.create(csv_dir,  recursive = TRUE, showWarnings = FALSE)

  message("\nDownloading 2022 census tracts ...\n")

  # FTP endpoints to scrape via list_folders()
  ftps <- c(
    "https://ftp.ibge.gov.br/Censos/Censo_Demografico_2022/Agregados_por_Setores_Censitarios/Agregados_por_Setor_csv/",
    "https://ftp.ibge.gov.br/Censos/Censo_Demografico_2022/Agregados_por_Setores_Censitarios_Caracteristicas_urbanisticas_do_entorno_dos_domicilios/Agregados_por_Setor_csv/"
  )

  # Hardcoded ZIP (single file, not in a directory listing)
  hardcoded_url <- "https://ftp.ibge.gov.br/Censos/Censo_Demografico_2022/Agregados_por_Setores_Censitarios_Rendimento_do_Responsavel/Agregados_por_setores_renda_responsavel_BR_csv.zip"

  # Build list of URLs from FTP scrapes
  scraped_urls <- unlist(lapply(ftps, function(ftp){
    listed <- list_folders(ftp)
    listed <- listed[grepl("\\.zip$", listed)]
    if (length(listed) == 0) return(character(0))
    paste0(ftp, listed)
  }))

  all_urls <- c(scraped_urls, hardcoded_url)

  # Always pass all URLs; download_file_censobr decides what to actually fetch
  download_file_censobr(file_url = all_urls, dest_dir = dest_dir)

  # Unzip everything into csv_dir (idempotent: unzip overwrites)
  zip_files <- list.files(dest_dir, pattern = "\\.zip$", full.names = TRUE)
  if (length(zip_files) == 0){
    stop("No ZIP files found in ", dest_dir, " after download stage.")
  }
  unzip_censobr(zip_dir = dest_dir, out_zip = csv_dir)

  csv_paths <- list.files(csv_dir,
                          pattern    = "\\.csv$",
                          full.names = TRUE,
                          recursive  = TRUE,
                          ignore.case = TRUE)
  csv_paths <- unique(csv_paths)

  if (length(csv_paths) == 0){
    stop("No CSV files extracted to ", csv_dir, ".")
  }

  return(csv_paths)
}


# ---- private: match a CSV path by regex pattern ----------------------------

.match_files_2022 <- function(csv_paths, pattern, theme, prefix){
  hits <- grep(pattern, basename(csv_paths))
  if (length(hits) == 0){
    stop("No CSV matched for theme='", theme, "' prefix='", prefix,
         "' pattern='", pattern, "'")
  }
  if (length(hits) > 1){
    stop("Multiple CSVs matched for theme='", theme, "' prefix='", prefix,
         "': ", paste(basename(csv_paths)[hits], collapse = ", "))
  }
  csv_paths[hits]
}


# ---- private: value-level normalization (recodificar) ----------------------
#
# Same logic as legacy recode_datasets():
#   - encoding latin1 -> utf-8
#   - whitespace squish
#   - "X", ",", "." (single char) -> NA
#   - "," -> "." (decimal sep)
#   - convert all-numeric character columns to numeric
#   - "" -> NA
#
# Modernized: mutate_if -> mutate(across(where(...))).
.recode_datasets_2022 <- function(df){

  variants <- c("CD_SETOR", "SETOR", "COD_SETOR_M22FINAL")
  present  <- intersect(names(df), variants)

  if (length(present) > 0 && present[1] != "CD_setor"){
    df <- dplyr::rename(df, "CD_setor" = !!rlang::sym(present[1]))
  }

  df_recoded <- df |>
    dplyr::mutate(CD_setor = as.numeric(CD_setor)) |>

    dplyr::mutate(dplyr::across(
      dplyr::where(is.character),
      \(var){
        var <- iconv(var, from = "latin1", to = "utf-8")
        var <- stringr::str_squish(var)
        var <- ifelse((nchar(var) %in% 1) & (var %in% c("X", ",", ".")),
                      NA_character_, var)
        var
      }
    )) |>

    dplyr::mutate(dplyr::across(
      dplyr::where(is.character),
      \(var) stringr::str_replace(string = var, pattern = ",", replacement = ".")
    )) |>

    # convert character cols with no letters to numeric
    dplyr::mutate(dplyr::across(
      dplyr::where(\(x) is.character(x) &&
                   !any(grepl(x = stringr::str_to_lower(x), pattern = "[a-z]"))),
      \(x) suppressWarnings(as.numeric(x))
    )) |>

    dplyr::mutate(dplyr::across(
      dplyr::where(is.character),
      \(x) ifelse(x %in% "", NA_character_, x)
    ))

  # sanity: NA was introduced exactly where original had X / , / . / ""
  test_missings <- vapply(names(df), function(var){
    all((df[[var]] %in% c("X", ",", ".", "")) == is.na(df_recoded[[var]]))
  }, logical(1))

  if (!all(test_missings)){
    stop("recode_datasets_2022: NAs introduzidos onde nao deveriam estar (cols: ",
         paste(names(df)[!test_missings], collapse = ", "), ")")
  }

  df_recoded |> dplyr::select(CD_setor, dplyr::everything())
}


# ---- private: read+recode Basico, apply censobr column renames -------------

.recode_basico_2022 <- function(basico_csv_path){
  df <- data.table::fread(file = basico_csv_path, sep = ";", dec = ",")
  names(df) <- stringr::str_to_upper(names(df))
  df <- .recode_datasets_2022(df)

  df |> dplyr::rename(
    code_tract               = CD_setor,
    situacao                 = SITUACAO,
    code_situacao            = CD_SIT,
    code_type                = CD_TIPO,
    area_km2                 = AREA_KM2,
    code_region              = CD_REGIAO,
    name_region              = NM_REGIAO,
    code_state               = CD_UF,
    name_state               = NM_UF,
    code_muni                = CD_MUN,
    name_muni                = NM_MUN,
    code_district            = CD_DIST,
    name_district            = NM_DIST,
    code_subdistrict         = CD_SUBDIST,
    name_subdistrict         = NM_SUBDIST,
    code_neighborhood        = CD_BAIRRO,
    name_neighborhood        = NM_BAIRRO,
    code_favela              = CD_FCU,
    name_favela              = NM_FCU,
    code_intermediate        = CD_RGINT,
    name_intermediate        = NM_RGINT,
    code_immediate           = CD_RGI,
    name_immediate           = NM_RGI,
    code_nucleo_urbano       = CD_NU,
    name_nucleo_urbano       = NM_NU,
    code_aglomerado          = CD_AGLOM,
    name_aglomerado          = NM_AGLOM,
    code_urban_concentration = CD_CONCURB,
    name_urban_concentration = NM_CONCURB
  )
}


# ---- private: build a multi-file theme dataset -----------------------------

.make_theme_dataset_2022 <- function(theme_i, info_subset, csv_paths,
                                     dataset_basico){

  basico_sub <- dataset_basico |>
    dplyr::select(-dplyr::starts_with("V"))

  # resolve CSV path for each row in info_subset via regex match
  resolved <- vapply(seq_len(nrow(info_subset)), function(i){
    .match_files_2022(csv_paths,
                      info_subset$pattern[i],
                      info_subset$theme[i],
                      info_subset$prefix[i])
  }, character(1))

  message("Theme '", theme_i, "': reading ", length(resolved), " file(s)")

  # read each CSV
  datasets <- lapply(resolved, function(f){
    dt <- data.table::fread(file = f, sep = ";", dec = ",")
    names(dt) <- stringr::str_to_upper(names(dt))
    dt
  })

  # recode each
  datasets <- lapply(datasets, .recode_datasets_2022)

  # rename CD_setor -> code_tract; add theme prefix to V cols when multi-file
  if (nrow(info_subset) > 1){
    for (i in seq_len(nrow(info_subset))){
      prefix_i      <- info_subset$prefix[i]
      names_change  <- setdiff(names(datasets[[i]]), "CD_setor")

      already_prefixed <- any(grepl(paste0("^", prefix_i, "_"), names_change))
      if (already_prefixed) next

      new_names <- c("code_tract", paste(prefix_i, names_change, sep = "_"))
      names(datasets[[i]]) <- new_names
    }
  } else {
    names(datasets[[1]])[1] <- "code_tract"
  }

  # full join across multiple files in the same theme
  if (length(datasets) > 1){
    n_rows <- vapply(datasets, nrow, integer(1))
    if (var(n_rows) > 0){
      warning("Tema '", theme_i, "': linhas diferentes entre arquivos: ",
              paste(n_rows, collapse = ", "))
    }
    base_idx  <- which.max(n_rows)
    data_join <- datasets[[base_idx]]
    for (other in datasets[-base_idx]){
      data_join <- dplyr::full_join(data_join, other, by = "code_tract")
    }
  } else {
    data_join <- datasets[[1]]
  }

  # add geography from Basico, keep tracts present in this theme
  out <- dplyr::left_join(basico_sub, data_join, by = "code_tract") |>
    dplyr::filter(code_tract %in% data_join$code_tract)

  out
}


# ---- public: clean a single theme ------------------------------------------
#
# raw_csv_paths : character vector of all CSV files for 2022 (return value
#                 of download_tract_2022())
# tbl_name      : one of c("Basico","Domicilio","Pessoas","ResponsavelRenda",
#                          "Indigenas","Quilombolas","Entorno","Obitos")
#
# Returns a tibble with a $table_name column appended (read by save_tracts_2022).
clean_tracts_2022 <- function(raw_csv_paths, tbl_name){

  info <- .dataset_info_2022()

  # always need Basico as geographic base
  basico_row  <- info |> dplyr::filter(theme == "Basico")
  basico_path <- .match_files_2022(raw_csv_paths,
                                   basico_row$pattern,
                                   "Basico",
                                   NA_character_)

  if (tbl_name == "Basico"){
    out <- .recode_basico_2022(basico_path)
  } else {
    info_subset <- info |> dplyr::filter(theme == tbl_name)
    if (nrow(info_subset) == 0){
      stop("clean_tracts_2022: tema desconhecido '", tbl_name, "'")
    }
    dataset_basico <- .recode_basico_2022(basico_path)
    out <- .make_theme_dataset_2022(tbl_name, info_subset, raw_csv_paths,
                                    dataset_basico)
  }

  # marker so save_tracts_2022 knows which file to write
  out$table_name <- tbl_name
  out
}


# ---- public: save one theme to parquet -------------------------------------

save_tracts_2022 <- function(cleaned_dt){

  tbl <- cleaned_dt$table_name[1]
  message("Saving tracts 2022: ", tbl)

  dir.create("./data/tracts/2022/", recursive = TRUE, showWarnings = FALSE)

  out <- cleaned_dt
  out$table_name <- NULL

  # v0.6.0 convention: all code_* columns as numeric (double). Reuses helper
  # in support_fun.R (line ~156).
  out <- code_cols_to_numeric(out)

  dest_file <- paste0("./data/tracts/2022/2022_tracts_", tbl, ".parquet")
  write_censobr_parquet(out, dest_file)

  return(dest_file)
}
