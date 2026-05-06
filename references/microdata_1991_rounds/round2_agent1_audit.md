# Round 2 Agent 1 — Audit Report

**Data:** 2026-05-04
**Tarefa:** auditoria da Rodada 1 (R1A1, R1A2, R1A3, consensus) contra mapping independente da Rodada 2 Agente 1.

## Resumo numérico

- **Total de variáveis em A:** 142 brutas (linha 2 é artefato de parsing — droppei conforme R1A3).
- **Variáveis úteis mapeadas:** 141.
- **Concordância R2A1 com R1 consensus (chosen):**
  - Concordo com o V-code de R1 consensus: **141/141** (100%).
  - Discordo do V-code de R1 consensus: **0**.
- **Concordo com a evidence_strength de R1 consensus:** ~135/141 (alguns ajustes ver abaixo).

## Decisão sobre o "artefato" linha 2 (`1,0,2,3,`)

Inspecionei a linha. `A_var=1, A_org_id=0, A_descricao=2, A_tipo=3, categories=vazio` é claramente artefato do parser CSV (provavelmente sequência de índices restante de header dump). Não é variável IBGE real.

**Decisão:** dropei (igual a R1A3). R1A1+R1A2 mantiveram como CANNOT_MAP — opção válida formalmente mas suja o output.

## Parte 1: divergências de V-code com R1 consensus

**Nenhuma.** Para todas as 141 variáveis, meu mapping independente concordou com `chosen` do R1 consensus.

## Parte 2: comentário sobre as 2 MAJORITY de R1 (FLDOMICH / FLDOMICM)

### Decisão chave: FLDOMICH/FLDOMICM = V0335/V0336 (R1A1+R1A3) ou V0337/V0338 (R1A2)?

**R2A1 concorda com R1 majority: V0335/V0336.**

Evidência semântica decisiva:

1. **Descrição A.FLDOMICH:** "Filhos moram domicilio - homem"
   - "moram domicilio" = "moram NO domicílio" (i.e., neste domicílio onde a pessoa de referência vive).
   - Sem "não" antes de "moram" → afirmativo.

2. **Descrição B/C.V0335:** "Filhos Tidos que moram **no** domicílio"
   - Match exato com a leitura semântica de A.FLDOMICH.

3. **Descrição B/C.V0337:** "Filhos Tidos que moram em **outro** domicílio (Homens)"
   - "em outro" ≠ "no" — significado oposto.

4. **Variável vizinha em A: FLNAODOH (11.23) "Filhos nao moram domicilio"**
   - Esta sim tem "não" → corresponde a "em outro domicílio" → V0337.
   - A coexistência de FLDOMICH (11.16) e FLNAODOH (11.23) na mesma tabela A confirma que são variáveis distintas e o pareamento é:
     - FLDOMICH → V0335 (moram no dom)
     - FLNAODOH → V0337 (moram em outro dom)
   - R1A2 mapeou tanto FLDOMICH quanto FLNAODOH para V0337/V0338 — isso é inconsistente e duplicaria o V-code, sem cobrir V0335/V0336.

5. **Convenção de sex-split:**
   - V0335/V0336 não rotulam explicitamente "(Homens)/(Mulheres)" em B/C, mas a posição da tabela (V0335 vem antes de V0336, mesmo padrão de V0337-Homens/V0338-Mulheres logo abaixo) e o sufixo H/M no nome A confirmam que V0335=H, V0336=M.

6. **v050 presence:** V0335, V0336, V0337, V0338 todos presentes em v050_population — ambos pares são variáveis reais 1991, não derivadas.

**R1A2's argument:** R1A2 marcou V0337/V0338 como LOW e justificou que V0335/V0336 não têm sex-split em B/C. Mas a justificativa de R1A2 inverte a relação: a ausência de rótulo H/M em B/C sobre V0335/V0336 é apenas um detalhe de label IBGE (provavelmente abreviado), não impede o mapping. A semântica "moram no" vs "em outro" é decisiva.

**Conclusão:** mantenho V0335/V0336 (FLDOMICH/FLDOMICM) e V0337/V0338 (FLNAODOH/FLNAODOM). Ajuste de strength: marquei MED (não HIGH como R1A1+R1A3) porque B/C não rotulam V0335/V0336 com H/M explícito — é inferência por contexto/posição.

## Parte 3: opinião sobre os 5 CANNOT_MAP

R1 consensus marcou 5 vars como CANNOT_MAP unânime: **UFNOM, MESONOM, MICRONOM, MUNICNOM, RFAPCAPV**.

**R2A1 concorda com todos os 5.** Análise por var:

### UFNOM, MESONOM, MICRONOM, MUNICNOM (4 vars de "Nome de geografia")

- **A_tipo:** STRING (nomes textuais).
- **B/C:** apenas códigos numéricos correspondentes (V1101, V7001, V7002, V1102) com referência a arquivos auxiliares xls que mapeiam código → nome.
- **v050:** `name_state` é derivado em `R/add_geography_cols.R` a partir de `code_state` via tabela canônica do projeto — não é V-code.

**Mapping possível?** Não. O nome textual nunca foi V-code histórico. Se o pipeline futuro precisar do nome, deve aplicar `add_state_info()` / lookup pós-decode, não tentar mapear para V-code.

**Correto descartar.**

### RFAPCAPV (Renda familiar per capita, valor REAL)

- **A_tipo:** REAL com `999999998=NSA | 999999999=Ignorado`.
- **B:** apenas V3045 (Rendimento Familiar valor) e V3049 (faixas per capita) — nenhuma var "valor per capita".
- **C:** idem.
- **v050:** ausente.

**Mapping possível?** Não no sentido estrito. RFAPCAPV é variável **derivada** (calcula RFAMILIV ÷ N pessoas da família), incluída pelo IBGE no DBF 2025 como conveniência. Não tem V-code histórico — a fonte 1991 só publicou as faixas (V3049). 

**Correto descartar como CANNOT_MAP.** Alternativa: o pipeline pode recriar essa coluna calculando V3045/family_size, mas isso é decisão de recodificação, não de mapping de V-code.

## Parte 4: comentários sobre evidence_strength por var

Pequenas divergências de strength (não de V-code) com consensus:

| Var | R2A1 strength | R1 consensus | Justificativa R2A1 |
|---|---|---|---|
| MESONUM | MED | UNANIMOUS HIGH | v050 expõe `code_meso` (renomeação), não V7001 literal — N/N para v050 presence |
| MICRONUM | MED | UNANIMOUS HIGH | idem para code_micro |
| FLDOMICH | MED | MAJORITY V0335 (HIGH em R1A1+R1A3) | B/C não rotulam V0335 explicitamente como "Homens" — inferência por posição |
| FLDOMICM | MED | MAJORITY V0336 | idem |
| MIULTMUD | MED | UNANIMOUS (R1A3 já marcou MED) | descrição A é mais curta que B/C; equivalência semântica precisa explicação |
| RFANOMIF | MED | UNANIMOUS (R1A1+R1A2 já marcaram MED) | A traz lista de categorias finas que diverge das 13 faixas grosseiras de V3046 — provavelmente erro de transcrição em A |
| PESO | MED | UNANIMOUS (R1A1+R1A3 marcaram MED) | ambíguo se A entrega o mesmo PESO para domicilio/pessoa |

Demais 134 vars: HIGH conforme consensus.

## Resumo final

- **Concordância de V-code com R1 consensus: 100% (141/141).**
- **Concordância com R1 majority em FLDOMICH/FLDOMICM:** SIM — V0335/V0336 está correto. R1A2 errou ao escolher V0337/V0338.
- **5 CANNOT_MAP:** todos corretos; nenhum tem mapping possível.
- **Linha 2 artefato:** dropei (igual R1A3). A escolha de R1A1+R1A2 de manter como CANNOT_MAP é defensável mas suja output sem ganho.
- **Pequenos ajustes de strength** em ~6 vars (MED ao invés de HIGH) — não afetam a decisão de V-code.

A Rodada 1 chegou ao mapping correto com bastante margem. Os 5 CANNOT_MAP refletem genuinamente vars sem equivalente histórico (4 nomes textuais + 1 var derivada). A única dúvida real — FLDOMICH/M — foi resolvida corretamente pela maioria.
