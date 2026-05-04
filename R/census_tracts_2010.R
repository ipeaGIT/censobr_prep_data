# download zipped files of census tracts and return the paths to unzipped files
download_tract_2010 <- function(year, overwrite = FALSE){ # year = 2010
  
  # create dest_dir
  dest_dir <- paste0('./data_raw/tracts/', year)
  dir.create(dest_dir, recursive = T, showWarnings = FALSE)
  
  message(paste0("\nDownloading year: ", year, '\n'))
  
  # get ftp
  if(year==2010){
    ftp   <- 'https://ftp.ibge.gov.br/Censos/Censo_Demografico_2010/Resultados_do_Universo/Agregados_por_Setores_Censitarios/'
    files <- NULL
  }
  
  # if(year==2022){
  #   ftp   <- c('https://ftp.ibge.gov.br/Censos/Censo_Demografico_2022/Agregados_por_Setores_Censitarios/Agregados_por_Setor_csv/',
  #              'https://ftp.ibge.gov.br/Censos/Censo_Demografico_2022/Agregados_por_Setores_Censitarios_Caracteristicas_urbanisticas_do_entorno_dos_domicilios/Agregados_por_Setor_csv/')
  #   
  #   files <- c("https://ftp.ibge.gov.br/Censos/Censo_Demografico_2022/Agregados_por_Setores_Censitarios_Rendimento_do_Responsavel/Agregados_por_setores_renda_responsavel_BR_csv.zip")
  # }
  
  # get file names
  listed_files <- list_folders(ftp)
  
  # keep zip files
  listed_files <- listed_files[listed_files %like% ".zip$"]
  
  # Removing existing files from the list of files to download (if overwrite == F)
  if(overwrite == FALSE){
    existing_files = listed_files %in% list.files(dest_dir)
    listed_files <- listed_files[!existing_files]
  }
  
  if(length(listed_files) == 0){
    return()
  }
  
  # Download zipped files
  all_files_url <- paste0(ftp, listed_files)
  
  downloaded_files <- download_file_censobr(
    file_url = all_files_url, 
    dest_dir = dest_dir
    )
  
  # delete file from RS RS_20231030.zip, which was replaced with RS_20241211.zip
  if (year == 2010 ) {
    file_to_remove <- downloaded_files[ downloaded_files %like% "RS_20231030.zip"]
    file.remove(file_to_remove)
  }
  
  # unzip files
  
  # 66666666666666666   pass unzipped files to a temp dir so we don't overload local disk
  
  temp_zip_dir <- tempdir()
  
  unzipped_files <- unzip_censobr(
    zip_dir = dest_dir, 
    out_zip = dest_dir
    )
  
  # ignore documentation files
  unzipped_files <- unzipped_files[ ! unzipped_files %like% "Descri|.zip"]
  
  # rename files to upper case but keep file extension to lowercase
  # this is necessary to enforce consistency of file names across states and tables 
  rename_files_toupper_lower_ext(unzipped_files)
  
  # retorna XLS (não CSV). Os CSVs do IBGE têm múltiplos problemas:
  # ENTORNO_*.csv: Cod_setor em notação científica (UFs grandes, perde precisão).
  # PESSOA*_SP2.csv, RESPONSAVEL*_SP2.csv, PESSOA02_AC.csv: separador "," + quotes
  # duplicados (formato malformado). XLS preserva tudo. readxl + col_types="text"
  # mantém "X" como texto literal — issues #71+#73 não regridem porque o all-NA-drop
  # não dispara em strings "X" (só em colunas genuinamente NA).
  raw_file_paths <- list.files(
    path = dest_dir,
    pattern = "\\.xls$",
    ignore.case = TRUE,
    all.files = T,
    full.names = T,
    recursive = T
    )

  raw_file_paths <- raw_file_paths[ ! raw_file_paths %like% "Descri|.zip"]
  raw_file_paths <- unique(raw_file_paths)
  raw_file_paths
}


# generate a national df with all states for a given table
# raw_file_paths <- tar_read(raw_tracts_paths_2010)
# tbl_name <- tar_read(table_names_tracts)[1]
clean_tracts_2010 <- function(raw_file_paths, tbl_name){
  
  # create dest dir for clean data
  dir.create('./data/tracts/2010/', recursive = T, showWarnings = FALSE)
  
  # read a single file for a given combination of state and table
  read_single_file_tract_2010 <- function(f){ # f = temp_files[55]
    
    ### replace "X" with NA
    ### delete a couple of tracts with ÿ caracter
    
    # 6666
    # f = "./data_raw/tracts/2010/CE_20171016/CE/Base informaçoes setores2010 universo CE/CSV/Pessoa07_CE.csv"
    # f = "./data_raw/tracts/2010/CE_20231030/Base informaçoes setores2010 universo CE/CSV/Basico_CE.csv"
    # f = './data_raw/tracts/2010/CE_20231030/Base informaçoes setores2010 universo CE/EXCEL/Basico_CE.xls'
    
    # f = "./data_raw/tracts/2010/RO_20231030/Base informaçoes setores2010 universo RO/EXCEL/Entorno05_RO.xls"
    # f = "./data_raw/tracts/2010/CE_20231030/Base informaçoes setores2010 universo CE/EXCEL/Entorno05_CE.xls"
    
    message(f)
    
    # # detect state
    # st <- str_trim(str_extract(f, "_([:upper:][:upper:])")) |> unique()
    # 
    # # determine encoding
    # enc <- ifelse(st=='_ES', 'UTF-8', 'Latin-1')
    
    # XLS preserva "X" como texto literal, Cod_setor full precision, e nomes
    # de colunas íntegros — independente dos quirks de CSV-export do IBGE.
    temp_df <- as.data.table(readxl::read_excel(f, col_types = "text"))

    # Algumas UFs vêm com nomes duplicados (DOMICILIO02_RO 107 dups; ENTORNO02_RO).
    names(temp_df) <- make.unique(names(temp_df), sep = "_")

    # Issue #68: Pessoa02 de GO e SP tem V01..V09 em vez de V001..V009.
    uf <- str_remove_all(str_extract(basename(f), "_[A-Z]{2}[0-9]?\\."), "[_.]")
    if(uf %in% c("GO", "SP1", "SP2")){
      names(temp_df) <- sub("^V(\\d{2})$", "V0\\1", names(temp_df))
    }

    # dropar colunas 100% NA
    setDT(temp_df)
    all_NA <- names(temp_df)[sapply(temp_df, function(x) all(is.na(x)))]
    if(length(all_NA)) temp_df[, (all_NA) := NULL]

    # ÿ aparece em alguns arquivos (Pessoa07_CE, Entorno05_RO) — striped.
    has_y <- any(vapply(temp_df, function(col) any(grepl("ÿ", col, fixed = TRUE), na.rm = TRUE), logical(1)))
    if(has_y){
      message("ÿ detected in ", f)
      for(col in names(temp_df))
        set(temp_df, j = col, value = gsub("ÿ", "", temp_df[[col]], fixed = TRUE))
    }
    
    
    # get root of file name
    root_name <- basename(f)
    root_name <- sub("_.*$", "", root_name)
    root_name <- tolower(root_name)
    
    # rename columns
    data.table::setnames(temp_df, 'Cod_setor', 'code_tract')
    temp_df[, code_tract := as.character(code_tract)]
    temp_df[, code_muni := substr(code_tract, 1, 7)]
    data.table::setcolorder(temp_df, c('code_muni', 'code_tract'))

    # IBGE às vezes inclui linhas-resumo sem código de setor. Filtrar antes do
    # merge — data.table casa NA==NA no join (gera Cartesian); dplyr::left_join
    # antigo silenciosamente dropava NAs.
    temp_df <- temp_df[!is.na(code_tract)]
    
    # prefixa V cols com nome do sub-arquivo (pessoa01_, domicilio02_, etc.)
    tabl <- detect_2010_table_name(f)
    if(tabl %in% c("PESSOA", "DOMICILIO", "RESPONSAVEL", "ENTORNO")){
      cols_to_rename <- names(temp_df)[3:ncol(temp_df)]
      names(temp_df)[3:ncol(temp_df)] <- paste0(root_name, "_", cols_to_rename)
    }

    # table_name é re-adicionado em clean_tracts_2010 após rbindlist; mantê-lo
    # aqui faz merge.data.table acumular table_name.x/.y entre sub-tabelas.
    temp_df
  }
  
  # processa todos os arquivos de uma UF; em temas com 2+ sub-tabelas, faz
  # join iterativo data.table consumindo a fila pra liberar memória.
  prep_state <- function(abbrev, temp_files){
    message(abbrev)

    uf_files <- temp_files[temp_files %like% paste0(abbrev, "/EXCEL/")]
    df_list  <- lapply(uf_files, read_single_file_tract_2010)

    temp_uf <- df_list[[1]]
    df_list[[1]] <- NULL
    while(length(df_list) > 0){
      temp_uf <- merge(temp_uf, df_list[[1]],
                       by = c("code_muni", "code_tract"),
                       all.x = TRUE, sort = FALSE)
      df_list[[1]] <- NULL
      gc(verbose = FALSE)
    }

    rm(df_list); gc(verbose = FALSE)
    temp_uf
  }


  # workers ≤ 4 por regra (memory-discipline). Mais que isso saturou RAM em ENTORNO.
  future::plan(future::multisession, workers = 4)

  temp_files <- raw_file_paths[raw_file_paths %like% tbl_name]
  if(tbl_name %in% c("PESSOA", "DOMICILIO", "RESPONSAVEL", "ENTORNO")){
    temp_files <- temp_files[str_detect(basename(temp_files), "[0-9]{2}")]
  }

  # SP vem em duas peças (SP_Capital + SP_Exceto_Capital); 26 UFs comuns + 2 SP.
  all_states <- c(UF_SIGLAS[!grepl("SP", UF_SIGLAS)], "SP_Capital", "SP_Exceto_Capital")

  ufs_list <- furrr::future_map(all_states, prep_state,
                                temp_files = temp_files, .progress = TRUE)

  br_df <- rbindlist(ufs_list, fill = TRUE, use.names = TRUE)
  rm(ufs_list); gc(verbose = FALSE)

  br_df$table_name <- tbl_name
  br_df
}




# generate a national df with all states for a given table
# clean_tract_table_2010 <- tar_read(clean_tract_table_2010)
save_tracts_2010 <- function(br_df){

  tbl <- br_df$table_name[1]
  message(tbl)

  # code_weighting (área de ponderação) é stub NA em v0.6.0 — geobr (>=1.10) não
  # expõe mais essa coluna pra 2010. Restaurar via Documentacao.zip do IBGE é
  # prioridade adiada; stub mantém a coluna pra add_geography_cols_tracts não
  # falhar no relocate.
  if(!"code_weighting" %in% names(br_df)) br_df$code_weighting <- NA_character_

  br_df <- add_geography_cols_tracts(br_df, year = 2010)

  # Padroniza nomes de UF/região (issue #75). add_state_info reescreve code_state
  # numeric + refresca name_state/abbrev_state; add_region_info deriva code_region.
  br_df <- add_state_info(br_df, column = "code_state")
  br_df <- add_region_info(br_df, column = "code_state")

  AT <- br_df

  # rename columns
  if(tbl == 'BASICO'){
    
    options(scipen = 999)
    
    # AT <- dplyr::mutate(AT, Cod_subdistrito = as.numeric(Cod_subdistrito))
    # AT <- dplyr::mutate(AT, Cod_subdistrito = (format(as.character(Cod_subdistrito), scientific = FALSE)))
    # # head(AT) |> collect()
    
    AT <- dplyr::rename(AT,
                        code_tract = code_tract,
                        # code_muni = Cod_municipio,
                        name_muni = Nome_do_municipio,
                        # abbrev_state = Cod_UF ,
                        # name_state = Nome_da_UF ,
                        code_state = code_state,
                        # code_region = `Cod_Grandes Regiões`,
                        # name_region = Nome_Grande_Regiao,
                        code_meso = Cod_meso,
                        name_meso = Nome_da_meso,
                        code_micro = Cod_micro,
                        name_micro = Nome_da_micro,
                        code_metro = Cod_RM,
                        name_metro = Nome_da_RM,
                        name_neighborhood = Nome_do_bairro,
                        code_neighborhood = Cod_bairro,
                        code_district = Cod_distrito,
                        name_district = Nome_do_distrito,
                        code_subdistrict = Cod_subdistrito,
                        name_subdistrict = Nome_do_subdistrito,
                        Basico_V1005 = Situacao_setor
                        # , tipo_setor = Tipo_setor
    )
    
    # cols IBGE de UF/região foram substituídas por add_state_info/add_region_info.
    AT <- AT |>
      select(-any_of(c("Cod_Grandes Regiões", "Nome_Grande_Regiao",
                       "Cod_UF", "Nome_da_UF", "Cod_municipio")))
    
    ## reoder columns
    AT <- relocate(AT, c(code_tract, code_weighting, code_muni, name_muni, code_state,
                         abbrev_state, name_state, code_region, name_region,
                         code_meso, name_meso, code_micro, name_micro,
                         code_metro, name_metro, name_neighborhood,
                         code_neighborhood, name_neighborhood,
                         code_neighborhood, Basico_V1005 # , tipo_setor
    ))
  }
  
  
  # rename column Situacao_setor
  all_cols <- names(AT)
  old_names <- all_cols[str_detect(all_cols, 'Situacao_setor')]
  
  if(tbl == 'ENTORNO'){ AT <- select(AT, -c(entorno05_V1005)) }
  
  AT <- rename_with(AT,
                    ~gsub('Situacao_setor', 'V1005', .x),
                    .cols = all_of(old_names)
  )
  # AT <-  dplyr::rename_with(AT, ~gsub("Situacao_setor", "V1005", .x))
  
  
  AT <- collect(AT)

  # V cols vêm como character (fread colClasses) com vírgula decimal IBGE.
  # Loop set é preferível a mutate(across) — evita cópia da tabela inteira.
  message("to numeric")
  setDT(AT)
  for(v in grep("V", names(AT), value = TRUE))
    set(AT, j = v, value = as.numeric(gsub(",", ".", AT[[v]], fixed = TRUE)))

  AT <- AT[order(code_muni, code_tract)]
  setindex(AT, NULL)
  setDF(AT)

  # convenção v0.6.0: todas code_* viram numeric (R double / Arrow float64).
  AT <- code_cols_to_numeric(AT)

  message("saving")
  dir.create("./data/tracts/2010/", recursive = TRUE, showWarnings = FALSE)
  dest_file <- paste0("./data/tracts/2010/2010_tracts_", tbl, ".parquet")
  write_censobr_parquet(AT, dest_file)

  dest_file
}
