---
name: memory-discipline
description: Disciplina obrigatória de memória, estilo de código e nomeação para todo R neste projeto. Aplica-se a R/, R_ainda_sem_targets/, _targets.R e qualquer script novo. Bloqueia padrões que causaram OOM em 2026-05-03.
paths:
  - "**/*.R"
  - "_targets.R"
---

# Disciplina de memória, estilo e nomeação

**Status:** OBRIGATÓRIA
**Escopo:** todo código R em `censobr_prep_data` (atual e futuro). Aplica-se ao porte de cada script de `R_ainda_sem_targets/` para `R/`.

## Por que existe

Em 2026-05-03 o pipeline crashou OOM em `clean_tract_table_2010` (branch ENTORNO) com `furrr` workers=8 + `dplyr::left_join` chain + `purrr::map(~str_detect)` sobre colunas character. Causa estrutural: o pipeline carrega 27 UFs × até 5 sub-tabelas IBGE × até 242 colunas character em paralelo, sem `gc()`, sem `rm()` de listas intermediárias, multiplicando cópias via dplyr. Esta regra codifica os padrões que evitam reincidência, junto com o estilo de código e a convenção de nomeação `censobr`.

## 1. Memória

### Motor primário: `data.table`

- Default para qualquer manipulação de dados não-trivial: `fread`, `[ , := ]`, `merge.data.table`, `set`, `setorder`, `rbindlist`.
- `dplyr` aceito apenas para: operações lazy sobre `arrow::open_dataset()`; tabelas pequenas (lookup, dicionários); blocos curtos de rename/select que já estão escritos e funcionam.
- Não trocar `data.table::fread(colClasses="character", na.strings=c("X","",",","."))` por `arrow::read_csv_arrow` para CSV IBGE — `fread` tem controle de tipos melhor para esse formato.

### Joins

- `merge.data.table` ou `dt[dt2, on = ...]` em vez de `dplyr::*_join` em chains.
- Em chain de joins iterativos, consumir a lista liberando memória:
  ```r
  while(length(df_list) > 0){
    temp <- merge(temp, df_list[[1]], by = "code_tract", sort = FALSE)
    df_list[[1]] <- NULL
    gc(verbose = FALSE)
  }
  ```

### Mutações multi-coluna

- Loop `data.table::set(dt, j = col, value = ...)` em vez de `mutate(across(...))` ou `mutate_all`.
- Coalescer múltiplos `mutate(across)` num único loop.
- `for(col in names(dt))` com early exit quando faz sentido.

### Paralelismo

- `furrr::future_map` com `workers ≤ 4` por default. Documentar se um caso específico justifica mais (e a RAM aguenta).
- `_targets.R` `coress = 1` (limite de FTP IBGE) é independente disso — não confundir.

### Limpeza

- `gc(verbose = FALSE)` após `rbindlist` ou `merge` grandes.
- `rm(lst); gc(verbose = FALSE)` antes de `return()` em funções que alocam listas/dataframes intermediários.
- Em `for` loops com acumulador, `rm(tmp); gc(verbose = FALSE)` por iteração.
- Drop de coluna por `df$X <- NULL` (encadeável: `df$A <- df$B <- NULL`) ou `mutate(X = NULL)`.

### Escalada para `arrow`

Apenas se data.table+gc+workers≤4 não bastar. Padrão:
1. Em vez de retornar a lista de UFs concatenada, gravar 1 parquet temp por UF.
2. Consolidar via `arrow::open_dataset(temp_dir) |> dplyr::collect()` ou `arrow::concat_tables()`.
3. Limpar tempdir após gravar parquet final.

Nunca pre-emptivamente. data.table é o motor primário.

## 2. Estilo de código

Os scripts de referência onde esse estilo é canônico:

- `D:\Dropbox\Artigos\4 - Publicados\Desigualdade_Pobreza_BemEstar_Decada2010_TD_IPEA\2_Scripts`
- `G:\Drives compartilhados\Dominios_Territoriais\Projeto_Educacao\Artigo_Efeitos_Performance\2_Scripts`
- `G:\Drives compartilhados\Dominios_Territoriais\Projeto_EJA\2_Scripts`

### Procedural, linear, sem encapsulamento prematuro

- Objetos nomeados em sequência. Reatribuição em passos: `df <- df %>% ...` repetido em vez de mega-pipe.
- Sem helpers privados `.dot_prefixed` para uso único — inlinar.
- Função só quando há matemática reutilizável (`Sum`, `inverse`, `arcsinh`, `make_lorenz`).
- No mundo `targets`: 1 função pública por target. **Corpo da função = script procedural** (não quebrar em sub-funções para "encapsular").

### Comentários

- Narrativos curtos (1–3 linhas) explicando o **porquê analítico**, não o **o quê** o código faz.
- Sem multi-parágrafo de design dentro do código. Sem stacktrace de investigação. Sem doc de bug.
- Doc de bug, design rejeitado, "KNOWN REGRESSION vs vX.Y", investigação anterior — vai no commit message ou no plano em `.claude/plans/`, não no código.
- Comentário inline curto à direita do item (`"upa", # ID dom 1`) é OK.

### Mensagens

- `message("Saving Basico")`, `message(uf)`. Curtas.
- Sem `sprintf("  [#68 fix] %s: renaming %d cols matching ^V\\d{2}$ -> V0xx (e.g., %s)", ...)`.

### Defensividade

- Confiar em funções idempotentes: `make.unique` é no-op se não há duplicata; `%in%` cobre NA; `as.numeric` retorna NA com warning para não-numéricos.
- Não usar `if(any(duplicated(...)))` antes de `make.unique`. Não usar `if(!is.na(uf))` antes de `uf %in% c("GO","SP1","SP2")` (`%in%` retorna FALSE para NA).
- `stop()` / `warning()` apenas quando uma invariante analítica é violada (ex.: "components do not add up to total"). Não para verificação que o R já faria.
- Sem `tryCatch` por hábito. Código falha alto.

### Formatação

- Indent 2 espaços.
- `=` alinhado verticalmente em listas de pares (`mutate`, `rename`, `select`, `summarise`):
  ```r
  rename(rendaTrab_ha    = vd4019,
         rendaTrab_ef    = vd4020,
         rendaBPC        = v5001a2,
         rendaBolsaFam   = v5002a2)
  ```
- Linha em branco dentro de listas grandes para agrupar visualmente.
- Pipe `|>` (nativo) preferido em código novo. `%>%` aceito onde já está e for cosmético.
- `library()` em bloco no topo. Sem `requireNamespace`, sem `if(!require(…))`.
- `for` é OK quando o loop é honesto. `print(i)` como progresso. `rm(tmp); gc()` por iteração.
- Drop de coluna: `df$X <- NULL` ou `mutate(X = NULL)`. Não `select(-X)` se for só uma coluna.
- `tribble()` para tabelas-literal pequenas (lookup).

### Anti-padrões observados (NÃO REPETIR)

Visíveis em `R/census_tracts_2022.R` (script atual a ser refatorado em plano futuro) e no diff antigo de `R/census_tracts_2010.R`:

- ❌ Helpers `.dot_prefixed` para uso único (`.match_files_2022`, `.recode_basico_2022`).
- ❌ `vapply(..., FUN.VALUE = logical(1))` defensivo para checks que poderiam ser `sapply` ou inline.
- ❌ `if (length(hits) == 0){ stop("No CSV matched...") }` antes de operação que já falharia com erro descritivo.
- ❌ `sanity check` manual com loops de comparação para verificar coisas que não vão dar errado.
- ❌ Comentários de 5–10 linhas explicando design alternativo testado.
- ❌ `sprintf` em mensagens.
- ❌ `if (...) { ... } else { ... }` com chaves quando `if(...) ... else ...` inline serviria.

## 3. Nomeação `censobr` (canônica)

Esquema visível em `R/census_tracts_2022.R` (bloco de rename do Basico). Aplicar literalmente, sem invenção.

### Identificadores hierárquicos (`code_*`)

`code_tract`, `code_muni`, `code_state`, `code_region`, `code_district`, `code_subdistrict`, `code_neighborhood`, `code_weighting`, `code_meso`, `code_micro`, `code_metro`, `code_favela`, `code_intermediate`, `code_immediate`, `code_aglomerado`, `code_urban_concentration`, `code_nucleo_urbano`, `code_situacao`, `code_type`.

### Nomes humanos (`name_*`)

`name_tract`, `name_muni`, `name_state`, `name_region`, `name_district`, `name_subdistrict`, `name_neighborhood`, `name_meso`, `name_micro`, `name_metro`, `name_favela`, `name_intermediate`, `name_immediate`, `name_aglomerado`, `name_urban_concentration`, `name_nucleo_urbano`.

### Outros

- Sigla de UF: `abbrev_state`.
- Métricas: snake direto (`area_km2`).
- Categorias não-id: snake direto (`situacao`).

### Variáveis V do IBGE

- **Preservadas** com prefixo de tema: `pessoa01_V002`, `domicilio02_V135`, `entorno05_V242`, `Basico_V1005`.
- O prefixo é o sub-arquivo IBGE (Pessoa01, Domicilio02, etc.) em lowercase.
- Para tabelas single-file (Basico), prefixo é o tema com `_` final: `Basico_V1005`.
- Não renomear V cols por hipótese de "ficar mais legível" — quebra os dicionários do IBGE que os usuários do `censobr` consultam.

### Convenção v0.6.0

- Todas as `code_*` viram `numeric` (R double / Arrow `float64`), aplicado via `code_cols_to_numeric()` em `R/support_fun.R`.
- Quebra intencional vs v0.5.0 (que tinha `code_tract` string e demais int32). Documentado em [`project_conventions_v0_6_0.md`](memory).

### Zero invenção

Se uma coluna IBGE não tiver mapping óbvio:
1. Manter o nome IBGE original (uppercase, como vem do `fread`).
2. Pedir decisão explícita do usuário antes de renomear.

## 4. Adaptação a `targets`

- `targets` exige funções, mas isso **não autoriza** quebrar lógica em sub-helpers só para "encapsular".
- Padrão: **1 função pública por target.** Corpo da função = script procedural linear (objetos nomeados, reatribuição em passos).
- Se uma operação é chamada em vários temas/anos, vira função em `R/support_fun.R` (e fica protegida — ver `minimal-changes.md`).
- Helpers definidos dentro de uma função são aceitos quando há reuso interno claro (ex.: `prep_state` dentro de `clean_tracts_2010`, chamado por UF). Mas não para coisa chamada uma vez.

## 5. Checklist antes de qualquer commit

- [ ] `data.table` para todas as manipulações pesadas (não `dplyr` em data frame com >10k linhas character).
- [ ] `furrr` workers ≤ 4.
- [ ] `gc()` após `rbindlist`/`merge` grandes; `rm()` de listas intermediárias antes de `return()`.
- [ ] Sem helpers `.dot_prefixed` para uso único.
- [ ] Comentários narrativos curtos. Zero docstring multi-parágrafo.
- [ ] Sem `sprintf` em `message()`.
- [ ] Nomes seguem convenção `censobr` (`code_*`, `name_*`, `abbrev_state`, V cols com prefixo de tema).
- [ ] Sem renomeação criativa de variáveis IBGE.
- [ ] V cols originais preservadas (com prefixo de tema).
- [ ] Sem `tryCatch` por hábito; sem defensividade redundante.
- [ ] `=` alinhado em listas de pares.

## 6. Quando uma regra desta entra em conflito com código existente

- Código novo (refactor, novo target, novo ano): **aplicar a regra integralmente.**
- Código existente que funciona e não é hot path de memória: **deixar como está.** Plano de refactor de estilo é trabalho separado, não oportunista.
- Ao tocar um arquivo existente para outro motivo: aplicar a regra na função/bloco tocado, não no arquivo inteiro (ver `minimal-changes.md`).