# Code-style review: R/support_fun.R

**Status:** RASCUNHO (aguarda decisao do usuario sobre escopo)
**Data:** 2026-05-04 23:42
**Escopo:** auditoria de `R/support_fun.R` (794 linhas) — invocacao `/review-code-style @R/support_fun.R`.
**Audiencia:** plano de refactor incremental, NAO executar sem aprovacao especifica por bloco.

## Sumario executivo

8 violacoes verdadeiras, distribuidas:
- **1 ALTA** (dead code 29 linhas comentadas — facil de remover, zero impacto).
- **2 MEDIAS** (`ifelse` 32-niveis em `add_state_info` ×2 blocos; comentarios exploratorios).
- **5 BAIXAS** (vapply defensivo, mutate_if deprecated, type check, comentario incorreto, tryCatch verboso).

`R/support_fun.R` esta na **lista de funcoes protegidas** (`.claude/rules/minimal-changes.md`):
qualquer refactor de `add_state_info`, `download_file_censobr`, `unzip_censobr`,
`write_censobr_parquet`, `pick_latest_per_uf`, `get_areas_ponderacao_2010` invalida
parquets em massa. Plano dividido em **3 niveis de risco** abaixo.

## Achados detalhados

### Violacoes ALTA

**[linha 196-224] Dead code: versao antiga de `download_file_censobr` comentada**
- Categoria: B1 (29 linhas consecutivas comentadas) + B2 (codigo morto).
- Conteudo: implementacao single-file da funcao antes do refactor smart-skip.
- Esta no git history (commit `~b6b6362` ou anterior). Nao precisa ficar inline.
- **Refactor:** deletar linhas 196-224 (incluindo `# ` final em branco).
- **Custo:** 5 min. **Risco:** zero — eh codigo morto, nao executa.
- **Re-build:** nao invalida nada.

### Violacoes MEDIA

**[linhas 324-354 + 365-395] `ifelse` aninhado 32 niveis em `add_state_info`**
- Categoria: anti-pattern do estilo do usuario (preferir `fcase` ou `case_when`).
- Sao DOIS blocos quase identicos: o primeiro adiciona `code_state` quando ha
  `name_state` mas falta `code_state`; o segundo preenche NAs de `code_state`
  quando ja existe a coluna mas com NAs (caso 1940-1991).
- **Sugestao de refactor (esboco — manter logica intata):**

```r
# helper interno (chamado 2x — borderline mas reuso real)
.code_from_name_state <- function(ns, year = NULL){
  data.table::fcase(
    ns %like% "Rondonia|Rondônia|Guaporé", 11,
    ns %like% "Acre", 12,
    ns == "Amazonas", 13,
    ns %like% "Roraima|Rio Branco", 14,
    ns %in% c("Pará","Pará","Para"), 15,
    ns %like% "Amapá|Amapá|Amapa", 16,
    # ... 25+ casos, mesmo dicionario aplicado nos 2 blocos
    default = NA_real_
  )
}
```

- **Custo:** 1-2h. Tem que diff cuidadosamente os 2 blocos pra extrair o
  dicionario unico (aparentes diferencas em escape unicode entre eles podem
  ser bugs ou variantes intencionais — re-leitura linha-por-linha).
- **Risco:** ALTO — `add_state_info` eh chamada por TODO ano (1960-2022).
  Test plan: comparar output em sample de cada ano antes/depois.
- **Re-build:** invalida nada se a logica preservar (eh refactor cosmetico).
  Mas precisa validar com sample.

**[linhas 410-413] Exploratory leftover dentro de `add_state_info`**
```r
# # add name_state ENCODING ISSUES
# stringi::stri_encode(from='latin1', to="utf8", str= "São Paulo")
# stringi::stri_encode('São Paulo', to="UTF-8")
# gtools::ASCIIfy('São Paulo')
```
- Categoria B2 (investigation leftover).
- **Refactor:** deletar linhas 410-413.
- **Custo:** 1 min. **Risco:** zero. **Re-build:** nada.

### Violacoes BAIXA

**[linha 555-557] Comentario incorreto sobre `write_censobr_parquet`**
```r
# Write GeoParquet with spatial metadata ----------------------------------------
# Requires geoarrow package loaded (via _targets.R packages list).
# Produces OGC GeoParquet with CRS, geometry type, and bbox metadata.
write_censobr_parquet <- function(df, path) {
  arrow::write_parquet(...)
}
```
- A funcao NAO escreve GeoParquet, so um parquet normal com zstd-22.
  Comentario eh dead lie.
- **Refactor:** substituir comentario por:
  ```r
  # Canonical writer for censobr parquets — zstd level 22.
  ```
- **Custo:** 1 min. **Risco:** zero. **Re-build:** nada.

**[linhas 538, 542, 546] `mutate_if` / `mutate_at` deprecated em `use_encoding_utf8`**
- Categoria: estilo (rule cita `mutate_all` como anti-pattern; `mutate_if`/
  `mutate_at` sao da mesma familia deprecated).
- **Refactor:**
  ```r
  use_encoding_utf8 <- function(temp_df){
    options(encoding = "UTF-8")
    temp_df <- temp_df |>
      dplyr::mutate(dplyr::across(where(is.factor),    \(x) stringi::stri_encode(as.character(x), to = "UTF-8"))) |>
      dplyr::mutate(dplyr::across(where(is.character), \(x) stringi::stri_encode(x, to = "UTF-8"))) |>
      dplyr::mutate(dplyr::across(starts_with("code_"), as.numeric))
    temp_df
  }
  ```
- **Custo:** 15 min. **Risco:** MEDIO — usuarios downstream chamam essa funcao;
  precisa validar que `across(where(...))` se comporta identico em factor/character.
- **Re-build:** depende — funcao chamada em quais targets?

**[linhas 74, 94, 160, 725, 731-732] `vapply` defensivo em 5 sitios**
- Categoria D6 (vapply onde sapply serve).
- Em `download_file_censobr` (smart-skip refactor): linhas 74 (extract size),
  94 (decide needs_download), 160 (extract success).
- Em `pick_latest_per_uf`: linhas 725, 731-732.
- Sao parts de codigo NOVO (escrito em sessao recente em estilo defensivo AI-default).
- **Refactor:** trocar pra `sapply()` em todos os 5.
- **Custo:** 15 min. **Risco:** MEDIO — vapply garante tipo de saida; sapply
  pode retornar list em casos vazios/heterogeneos. Precisa testar com input vazio.
- **Re-build:** invalida `raw_tracts_paths_2000/2010/2022`. Re-download dos zips
  (smart-skip evita re-baixar) + re-extracao. Tempo: ~2 min.

**[linha 52] Type check defensivo em `download_file_censobr`**
```r
if (!is.character(file_url) || length(file_url) == 0L) {
  stop("'file_url' must be a non-empty character vector")
}
```
- Categoria D3. R erraria nas operacoes downstream com mensagem apenas um pouco
  menos legivel.
- **Refactor:** deletar (5 linhas: 52-54). Confiar em early failure.
- **Custo:** 1 min. **Risco:** BAIXO — input sempre vem programaticamente
  (nao do usuario); type errors aqui indicam bug, nao input invalido.
- **Re-build:** invalida raw_*. Mesmo custo do anterior.

**[linhas 66-67] `tryCatch` em HEAD request**
```r
list(tryCatch(httr2::req_perform(head_reqs[[1]]),
              error = function(e) structure(list(), class = "httr2_failure")))
```
- Categoria D5. Eh tryCatch real (fallback estruturado pra quando HEAD falha
  e queremos re-download por safety), nao "tryCatch por habito".
- **DESCARTAR como falso positivo:** o tryCatch produz uma estrutura usavel
  downstream pelo logica de `needs_download`. Sem ele, single-URL HEAD failure
  abortaria toda a chamada. Eh design de robustez, alinhado com o espirito da
  regra ("stop apenas quando uma invariante analitica eh violada").

## Falsos positivos descartados

- Linhas 365 (`.fill_cs`), 398 (`.orig_cs`): variaveis intermediarias com prefixo
  `.`, NAO funcoes helper. Categoria A1 nao se aplica.
- Linhas 26-36, 714-719, 742-746: comentarios longos mas sao docstrings de
  funcao publica (forma valida segundo o estilo).
- Linhas 66-67: tryCatch eh design de fallback estruturado (ver acima).

## Plano de execucao por nivel de risco

### Nivel 0 — Zero risco, zero re-build (executavel sem plano formal)
1. Deletar linhas 196-224 (dead code commented `download_file_censobr` antigo).
2. Deletar linhas 410-413 (exploratory leftover em `add_state_info`).
3. Substituir comentario linha 555-557 por descricao correta.

**Tempo:** 7 min. **Risco:** nenhum. **Validacao:** `Rscript -e "source('R/support_fun.R')"` (sintaxe OK).

### Nivel 1 — Baixo risco, re-build localizado (~2 min)
4. Trocar 5 instancias de `vapply` por `sapply` em `download_file_censobr` e `pick_latest_per_uf`.
5. Deletar type check linha 52-54.

**Tempo:** 20 min. **Risco:** medio (testar com input edge cases). **Validacao:**
`tar_make(names = c("raw_tracts_paths_2000","raw_tracts_paths_2010","raw_tracts_paths_2022"))`
deve passar sem mudar paths.

### Nivel 2 — Medio risco, validacao downstream necessaria
6. Refactor `use_encoding_utf8` (mutate_if/mutate_at -> across(where(...))).

**Tempo:** 30 min com testes. **Risco:** medio — chamada downstream desconhecida.
**Validacao:** `Grep` por `use_encoding_utf8` em todo o projeto, identificar callers,
validar output em sample.

### Nivel 3 — Alto risco, refactor com plano dedicado
7. Refactor `add_state_info` (ifelse 32-niveis -> fcase, 2 blocos -> 1 helper).

**Tempo:** 1-2h com testes em sample 1960-2022. **Risco:** alto (touched por todo
o pipeline). **Validacao:** comparar output em N setores aleatorios entre HEAD~1 e
HEAD para cada ano. Plano dedicado em `.claude/plans/refactor-add-state-info.md`
antes de executar.

## Recomendacao

Executar **Nivel 0** agora (7 min, zero risco). Niveis 1-3 ficam como divida
documentada, executar quando for tocar `add_state_info` por outro motivo
(ex.: porte de microdata 1960 que vai consumir essa funcao).

Niveis 1 sao tentadores (refactor curto, ganhos modestos), mas o re-build de raw_*_paths
nao chega a invalidar parquets — soh re-checa headers FTP. Aceitavel se quiser
limpar esses 5 vapply de uma vez.

## Tempo total se executar tudo

- Nivel 0: 7 min
- Nivel 1: 20 min
- Nivel 2: 30 min
- Nivel 3: 1-2h

**Total:** ~2-3h. Producoes pos-refactor: zero parquets invalidados (so se Nivel 3
mudar a logica de `add_state_info`, o que nao deve — refactor cosmetico).