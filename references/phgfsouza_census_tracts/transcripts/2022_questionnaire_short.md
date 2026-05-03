# Censo Demográfico 2022 — Questionário Básico

## Descrição

Este arquivo é uma versão em Markdown do Questionário Básico do Censo de 2022. Como o arquivo original está em formato PDF, o objetivo da conversão é disponibilizar os dados em formato mais facilmente *machine-readable* para facilitar o uso por humanos e agentes de IA.

Arquivo gerado em: 2026-04-23.

## Fonte de dados

A fonte principal desta transcrição é o PDF original do Questionário Básico do Censo Demográfico 2022, obtido a partir do [site do IBGE](https://censo2022.ibge.gov.br/np_download/censo2022/questionario_basico_completo_CD2022_atualizado_20220906.pdf). Alternativamente, o download do PDF também pode ser feito pela função `questionnaire()`, do pacote [censobr](https://ipeagit.github.io/censobr/), disponível para R.

## Processamento

Esta transcrição usa o PDF como *ground truth* para o conteúdo substantivo do questionário, reorganizando seu conteúdo para torná-lo mais facilmente *machine-readable*. As subseções a seguir detalham as principais etapas da reorganização e padronização dos dados.

### Estrutura do questionário

- **Header 1**: Blocos do Questionário
  - **Header 2**: Itens de cada bloco
  - **Header 3**: Sub-itens de cada item (quando aplicável)

### Numeração dos itens

- Cada item está identificado por seu número original no PDF, como `2.05.3A`, `4.04.1.2` e `8.05.1`.
- A numeração segue o PDF, mesmo quando há sub-itens alfanuméricos ou quando o fluxo entre blocos repetidos não é explicitado integralmente no formulário.
- Campos administrativos sem papel substantivo claro no fluxo do questionário, como `Município` e `Agência` no cabeçalho, não foram convertidos em nós próprios nesta transcrição.

### Metadados

Cada **item** foi dividido em campos padronizados para explicitar seu conteúdo e o fluxo do questionário:

- **Tipo**: descreve o formato esperado da resposta.
  - `int`: Inteiro.
  - `string`: Texto.
  - `single_choice`: seleção de uma única resposta entre as opções disponíveis.

- **Escopo**: indica o tipo de domicílio ao qual o quesito se aplica.
  - `HH_OCC`: todos os domicílios ocupados (particulares e coletivos).
  - `HH_OCC_PRIV`: apenas domicílios particulares ocupados.
  - `HH_OCC_PRIV_PERM`: apenas domicílios particulares permanentes ocupados.
  - `HH_OCC_PRIV_PERM_OR_IMP_052_505`: domicílios particulares permanentes ocupados e domicílios improvisados dos tipos `052` e `505`.

- **Universo**: explicita a condição lógica sob a qual o quesito deve ser aplicado, isto é, o filtro que delimita quem deve responder a cada quesito, expresso como um teste lógico análogo ao routing. Caso não haja filtro, o valor do campo é `NA`.
- **Opções**: lista de opções de respostas disponíveis para os itens do tipo `single_choice`. Para itens do tipo `int` e `string`, o valor é `NA`.
- **Observações**: reúne instruções do formulário original ou esclarecimentos necessários para interpretar o quesito. Caso não haja observações, o campo assume valor `NA`.
- **Routing**: registra o próximo nó no fluxo do questionário, que pode ser outro quesito do formulário ou um nó de controle introduzido nesta documentação. A próxima seção esclarece a implementação do routing.

### Implementação do routing

O campo **Routing** foi padronizado para registrar o próximo nó lógico do questionário após cada resposta. Nesta transcrição, ele segue as convenções abaixo:

- Quando o próximo passo é único, o campo registra apenas o próximo item, por exemplo: `3.02`.
- Quando o desvio depende da resposta, o campo registra uma expressão lógica simplificada com `IF ... THEN ... ELSE ...`.
- Quando o PDF não explicita um próximo passo, o campo assume valor `NA`.
- Quando o fluxo sai de uma iteração repetida, usam-se nós de controle editoriais:
  - `END_LISTING_PERSON`: encerra a linha corrente da lista de moradores. Se ainda houver morador a listar, reinicia-se `2.03.1`; caso contrário, o fluxo segue para o próximo bloco aplicável ao domicílio.
  - `END_INTERVIEW`: encerra o questionário.
- Em blocos repetidos, o **Routing** registra o próximo passo dentro de cada iteração; a regra de repetição do bloco é descrita no texto introdutório da seção correspondente.

### Intervenções editoriais

Além da reorganização em campos padronizados, esta transcrição adota algumas intervenções editoriais para tornar o formulário mais legível e tratável por máquina:

- a repetição visual da lista de moradores do bloco `2` foi explicitada com o nó editorial `END_LISTING_PERSON`, apenas para representar a passagem entre linhas da listagem;
- a lista visualmente abreviada de meses no quesito `8.03` foi expandida integralmente, de `janeiro de 2019` a `julho de 2022`;
- os blocos pessoa-específicos (`4`, `5`, `6`, `7` e `9`) preservam apenas os desvios explicitamente mostrados no PDF, sem introduzir nós adicionais de retorno entre moradores;
- o bloco `8` foi mantido como um único registro de óbito por vez, pois o PDF não explicita uma iteração para múltiplos óbitos;
- o bloco `10` foi mantido como bloco administrativo exibido no formulário, mas sem conexão explícita de routing com os blocos anteriores.

### Variáveis derivadas e auxiliares

Alguns desvios do questionário dependem de variáveis que não aparecem como quesitos independentes no PDF, mas são necessárias para formalizar ou facilitar o fluxo:

- `AGE_YEARS`: idade da pessoa em anos completos em 31 de julho de 2022.
  - Caso a data de nascimento esteja suficientemente informada em `2.05.1` a `2.05.3`, a variável é derivada desses campos.
  - Caso `2.05.3A` esteja assinalado, a variável é derivada de `2.05.5` (para pessoas com um ano ou mais) ou `2.05.6` (para pessoas com menos de um ano).
- `AREA_IS_INDIGENOUS`: variável binária que indica se o domicílio está em área indígena. Essa informação é necessária para interpretar os desvios de `4.01` a `4.05`, mas não aparece como quesito substantivo no formulário.
- `AREA_IS_QUILOMBOLA`: variável binária que indica se o domicílio está em área quilombola. Essa informação é necessária para interpretar os desvios de `4.01` a `4.07`, mas não aparece como quesito substantivo no formulário.
- `N_RESIDENTS`: número total de moradores do domicílio, igual ao valor informado em `2.01`.
- `is_blank(.)`: função auxiliar usada apenas para formalizar saltos condicionados ao não preenchimento de um campo.

# 1. Identificação do domicílio

## 1.01 — UF

- **Tipo**: `int`
- **Escopo**: `HH_OCC`
- **Universo**: `NA`
- **Opções**: `NA`
- **Observações**: `NA`
- **Routing**: `1.02`

## 1.02 — Município

- **Tipo**: `int`
- **Escopo**: `HH_OCC`
- **Universo**: `NA`
- **Opções**: `NA`
- **Observações**: `NA`
- **Routing**: `1.03`

## 1.03 — Distrito

- **Tipo**: `int`
- **Escopo**: `HH_OCC`
- **Universo**: `NA`
- **Opções**: `NA`
- **Observações**: `NA`
- **Routing**: `1.04`

## 1.04 — Subdistrito

- **Tipo**: `int`
- **Escopo**: `HH_OCC`
- **Universo**: `NA`
- **Opções**: `NA`
- **Observações**: `NA`
- **Routing**: `1.05`

## 1.05 — Setor

- **Tipo**: `int`
- **Escopo**: `HH_OCC`
- **Universo**: `NA`
- **Opções**: `NA`
- **Observações**: `NA`
- **Routing**: `1.06`

## 1.06 — Número da quadra

- **Tipo**: `int`
- **Escopo**: `HH_OCC`
- **Universo**: `NA`
- **Opções**: `NA`
- **Observações**: `NA`
- **Routing**: `1.07`

## 1.07 — Número da face

- **Tipo**: `int`
- **Escopo**: `HH_OCC`
- **Universo**: `NA`
- **Opções**: `NA`
- **Observações**: `NA`
- **Routing**: `1.08`

## 1.08 — Sequência do endereço

- **Tipo**: `int`
- **Escopo**: `HH_OCC`
- **Universo**: `NA`
- **Opções**: `NA`
- **Observações**: `NA`
- **Routing**: `1.09`

## 1.09 — Sequência do coletivo

- **Tipo**: `int`
- **Escopo**: `HH_OCC`
- **Universo**: `NA`
- **Opções**: `NA`
- **Observações**: `NA`
- **Routing**: `1.10`

## 1.10 — Sequência da espécie

- **Tipo**: `int`
- **Escopo**: `HH_OCC`
- **Universo**: `NA`
- **Opções**: `NA`
- **Observações**: `NA`
- **Routing**: `1.11`

## 1.11 — Espécie de domicílio ocupado

- **Tipo**: `single_choice`
- **Escopo**: `HH_OCC`
- **Universo**: `NA`
- **Opções:**
  - `1` — DOMICÍLIO PARTICULAR PERMANENTE OCUPADO
  - `5` — DOMICÍLIO PARTICULAR IMPROVISADO OCUPADO
  - `6` — DOMICÍLIO COLETIVO COM MORADOR

- **Observações**: `NA`
- **Routing**: `1.12`

## 1.12 — Tipo

- **Tipo**: `single_choice`
- **Escopo**: `HH_OCC`
- **Universo**: `NA`
- **Opções:**
  - `011` — CASA
  - `012` — CASA DE VILA OU EM CONDOMÍNIO
  - `013` — APARTAMENTO
  - `014` — HABITAÇÃO EM CASA DE CÔMODOS OU CORTIÇO
  - `015` — HABITAÇÃO INDÍGENA SEM PAREDES OU MALOCA
  - `106` — ESTRUTURA RESIDENCIAL PERMANENTE DEGRADADA OU INACABADA
  - `051` — TENDA OU BARRACA DE LONA, PLÁSTICO OU TECIDO
  - `052` — DENTRO DO ESTABELECIMENTO EM FUNCIONAMENTO
  - `053` — OUTROS (ABRIGOS NATURAIS E OUTRAS ESTRUTURAS IMPROVISADAS)
  - `504` — ESTRUTURA IMPROVISADA EM LOGRADOURO PÚBLICO, EXCETO TENDA OU BARRACA
  - `505` — ESTRUTURA NÃO RESIDENCIAL PERMANENTE DEGRADADA OU INACABADA
  - `506` — VEÍCULOS (CARROS, CAMINHÕES, TRAILERS, BARCOS ETC.)
  - `061` — ASILO OU OUTRA INSTITUIÇÃO DE LONGA PERMANÊNCIA PARA IDOSOS
  - `062` — HOTEL OU PENSÃO
  - `063` — ALOJAMENTO
  - `064` — PENITENCIÁRIA, CENTRO DE DETENÇÃO E SIMILAR
  - `065` — OUTRO
  - `606` — ABRIGO, ALBERGUE OU CASA DE PASSAGEM PARA POPULAÇÃO EM SITUAÇÃO DE RUA
  - `607` — ABRIGO, CASAS DE PASSAGEM OU REPÚBLICA ASSISTENCIAL PARA OUTROS GRUPOS VULNERÁVEIS
  - `608` — CLÍNICA PSIQUIÁTRICA, COMUNIDADE TERAPÊUTICA E SIMILAR
  - `609` — ORFANATO E SIMILAR
  - `610` — UNIDADE DE INTERNAÇÃO DE MENORES
  - `611` — QUARTEL OU OUTRA ORGANIZAÇÃO MILITAR

- **Observações**: `NA`
- **Routing**: `2.01`

# 2. Informações sobre moradores

Os itens `2.03.1` a `2.06` se repetem para cada morador listado. Nesta transcrição, assume-se que o número de iterações é dado por `2.01`.

## 2.01 — Quantas pessoas moravam neste domicílio em 31 de julho de 2022?

- **Tipo**: `int`
- **Escopo**: `HH_OCC`
- **Universo**: `NA`
- **Opções**: `NA`
- **Observações**: para domicílios particulares e coletivos.
- **Routing**: `2.02`

## 2.02 — Quantas crianças de zero a nove anos de idade, inclusive recém-nascidos, moravam neste domicílio em 31 de julho de 2022?

- **Tipo**: `int`
- **Escopo**: `HH_OCC`
- **Universo**: `NA`
- **Opções**: `NA`
- **Observações**: `NA`
- **Routing**: `2.03.1`

## 2.03.1 — Nome do morador

- **Tipo**: `string`
- **Escopo**: `HH_OCC`
- **Universo**: `NA`
- **Opções**: `NA`
- **Observações**: repetir os itens `2.03.1` a `2.06` por morador.
- **Routing**: `2.03.2`

## 2.03.2 — Sobrenome do morador

- **Tipo**: `string`
- **Escopo**: `HH_OCC`
- **Universo**: `NA`
- **Opções**: `NA`
- **Observações**: repetir os itens `2.03.1` a `2.06` por morador.
- **Routing**: `2.04`

## 2.04 — Sexo

- **Tipo**: `single_choice`
- **Escopo**: `HH_OCC`
- **Universo**: `NA`
- **Opções:**
  - `1` — MASCULINO
  - `2` — FEMININO

- **Observações**: repetir os itens `2.03.1` a `2.06` por morador.
- **Routing**: `2.05.1`

## 2.05 — Qual é a data de nascimento?

### 2.05.1 — Dia

- **Tipo**: `int`
- **Escopo**: `HH_OCC`
- **Universo**: `NA`
- **Opções**: `NA`
- **Observações**: repetir o bloco `2.05` por morador.
- **Routing**: `2.05.2`

### 2.05.2 — Mês

- **Tipo**: `single_choice`
- **Escopo**: `HH_OCC`
- **Universo**: `NA`
- **Opções:**
  - `01` — JANEIRO
  - `02` — FEVEREIRO
  - `03` — MARÇO
  - `04` — ABRIL
  - `05` — MAIO
  - `06` — JUNHO
  - `07` — JULHO
  - `08` — AGOSTO
  - `09` — SETEMBRO
  - `10` — OUTUBRO
  - `11` — NOVEMBRO
  - `12` — DEZEMBRO

- **Observações**: repetir o bloco `2.05` por morador.
- **Routing**: `2.05.3`

### 2.05.3 — Ano

- **Tipo**: `int`
- **Escopo**: `HH_OCC`
- **Universo**: `NA`
- **Opções**: `NA`
- **Observações**: repetir o bloco `2.05` por morador.
- **Routing**: `2.05.3A`

### 2.05.3A — Não sei o mês e/ou ano de nascimento

- **Tipo**: `single_choice`
- **Escopo**: `HH_OCC`
- **Universo**: `NA`
- **Opções:**
  - `1` — ASSINALADO

- **Observações**: quando assinalado, o fluxo segue para uma pergunta auxiliar de idade. Quando não assinalado, assume-se que a data de nascimento foi informada de modo suficiente para encerrar o bloco `2.05`.
- **Routing**: `IF (2.05.3A == 1) THEN 2.05.4; ELSE 2.06`

### 2.05.4 — Idade

- **Tipo**: `single_choice`
- **Escopo**: `HH_OCC`
- **Universo**: `2.05.3A == 1`
- **Opções:**
  - `1` — UM ANO OU MAIS
  - `2` — MENOS DE UM ANO

- **Observações**: pergunta auxiliar usada apenas quando o mês e/ou o ano de nascimento não são conhecidos. Repetir o bloco `2.05` por morador.
- **Routing**: `IF (2.05.4 == 1) THEN 2.05.5; ELSE 2.05.6`

### 2.05.5 — Idade em anos

- **Tipo**: `int`
- **Escopo**: `HH_OCC`
- **Universo**: `2.05.3A == 1 AND 2.05.4 == 1`
- **Opções**: `NA`
- **Observações**: preencher apenas para pessoas com um ano ou mais. Repetir o bloco `2.05` por morador.
- **Routing**: `2.06`

### 2.05.6 — Idade em meses

- **Tipo**: `int`
- **Escopo**: `HH_OCC`
- **Universo**: `2.05.3A == 1 AND 2.05.4 == 2`
- **Opções**: `NA`
- **Observações**: preencher apenas para pessoas com menos de um ano. Repetir o bloco `2.05` por morador.
- **Routing**: `2.06`

## 2.06 — Qual é a relação de parentesco ou de convivência com a pessoa responsável pelo domicílio?

- **Tipo**: `single_choice`
- **Escopo**: `HH_OCC`
- **Universo**: `NA`
- **Opções:**
  - `01` — PESSOA RESPONSÁVEL PELO DOMICÍLIO
  - `02` — CÔNJUGE OU COMPANHEIRO(A) DE SEXO DIFERENTE
  - `03` — CÔNJUGE OU COMPANHEIRO(A) DO MESMO SEXO
  - `04` — FILHO(A) DO RESPONSÁVEL E DO CÔNJUGE
  - `05` — FILHO(A) SOMENTE DO RESPONSÁVEL
  - `06` — ENTEADO(A)
  - `07` — GENRO OU NORA
  - `08` — PAI, MÃE, PADRASTO OU MADRASTA
  - `09` — SOGRO(A)
  - `10` — NETO(A)
  - `11` — BISNETO(A)
  - `12` — IRMÃO OU IRMÃ
  - `13` — AVÔ OU AVÓ
  - `14` — OUTRO PARENTE
  - `15` — AGREGADO(A)
  - `16` — CONVIVENTE
  - `17` — PENSIONISTA
  - `18` — EMPREGADO(A) DOMÉSTICO(A)
  - `19` — PARENTE DO(A) EMPREGADO(A) DOMÉSTICO(A)
  - `20` — INDIVIDUAL EM DOMICÍLIO COLETIVO

- **Observações**: é necessário indicar um morador como responsável pelo domicílio, entendido como a pessoa de 12 anos ou mais cuja responsabilidade domiciliar é reconhecida pelos demais moradores. Repetir os itens `2.03.1` a `2.06` por morador.
- **Routing**: `END_LISTING_PERSON`

# 3. Características do domicílio

Resposta única para cada domicílio. Este bloco se aplica apenas a domicílios particulares permanentes e a domicílios improvisados dos tipos `052` e `505` do quesito `1.12`.

## 3.01 — Qual a principal forma de abastecimento de água utilizada neste domicílio?

- **Tipo**: `single_choice`
- **Escopo**: `HH_OCC_PRIV_PERM_OR_IMP_052_505`
- **Universo**: `NA`
- **Opções:**
  - `1` — REDE GERAL DE DISTRIBUIÇÃO
  - `2` — PROFUNDO OU ARTESIANO
  - `3` — RASO, FREÁTICO OU CACIMBA
  - `4` — FONTE, NASCENTE OU MINA
  - `5` — CARRO-PIPA
  - `6` — ÁGUA DA CHUVA ARMAZENADA
  - `7` — RIOS, AÇUDES, CÓRREGOS, LAGOS E IGARAPÉS
  - `8` — OUTRA

- **Observações**: os códigos `2` e `3` aparecem no formulário sob a rubrica comum `POÇO`.
- **Routing**: `IF (3.01 == 1) THEN 3.03; ELSE 3.02`

## 3.02 — O domicílio tem acesso à rede geral de distribuição de água?

- **Tipo**: `single_choice`
- **Escopo**: `HH_OCC_PRIV_PERM_OR_IMP_052_505`
- **Universo**: `3.01 != 1`
- **Opções:**
 - `1` — SIM
 - `2` — NÃO
- **Observações**: `NA`
- **Routing**: `3.03`

## 3.03 — A água utilizada no domicílio chega:

- **Tipo**: `single_choice`
- **Escopo**: `HH_OCC_PRIV_PERM_OR_IMP_052_505`
- **Universo**: `NA`
- **Opções:**
  - `1` — ENCANADA ATÉ DENTRO DA CASA, APARTAMENTO OU HABITAÇÃO
  - `2` — ENCANADA, MAS APENAS NO TERRENO
  - `3` — NÃO CHEGA ENCANADA

- **Observações**: `NA`
- **Routing**: `3.04`

## 3.04 — Quantos banheiros de uso exclusivo, com chuveiro e vaso sanitário, existem neste domicílio, inclusive os localizados no terreno?

- **Tipo**: `int`
- **Escopo**: `HH_OCC_PRIV_PERM_OR_IMP_052_505`
- **Universo**: `NA`
- **Opções**: `NA`
- **Observações**: se o valor for `0`, siga para `3.05`. Caso contrário, passe para `3.07`.
- **Routing**: `IF (3.04 == 0) THEN 3.05; ELSE 3.07`

## 3.05 — Utiliza banheiro de uso comum a mais de um domicílio, com chuveiro e vaso sanitário, inclusive os localizados no terreno?

- **Tipo**: `single_choice`
- **Escopo**: `HH_OCC_PRIV_PERM_OR_IMP_052_505`
- **Universo**: `3.04 == 0`
- **Opções:**
  - `1` — SIM
  - `2` — NÃO

- **Observações**: se `SIM`, passe para `3.07`. Se `NÃO`, siga para `3.06`.
- **Routing**: `IF (3.05 == 1) THEN 3.07; ELSE 3.06`

## 3.06 — Utiliza sanitário ou buraco para dejeções, inclusive os localizados no terreno?

- **Tipo**: `single_choice`
- **Escopo**: `HH_OCC_PRIV_PERM_OR_IMP_052_505`
- **Universo**: `3.04 == 0 AND 3.05 == 2`
- **Opções:**
  - `1` — SIM
  - `2` — NÃO

- **Observações**: se `SIM`, passe para `3.08`. Se `NÃO`, siga para `3.09`.
- **Routing**: `IF (3.06 == 1) THEN 3.08; ELSE 3.09`

## 3.07 — Para onde vai o esgoto do banheiro?

- **Tipo**: `single_choice`
- **Escopo**: `HH_OCC_PRIV_PERM_OR_IMP_052_505`
- **Universo**: `3.04 > 0 OR 3.05 == 1`
- **Opções:**
  - `1` — REDE GERAL OU PLUVIAL
  - `2` — LIGADA À REDE
  - `3` — NÃO LIGADA À REDE
  - `4` — FOSSA RUDIMENTAR OU BURACO
  - `5` — VALA
  - `6` — RIO, LAGO, CÓRREGO OU MAR
  - `7` — OUTRA FORMA

- **Observações**: os códigos `2` e `3` aparecem no formulário sob a rubrica comum `FOSSA SÉPTICA OU FOSSA FILTRO`.
- **Routing**: `3.09`

## 3.08 — Para onde vai o esgoto do sanitário ou buraco para dejeções?

- **Tipo**: `single_choice`
- **Escopo**: `HH_OCC_PRIV_PERM_OR_IMP_052_505`
- **Universo**: `3.04 == 0 AND 3.05 == 2 AND 3.06 == 1`
- **Opções:**
  - `1` — REDE GERAL OU PLUVIAL
  - `2` — LIGADA À REDE
  - `3` — NÃO LIGADA À REDE
  - `4` — FOSSA RUDIMENTAR OU BURACO
  - `5` — VALA
  - `6` — RIO, LAGO, CÓRREGO OU MAR
  - `7` — OUTRA FORMA

- **Observações**: os códigos `2` e `3` aparecem no formulário sob a rubrica comum `FOSSA SÉPTICA OU FOSSA FILTRO`.
- **Routing**: `3.09`

## 3.09 — O lixo deste domicílio é:

- **Tipo**: `single_choice`
- **Escopo**: `HH_OCC_PRIV_PERM_OR_IMP_052_505`
- **Universo**: `NA`
- **Opções:**
  - `1` — COLETADO NO DOMICÍLIO POR SERVIÇO DE LIMPEZA
  - `2` — DEPOSITADO EM CAÇAMBA DE SERVIÇO DE LIMPEZA
  - `3` — QUEIMADO NA PROPRIEDADE
  - `4` — ENTERRADO NA PROPRIEDADE
  - `5` — JOGADO EM TERRENO BALDIO, ENCOSTA OU ÁREA PÚBLICA
  - `6` — OUTRO DESTINO

- **Observações**: `NA`
- **Routing**: `4.01`

# 4. Características adicionais do morador

Os blocos `4`, `5`, `6`, `7` e `9` são pessoa-específicos. O PDF identifica seus universos ("para todos os moradores", "para pessoas até 5 anos", "para todas as pessoas" etc.), mas não explicita um laço de retorno entre moradores; por isso, o routing abaixo registra apenas os desvios mostrados no formulário.

## 4.01 — A sua cor ou raça é:

- **Tipo**: `single_choice`
- **Escopo**: `HH_OCC`
- **Universo**: `NA`
- **Opções:**
  - `1` — BRANCA
  - `2` — PRETA
  - `3` — AMARELA
  - `4` — PARDA
  - `5` — INDÍGENA

- **Observações**: repetir o bloco `4` por morador.
- **Routing**: `IF (4.01 == 5) THEN 4.03; ELSE IF (AREA_IS_INDIGENOUS == 1) THEN 4.02; ELSE IF (AREA_IS_QUILOMBOLA == 1) THEN 4.06; ELSE IF (AGE_YEARS <= 5) THEN 5.01; ELSE 6.01`

## 4.02 — Você se considera indígena?

- **Tipo**: `single_choice`
- **Escopo**: `HH_OCC`
- **Universo**: `AREA_IS_INDIGENOUS == 1 AND 4.01 != 5`
- **Opções:**
  - `1` — SIM
  - `2` — NÃO

- **Observações**: repetir o bloco `4` por morador.
- **Routing**: `IF (4.02 == 1) THEN 4.03; ELSE IF (AREA_IS_QUILOMBOLA == 1) THEN 4.06; ELSE IF (AGE_YEARS <= 5) THEN 5.01; ELSE 6.01`

## 4.03 — Qual a sua etnia, povo ou grupo indígena?

- **Tipo**: `string`
- **Escopo**: `HH_OCC`
- **Universo**: `4.01 == 5 OR 4.02 == 1`
- **Opções**: `NA`
- **Observações**: o formulário permite especificar até dois registros; nesta transcrição, eles são mantidos como sub-itens. Repetir o bloco `4` por morador.
- **Routing**: `4.03.1`

### 4.03.1 — Etnia 1

- **Tipo**: `string`
- **Escopo**: `HH_OCC`
- **Universo**: `4.01 == 5 OR 4.02 == 1`
- **Opções**: `NA`
- **Observações**: abrir combo de etnias com 2 caracteres digitados. Repetir o bloco `4` por morador.
- **Routing**: `4.03.2`

### 4.03.2 — Etnia 2

- **Tipo**: `string`
- **Escopo**: `HH_OCC`
- **Universo**: `4.01 == 5 OR 4.02 == 1`
- **Opções**: `NA`
- **Observações**: abrir combo de etnias com 2 caracteres digitados. Repetir o bloco `4` por morador.
- **Routing**: `IF (AGE_YEARS >= 2) THEN 4.04; ELSE IF (AREA_IS_QUILOMBOLA == 1) THEN 4.06; ELSE 5.01`

## 4.04 — Fala língua indígena no domicílio?

- **Tipo**: `single_choice`
- **Escopo**: `HH_OCC`
- **Universo**: `4.01 == 5 OR 4.02 == 1`
- **Opções:**
  - `1` — SIM
  - `2` — NÃO

- **Observações**: considere também o uso de língua de sinais. Repetir o bloco `4` por morador.
- **Routing**: `IF (4.04 == 1) THEN 4.04.1.1; ELSE 4.05`

### 4.04.1 — Especifique a(s) língua(s) indígena(s) em até três registros

#### 4.04.1.1 — Língua indígena 1

- **Tipo**: `string`
- **Escopo**: `HH_OCC`
- **Universo**: `4.04 == 1`
- **Opções**: `NA`
- **Observações**: abrir combo de línguas indígenas com 2 caracteres digitados. Repetir o bloco `4` por morador.
- **Routing**: `4.04.1.2`

#### 4.04.1.2 — Língua indígena 2

- **Tipo**: `string`
- **Escopo**: `HH_OCC`
- **Universo**: `4.04 == 1`
- **Opções**: `NA`
- **Observações**: abrir combo de línguas indígenas com 2 caracteres digitados. Repetir o bloco `4` por morador.
- **Routing**: `4.04.1.3`

#### 4.04.1.3 — Língua indígena 3

- **Tipo**: `string`
- **Escopo**: `HH_OCC`
- **Universo**: `4.04 == 1`
- **Opções**: `NA`
- **Observações**: abrir combo de línguas indígenas com 2 caracteres digitados. Repetir o bloco `4` por morador.
- **Routing**: `4.05`

## 4.05 — Fala português no domicílio?

- **Tipo**: `single_choice`
- **Escopo**: `HH_OCC`
- **Universo**: `4.01 == 5 OR 4.02 == 1`
- **Opções:**
  - `1` — SIM
  - `2` — NÃO

- **Observações**: considere também o uso de língua brasileira de sinais. Repetir o bloco `4` por morador.
- **Routing**: `IF (AREA_IS_QUILOMBOLA == 1) THEN 4.06; ELSE IF (AGE_YEARS <= 5) THEN 5.01; ELSE 6.01`

## 4.06 — Você se considera quilombola?

- **Tipo**: `single_choice`
- **Escopo**: `HH_OCC`
- **Universo**: `AREA_IS_QUILOMBOLA == 1`
- **Opções:**
  - `1` — SIM
  - `2` — NÃO

- **Observações**: repetir o bloco `4` por morador.
- **Routing**: `IF (4.06 == 1) THEN 4.07; ELSE IF (AGE_YEARS <= 5) THEN 5.01; ELSE 6.01`

## 4.07 — Qual o nome da sua comunidade?

- **Tipo**: `string`
- **Escopo**: `HH_OCC`
- **Universo**: `4.06 == 1`
- **Opções**: `NA`
- **Observações**: abrir combo de comunidades quilombolas com 3 caracteres digitados. Repetir o bloco `4` por morador.
- **Routing**: `IF (AGE_YEARS <= 5) THEN 5.01; ELSE 6.01`

# 5. Registro civil (para pessoas até 5 anos de idade)

## 5.01 — Tem registro de nascimento

- **Tipo**: `single_choice`
- **Escopo**: `HH_OCC`
- **Universo**: `AGE_YEARS <= 5`
- **Opções:**
  - `1` — DO CARTÓRIO
  - `2` — REGISTRO ADMINISTRATIVO DE NASCIMENTO INDÍGENA (RANI)
  - `3` — NÃO TEM
  - `4` — NÃO SABE

- **Observações**: assinalar a primeira opção em que a pessoa se enquadrar, na ordem enumerada.
- **Routing**: `IF (1.11 == 6) THEN 9.01 ELSE 8.01`

# 6. Educação (para pessoas de 5 anos ou mais de idade)

## 6.01 — Sabe ler e escrever?

- **Tipo**: `single_choice`
- **Escopo**: `HH_OCC`
- **Universo**: `AGE_YEARS > 5`
- **Opções:**
  - `1` — SIM
  - `2` — NÃO

- **Observações**: o cabeçalho do bloco no PDF diz "para pessoas de 5 anos ou mais de idade", mas o desvio explícito do formulário aciona este bloco quando a idade é maior que `5`.
- **Routing**: `IF (2.06 == 01) OR (2.06 == 20 AND AGE_YEARS >= 12) THEN 7.01; ELSE IF (1.11 == 6) THEN 9.01 ELSE 8.01`

# 7. Trabalho e rendimento

Este bloco é apresentado no formulário como “apenas para pessoa responsável pelo domicílio”, mas o próprio routing do PDF também o aciona quando `2.06 == 20` e a pessoa tem `12` anos ou mais. Nesta transcrição, o universo segue literalmente a lógica de desvio indicada no bloco `6`.

## 7.01 — Qual era o rendimento bruto mensal normalmente recebido pelo responsável pelo domicílio?

- **Tipo**: `single_choice`
- **Escopo**: `HH_OCC`
- **Universo**: `(2.06 == 01) OR (2.06 == 20 AND AGE_YEARS >= 12)`
- **Opções:**
  - `1` — VALOR EM DINHEIRO, PRODUTOS OU MERCADORIAS
  - `2` — OUTRA FORMA (MORADIA, ALIMENTAÇÃO, TREINAMENTO ETC.)
  - `3` — NÃO TEM

- **Observações**: considere todos os rendimentos de trabalho, aposentadoria, Auxílio Brasil (antigo Bolsa Família) ou outra origem.
- **Routing**: `IF (7.01 == 1) THEN 7.01.1; ELSE IF (1.11 == 6) THEN 9.01 ELSE 8.01`

### 7.01.1 — Valor (R$)

- **Tipo**: `int`
- **Escopo**: `HH_OCC`
- **Universo**: `7.01 == 1`
- **Opções**: `NA`
- **Observações**: `NA`
- **Routing**: `7.01.2`

### 7.01.2 — Faixa de rendimento

- **Tipo**: `single_choice`
- **Escopo**: `HH_OCC`
- **Universo**: `7.01 == 1`
- **Opções:**
  - `1` — 1,00 A 500,00
  - `2` — 501,00 A 1.000,00
  - `3` — 1.001,00 A 2.000,00
  - `4` — 2.001,00 A 3.000,00
  - `5` — 3.001,00 A 5.000,00
  - `6` — 5.001,00 A 10.000,00
  - `7` — 10.001,00 A 20.000,00
  - `8` — 20.001,00 A 100.000
  - `9` — 100.001 OU MAIS

- **Observações**: `NA`
- **Routing**: `IF (1.11 == 6) THEN 9.01 ELSE 8.01`

# 8. Mortalidade (para domicílios particulares)

O PDF apresenta um único registro de óbito por vez e não explicita uma iteração para múltiplos registros.

## 8.01 — De janeiro de 2019 a julho de 2022, faleceu alguma pessoa que morava com você(s)?

- **Tipo**: `single_choice`
- **Escopo**: `HH_OCC_PRIV`
- **Universo**: `NA`
- **Opções:**
  - `1` — SIM
  - `2` — NÃO

- **Observações**: inclusive recém-nascidos e idosos.
- **Routing**: `IF (8.01 == 1) THEN 8.02.1; ELSE 9.01`

## 8.02.1 — Nome

- **Tipo**: `string`
- **Escopo**: `HH_OCC_PRIV`
- **Universo**: `8.01 == 1`
- **Opções**: `NA`
- **Observações**: `NA`
- **Routing**: `8.02.2`

## 8.02.2 — Sobrenome

- **Tipo**: `string`
- **Escopo**: `HH_OCC_PRIV`
- **Universo**: `8.01 == 1`
- **Opções**: `NA`
- **Observações**: `NA`
- **Routing**: `8.03`

## 8.03 — Mês e ano de falecimento

- **Tipo**: `single_choice`
- **Escopo**: `HH_OCC_PRIV`
- **Universo**: `8.01 == 1`
- **Opções:**
  - `1` — JULHO DE 2022
  - `2` — JUNHO DE 2022
  - `3` — MAIO DE 2022
  - `4` — ABRIL DE 2022
  - `5` — MARÇO DE 2022
  - `6` — FEVEREIRO DE 2022
  - `7` — JANEIRO DE 2022
  - `8` — DEZEMBRO DE 2021
  - `9` — NOVEMBRO DE 2021
  - `10` — OUTUBRO DE 2021
  - `11` — SETEMBRO DE 2021
  - `12` — AGOSTO DE 2021
  - `13` — JULHO DE 2021
  - `14` — JUNHO DE 2021
  - `15` — MAIO DE 2021
  - `16` — ABRIL DE 2021
  - `17` — MARÇO DE 2021
  - `18` — FEVEREIRO DE 2021
  - `19` — JANEIRO DE 2021
  - `20` — DEZEMBRO DE 2020
  - `21` — NOVEMBRO DE 2020
  - `22` — OUTUBRO DE 2020
  - `23` — SETEMBRO DE 2020
  - `24` — AGOSTO DE 2020
  - `25` — JULHO DE 2020
  - `26` — JUNHO DE 2020
  - `27` — MAIO DE 2020
  - `28` — ABRIL DE 2020
  - `29` — MARÇO DE 2020
  - `30` — FEVEREIRO DE 2020
  - `31` — JANEIRO DE 2020
  - `32` — DEZEMBRO DE 2019
  - `33` — NOVEMBRO DE 2019
  - `34` — OUTUBRO DE 2019
  - `35` — SETEMBRO DE 2019
  - `36` — AGOSTO DE 2019
  - `37` — JULHO DE 2019
  - `38` — JUNHO DE 2019
  - `39` — MAIO DE 2019
  - `40` — ABRIL DE 2019
  - `41` — MARÇO DE 2019
  - `42` — FEVEREIRO DE 2019
  - `43` — JANEIRO DE 2019

- **Observações**: o PDF mostra apenas os três primeiros e os três últimos meses, com elipse no meio; nesta transcrição, a sequência completa foi expandida editorialmente.
- **Routing**: `8.04`

## 8.04 — Sexo

- **Tipo**: `single_choice`
- **Escopo**: `HH_OCC_PRIV`
- **Universo**: `8.01 == 1`
- **Opções:**
  - `1` — MASCULINO
  - `2` — FEMININO

- **Observações**: `NA`
- **Routing**: `8.05`

## 8.05 — Idade ao falecer

- **Tipo**: `single_choice`
- **Escopo**: `HH_OCC_PRIV`
- **Universo**: `8.01 == 1`
- **Opções:**
  - `1` — FALECEU COM UM ANO OU MAIS DE IDADE
  - `2` — FALECEU COM MENOS DE UM ANO DE IDADE

- **Observações**: `NA`
- **Routing**: `IF (8.05 == 1) THEN 8.05.1; ELSE 8.05.2`

### 8.05.1 — Quantos anos tinha ao falecer?

- **Tipo**: `int`
- **Escopo**: `HH_OCC_PRIV`
- **Universo**: `8.01 == 1 AND 8.05 == 1`
- **Opções**: `NA`
- **Observações**: intervalo indicado no formulário: `1 a 140 anos`.
- **Routing**: `9.01`

### 8.05.2 — Quantos meses tinha ao falecer?

- **Tipo**: `int`
- **Escopo**: `HH_OCC_PRIV`
- **Universo**: `8.01 == 1 AND 8.05 == 2`
- **Opções**: `NA`
- **Observações**: intervalo indicado no formulário: `0 a 11 meses`.
- **Routing**: `9.01`

# 9. Prestação das informações

Bloco rotulado no PDF como "para todas as pessoas", com encerramento explícito do questionário ao final.

## 9.01 — Assinale quem prestou as informações desta pessoa:

- **Tipo**: `single_choice`
- **Escopo**: `HH_OCC`
- **Universo**: `NA`
- **Opções:**
  - `1` — A PRÓPRIA PESSOA
  - `2` — OUTRO MORADOR
  - `3` — NÃO MORADOR

- **Observações**: aplica-se a cada pessoa, conforme o título do bloco.
- **Routing**: `IF (9.01 == 2) THEN 9.02; ELSE END_INTERVIEW`

## 9.02 — Nome do outro morador

- **Tipo**: `string`
- **Escopo**: `HH_OCC`
- **Universo**: `9.01 == 2`
- **Opções**: `NA`
- **Observações**: aplica-se a cada pessoa, conforme o título do bloco.
- **Routing**: `END_INTERVIEW`

# 10. Dados de contato

Bloco administrativo exibido no formulário sem setas de ligação com os blocos substantivos; por isso, o routing dos campos abaixo foi mantido como `NA`.

## 10.01 — Nome

- **Tipo**: `string`
- **Escopo**: `HH_OCC`
- **Universo**: `NA`
- **Opções**: `NA`
- **Observações**: `NA`
- **Routing**: `NA`

## 10.02 — Email

- **Tipo**: `string`
- **Escopo**: `HH_OCC`
- **Universo**: `NA`
- **Opções**: `NA`
- **Observações**: `NA`
- **Routing**: `NA`

## 10.03 — Telefone

- **Tipo**: `single_choice`
- **Escopo**: `HH_OCC`
- **Universo**: `NA`
- **Opções:**
  - `1` — FIXO
  - `2` — MÓVEL
- **Observações**: indica o tipo do telefone informado em `10.03.1`.
- **Routing**: `NA`

## 10.03.1 — Número

- **Tipo**: `string`
- **Escopo**: `HH_OCC`
- **Universo**: `NA`
- **Opções**: `NA`
- **Observações**: número de telefone correspondente ao tipo indicado em `10.03`.
- **Routing**: `NA`

## 10.04 — CPF

- **Tipo**: `string`
- **Escopo**: `HH_OCC`
- **Universo**: `NA`
- **Opções**: `NA`
- **Observações**: `NA`
- **Routing**: `NA`
