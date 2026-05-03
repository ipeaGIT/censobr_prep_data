
###### detect year from file name  -----------------
detect_year_from_string <- function(string){
  
  yyyy <- regmatches(string, gregexpr("\\d{4}", string))[[1]]
  yyyy <- unique(yyyy)
  yyyy <- yyyy[ yyyy != '2500' ]
  return(yyyy)
}


###### list ftp folders -----------------

# function to list ftp folders from their original sub-dir
list_folders <- function(ftp){

  h <- rvest::read_html(ftp)
  elements <- rvest::html_elements(h, "a")
  folders <- rvest::html_attr(elements, "href")
  return(folders)

}



###### Download file to tempdir -----------------
#
# Smart-skip: if a local file already exists and its size and mtime match the
# remote (via HEAD request), the download is skipped. Mismatched files are
# re-downloaded. Each download is retried up to `max_retries` times with
# exponential backoff.
#
# Defaults:
#   max_active = 3   (parallel; conservative against IBGE FTP rate-limit)
#   max_retries = 3  (per-URL retry on transient failures)
#
download_file_censobr <- function(file_url,
                                dest_dir = NULL,
                                showProgress = TRUE,
                                timeout = 500,
                                max_active = 3,
                                max_retries = 3) {

  if (is.null(dest_dir)) {
    dest_dir <- tempdir()
  }

  if (!dir.exists(dest_dir)) {
    stop("'dest_dir' does not exist")
  }

  if (!is.character(file_url) || length(file_url) == 0L) {
    stop("'file_url' must be a non-empty character vector")
  }

  dest_files <- file.path(dest_dir, basename(file_url))

  # ---- Step 1: HEAD requests to learn remote size + Last-Modified -----------
  head_reqs <- lapply(file_url, function(url) {
    httr2::request(url) |>
      httr2::req_method("HEAD") |>
      httr2::req_options(timeout = timeout, ssl_verifypeer = 0L)
  })

  head_resps <- if (length(head_reqs) == 1L) {
    list(tryCatch(httr2::req_perform(head_reqs[[1]]),
                  error = function(e) structure(list(), class = "httr2_failure")))
  } else {
    httr2::req_perform_parallel(
      head_reqs, max_active = max_active, on_error = "continue"
    )
  }

  remote_size <- vapply(head_resps, function(r){
    if (inherits(r, "httr2_failure")) return(NA_real_)
    h <- httr2::resp_header(r, "Content-Length")
    if (is.null(h)) return(NA_real_)
    suppressWarnings(as.numeric(h))
  }, numeric(1))

  remote_mtime <- as.POSIXct(NA, tz = "GMT") |> rep(length(head_resps))
  for (i in seq_along(head_resps)) {
    r <- head_resps[[i]]
    if (inherits(r, "httr2_failure")) next
    h <- httr2::resp_header(r, "Last-Modified")
    if (is.null(h)) next
    parsed <- suppressWarnings(
      as.POSIXct(h, format = "%a, %d %b %Y %H:%M:%S", tz = "GMT")
    )
    if (!is.na(parsed)) remote_mtime[i] <- parsed
  }

  # ---- Step 2: decide which files need (re-)download ------------------------
  needs_download <- vapply(seq_along(file_url), function(i){
    if (!file.exists(dest_files[i])) return(TRUE)
    if (is.na(remote_size[i])) return(TRUE)   # HEAD failed; safer to redownload

    local_info <- file.info(dest_files[i])
    if (!isTRUE(local_info$size == remote_size[i])) return(TRUE)

    # If we have a remote mtime, require a tight match (within 2s tolerance,
    # since mtime granularity differs between filesystems).
    if (!is.na(remote_mtime[i])) {
      local_m <- as.POSIXct(local_info$mtime, tz = "GMT")
      delta_s <- abs(as.numeric(difftime(local_m, remote_mtime[i], units = "secs")))
      if (delta_s > 2) return(TRUE)
    }

    FALSE  # size (and mtime, if known) match: keep local file
  }, logical(1))

  to_download <- which(needs_download)
  n_skip      <- length(file_url) - length(to_download)

  if (length(to_download) == 0L) {
    message("download_file_censobr: all ", length(file_url),
            " files already match remote (size+mtime); skipping.")
    return(dest_files)
  }
  if (n_skip > 0L) {
    message("download_file_censobr: skipping ", n_skip,
            " up-to-date file(s); downloading ",
            length(to_download), " new/changed.")
  }

  # delete partials / stale files before downloading
  for (i in to_download) {
    if (file.exists(dest_files[i])) unlink(dest_files[i])
  }

  # ---- Step 3: download with per-URL retry ----------------------------------
  remaining     <- to_download
  attempt       <- 1L

  while (length(remaining) > 0L && attempt <= max_retries) {
    if (attempt > 1L) {
      message("  retry ", attempt, "/", max_retries,
              " for ", length(remaining), " file(s)")
    }

    urls_now  <- file_url[remaining]
    paths_now <- dest_files[remaining]

    reqs <- lapply(urls_now, function(url){
      httr2::request(url) |>
        httr2::req_options(timeout = timeout, ssl_verifypeer = 0L)
    })

    if (length(reqs) == 1L) {
      ok <- tryCatch({
        httr2::req_perform(reqs[[1]], path = paths_now[1])
        TRUE
      }, error = function(e) FALSE)
      ok_vec <- ok
    } else {
      resps <- httr2::req_perform_parallel(
        reqs, paths = paths_now,
        max_active = max_active, on_error = "continue"
      )
      ok_vec <- vapply(resps,
                       function(x) !inherits(x, "httr2_failure"),
                       logical(1))
    }

    # Set local mtime to remote Last-Modified for files that succeeded -- so
    # the next run's HEAD-based skip check can recognize them as up-to-date.
    for (j in which(ok_vec)) {
      idx <- remaining[j]
      if (!is.na(remote_mtime[idx])) {
        try(Sys.setFileTime(dest_files[idx], remote_mtime[idx]), silent = TRUE)
      }
    }

    failed_j <- which(!ok_vec)
    if (length(failed_j) == 0L) break
    # clean partials before retry
    for (j in failed_j) {
      if (file.exists(paths_now[j])) unlink(paths_now[j])
    }
    remaining <- remaining[failed_j]
    attempt   <- attempt + 1L
    if (length(remaining) > 0L && attempt <= max_retries) {
      Sys.sleep(2 ^ (attempt - 2L))  # backoff: 1s, 2s, 4s
    }
  }

  if (length(remaining) > 0L) {
    warning("download_file_censobr: after ", max_retries, " attempts, ",
            length(remaining), " file(s) still failed:\n",
            paste(file_url[remaining], collapse = "\n"))
  }

  return(dest_files[file.exists(dest_files)])
}

# download_file_censobr <- function(file_url,
#                           dest_dir = NULL,
#                           showProgress = TRUE,
#                           timeout = 500) {
#   
#   if (is.null(dest_dir)) dest_dir <- tempdir()
#   
#   if (!dir.exists(dest_dir)) {
#     stop("'dest_dir' does not exist")
#   }
#   
#   dest_file <- file.path(dest_dir, basename(file_url))
#   
#   if (file.exists(dest_file)) unlink(dest_file)
#   
#   req <- httr2::request(file_url) |>
#     httr2::req_options(
#       timeout = timeout,
#       ssl_verifypeer = 0L
#     )
#   
#   if (isTRUE(showProgress)) {
#     req <- req |> httr2::req_progress()
#   }
#   
#   httr2::req_perform(req, path = dest_file)
#   
#   dest_file
# }


# Unzip censobr function ---------------------------------------------------------

unzip_censobr <- function(zip_dir, out_zip = NULL) {
  
  if (is.null(out_zip)) {
    out_zip <- file.path(zip_dir, "unzipped")
  }
  dir.create(out_zip, showWarnings = FALSE, recursive = TRUE)
  
  zip_names <- list.files(zip_dir, pattern = "\\.zip$", full.names = TRUE)
  
  purrr::walk(zip_names, function(z) {
    ok <- tryCatch({
      unzip(z, exdir = out_zip)
      TRUE
    }, error = function(e) FALSE)
    
    if (!ok) {
      system2(
        "unzip",
        args = c("-oq", shQuote(z), "-d", shQuote(out_zip)),
        stdout = FALSE,
        stderr = FALSE
      )
    }
  })
  
  files <- list.files(path = out_zip, full.names = T, recursive = T)
  files <- unique(files)
  
  return(files)
}



# code coulumns to numeric ---------------------------

code_cols_to_numeric <- function(df){
  df <- df |>
    dplyr::mutate(
      dplyr::across(
        dplyr::starts_with("code_"), as.numeric
      )
    )
  
  return(df)
}



# detect encoding of a csv file
detect_csv_encoding <- function(file_path){
  
  out <- list()
  
  out$readr <- readr::guess_encoding(file_path)
  
  temp <- stringi::stri_enc_detect(
    readLines(
    file_path, 
    warn = FALSE, 
    encoding = "bytes")
    )
  
 df_stringi <- lapply(
   X = 1:length(temp), 
   FUN = function(i, mylist = temp){
     mylist[[i]] |>
       dplyr::filter(Language=='pt')
           }
         ) |> 
   data.table::rbindlist() |> 
   dplyr::arrange(-Confidence) |> 
   unique() |> 
   head()
  
  
  out$stringi <- df_stringi
  return(out)
}





# Add State abbreviation -------------------------------------------------------
add_state_info <- function(temp_df, column){
  
  options(encoding = "UTF-8")
  
  col_names <- names(temp_df)
  
  # IF only the "name_state" column is present
  # Add code_state
  if ("name_state" %in% col_names & !"code_state" %in% col_names) {
    
    temp_df <- temp_df |> 
      dplyr::mutate(code_state = ifelse(name_state %like% "Rondonia|Rondônia|Rond\u00f4nia|Guapoé|Guapor\u00e9",11,
                                        ifelse(name_state %like% "Acre", 12,
                                               ifelse(name_state== "Amazonas",13,
                                                      ifelse(name_state %like% "Roraima|Rio Branco",14,
                                                             ifelse(name_state %in% c("Par\u00e1", "Pará", "Para") ,15,
                                                                    ifelse(name_state %like% "Amap\u00e1|Amapá|Amapa", 16,
                                                                           ifelse(name_state== "Tocantins",17,
                                                                                  ifelse((name_state %like% "(?i)territ") & (name_state %like% "(?i)fernando"),20,
                                                                                         ifelse(name_state== "Maranh\u00e3o",21,
                                                                                                ifelse(name_state %like% "Piaui|Piauhy|Piauí|Piau\\u00ed",22,
                                                                                                       ifelse(name_state== "Cear\u00e1",23,
                                                                                                              ifelse(name_state== "Rio Grande do Norte",24,
                                                                                                                     ifelse(name_state %like% "Paraiba|Parahyba|Para\\u00edbaParaíba",25,
                                                                                                                            ifelse(name_state== "Pernambuco" | name_state %like% "Fernando de Noronha",26,
                                                                                                                                   ifelse(name_state== "Alagoas" | name_state=="Alag\u00f4as",27,
                                                                                                                                          ifelse(name_state== "Sergipe",28,
                                                                                                                                                 ifelse(name_state== "Bahia",29,
                                                                                                                                                        ifelse(name_state== "Minas Gerais" | name_state== "Minas Geraes",31,
                                                                                                                                                               ifelse(name_state  %like% "Espirito Santo|Esp\\u00edrito Santo|Espírito Santo" ,32,
                                                                                                                                                                      ifelse(name_state== "Rio de Janeiro",33,
                                                                                                                                                                             ifelse(name_state== "Guanabara" | name_state %like% "(?i)munic[ií]pio neutro",34,
                                                                                                                                                                                    ifelse(name_state== "S\u00e3o Paulo" | name_state== "São Paulo",35,
                                                                                                                                                                                           ifelse(name_state %like% "Paran\u00e1|Paraná|Parana",41,
                                                                                                                                                                                                  ifelse(name_state== "Santa Catarina" | name_state== "Santa Catharina",42,
                                                                                                                                                                                                         ifelse(name_state== "Rio Grande do Sul",43,
                                                                                                                                                                                                                ifelse(name_state== "Mato Grosso do Sul",50,
                                                                                                                                                                                                                       ifelse(name_state== "Mato Grosso" | name_state== "Matto Grosso",51,
                                                                                                                                                                                                                              ifelse(name_state== "Goi\u00e1s" | name_state== "Goyaz" | name_state== "Goiás" | name_state== "Goias",52,
                                                                                                                                                                                                                                     ifelse((name_state== "Distrito Federal" | name_state== "Districto Federal") & year<1960,34,
                                                                                                                                                                                                                                            ifelse((name_state== "Distrito Federal" | name_state=="Brasilia" | name_state=="Brasília" | name_state=="Bras\\u00edlia") & (year>1950),53,NA
                                                                                                                                                                                                                                            )))))))))))))))))))))))))))))))
  }
  
  # Bloco aditivo: se chegamos aqui com code_state ja existente mas com NAs
  # (caso tipico: hist_states 1940-1991 — raw IBGE traz code_state=NA pra
  # quase todos estados) E temos name_state, fazemos um segundo lookup pra
  # preencher os NAs via coalesce. NAo altera valores nao-NA existentes.
  if ("name_state" %in% col_names &&
      "code_state" %in% names(temp_df) &&
      any(is.na(as.numeric(temp_df$code_state)))) {
    
    .fill_cs <- ifelse(temp_df$name_state %like% "Rondonia|Rondônia|Rondônia|Guapoé|Guaporé",11,
                       ifelse(temp_df$name_state %like% "Acre", 12,
                              ifelse(temp_df$name_state== "Amazonas",13,
                                     ifelse(temp_df$name_state %like% "Roraima|Rio Branco",14,
                                            ifelse(temp_df$name_state %in% c("Pará", "Pará", "Para") ,15,
                                                   ifelse(temp_df$name_state %like% "Amapá|Amapá|Amapa", 16,
                                                          ifelse(temp_df$name_state== "Tocantins",17,
                                                                 ifelse((temp_df$name_state %like% "(?i)territ") & (temp_df$name_state %like% "(?i)fernando"),20,
                                                                        ifelse(temp_df$name_state== "Maranhão",21,
                                                                               ifelse(temp_df$name_state %like% "Piaui|Piauhy|Piauí|Piau\\u00ed",22,
                                                                                      ifelse(temp_df$name_state== "Ceará",23,
                                                                                             ifelse(temp_df$name_state== "Rio Grande do Norte",24,
                                                                                                    ifelse(temp_df$name_state %like% "Paraiba|Parahyba|Para\\u00edba|Paraíba",25,
                                                                                                           ifelse(temp_df$name_state== "Pernambuco" | temp_df$name_state %like% "Fernando de Noronha",26,
                                                                                                                  ifelse(temp_df$name_state== "Alagoas" | temp_df$name_state=="Alagôas",27,
                                                                                                                         ifelse(temp_df$name_state== "Sergipe",28,
                                                                                                                                ifelse(temp_df$name_state== "Bahia",29,
                                                                                                                                       ifelse(temp_df$name_state== "Minas Gerais" | temp_df$name_state== "Minas Geraes",31,
                                                                                                                                              ifelse(temp_df$name_state %like% "Espirito Santo|Esp\\u00edrito Santo|Espírito Santo",32,
                                                                                                                                                     ifelse(temp_df$name_state== "Rio de Janeiro",33,
                                                                                                                                                            ifelse(temp_df$name_state== "Guanabara" | temp_df$name_state %like% "(?i)munic[ií]pio neutro",34,
                                                                                                                                                                   ifelse(temp_df$name_state== "São Paulo" | temp_df$name_state== "São Paulo",35,
                                                                                                                                                                          ifelse(temp_df$name_state %like% "Paraná|Paraná|Parana",41,
                                                                                                                                                                                 ifelse(temp_df$name_state== "Santa Catarina" | temp_df$name_state== "Santa Catharina",42,
                                                                                                                                                                                        ifelse(temp_df$name_state== "Rio Grande do Sul",43,
                                                                                                                                                                                               ifelse(temp_df$name_state== "Mato Grosso do Sul",50,
                                                                                                                                                                                                      ifelse(temp_df$name_state== "Mato Grosso" | temp_df$name_state== "Matto Grosso",51,
                                                                                                                                                                                                             ifelse(temp_df$name_state== "Goiás" | temp_df$name_state== "Goyaz" | temp_df$name_state== "Goiás" | temp_df$name_state== "Goias",52,
                                                                                                                                                                                                                    ifelse((temp_df$name_state== "Distrito Federal" | temp_df$name_state== "Districto Federal") & temp_df$year<1960,34,
                                                                                                                                                                                                                           ifelse((temp_df$name_state== "Distrito Federal" | temp_df$name_state=="Brasilia" | temp_df$name_state=="Brasília" | temp_df$name_state=="Bras\\u00edlia") & (temp_df$year>1950),53,NA
                                                                                                                                                                                                                           ))))))))))))))))))))))))))))))
    
    # Original code_state, tratando 0 (marker de litigio) como NA
    .orig_cs <- as.numeric(temp_df$code_state)
    .orig_cs <- ifelse(is.na(.orig_cs) | .orig_cs == 0, NA_real_, .orig_cs)
    temp_df$code_state <- dplyr::coalesce(.orig_cs, as.numeric(.fill_cs))
    rm(.fill_cs, .orig_cs)
  }
  
  # IF there is no "name_state" column
  if (column != 'name_state') {
    
    # add code_state
    temp_df$code_state <- substr( temp_df[[ column ]] , 1,2) |> as.numeric()
    
    # # add name_state ENCODING ISSUES
    # stringi::stri_encode(from='latin1', to="utf8", str= "S\u00e3o Paulo")
    # stringi::stri_encode('S\u00e3o Paulo', to="UTF-8")
    # gtools::ASCIIfy('S\u00e3o Paulo')
    temp_df <- temp_df |> dplyr::mutate(name_state =
                                          data.table::fcase(code_state== 11, "Rond\u00f4nia",
                                                            code_state== 12, "Acre",
                                                            code_state== 13, "Amazonas",
                                                            code_state== 14, "Roraima",
                                                            code_state== 15, "Par\u00e1",
                                                            code_state== 16, "Amap\u00e1",
                                                            code_state== 17, "Tocantins",
                                                            code_state== 20, "Fernando de Noronha",
                                                            code_state== 21, "Maranh\u00e3o",
                                                            code_state== 22, "Piau\u00ed",
                                                            code_state== 23, "Cear\u00e1",
                                                            code_state== 24, "Rio Grande do Norte",
                                                            code_state== 25, "Para\u00edba",
                                                            code_state== 26, "Pernambuco",
                                                            code_state== 27, "Alagoas",
                                                            code_state== 28, "Sergipe",
                                                            code_state== 29, "Bahia",
                                                            code_state== 31, "Minas Gerais",
                                                            code_state== 32, "Esp\u00edrito Santo",
                                                            code_state== 33, "Rio de Janeiro",
                                                            code_state== 34, "Guanabara",
                                                            code_state== 35, "S\u00e3o Paulo",
                                                            code_state== 41, "Paran\u00e1",
                                                            code_state== 42, "Santa Catarina",
                                                            code_state== 43, "Rio Grande do Sul",
                                                            code_state== 50, "Mato Grosso do Sul",
                                                            code_state== 51, "Mato Grosso",
                                                            code_state== 52, "Goi\u00e1s",
                                                            code_state== 53, "Distrito Federal",
                                                            default = NA))
  }
  
  # add abbrev state
  temp_df <- temp_df |> dplyr::mutate(
    abbrev_state = data.table::fcase(
      code_state== 11, "RO",
      code_state== 12, "AC",
      code_state== 13, "AM",
      code_state== 14, "RR",
      code_state== 15, "PA",
      code_state== 16, "AP",
      code_state== 17, "TO",
      code_state== 20, "FN",
      code_state== 21, "MA",
      code_state== 22, "PI",
      code_state== 23, "CE",
      code_state== 24, "RN",
      code_state== 25, "PB",
      code_state== 26, "PE",
      code_state== 27, "AL",
      code_state== 28, "SE",
      code_state== 29, "BA",
      code_state== 31, "MG",
      code_state== 32, "ES",
      code_state== 33, "RJ",
      code_state== 34, "GB",
      code_state== 35, "SP",
      code_state== 41, "PR",
      code_state== 42, "SC",
      code_state== 43, "RS",
      code_state== 50, "MS",
      code_state== 51, "MT",
      code_state== 52, "GO",
      code_state== 53, "DF",
      default = NA))
  
  return(temp_df)
}


# Add Region info --------------------------------------------------------------
add_region_info <- function(temp_df, column){
  
  # add code_region
  temp_df$code_region <- substr( temp_df[[ column ]] , 1,1) |> as.numeric()
  
  # add name_region
  temp_df <- temp_df |> dplyr::mutate(name_region =
                                        data.table::fcase(code_region==1, 'Norte',
                                                          code_region==2, 'Nordeste',
                                                          code_region==3, 'Sudeste',
                                                          code_region==4, 'Sul',
                                                          code_region==5, 'Centro-Oeste',
                                                          default = NA))
  return(temp_df)
}


# snake case names -------------------------------------------------------------
snake_case_names <- function(temp_df, colname){
  
  for (i in colname) {
    
    if(i %in% names(temp_df)){
      # Capitalize the first letter
      temp_df[[ i ]] <- stringr::str_to_title( temp_df[[ i ]] )
      
      # prepositions to lower
      temp_df[[ i ]] <- gsub(" Do ",  " do ",   temp_df[[ i ]] )
      temp_df[[ i ]] <- gsub(" Dos ", " dos ", temp_df[[ i ]] )
      temp_df[[ i ]] <- gsub(" Da ",  " da ",   temp_df[[ i ]] )
      temp_df[[ i ]] <- gsub(" Das ", " das ", temp_df[[ i ]] )
      temp_df[[ i ]] <- gsub(" De ",  " de ",   temp_df[[ i ]] )
      temp_df[[ i ]] <- gsub(" Del ", " del ",   temp_df[[ i ]] )
      
      temp_df[[ i ]] <- gsub(" D'o",   " d'O",   temp_df[[ i ]] )
      temp_df[[ i ]] <- gsub(" D'ó",   " d'Ó",   temp_df[[ i ]] )
      temp_df[[ i ]] <- gsub(" D'a",   " d'A",   temp_df[[ i ]] )
      temp_df[[ i ]] <- gsub(" D'á",   " d'Á",   temp_df[[ i ]] )
    }
  }
  return(temp_df)
}




# Use UTF-8 encoding -----------------------------------------------------------
use_encoding_utf8 <- function(temp_df){
  options(encoding = "UTF-8")
  
  
  temp_df <- temp_df |>
    dplyr::mutate_if(is.factor, function(x){
      x |> as.character() |> stringi::stri_encode(to="UTF-8") } )
  
  temp_df <- temp_df |>
    dplyr::mutate_if(is.character, function(x){
      x  |> stringi::stri_encode(to="UTF-8") } )
  
  # code columns remain numeric
  temp_df <- temp_df |> dplyr::mutate_at(dplyr::vars(starts_with("code_")), .funs = function(x){ as.numeric(x) })
  
  return(temp_df)
}





# Write GeoParquet with spatial metadata ----------------------------------------
# Requires geoarrow package loaded (via _targets.R packages list).
# Produces OGC GeoParquet with CRS, geometry type, and bbox metadata.
write_censobr_parquet <- function(df, path) {
  
  arrow::write_parquet(x = df, 
                       sink = path,
                       compression = "zstd", 
                       compression_level = 22
  )
}






# Robust sf read censobr function ------------------------------------------------
# Função para ler csv de multiplos arquivos e importá-los com
#  apenas as colunas que existem em todos

readmerge_censobr <-  function(folder_path,
                               encoding = "UTF-8"){
  
  # lista todos os .csv na pasta (busca recursiva opcional)
  csv_files <- list.files(folder_path, pattern = "\\.csv$", full.names = TRUE)
  csv_files <- unique(csv_files)
  
  # read files
  csv_list <- purrr::map(csv_files, function(f) {
    message("Lendo: ", f)
    data.table::fread(f, encoding = encoding) |> 
      janitor::clean_names()
  })
  
  # une tudo
  merged <- data.table::rbindlist(csv_list)
  
  return(merged)
}

# States table codes for correction censobr function -----------------------------

states_censobr <- function() {
  states <- tibble::tibble(code_state = as.numeric(c(11, 12, 13, 14, 15, 16, 17, 21, 22,
                                                     23, 24, 25, 26, 27, 28, 29, 31, 32,
                                                     33, 35, 41, 42, 43, 50, 51, 52, 53)),
                           abbrev_state = c("RO", "AC", "AM", "RR", "PA", "AP", "TO",
                                            "MA", "PI", "CE", "RN", "PB", "PE", "AL",
                                            "SE", "BA", "MG", "ES", "RJ", "SP", "PR",
                                            "SC", "RS", "MS", "MT", "GO", "DF"),
                           name_state = c("Rondônia", "Acre", "Amazonas", "Roraima",
                                          "Pará", "Amapá", "Tocantins", "Maranhão",
                                          "Piauí", "Ceará", "Rio Grande do Norte",
                                          "Paraíba", "Pernambuco", "Alagoas", "Sergipe",
                                          "Bahia", "Minas Gerais", "Espírito Santo", 
                                          "Rio de Janeiro", "São Paulo", "Paraná",
                                          "Santa Catarina", "Rio Grande do Sul",
                                          "Mato Grosso do Sul", "Mato Grosso", "Goiás",
                                          "Distrito Federal"),
                           code_region = c(rep(1, 7), rep(2, 9), rep(3, 4), rep(4, 3),
                                           rep(5, 4)),
                           name_region = c(rep("Norte", 7), rep("Nordeste", 9),
                                           rep("Sudeste", 4), rep("Sul", 3), 
                                           rep("Centro-Oeste", 4)),
                           abbrevm_state = stringr::str_to_lower(abbrev_state))
  
  return(states)
}


# dicionario de colunas censobr --------------------------------------------------------

dicionario_municipality <- list(
  code_muni = c("cod_mun", "codmunic", "mun", "municipio_codigo", "geocod", "cod",
                "cod_muni", "cd_mun", "geocodigo", "geocodig_m", "br91poly_i",
                "cd_geocodm", "cd_geocmu", "geo_mun", "codigo"),
  name_muni = c("nome_cidade", "cidade", "nm_muni", "nome_muni", 
                "nome_munic", "nm_municip", "nm_mun", "municipio", "nomemuni",
                "nomemunicp", "nome")
)


dicionario_state <- list(
  code_state = c("cd_estado", "uf", "coduf", "estado_codigo", "cod_uf", "codigo",
                 "cd_uf", "code_uf", "codigo_uf", "cod_state", "cd_geocodu", 
                 "cd_geocuf", "geo_uf"),
  # abbrev_state = c("sigla", "sigla_uf", "sg_uf", "uf"),
  name_state = c("nm_uf", "nm_state", "nm_estado", "nome")
)



# Função para aplicar a padronização de colnames ------------------------------------------

rename_cols_censobr <- function(df, dict) {
  
  # original names
  original_names <- names(df)
  
  # normalized version for flexible matching
  normalize <- function(x) gsub("[^a-z0-9]", "", tolower(x))
  
  normalized_names <- normalize(original_names)
  
  # iterate over dictionary
  for (new_name in names(dict)) {
    candidates <- dict[[new_name]]
    normalized_candidates <- normalize(candidates)
    
    # find match
    idx <- match(normalized_candidates, normalized_names)
    idx <- idx[!is.na(idx)]  # keep only matches
    
    if (length(idx) > 0) {
      # rename: only first match if several exist
      names(df)[idx[1]] <- new_name  
    }
  }
  
  return(df)
}





rename_files_toupper_lower_ext <- function(paths) {
  stopifnot(all(file.exists(paths)))
  
  dir <- dirname(paths)
  base <- basename(paths)
  
  name_no_ext <- tools::file_path_sans_ext(base)
  ext <- tools::file_ext(base)
  
  new_base <- ifelse(
    nzchar(ext),
    paste0(toupper(name_no_ext), ".", tolower(ext)),
    toupper(name_no_ext)
  )
  
  new_paths <- file.path(dir, new_base)
  
  ok <- file.rename(from = paths, to = new_paths)
  
  if (!all(ok)) {
    warning("Some files could not be renamed.")
  }
  
  invisible(new_paths)
}

UF_SIGLAS <- c("RO","AC","AM","RR","PA","AP","TO",
               "MA","PI","CE","RN","PB","PE","AL","SE","BA",
               "MG","ES","RJ","SP","PR","SC","RS",
               "MS","MT","GO","DF")


# detect table from file name
detect_2010_table_name <- function(file_path){
  
  # get all tables
  root_names <- basename(file_path)
  root_names <- stringr::str_split(root_names, '_', simplify = TRUE)[,1]
  table_names <- str_replace_all(root_names, "[:digit:]", "") |> unique()
  table_names <- table_names[!grepl("-MG.csv",table_names)]  |> unique()
  
  return(table_names)

}
