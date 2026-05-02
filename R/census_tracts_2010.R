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
  
  # return file paths
  raw_file_paths <- list.files(
    path = dest_dir, 
    pattern = ".xls", 
    all.files = T, 
    full.names = T, 
    recursive = T
    )
  
  # ignore documentation files
  raw_file_paths <- raw_file_paths[ ! raw_file_paths %like% "Descri|.zip"]
  
  raw_file_paths <- unique(raw_file_paths)
  
  return(raw_file_paths)
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
    
    # read data
    temp_df <- readxl::read_excel(f, col_types = "text")
    
    # # fix column names of table Pessoa02 of Goias. Issue https://github.com/ipeaGIT/censobr/issues/68
    # if (tabl=="Pessoa") {
    #   last6 <- substring(f, nchar(f) - 5)
    #   uf <- substring(last6, 1,2)
    #   
    #   if( uf=="GO"){
    #     names(temp_df) <- sub("^V(\\d{2})$", "V0\\1", names(temp_df))
    #   }
    # }
    
    
    # determine columns with 100% of NA and drop them
    data.table::setDT(temp_df)
    all_NA_cols <- sapply(temp_df, function(x)all(is.na(x)))
    all_NA_cols <- names(all_NA_cols[all_NA_cols > 0])
    if(length(all_NA_cols)>0){ temp_df[, {{all_NA_cols}} := NULL] }
    
    # # all columns to character
    # for(col in names(temp_df)) {
    #   set(temp_df, j = col, value = as.character(temp_df[[col]]))
    # }
    
    # detect error with character 'ÿ' and replace observations with NA
    # Pessoa07_CE.xls
    # Entorno05_RO.xls
    row_pos <- temp_df |> map(~str_detect(.x,'ÿ')) |> reduce(`|`)
    n_rows <- sum(row_pos, na.rm = T)
    
    if (n_rows > 0){
      message(paste0('ÿÿÿÿÿÿ detected in '), f)
      # stop('error')
      ## replace all with empty space
      temp_df <- temp_df |> mutate_all(funs(str_replace_all(., "ÿ", "")))
    }
    
    #   # replace all with empty space
    #   temp_df2 <- temp_df |> mutate_all(funs(str_replace_all(., "ÿ", "")))
    #
    #   # temp_df2[24, c('V032')] |> nchar()
    #
    # # replace entire cell with NA
    #   temp_df[apply(temp_df, 2, function(i) grepl('ÿ', i))] <- NA
    
    
    # get root of file name
    root_name <- basename(f)
    root_name <- sub("_.*$", "", root_name)
    root_name <- tolower(root_name)
    
    # rename columns
    data.table::setnames(temp_df, 'Cod_setor', 'code_tract')
    temp_df[, code_tract := as.character(code_tract)]
    temp_df[, code_muni := substr(code_tract, 1, 7)]
    data.table::setcolorder(temp_df, c('code_muni', 'code_tract'))
    
    # detect table from file name
    tabl <- detect_2010_table_name(f)
    
    if( tabl == 'PESSOA' | tabl == 'DOMICILIO' | tabl == 'RESPONSAVEL' | tabl == 'ENTORNO'){
      cols_to_rename <- names(temp_df)[3:ncol(temp_df)]
      names(temp_df)[3:ncol(temp_df)] <- paste0(root_name,'_', cols_to_rename)
    }
    
    temp_df$table_name <- tabl
      
    return(temp_df)
  }
  
  # save one file per state / cbind when there're more then one file per in the same state
  prep_state <- function(abbrev, temp_files){
    
    # abbrev = "SP_Exceto_Capital"   abbrev = "GO"
    message(abbrev)
    
    # select files from uf
    uf_files <- temp_files[temp_files %like% paste0(abbrev,"/EXCEL/")]
    
    # read all tables into a list
    df_list <- lapply(X=uf_files, FUN=read_single_file_tract_2010)
    
    # left join when there are two or more files for a given state
    if (length(df_list)>1) {
      temp_uf <- purrr::reduce(.x = df_list, .f = dplyr::left_join, by=c('code_muni', 'code_tract'))
    }
    if (length(df_list)==1) {
      temp_uf <- rbindlist(df_list, fill=TRUE)
    }
    
    gc(T)
    return(temp_uf)
    # fname <- paste0(tabl,'_tracts_', abbrev, '.parquet') |> tolower()
    # arrow::write_parquet(temp_uf, paste0('./data/tracts/2010/', fname))
    
  }
  
  
  # parallel
  # 666666666666 set number of workers as a global option in targets
  future::plan(future::multisession, workers = 8)
  
  # tbl_name = "BASICO"   tbl_name = "DOMICILIO"
  
  temp_files <- raw_file_paths[ raw_file_paths %like% tbl_name]
  
  if (tbl_name %in% c('PESSOA', 'DOMICILIO', 'RESPONSAVEL','ENTORNO')) {
    root_names <- basename(temp_files)
    temp_files <- temp_files[ str_detect(root_names, "([:digit:][:digit:])") ]
    }
    
  # fix states to account for two SP files
  all_states <- UF_SIGLAS[!grepl("SP", UF_SIGLAS)]
  all_states <- c(all_states, 'SP_Capital', 'SP_Exceto_Capital')
  all_states
  
  # process each state
  # pblapply(X = all_states, FUN = prep_state, tabl = t)
  ufs_list <- furrr::future_map(
    .x = all_states,
    .f = prep_state,
    temp_files = temp_files,
    .progress = T
  )
    
  br_df <- data.table::rbindlist(ufs_list)
  
  return(br_df)
  
  }




# generate a national df with all states for a given table
# clean_tract_table_2010 <- tar_read(clean_tract_table_2010)
save_tracts_2010 <- function(br_df){
  
  tbl <- br_df$table_name[1]
  
  message(tbl)
  
  # download info about areas de ponderacao
  cross <- geobr::read_census_tract(
    code_tract = "all", 
    year = 2010, 
    simplified = TRUE
    ) |> 
    sf::st_drop_geometry() |> 
    dplyr::select(code_tract, code_weighting)
  
  #' 
  #' 
  #' temp_dir <- tempdir()
  #' download_file_censobr(
  #'   file_url = "https://ftp.ibge.gov.br/Censos/Censo_Demografico_2010/Resultados_Gerais_da_Amostra/Microdados/Documentacao.zip", 
  #'   dest_dir = temp_dir
  #'   )
  #' 
  #' ap_files <- unzip_censobr(zip_dir = temp_dir)
  #' 
  #' ap_files[ap_files %like% "composi"]
  #' ap_files[ap_files %like% "composicao_areas_ponderacao_2010.txt"]
  #' 
  #' # add code_weighting. You need to manually:
  #' #' - downloaded file https://ftp.ibge.gov.br/Censos/Censo_Demografico_2010/Resultados_Gerais_da_Amostra/Microdados/Documentacao.zip
  #' #' - unzip it
  #' #' - change column names and change encoding
  #' 
  #' cross <- data.table::fread("R:/Dropbox/git/censobr/data_prep/data_raw/tracts/2010/composicao_areas_ponderacao_2010.txt")
  #' 
  #' cross <- data.table::fread('./data_raw/tracts/2010/composicao_areas_ponderacao_2010.txt', colClasses = 'character',encoding = 'UTF-8')
  #' AT <- left_join(AT, cross, by = 'code_tract')
  
  # add geography variables
  br_df <- add_geography_cols_tracts(br_df, year = 2010)
  
  # rename columns
  if(tbl == 'Basico_'){
    
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
    
    AT <- AT |>
      select( -c("Cod_Grandes Regiões", "Nome_Grande_Regiao", "Cod_UF",
                 "Nome_da_UF", "Cod_municipio"))
    
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
  
  if(tbl == 'Entorno_'){ AT <- select(AT, -c(entorno05_V1005)) }
  
  AT <- rename_with(AT,
                    ~gsub('Situacao_setor', 'V1005', .x),
                    .cols = all_of(old_names)
  )
  # AT <-  dplyr::rename_with(AT, ~gsub("Situacao_setor", "V1005", .x))
  
  
  AT <- collect(AT)
  
  # whenever there is "X" the value gets convert to NA
  message('to numeric')
  vars <- names(AT)
  vars <- vars[grep('V', vars)]
  AT <- mutate(AT, across(all_of(vars), ~ as.numeric(.x)))
  
  
  # data.table::setDT(AT2)
  # df_na <- AT2[rowSums(is.na(AT2)) > 0]
  #
  # AT |>
  #   filter(code_tract== "521020805000055") |>
  #   select(code_tract, pessoa02_V001, pessoa02_V052,
  #          pessoa02_V095, pessoa02_V117,
  #          pessoa01_V002, pessoa01_V040) |>
  #   collect()
  #
  # a |>
  #   filter(code_tract== "521020805000055") |>
  #   select(code_tract, pessoa02_V001, pessoa02_V052,
  #          pessoa02_V095, pessoa02_V117,
  #          pessoa01_V002, pessoa01_V040) |>
  #   collect()
  
  # reoderder rows
  data.table::setDT(AT)
  AT <- AT[order(code_muni, code_tract)]
  
  data.table::setindex(AT, NULL)
  data.table::setDF(AT)
  
  message('saving')
  # save
  dest_file <- paste0('2010_tracts_', tbl, '.parquet')

  
  write_censobr_parquet(AT, dest_file)
  
  return(dest_file)
}
