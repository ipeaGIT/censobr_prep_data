---
name: review-code-style
description: Audita scripts R do projeto contra .claude/rules/code-style.md. Roda 2 agentes Explore em paralelo (R/ e R_ainda_sem_targets/), faz checkpoint com o usuário, depois 1 agente Plan que audita os achados e gera plano de refatoração priorizado em .claude/plans/. READ-ONLY — não executa nenhuma mudança em código R.
---

# review-code-style — auditoria de estilo de código R

Skill de auditoria que vasculha scripts R, identifica violações da regra `.claude/rules/code-style.md`, e gera plano de refatoração **sem executar nenhuma mudança** em arquivos do projeto.

Workflow: 2 agentes de revisão em paralelo → checkpoint com usuário → 1 agente de auditoria + planejamento → plano final em `.claude/plans/`.

## Quando usar

- Periodicamente, para conferir o estado de adesão à regra de estilo.
- Antes de portar scripts novos de `R_ainda_sem_targets/` para `R/`.
- Após mudanças significativas em código R, para garantir consistência.

## Quando NÃO usar

- Se o objetivo é **aplicar** refatoração diretamente — usar `EnterPlanMode` direto.
- Para auditar 1 arquivo único — usar `Grep` + `Read` direto, sem skill.

## Workflow obrigatório

### Fase 0 — Setup (Claude orquestrador)

1. Ler `.claude/rules/code-style.md` integralmente para internalizar todas as categorias de violação.
2. Glob `R/*.R` (production) e `R_ainda_sem_targets/*.R` (legado) para listar arquivos.
3. Capturar timestamp `YYYY-MM-DD-HHMM` para nomear o plano de saída.

### Fase 1 — 2 agentes Explore em PARALELO

Disparar EM UMA ÚNICA mensagem com 2 chamadas Agent (paralelo de fato):

**Agente A — código ativo `R/`**
```
subagent_type: Explore
description: Audit R/ for code-style violations
prompt: [ver "Prompt do Agente A" abaixo]
```

**Agente B — código legado `R_ainda_sem_targets/`**
```
subagent_type: Explore
description: Audit R_ainda_sem_targets/ for code-style violations
prompt: [ver "Prompt do Agente B" abaixo]
```

#### Prompt do Agente A

Brief o agente com o seguinte contexto (ajustar conforme estado atual):

> Audite todos os arquivos `R/*.R` deste projeto contra a regra `.claude/rules/code-style.md`. **Read-only — não modifique nenhum arquivo.**
>
> Ler primeiro:
> - `.claude/rules/code-style.md` (regra completa)
> - Lista de arquivos R em `R/` (use Glob)
>
> Para cada arquivo, identificar violações nas seguintes categorias:
>
> **A. Encapsulamento prematuro:**
> - A1: Helpers `^\.\w+\s*<-\s*function` chamados em apenas 1 lugar no arquivo
> - A2: Sub-funções aninhadas que poderiam ser inlinadas (chamadas 1×)
>
> **B. Comentários:**
> - B1: 5+ linhas consecutivas começando com `#` (multi-parágrafo)
> - B2: Comentários com "KNOWN REGRESSION", "Issue #...", "TODO design", stacktrace de investigação
>
> **C. Mensagens:**
> - C1: `message\(.*sprintf\(`
> - C2: Mensagens com formato verboso multi-argumento
>
> **D. Defensividade redundante:**
> - D1: `if\(any\(duplicated\(` antes de `make.unique`
> - D2: `if\(!is\.na\(.*\)\s*&&.*%in%` antes de `%in%`
> - D3: `if\(length\(.+\) == 0\)\s*stop\(` antes de operação que erraria
> - D4: Sanity checks manuais com `vapply`/`for` para verificar invariantes óbvias
> - D5: `tryCatch\(` em código de pipeline (raros são legítimos)
> - D6: `vapply\(.+,\s*FUN\.VALUE\s*=` defensivo onde `sapply` serviria
>
> **E. Formatação:**
> - E1: Listas de pares (mutate/rename/select) com `=` desalinhado verticalmente
> - E2: `if (.+) \{[^}]+\} else \{[^}]+\}` numa linha lógica única (chaves desnecessárias)
> - E3: `requireNamespace` ou `if\s*\(\s*!\s*require\(` em vez de `library()` em bloco
>
> **F. Nomeação censobr:**
> - F1: Renames pra fora de `code_*`/`name_*`/`abbrev_state` quando `code-style.md` seção 2 sugere o canônico
> - F2: V cols renomeadas (e.g., `V001` virando `idade_5` em rename) — perde o prefixo de tema
>
> **G. Adaptação targets:**
> - G1: Múltiplas funções públicas em um arquivo de 1 target (não documentado)
>
> **H. Mega-pipe:**
> - H1: Pipe com 10+ stages sem reatribuição intermediária
>
> Para cada violação encontrada, devolver linha em tabela markdown:
>
> ```
> | arquivo | linha | categoria | severidade | nota |
> |---|---|---|---|---|
> | R/foo.R | 42 | A1 | ALTA | helper `.match_files` chamado só na linha 87 |
> ```
>
> **Severidade:**
> - **ALTA** — anti-padrão hard explícito da regra (helpers `.dot_prefixed` para uso único, `sprintf` em mensagem, `tryCatch` por hábito).
> - **MÉDIA** — heurística mas claramente fora do estilo (comentário multi-parágrafo, defensividade redundante).
> - **BAIXA** — cosmético (alinhamento, formatação).
>
> Cap o output em 200 linhas. Se exceder, agrupe por categoria com contagens em vez de enumerar tudo.
>
> Não proponha fix — apenas identifique. O fix vem na próxima fase.

#### Prompt do Agente B

Mesmo prompt do Agente A, mas:
- Glob em `R_ainda_sem_targets/*.R` em vez de `R/`.
- **Severidade marcada como `DEFERRED`** (todas) — legado vai ser refatorado no porte futuro, não agora.
- Adicionar à nota: "será tratado no porte deste script para `R/`".

### Fase 2 — Checkpoint com o usuário (Claude orquestrador)

Consolidar findings dos 2 agentes em síntese:

```markdown
# Síntese da auditoria — review-code-style

## Totais
- Production (`R/`): N1 violações em M1 arquivos.
  - ALTA: A1, MÉDIA: A2, BAIXA: A3.
- Legado (`R_ainda_sem_targets/`): N2 violações DEFERRED em M2 arquivos.

## Top 5 arquivos com mais violações (production)
| arquivo | total | ALTA | MÉDIA | BAIXA |
|---|---|---|---|---|
| R/census_tracts_2022.R | 23 | 8 | 12 | 3 |
| ... | ... | ... | ... | ... |

## Por categoria (cross-files)
| categoria | total |
|---|---|
| A1 (helpers .private 1×) | 7 |
| ... | ... |

## Arquivos sem violação
- R/census_tracts_2010.R ✓
- ...
```

Apresentar ao usuário (~30-60 linhas total). Aguardar resposta:
- "prosseguir" ou similar → ir pra Fase 3.
- pedido de ajuste de escopo, exclusão de categorias, foco em arquivo específico → ajustar e re-rodar Fase 1 ou seguir com escopo reduzido pra Fase 3.

### Fase 3 — 1 agente Plan (subagent_type=Plan) audita + planeja

```
subagent_type: Plan
description: Audit findings + propose refactor plan
prompt: [ver "Prompt do Agente Plan" abaixo]
```

#### Prompt do Agente Plan

> Você recebe findings de auditoria de estilo (tabela markdown abaixo) contra `.claude/rules/code-style.md`. Sua tarefa:
>
> 1. **Auditar críticamente:** re-ler 2-3 arquivos com mais violações (Read direto). Para cada violação alegada, decidir:
>    - Verdadeiro positivo (manter no plano).
>    - Falso positivo (descartar, com justificativa).
> 2. **Por arquivo**, propor refactor concreto:
>    - Sugestão de código no estilo do usuário (compacto, procedural, sem `.dot_prefixed`, etc.).
>    - Linhas removidas / adicionadas (estimativa).
>    - Risco de invalidar pipeline (mudança em função `clean_*` ou `save_*` invalida parquets respectivos).
> 3. **Priorizar** ordem de execução:
>    - Production > legado.
>    - ALTA > MÉDIA > BAIXA.
>    - Custo de refactor (menor → maior, para ganhos rápidos antes).
> 4. **Estimar tempo total** em horas (somando os refactors).
> 5. **Identificar dependências:** quais refactors invalidam parquets (ex.: refactor de `census_tracts_2022.R` invalida 8 parquets 2022 → 27 min de re-build).
>
> Devolver plano markdown estruturado com:
> - Sumário executivo
> - Por arquivo (subsection com violações + sugestões + custo + risco)
> - Ordem de execução priorizada
> - Falsos positivos descartados (com justificativa)

### Fase 4 — Gravar plano final + apresentar (Claude orquestrador)

1. Gravar o output do Agente Plan em `.claude/plans/code-style-review_<timestamp>.md` (timestamp capturado na Fase 0).
2. Apresentar ao usuário **sumário executivo** (5-10 linhas):
   - Total de violações verdadeiras (pós-auditoria).
   - Tempo estimado total.
   - Top 3 arquivos a refatorar.
   - Path do plano completo.
3. **NÃO EXECUTAR NADA**. Perguntar: "quer que eu aplique a refatoração?" mas só executar se usuário responder afirmativamente em mensagem subsequente — abrindo então um plan mode próprio para a refatoração.

## Restrições críticas

- **READ-ONLY** para todo `R/*.R`, `R_ainda_sem_targets/*.R`, `.claude/rules/`, e qualquer arquivo do projeto.
- **Edits permitidos APENAS** em `.claude/plans/code-style-review_<timestamp>.md` (output da skill).
- **Tools proibidas durante a skill:**
  - `Edit`/`Write`/`NotebookEdit` em arquivos R do projeto.
  - `Bash` com efeito colateral (`>` redirect, `rm`, `mv`, `git commit`, `tar_make`, etc.).
  - `git push`, `gh pr create`, etc.
- **Tools permitidas:** `Read`, `Glob`, `Grep`, `Bash` read-only (ls, cat, grep), `Agent` (Explore + Plan), `AskUserQuestion`.

## Notas de manutenção

Esta skill assume que `.claude/rules/code-style.md` define as categorias de violação. Se a regra ganhar/perder categorias, atualizar:
- A lista de categorias A-H nos prompts dos Agentes A e B.
- O cap de severidades em "Severidade" (ALTA/MÉDIA/BAIXA/DEFERRED).

## Quando o resultado é "tudo OK"

Se o checkpoint mostrar zero violações em production: gravar plano vazio em `.claude/plans/` mesmo assim (com nota "auditoria limpa em <timestamp>") e parar. Não disparar Agente Plan se não há nada para planejar.