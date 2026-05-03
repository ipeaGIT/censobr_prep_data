# Censo Demográfico 2022 — Pesquisa Urbanística do Entorno dos Domicílios

## Descrição

Este arquivo é uma versão em Markdown da Pesquisa Urbanística do Entorno dos Domicílios do Censo de 2022. Como o arquivo original está em formato PDF, o objetivo da conversão é disponibilizar os dados em formato mais facilmente *machine-readable* para facilitar o uso por humanos e agentes de IA.

Arquivo gerado em: 2026-04-23.

## Fonte de dados

A fonte principal desta transcrição é a página final do PDF do Questionário Básico do Censo Demográfico 2022, que contém um instrumento distinto intitulado **Pesquisa Urbanística do Entorno dos Domicílios**, obtido a partir do [site do IBGE](https://censo2022.ibge.gov.br/np_download/censo2022/questionario_basico_completo_CD2022_atualizado_20220906.pdf). Alternativamente, o download do PDF também pode ser feito pela função `questionnaire()`, do pacote [censobr](https://ipeagit.github.io/censobr/), disponível para R.

## Processamento

Esta transcrição usa o PDF como *ground truth* para o conteúdo substantivo do instrumento, reorganizando seu conteúdo para torná-lo mais facilmente *machine-readable*. As subseções a seguir detalham as principais etapas da reorganização e padronização dos dados.

### Estrutura do questionário

- **Header 1**: Blocos do Questionário
  - **Header 2**: Itens de cada bloco
  - **Header 3**: Sub-itens de cada item (quando aplicável)

### Numeração dos itens

- Cada item está identificado por seu número original no PDF, como `2.01`, `3.02` e `4.01`.
- A numeração segue o PDF original.
- Campos administrativos sem papel substantivo claro no fluxo do instrumento, como `Município` e `Agência` no cabeçalho, não foram convertidos em nós próprios nesta transcrição.

### Metadados

Cada **item** foi dividido em campos padronizados para explicitar seu conteúdo e o fluxo do instrumento:

- **Tipo**: descreve o formato esperado da resposta.
  - `int`: Inteiro.
  - `single_choice`: seleção de uma única resposta entre as opções disponíveis.

- **Escopo**: indica a unidade observacional à qual o quesito se aplica.
  - `QUADRA_FACE_ID`: identificação da quadra e da face.
  - `FACE_ENV`: elementos observados na face, na face confrontante e no canteiro central.
  - `FACE_ONLY`: elementos observados apenas na face.
  - `FACE_AND_MEDIAN`: elementos observados na face e no canteiro central.

- **Universo**: explicita a condição lógica sob a qual o quesito deve ser aplicado, isto é, o filtro que delimita quando cada quesito deve ser respondido, expresso como um teste lógico análogo ao routing. Caso não haja filtro, o valor do campo é `NA`.
- **Opções**: lista de opções de respostas disponíveis para os itens do tipo `single_choice`. Para itens do tipo `int`, o valor é `NA`.
- **Observações**: reúne instruções do formulário original ou esclarecimentos necessários para interpretar o quesito. Caso não haja observações, o campo assume valor `NA`.
- **Routing**: registra o próximo nó no fluxo do instrumento, que pode ser outro quesito do formulário ou um nó de controle introduzido nesta documentação. A próxima seção esclarece a implementação do routing.

### Implementação do routing

O campo **Routing** foi padronizado para registrar o próximo nó lógico do instrumento após cada resposta. Nesta transcrição, ele segue as convenções abaixo:

- Quando o próximo passo é único, o campo registra apenas o próximo item, por exemplo: `2.02`.
- Quando o desvio depende da resposta, o campo registra uma expressão lógica simplificada com `IF ... THEN ... ELSE ...`.
- Quando o fluxo sai de um bloco, usam-se nós de controle editoriais:
  - `END_BLOCK_2`: encerra o bloco 2 e inicia o bloco 3 em `3.01`.
  - `END_BLOCK_3`: encerra o bloco 3 e inicia o bloco 4 em `4.01`.
  - `END_INTERVIEW`: encerra o instrumento.

### Intervenções editoriais

Além da reorganização em campos padronizados, esta transcrição adota algumas intervenções editoriais para tornar o formulário mais legível e tratável por máquina:

- as instruções visuais do PDF (`Siga para ...`, `Encerre o bloco`, `Encerre o questionário`) foram formalizadas no campo **Routing**;
- a expressão `AQUAVIA`, destacada como condição especial em `2.01`, foi tratada como uma resposta substantiva com desvio próprio para o encerramento do instrumento;
- os itens do bloco 1 foram tratados como campos de identificação da unidade espacial observada;
- os qualificadores entre parênteses, como `Predominância`, `Mínimo` e `Contagem`, foram preservados no enunciado ou nas observações, por fazerem parte da definição operacional do quesito.

# 1. Identificação da quadra e da face

## 1.01 — UF

- **Tipo**: `int`
- **Escopo**: `QUADRA_FACE_ID`
- **Universo**: `NA`
- **Opções**: `NA`
- **Observações**: `NA`
- **Routing**: `1.02`

## 1.02 — Município

- **Tipo**: `int`
- **Escopo**: `QUADRA_FACE_ID`
- **Universo**: `NA`
- **Opções**: `NA`
- **Observações**: `NA`
- **Routing**: `1.03`

## 1.03 — Distrito

- **Tipo**: `int`
- **Escopo**: `QUADRA_FACE_ID`
- **Universo**: `NA`
- **Opções**: `NA`
- **Observações**: `NA`
- **Routing**: `1.04`

## 1.04 — Subdistrito

- **Tipo**: `int`
- **Escopo**: `QUADRA_FACE_ID`
- **Universo**: `NA`
- **Opções**: `NA`
- **Observações**: `NA`
- **Routing**: `1.05`

## 1.05 — Setor

- **Tipo**: `int`
- **Escopo**: `QUADRA_FACE_ID`
- **Universo**: `NA`
- **Opções**: `NA`
- **Observações**: `NA`
- **Routing**: `1.06`

## 1.06 — Número da quadra

- **Tipo**: `int`
- **Escopo**: `QUADRA_FACE_ID`
- **Universo**: `NA`
- **Opções**: `NA`
- **Observações**: `NA`
- **Routing**: `1.07`

## 1.07 — Número da face

- **Tipo**: `int`
- **Escopo**: `QUADRA_FACE_ID`
- **Universo**: `NA`
- **Opções**: `NA`
- **Observações**: `NA`
- **Routing**: `2.01`

# 2. Elementos da face, face confrontante e canteiro central

## 2.01 — Capacidade de circulação da via

- **Tipo**: `single_choice`
- **Escopo**: `FACE_ENV`
- **Universo**: `NA`
- **Opções:**
  - `1` — CAMINHÃO, ÔNIBUS, VEÍCULOS DE TRANSPORTE DE CARGA
  - `2` — CARROS DE PASSEIO OU VAN
  - `3` — PEDESTRES, BICICLETAS E MOTOCICLETAS
  - `4` — AQUAVIA

- **Observações**: qualificador do formulário original: `Predominância`.
- **Routing**: `IF (2.01 == 4) THEN END_INTERVIEW; ELSE 2.02`

## 2.02 — Via pavimentada

- **Tipo**: `single_choice`
- **Escopo**: `FACE_ENV`
- **Universo**: `2.01 != 4`
- **Opções:**
  - `1` — SIM
  - `2` — NÃO

- **Observações**: qualificador do formulário original: `Predominância`.
- **Routing**: `2.03`

## 2.03 — Bueiro / boca de lobo

- **Tipo**: `single_choice`
- **Escopo**: `FACE_ENV`
- **Universo**: `2.01 != 4`
- **Opções:**
  - `1` — SIM
  - `2` — NÃO

- **Observações**: qualificador do formulário original: `Mínimo`.
- **Routing**: `2.04`

## 2.04 — Iluminação pública

- **Tipo**: `single_choice`
- **Escopo**: `FACE_ENV`
- **Universo**: `2.01 != 4`
- **Opções:**
  - `1` — SIM
  - `2` — NÃO

- **Observações**: qualificador do formulário original: `Mínimo`.
- **Routing**: `2.05`

## 2.05 — Ponto de ônibus / van

- **Tipo**: `single_choice`
- **Escopo**: `FACE_ENV`
- **Universo**: `2.01 != 4`
- **Opções:**
  - `1` — SIM
  - `2` — NÃO

- **Observações**: qualificador do formulário original: `Mínimo`.
- **Routing**: `2.06`

## 2.06 — Via sinalizada para bicicletas

- **Tipo**: `single_choice`
- **Escopo**: `FACE_ENV`
- **Universo**: `2.01 != 4`
- **Opções:**
  - `1` — SIM
  - `2` — NÃO

- **Observações**: qualificador do formulário original: `Mínimo`.
- **Routing**: `END_BLOCK_2`

# 3. Elementos da face

## 3.01 — Calçada / passeio

- **Tipo**: `single_choice`
- **Escopo**: `FACE_ONLY`
- **Universo**: `2.01 != 4`
- **Opções:**
  - `1` — SIM
  - `2` — NÃO

- **Observações**: qualificador do formulário original: `Mínimo`.
- **Routing**: `IF (3.01 == 1) THEN 3.02; ELSE END_BLOCK_3`

## 3.02 — Obstáculo na calçada

- **Tipo**: `single_choice`
- **Escopo**: `FACE_ONLY`
- **Universo**: `3.01 == 1`
- **Opções:**
  - `1` — SIM
  - `2` — NÃO

- **Observações**: qualificador do formulário original: `Mínimo`.
- **Routing**: `3.03`

## 3.03 — Rampa para cadeirante

- **Tipo**: `single_choice`
- **Escopo**: `FACE_ONLY`
- **Universo**: `3.01 == 1`
- **Opções:**
  - `1` — SIM
  - `2` — NÃO

- **Observações**: qualificador do formulário original: `Mínimo`.
- **Routing**: `END_BLOCK_3`

# 4. Elementos da face e canteiro central

## 4.01 — Arborização

- **Tipo**: `single_choice`
- **Escopo**: `FACE_AND_MEDIAN`
- **Universo**: `2.01 != 4`
- **Opções:**
  - `1` — SEM ÁRVORES
  - `2` — DE 1 A 2 ÁRVORES
  - `3` — DE 3 A 4 ÁRVORES
  - `4` — OU MAIS ÁRVORES
- **Observações**: qualificador do formulário original: `Contagem`.
- **Routing**: `END_INTERVIEW`
