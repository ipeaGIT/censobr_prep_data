# 1960 microdata sample (amostra compilada).
# Os arquivos brutos do censo de 1960 nao estao no FTP do IBGE; o input deste
# pipeline eh uma amostra ja compilada pelo Rogerio (combinando as amostras
# 1.27% e 25%) e disponivel em censoBR_aux_Dados/1960/microdados da amostra/.
# Documentacao do compilado em "Criando a amostra compilada/" do mesmo dir.
#
# Pipeline minimo: le os 2 inputs (fst + parquet), renomeia cols v* -> V*
# (consumer censobr espera maiusculo), aplica convencao v0.6.0 em code_*
# (numeric) e salva. Nao adiciona geo cols (paridade rigida com v0.5.0 — que
# tambem so traz `uf` e `code_muni_1960` do AUX).


# le um dos 2 datasets (households via fst, population via parquet) e renomeia
# v* -> V*. Inclui dataset_name como sentinela pra save dispatch.
clean_microdata_1960 <- function(aux_paths, dataset_name){

  message("Cleaning microdata 1960: ", dataset_name)

  if(dataset_name == "households"){
    df <- fst::read_fst(aux_paths[grepl("domicilios", aux_paths)])
  } else if(dataset_name == "population"){
    df <- arrow::read_parquet(aux_paths[grepl("pessoas", aux_paths)])
  } else {
    stop("clean_microdata_1960: dataset desconhecido '", dataset_name, "'")
  }

  # consumer censobr espera prefixo V maiusculo nos codigos do questionario
  names(df) <- ifelse(startsWith(names(df), "v"), sub("^v", "V", names(df)), names(df))

  df$dataset_name <- dataset_name
  df
}


save_microdata_1960 <- function(cleaned_df){

  ds <- cleaned_df$dataset_name[1]
  message("Saving microdata 1960: ", ds)

  dir.create("./data/microdata_sample/1960/", recursive = TRUE, showWarnings = FALSE)

  out <- cleaned_df
  out$dataset_name <- NULL

  # convencao v0.6.0: code_* numeric (afeta code_muni_1960; quebra intencional
  # vs v0.5.0 onde era int32).
  out <- code_cols_to_numeric(out)

  dest_file <- paste0("./data/microdata_sample/1960/1960_", ds, ".parquet")
  write_censobr_parquet(out, dest_file)

  dest_file
}
