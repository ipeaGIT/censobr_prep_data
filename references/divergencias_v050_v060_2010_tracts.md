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

### Pessoa: +86 colunas V171-V255 (MELHORIA)

v0.5.0: 2008 cols.
v0.6.0: 2094 cols (+86 cols `pessoa02_V171` até `pessoa02_V255`).

**Causa:** IBGE publica Pessoa02 com layouts diferentes por UF — 26 UFs publicam V001-V170; SP1 e SP2 publicam V086-V255. v0.5.0 cortava a publicação de SP em V170 (perdia ~85 vars). v0.6.0 preserva todo o universo via `rbindlist(fill = TRUE)`, com NA estrutural onde a UF não publica.

**Padrão NA esperado:**
- `pessoa02_V001`–`pessoa02_V085` em SP: 100% NA (SP não publica).
- `pessoa02_V171`–`pessoa02_V255` em UFs ≠ SP: 100% NA (não publicam).
- `pessoa02_V086`–`pessoa02_V170` em todas as UFs: ~2-3% NA (intersecção comum).

Esse é o estado real dos dados IBGE. Issue #70 do `censobr` reportou como "truncamento em V170" — improcedente.

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

- `code_weighting` (área de ponderação): em v0.5.0 vinha de `geobr`. `geobr` (≥1.10) não expõe mais. v0.6.0 ship com NA stub. Plano de fix: download `Documentacao.zip` IBGE + parse de `composicao_areas_ponderacao_2010.txt`. Criar plano dedicado.
