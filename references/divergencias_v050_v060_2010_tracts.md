# Divergências 2010 setores: v0.5.0 vs v0.6.0

**Data:** 2026-05-03
**Fonte:** comparação via `arrow::read_parquet` dos 8 pares de parquets.
**Audiência:** NEWS do consumer `censobr` quando v0.6.0 sair.

## Linhas: paridade total

| Tabela | Linhas v0.5.0 | Linhas v0.6.0 | Match |
|---|---|---|---|
| Basico            | 310 120 | 310 120 | ✅ |
| Domicilio         | 310 120 | 310 120 | ✅ |
| DomicilioRenda    | 310 120 | 310 120 | ✅ |
| Entorno           | 310 120 | 310 120 | ✅ |
| Pessoa            | 310 114 | 310 114 | ✅ |
| PessoaRenda       | 310 120 | 310 120 | ✅ |
| Responsavel       | 310 114 | 310 114 | ✅ |
| ResponsavelRenda  | 310 120 | 310 120 | ✅ |

Diferença de 6 setores em Pessoa/Responsavel é decisão IBGE no source (3 em CE, 2 em PR, 1 em AM ausentes do raw).

## Schemas: divergências intencionais e melhorias

### Basico — renames IBGE→canonical (intencional v0.6.0)

v0.5.0 publicava nomes IBGE crus:
- `Nome_do_municipio`, `Cod_meso`, `Nome_da_meso`, `Cod_micro`, `Nome_da_micro`, `Cod_RM`, `Nome_da_RM`, `Nome_do_bairro`, `Cod_bairro`, `Cod_distrito`, `Nome_do_distrito`, `Cod_subdistrito`, `Nome_do_subdistrito`, `Situacao_setor`, `Cod_municipio`, `Cod_UF`, `Nome_da_UF`, `Cod_Grandes Regiões`, `Nome_Grande_Regiao`.

v0.6.0 substitui por nomes canonical censobr:
- `name_muni`, `code_meso`, `name_meso`, `code_micro`, `name_micro`, `code_metro`, `name_metro`, `name_neighborhood`, `code_neighborhood`, `code_district`, `name_district`, `code_subdistrict`, `name_subdistrict`, `Basico_V1005`, `code_muni` (substitui `Cod_municipio`), `code_state` (substitui `Cod_UF`), `name_state` (substitui `Nome_da_UF`), `code_region` (substitui `Cod_Grandes Regiões`), `name_region` (substitui `Nome_Grande_Regiao`).

**Causa:** o bloco de rename canonical em `R/census_tracts_2010.R::save_tracts_2010` era dead code em v0.5.0 (`if(tbl == 'Basico_')` nunca matched `tbl="BASICO"`). Fix de 1 linha em 2026-05-03 ativou o rename. v0.6.0 carrega nomes canonical alinhados com a v0.5.0 do consumer `censobr`.

**Migração para usuários:** filtros tipo `Basico$Cod_municipio == "..."` mudam para `Basico$code_muni == ...`.

### Tipos de `code_*` (intencional v0.6.0)

v0.5.0: `code_tract` é `string`; demais `code_*` (`code_muni`, `code_state`, etc.) são `int32`/`int64`.
v0.6.0: **todas as `code_*` são `numeric`** (R double / Arrow float64), via `code_cols_to_numeric()` em `R/support_fun.R`.

**Migração:** comparações tipo `code_state == "11"` (string) ou `code_state == 11L` (integer) mudam para `code_state == 11` (numeric).

### `name_state` / `name_region` padronizados (issue #75)

v0.5.0: variações tipo "Paraiba"/"Paraíba" (com/sem acento), `name_region` com prefixo "Região ".
v0.6.0: padronização canonical via `add_state_info()` + `add_region_info()`.

### Pessoa: shift SP corrigido — 86 cols espúrias eliminadas (BUG IBGE corrigido por nós)

v0.5.0: 2008 cols.
v0.6.0: **2008 cols** — paridade total com a spec phgfsouza.

**Causa raiz:** IBGE publicou os arquivos `Pessoa02_SP1.xls` e `Pessoa02_SP2.xls` com numeração shiftada em +85 vs dicionário oficial: o que outras UFs chamam de `V001` (Homens 5+) aparece em SP como `V086`; `V170` aparece como `V255`. Análogo ao erro de GO V01-V99 que IBGE corrigiu em 15/09/2025, mas o de SP IBGE não corrigiu.

**Confirmação empírica:** identidade aritmética `Pessoa01_V_i ≡ Pessoa02_V_i + Pessoa02_V_(i+85)` (Total = Homens + Mulheres) testada exaustivamente em 85 categorias × 3 UFs (AC controle, SP1, SP2). 84/85 batem com diferença absoluta zero em SP1 e SP2 quando se usa `V_(i+85) + V_(i+170)` no lugar de `V_i + V_(i+85)`. Relatório completo em [`relatorio_pessoa02_sp_shift.md`](relatorio_pessoa02_sp_shift.md).

**Fix em v0.6.0:** `read_single_file_tract_2010` aplica shift `V_n → V_(n-85)` para todo `n ≥ 86` quando `uf ∈ {SP1, SP2}` e arquivo é `PESSOA02_*`. Resultado:
- Parquet final tem 171 cols `pessoa02_V*` (V001-V170 + V1005), idêntico em todas as 28 publicações UF.
- `pessoa02_V001` em SP agora tem 2.09% NA (alinhado com outras UFs ~0.6-4.5%, antes do fix era 100%).
- Identidade aritmética `pessoa02_V001 + pessoa02_V086 = pessoa01_V001` bate em SP setor a setor (validado em 10/10 spot-checks).

**Comparação com v0.5.0:** v0.5.0 publicou Pessoa02 SP com os mesmos nomes shiftados, e as variáveis V086-V255 ficaram com NA em todas as UFs ≠ SP (porque essas UFs não tinham essas cols na publicação cru). v0.6.0 desfaz o shift no read e produz schema unificado canônico.

Issue #70 do `censobr` reportou como "truncamento em V170" — improcedente. As 85 vars que pareciam "extras em SP" eram simplesmente o range V086-V170 do dicionário publicado sob nomes errados (V171-V255).

## Bugs conhecidos a corrigir antes de shippar v0.6.0

Identificados em 2026-05-03; fix em sessão dedicada.

### `table_name` vazando em todos os 8 parquets

Coluna metadata interna (usada por `save_tracts_2010` para identificar tema) está aparecendo no output. Adicionar `out$table_name <- NULL` antes de `write_censobr_parquet`.

### Entorno: 15 cols espúrias `entorno05_...242` a `entorno05_...256`

Vêm do `readxl` quando algum `ENTORNO05_XX.xls` tem cells de header sem nome — gera nomes automáticos `...XXX`. Após `rbindlist(fill = TRUE)`, viram cols com 99.9999% NA (1 valor não-NA em 310k rows). Adicionar filter `temp_df[, grep("^\\.{3}\\d+$", names(temp_df), value = TRUE) := NULL]` em `read_single_file_tract_2010` após o read.

## Outros bug fixes vs v0.5.0 (já wired em v0.6.0)

| Issue | Sintoma em v0.5.0 | Status v0.6.0 |
|---|---|---|
| #71 | V009 (renda) com 96-99% NA em UFs rurais por destruição da coluna no read | ✅ XLS read + as.numeric("X")→NA estruturado |
| #73 | "X" (marcador censura IBGE) virando 0 em vez de NA | ✅ XLS read preserva "X" como texto; coerção numérica gera NA |
| #68 | GO (e SP1/SP2) Pessoa02 todo NA por nomes V01-V09 malformados | ✅ regex fix wired |
| #75 | UF/região naming inconsistency | ✅ add_state_info + add_region_info |
| (sem issue) | Bloco de rename canonical (Basico/Entorno) dead code | ✅ fix `'Basico_'`→`'BASICO'` |

## Pendências (não-bloqueantes)

- ~~`code_weighting` (área de ponderação): em v0.5.0 vinha de `geobr`. `geobr` (≥1.10) não expõe mais. v0.6.0 ship com NA stub.~~ **RESOLVIDO 2026-05-04 (commit `57c571a`)**: pipeline lê direto da fonte canônica IBGE — `Composição das Áreas de Ponderação.txt` (UTF-16LE, ~310k rows) extraído de `Documentacao_microdados_2010.zip`. Função `get_areas_ponderacao_2010()` em `R/support_fun.R`. Resultado: `code_weighting` **0% NA** em todas as 8 tabelas, 10.184 áreas únicas, paridade total com v0.5.0 (modulo tipo numeric vs string per convenção v0.6.0).
