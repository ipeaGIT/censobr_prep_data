# Censo Demográfico 2010 — Questionário Básico

## Descrição

Este arquivo é uma versão em Markdown do Questionário Básico do Censo de 2010. Como o arquivo original está em formato PDF, o objetivo da conversão é disponibilizar os dados em formato mais facilmente *machine-readable* para facilitar o uso por humanos e agentes de IA.

Arquivo gerado em: 2026-03-11.

Arquivo revisado em: 2026-04-23.

## Fonte de dados

A fonte principal desta transcrição é o PDF original do Questionário Básico do Censo Demográfico 2010, obtido a partir do [site do IBGE](https://censo2010.ibge.gov.br/images/pdf/censo2010/questionarios/questionario_basico_cd2010.pdf). Alternativamente, o download do PDF também pode ser feito pela função `questionnaire()`, do pacote [censobr](https://ipeagit.github.io/censobr/), disponível para R.

## Processamento

Esta transcrição usa o PDF como *ground truth* para o conteúdo substantivo do questionário, reorganizando seu conteúdo para torná-lo mais facilmente *machine-readable*. As subseções a seguir detalham as principais etapas da reorganização e padronização dos dados.

### Estrutura do questionário

- **Header 1**: Blocos do Questionário
 - **Header 2**: Itens de cada bloco
 - **Header 3**: Sub-itens de cada item (quando aplicável)



### Numeração dos itens

- Cada item está identificado por seu número original no PDF, como `2.04`, `6.021`, `6121` e `7.051`.
- A numeração segue o PDF, mesmo quando há lacunas ou saltos aparentes. Por exemplo, os itens `5.03` e `6.082` não existem.
- A grafia da numeração foi preservada como aparece no PDF, inclusive em casos sem ponto, como `6121`.
- Campos presentes no formulário, mas sem numeração própria no PDF, foram mantidos como nós nominais distintos: `Município (cabeçalho)`, `Posto de coleta`, `Localidade`, `CEP` e `Logradouro (endereço completo)`.

### Metadados

Cada **item** foi dividido em campos padronizados para explicitar seu conteúdo e o fluxo do questionário:

- **Tipo**: descreve o formato esperado da resposta.
  - `int`: Inteiro. 
  - `string`: Texto. 
  - `single_choice`: seleção de uma única resposta entre as opções disponíveis.

- **Escopo**: indica o tipo de domicílio ao qual o quesito se aplica.
  - `HH_OCC`: todos os domicílios ocupados (particulares e coletivos).
  - `HH_OCC_PRIV`: apenas domicílios particulares ocupados (permanentes e improvisados).
  - `HH_OCC_PRIV_PERM`: apenas domicílios particulares permanentes ocupados. 

- **Universo**: explicita a condição lógica sob a qual o quesito deve ser aplicado, isto é, o filtro que delimita quem deve responder a cada quesito, expresso como um teste lógico análogo ao routing. Caso não haja filtro, o valor do campo é `NA`. 
- **Opções**: lista de opções de respostas disponíveis para os itens do tipo `single_choice`. Para itens do tipo `int` e `string`, o valor é `NA`. 
- **Observações**: reúne instruções do formulário original ou esclarecimentos necessários para interpretar o quesito. Caso não haja observações, o campo assume valor `NA`.
- **Routing**: registra o próximo nó no fluxo do questionário, que pode ser outro quesito do formulário ou um nó de controle introduzido nesta documentação. Esse campo permite reconstruir o fluxo lógico do questionário. A próxima seção esclarece a implementação do routing.

### Implementação do routing

O campo **Routing** foi padronizado para registrar o próximo nó lógico do questionário após cada resposta. Nesta transcrição, ele segue as convenções abaixo:

- Quando o próximo passo é único, o campo registra apenas o próximo item, por exemplo: `2.02`.
- Quando o desvio depende da resposta, o campo registra uma expressão lógica simplificada com `IF ... THEN ... ELSE ...`.
- Quando o PDF contém campos sem numeração, eles são mantidos como nós nominais, por exemplo: `Município (cabeçalho)`, `Posto de coleta`, `Localidade`, `CEP` e `Logradouro (endereço completo)`.
- Quando o fluxo sai de um bloco repetido, usam-se nós de controle editoriais:
  - `END_EMIGRANT_RECORD`: encerra o registro corrente de emigrante. Se houver outra pessoa emigrada a informar, o fluxo retorna a `3.02`; caso contrário, segue para `4.01`.
  - `END_DEATH_RECORD`: encerra o registro corrente de óbito. Se houver outro óbito a informar, o fluxo retorna a `7.02`; caso contrário, segue para `END_INTERVIEW`.
  - `END_PERSON`: encerra o bloco da pessoa corrente. Se ainda houver morador sem questionário individual, reinicia-se o bloco 6 para o próximo morador; caso contrário, o fluxo segue para o próximo bloco aplicável do domicílio.
  - `END_INTERVIEW`: encerra a entrevista do domicílio.
- Em blocos repetidos, o **Routing** registra o próximo passo dentro de cada iteração; a regra de repetição do bloco é descrita no texto introdutório da seção correspondente.

### Intervenções editoriais

Além da reorganização em campos padronizados, esta transcrição adota algumas intervenções editoriais para tornar o formulário mais legível e tratável por máquina:

- campos sem numeração no PDF foram preservados como nós nominais (`Município (cabeçalho)`, `Posto de coleta`, `Localidade`, `CEP` e `Logradouro (endereço completo)`);
- a grafia original da numeração foi preservada, inclusive em casos sem ponto, como `6121`;
- listas graficamente abreviadas no formulário foram expandidas quando o conteúdo completo é inequívoco, como no quesito `7.03`;
- nós de controle e variáveis auxiliares foram introduzidos apenas para formalizar o fluxo do questionário.

### Variáveis derivadas e auxiliares

Alguns desvios do questionário dependem de variáveis que não aparecem como quesitos independentes no PDF, mas são necessárias para formalizar ou facilitar o fluxo: 

- `AGE_YEARS`: idade da pessoa em anos completos em 31 de julho de 2010.
  - Caso `6.021` e `6.022` tenham sido preenchidos, a variável é derivada desses dois itens.
  - Caso contrário, a variável é derivada de `6.031` (para pessoas com um ano ou mais) ou de `6.032` (para pessoas com menos de um ano).
- `TRACT_IS_INDIGENOUS`: variável binária que indica se o setor censitário pertence a terra indígena. Essa informação é necessária para interpretar os desvios de `6.04` a `6.10`, mas não está incluída no formulário por si só.
- `is_blank(.)`: função auxiliar usada apenas para formalizar saltos condicionados ao não preenchimento de um campo.


# 1. Identificação do domicílio

## Município (cabeçalho)

- **Tipo**: `string`
- **Escopo**: `HH_OCC`
- **Universo**: `NA`
- **Opções**: `NA`
- **Observações**: campo nominal não numerado no cabeçalho da primeira página.
- **Routing**: `Posto de coleta`

## Posto de coleta

- **Tipo**: `string`
- **Escopo**: `HH_OCC`
- **Universo**: `NA`
- **Opções**: `NA`
- **Observações**: campo nominal não numerado no cabeçalho da primeira página.
- **Routing**: `1.01`

## 1.01 — UF

- **Tipo**: `int`
- **Escopo:** `HH_OCC`
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
- **Routing**: `Localidade`

## Localidade

- **Tipo**: `string`
- **Escopo**: `HH_OCC`
- **Universo**: `NA`
- **Opções**: `NA`
- **Observações**: `NA`
- **Routing**: `CEP` 

## CEP

- **Tipo**: `string`
- **Escopo**: `HH_OCC`
- **Universo**: `NA`
- **Opções**: `NA`
- **Observações**: `NA`
- **Routing**: `Logradouro (endereço completo)`

## Logradouro (endereço completo)

- **Tipo**: `string`
- **Escopo**: `HH_OCC`
- **Universo**: `NA`
- **Opções**: `NA`
- **Observações**: `NA`
- **Routing**: `1.08` 

## 1.08 — Espécies de domicílio ocupado

- **Tipo**: `single_choice`
- **Escopo**: `HH_OCC`
- **Universo**: `NA`
- **Opções:**
  - `1` — DOMICÍLIO PARTICULAR PERMANENTE OCUPADO
  - `5` — DOMICÍLIO PARTICULAR IMPROVISADO OCUPADO
  - `6` — DOMICÍLIO COLETIVO COM MORADOR

- **Observações**: `NA`
- **Routing**: `1.09`



## 1.09 — Tipo 

- **Tipo**: `single_choice`
- **Escopo**: `HH_OCC`
- **Universo**: `NA`
- **Opções:**
  - `11` — CASA
  - `12` — CASA DE VILA OU EM CONDOMÍNIO
  - `13` — APARTAMENTO
  - `14` — HABITAÇÃO EM: CASA DE CÔMODOS, CORTIÇO OU CABEÇA DE PORCO
  - `15` — OCA OU MALOCA
  - `51` — TENDA OU BARRACA
  - `52` — DENTRO DO ESTABELECIMENTO
  - `53` — OUTRO (VAGÃO, TRAILER, GRUTA, ETC.)
  - `61` — ASILO, ORFANATO E SIMILARES COM MORADOR
  - `62` — HOTEL, PENSÃO E SIMILARES COM MORADOR
  - `63` — ALOJAMENTO DE TRABALHADORES COM MORADOR
  - `64` — PENITENCIÁRIA, PRESÍDIO OU CASA DE DETENÇÃO COM MORADOR
  - `65` — OUTRO COM MORADOR 

- **Observações**: a categoria `15` só foi disponibilizada em setores de terras indígenas. 
- **Routing**: `IF (1.08 == 1) THEN 2.01; ELSE IF (1.08 == 5) THEN 3.01; ELSE 4.01`

# 2. Características do domicílio (para domicílios particulares permanentes ocupados)

Resposta única para cada domicílio.


## 2.01 — Este domicílio é: 

- **Tipo**: `single_choice`
- **Escopo**: `HH_OCC_PRIV_PERM`
- **Universo**: `NA`
- **Opções:**
  - `1` — PRÓPRIO DE ALGUM MORADOR - JÁ PAGO
  - `2` — PRÓPRIO DE ALGUM MORADOR - AINDA PAGANDO
  - `3` — ALUGADO
  - `4` — CEDIDO POR EMPREGADOR
  - `5` — CEDIDO DE OUTRA FORMA
  - `6` — OUTRA CONDIÇÃO

- **Observações**: `NA`
- **Routing**: `2.02`

## 2.02 — Quantos banheiros de uso exclusivo dos moradores existem neste domicílio? 

- **Tipo**: `int`
- **Escopo**: `HH_OCC_PRIV_PERM`
- **Universo**: `NA`
- **Opções**: `NA`
- **Observações**: banheiro(s) com chuveiro (ou banheira) e vaso sanitário (ou privada), inclusive os localizados no terreno ou na propriedade. Se 9 ou mais, registre 9. Se não existir, registre 0 (zero).
- **Routing**: `IF (2.02 == 0) THEN 2.03 ELSE 2.04`

## 2.03 — Utiliza sanitário ou buraco para dejeções, inclusive os localizados no terreno ou na propriedade? 

- **Tipo**: `single_choice`
- **Escopo**: `HH_OCC_PRIV_PERM`
- **Universo**: `(2.02 == 0)`
- **Opções:**
  - `1` — SIM 
  - `2` — NÃO 

- **Observações**: deve ser cercado por paredes de qualquer material. Dependendo da região do país, sanitário pode ser conhecido como: casinha, patente, latrina privada, sentina, retrete, casa-de-força, cambrone.
- **Routing**: `IF (2.03 == 1) THEN 2.04; ELSE 2.05`

## 2.04 — O esgoto do banheiro ou sanitário é lançado (jogado) em: 

- **Tipo**: `single_choice`
- **Escopo**: `HH_OCC_PRIV_PERM`
- **Universo**: `2.02 > 0 OR 2.03 == 1`
- **Opções**:
  - `1` — REDE GERAL DE ESGOTO OU PLUVIAL
  - `2` — FOSSA SÉPTICA
  - `3` — FOSSA RUDIMENTAR
  - `4` — VALA
  - `5` — RIO, LAGO OU MAR
  - `6` — OUTRO

- **Observações**: `NA`
- **Routing**: `2.05` 

## 2.05 — A forma de abastecimento de água utilizada neste domicílio é: 

- **Tipo**: `single_choice`
- **Escopo**: `HH_OCC_PRIV_PERM`
- **Universo**: `NA`
- **Opções:**
  - `1` — REDE GERAL DE DISTRIBUIÇÃO
  - `2` — POÇO OU NASCENTE NA PROPRIEDADE
  - `3` — POÇO OU NASCENTE FORA DA PROPRIEDADE
  - `4` — CARRO-PIPA
  - `5` — ÁGUA DA CHUVA ARMAZENADA EM CISTERNA
  - `6` — ÁGUA DA CHUVA ARMAZENADA DE OUTRA FORMA
  - `7` — RIOS, AÇUDES, LAGOS E IGARAPÉS
  - `8` — OUTRA
  - `9` — POÇO OU NASCENTE NA ALDEIA
  - `10` — POÇO OU NASCENTE FORA DA ALDEIA

- **Observações**: as categorias `9` e `10` só foram disponibilizadas em setores de terras indígenas.
- **Routing**: `2.06`

## 2.06 — O lixo deste domicílio é: 

- **Tipo**: `single_choice`
- **Escopo**: `HH_OCC_PRIV_PERM`
- **Universo**: `NA`
- **Opções:**
  - `1` — COLETADO DIRETAMENTE POR SERVIÇO DE LIMPEZA
  - `2` — COLOCADO EM CAÇAMBA DE SERVIÇO DE LIMPEZA
  - `3` — QUEIMADO (Na propriedade)
  - `4` — ENTERRADO (Na propriedade)
  - `5` — JOGADO EM TERRENO BALDIO OU LOGRADOURO
  - `6` — JOGADO EM RIO, LAGO OU MAR
  - `7` — TEM OUTRO DESTINO
  - **Observações**: `NA`

- **Routing**: `2.07`

## 2.07 — Existe energia elétrica no domicílio? 

- **Tipo**: `single_choice`
- **Escopo**: `HH_OCC_PRIV_PERM`
- **Universo**: `NA`
- **Opções:**
  - `1` — SIM, DE COMPANHIA DISTRIBUIDORA
  - `2` — SIM, DE OUTRAS FONTES
  - `3` — NÃO EXISTE ENERGIA ELÉTRICA

- **Observações**: `NA`
- **Routing**: `IF (2.07 == 1) THEN 2.08; ELSE 3.01`

## 2.08 — Existe medidor ou relógio no domicílio? 

- **Tipo**: `single_choice`
- **Escopo**: `HH_OCC_PRIV_PERM`
- **Universo**: `(2.07 == 1)`
- **Opções:**
  - `1` — SIM, DE USO EXCLUSIVO
  - `2` — SIM, DE USO COMUM
  - `3` — NÃO TEM MEDIDOR OU RELÓGIO

- **Observações**: `NA`
- **Routing**: `3.01`

# 3. Emigração internacional (para domicílios particulares)

Caso `3.01 == 1`, os itens `3.02` a `3.06` se repetem para cada pessoa emigrada. Ao final de cada registro, se houver outra pessoa emigrada a ser informada, o fluxo retorna a `3.02`; caso contrário, segue para `4.01`.

## 3.01 — Alguma pessoa que morava com você(s) estava morando em outro país em 31 de julho de 2010? 

- **Tipo**: `single_choice`
- **Escopo**: `HH_OCC_PRIV`
- **Universo**: `NA`
- **Opções:**
  - `1` — SIM 
  - `2` — NÃO 

- **Observações**: `NA`
- **Routing**: `IF (3.01 == 1) THEN 3.02; ELSE 4.01`

## 3.02 — Nome

- **Tipo**: `string`
- **Escopo**: `HH_OCC_PRIV`
- **Universo**: `3.01 == 1`
- **Opções**: `NA`
- **Observações**: repetir os itens 3.02 a 3.06 por pessoa emigrada.
- **Routing**: `3.03`

## 3.03 — Sexo

- **Tipo**: `single_choice`
- **Escopo**: `HH_OCC_PRIV`
- **Universo**: `3.01 == 1`
- **Opções**: 
  - `1` — M
  - `2` — F

- **Observações**: repetir os itens 3.02 a 3.06 por pessoa emigrada.
- **Routing**: `3.04`

## 3.04 — Ano de nascimento

- **Tipo**: `int`
- **Escopo**: `HH_OCC_PRIV`
- **Universo**: `3.01 == 1`
- **Opções**: `NA`
- **Observações**: repetir os itens 3.02 a 3.06 por pessoa emigrada.
- **Routing**: `3.05`

## 3.05 — Ano da última partida para morar em outro país

- **Tipo**: `int`
- **Escopo**: `HH_OCC_PRIV`
- **Universo**: `3.01 == 1`
- **Opções**: `NA`
- **Observações**: repetir os itens 3.02 a 3.06 por pessoa emigrada.
- **Routing**: `3.06`

## 3.06 — País de residência em 31 de julho de 2010

- **Tipo**: `string`
- **Escopo**: `HH_OCC_PRIV`
- **Universo**: `3.01 == 1`
- **Opções**: `NA`
- **Observações**: repetir os itens 3.02 a 3.06 por pessoa emigrada.
- **Routing**: `END_EMIGRANT_RECORD`

# 4. Informações sobre moradores 

## 4.01 — Quantas pessoas moravam neste domicílio em 31 de julho de 2010?

- **Tipo**: `int`
- **Escopo**: `HH_OCC`
- **Universo**: `NA`
- **Opções**: `NA`
- **Observações**: para domicílios particulares e coletivos.
- **Routing**: `IF (1.08 == 6) THEN 5.01; ELSE 4.02`

## 4.02 — A responsabilidade pelo domicílio é de: 

- **Tipo**: `single_choice`
- **Escopo**: `HH_OCC_PRIV`
- **Universo**: `1.08 == 1 OR 1.08 == 5`
- **Opções:**
  - `1` — APENAS UM MORADOR
  - `2` — MAIS DE UM MORADOR

- **Observações**: somente para domicílios particulares. Pessoa Responsável pelo domicílio é aquela que é reconhecida como tal pelos demais moradores.
- **Routing**: `5.01`

# 5. Lista de moradores em 31 de julho de 2010

Os itens `5.01`, `5.02` e `5.04` se repetem para cada morador. O formulário original não apresenta o item `5.03`.

## 5.01 — Nome do morador

- **Tipo**: `string`
- **Escopo**: `HH_OCC`
- **Universo**: `NA`
- **Opções**: `NA`
- **Observações**: repetir itens 5.01-5.04 por morador.
- **Routing**: `5.02`

## 5.02 — Qual é a relação de parentesco ou de convivência com a pessoa responsável pelo domicílio? 

- **Tipo**: `single_choice`
- **Escopo**: `HH_OCC`
- **Universo**: `NA`
- **Opções**: 
  - `1` — PESSOA RESPONSÁVEL PELO DOMICÍLIO
  - `2` — CÔNJUGE OU COMPANHEIRO(A) DE SEXO DIFERENTE
  - `3` — CÔNJUGE OU COMPANHEIRO(A) DO MESMO SEXO
  - `4` — FILHO(A) DO RESPONSÁVEL E DO CÔNJUGE
  - `5` — FILHO(A) SOMENTE DO RESPONSÁVEL
  - `6` — ENTEADO(A)
  - `7` — GENRO OU NORA 
  - `8` — PAI, MÃE, PADRASTO OU MADRASTA
  - `9` — SOGRO(A)
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

- **Observações**: repetir itens 5.01-5.04 por morador.
- **Routing**: `5.04`

## 5.04 — Número de ordem

- **Tipo**: `int`
- **Escopo**: `HH_OCC`
- **Universo**: `NA`
- **Opções**: `NA`
- **Observações**: repetir bloco 5.01-5.04 por morador.
- **Routing**: `5.05`

## 5.05 — Todos os moradores do domicílio, inclusive ausentes, idosos e crianças, foram listados? 

- **Tipo**: `single_choice`
- **Escopo**: `HH_OCC`
- **Universo**: `NA`
- **Opções:**
  - `1` — SIM 
  - `2` — NÃO 

- **Observações**: pergunta de verificação após o preenchimento iterativo dos itens 5.01, 5.02 e 5.04 para todos os moradores listados.
- **Routing**: `IF (5.05 == 1) THEN 6.00; ELSE 5.01`

# 6. Características do morador

Os itens `6.00` a `6.14` se repetem para cada morador. Ao final de cada bloco individual (`END_PERSON`), se houver outro morador sem questionário individual preenchido, o fluxo retorna a `6.00`; caso contrário, o domicílio segue para o próximo bloco aplicável: `7.01` em domicílios particulares ou `END_INTERVIEW` em domicílios coletivos.

## 6.00 — Nome da pessoa

- **Tipo**: `string`
- **Escopo**: `HH_OCC`
- **Universo**: `NA`
- **Opções:** `NA`
- **Observações**: repetir todo o bloco 6 para cada morador.
- **Routing:** `6.01`

## 6.01 — Sexo

- **Tipo**: `single_choice`
- **Escopo**: `HH_OCC`
- **Universo**: `NA`
- **Opções:**
  - `1` — MASCULINO
  - `2` — FEMININO

- **Observações**: repetir todo o bloco 6 para cada morador.
- **Routing:** `6.02`

## 6.02 — Qual é o mês e o ano do seu nascimento?

### 6.021 — Mês

- **Tipo**: `int`
- **Escopo**: `HH_OCC`
- **Universo**: `NA`
- **Opções:** `NA`
- **Observações**: repetir todo o bloco 6 para cada morador.
- **Routing:** `6.022`

### 6.022 — Ano

- **Tipo**: `int`
- **Escopo**: `HH_OCC`
- **Universo**: `NA`
- **Opções:** `NA`
- **Observações**: repetir todo o bloco 6 para cada morador.
- **Routing:** `IF (is_blank(6.021) OR is_blank(6.022)) THEN 6.03; ELSE 6.04`

## 6.03 — Qual era a sua idade em 31 de julho de 2010? 

### 6.031 — Idade em anos

- **Tipo**: `int`
- **Escopo**: `HH_OCC`
- **Universo**: `is_blank(6.021) OR is_blank(6.022) `
- **Opções:** `NA`
- **Observações**: preencher somente para pessoas com um ano ou mais. Repetir todo o bloco 6 para cada morador.
- **Routing:** `IF (is_blank(6.031)) THEN 6.032; ELSE 6.04`

### 6.032 — Idade em meses

- **Tipo**: `int`
- **Escopo**: `HH_OCC`
- **Universo**: `(is_blank(6.021) OR is_blank(6.022)) AND is_blank(6.031)`
- **Opções:** `NA`
- **Observações**: preencher somente para pessoas com menos de um ano. Repetir todo o bloco 6 para cada morador.
- **Routing:** `6.04`

## 6.04 — A SUA COR OU RAÇA É:

- **Tipo**: `single_choice`
- **Escopo**: `HH_OCC`
- **Universo**: `NA`
- **Opções (PDF):**
  - `1` — BRANCA
  - `2` — PRETA
  - `3` — AMARELA
  - `4` — PARDA
  - `5` — INDÍGENA 
- **Observações**: repetir todo o bloco 6 para cada morador.
- **Routing**:
```
IF (6.04 == 5) THEN 6.06; ELSE IF (TRACT_IS_INDIGENOUS == 1 AND (6.04 >= 1 AND 6.04 <= 4)) THEN 6.05; ELSE IF (TRACT_IS_INDIGENOUS == 0 AND (6.04 >= 1 AND 6.04 <= 4) AND AGE_YEARS <= 10) THEN 6.10; ELSE 6.11
```

## 6.05 — Você se considera indígena? 

- **Tipo**: `single_choice`
- **Escopo**: `HH_OCC`
- **Universo**: `TRACT_IS_INDIGENOUS == 1 AND (6.04 >= 1 AND 6.04 <= 4)`
- **Opções:**
  - `1` — SIM
  - `2` — NÃO 

- **Observações**: repetir todo o bloco 6 para cada morador.
- **Routing**: `IF (6.05 == 1) THEN 6.06; ELSE IF (AGE_YEARS <= 10) THEN 6.10; ELSE 6.11`

## 6.06 — Qual é a sua etnia ou o povo a que pertence? 

- **Tipo**: `string`
- **Escopo**: `HH_OCC`
- **Universo**: `6.04 == 5 OR 6.05 == 1`
- **Opções**: `NA`
- **Observações**: repetir todo o bloco 6 para cada morador.
- **Routing**: `6.07`

## 6.07 — Fala língua indígena no domicílio? 

- **Tipo**: `single_choice`
- **Escopo**: `HH_OCC`
- **Universo**: `6.04 == 5 OR 6.05 == 1`
- **Opções:**
  - `1` — SIM
  - `2` — NÃO 

- **Observações**: considere também o uso da língua de sinais. Repetir todo o bloco 6 para cada morador.
- **Routing**: `IF (6.07 == 1) THEN 6.08; ELSE 6.09`

## 6.08 — Qual(is)? 

### 6.081 — Primeiro registro

- **Tipo**: `string`
- **Escopo**: `HH_OCC`
- **Universo**: `6.07 == 1`
- **Opções**: `NA`
- **Observações**: especifique as línguas, até dois registros. Repetir todo o bloco 6 para cada morador.
- **Routing**: `6.083`

### 6.083 — Segundo registro

- **Tipo**: `string`
- **Escopo**: `HH_OCC`
- **Universo**: `6.07 == 1`
- **Opções**: `NA`
- **Observações**: especifique as línguas, até dois registros. Repetir todo o bloco 6 para cada morador.
- **Routing**: `6.09`

## 6.09 — Fala português no domicílio? 

- **Tipo**: `single_choice`
- **Escopo**: `HH_OCC`
- **Universo**: `6.04 == 5 OR 6.05 == 1`
- **Opções**:
  - `1` — SIM
  - `2` — NÃO

- **Observações**: considere também o uso da língua de sinais. Repetir todo o bloco 6 para cada morador.
- **Routing**: `IF (AGE_YEARS <= 10) THEN 6.10; ELSE 6.11`

## 6.10 — Tem registro de nascimento

- **Tipo**: `single_choice`
- **Escopo**: `HH_OCC`
- **Universo**: `AGE_YEARS <= 10`
- **Opções:**
  - `1` — DO CARTÓRIO
  - `2` — DECLARAÇÃO DE NASCIDO VIVO (DNV) DO HOSPITAL OU DA MATERNIDADE
  - `3` — REGISTRO ADMINISTRATIVO DE NASCIMENTO INDÍGENA (RANI)
  - `4` — NÃO TEM
  - `5` — NÃO SABE

- **Observações**: a categoria `3` só é aplicável para quem se declarar ou se considerar indígena. Repetir todo o bloco 6 para cada morador.
- **Routing**: `IF (AGE_YEARS >= 5) THEN 6.11; ELSE 6.13`

## 6.11 — Sabe ler e escrever? 

- **Tipo**: `single_choice`
- **Escopo**: `HH_OCC`
- **Universo**: `AGE_YEARS >= 5`
- **Opções:**
  - `1` — SIM
  - `2` — NÃO

- **Observações**: repetir todo o bloco 6 para cada morador.
- **Routing**: `IF (AGE_YEARS >= 10) THEN 6.12; ELSE 6.13`

## 6.12 — Qual era o seu rendimento mensal total em julho de 2010? 

- **Tipo**: `single_choice`
- **Escopo**: `HH_OCC`
- **Universo**: `AGE_YEARS >= 10`
- **Opções:**
  - `1` — EM DINHEIRO, PRODUTOS OU MERCADORIAS
  - `2` — SOMENTE EM BENEFÍCIOS (MORADIA, ALIMENTAÇÃO, TREINAMENTO, ETC.)
  - `0` — NÃO TEM 

- **Observações**: devem ser somados todos os rendimentos mensais de trabalhos e de outras fontes da pessoa. Repetir todo o bloco 6 para cada morador.
- **Routing**: `IF (6.12 == 1) THEN 6121; ELSE 6.13`


### 6121 — Valor em reais recebido

- **Tipo**: `int`
- **Escopo**: `HH_OCC`
- **Universo**: `6.12 == 1`
- **Opções**: `NA`
- **Observações**: repetir todo o bloco 6 para cada morador.
- **Routing**: `6.13`

## 6.13 — Assinale quem prestou as informações desta pessoa: 

- **Tipo**: `single_choice`
- **Escopo**: `HH_OCC`
- **Universo**: `NA`
- **Opções:**
  - `1` — A PRÓPRIA PESSOA
  - `2` — OUTRO MORADOR
  - `3` — NÃO MORADOR 

- **Observações**: repetir todo o bloco 6 para cada morador.
- **Routing**: `IF (6.13 == 2) THEN 6.14; ELSE END_PERSON`

## 6.14 — Nome do outro morador que prestou as informações desta pessoa:

- **Tipo**: `string`
- **Escopo**: `HH_OCC`
- **Universo**: `6.13 == 2`
- **Opções**: `NA`
- **Observações**: repetir todo o bloco 6 para cada morador.
- **Routing**: `END_PERSON`

# 7. Mortalidade (para domicílios particulares)

Caso `7.01 == 1`, os itens `7.02` a `7.052` se repetem por óbito registrado. Ao final de cada registro, se houver outro óbito a informar, o fluxo retorna a `7.02`; caso contrário, segue para `END_INTERVIEW`.

## 7.01 — De agosto de 2009 a julho de 2010, faleceu alguma pessoa que morava com você(s)? 

- **Tipo**: `single_choice`
- **Escopo**: `HH_OCC_PRIV`
- **Universo**: `NA`
- **Opções**:
  - `1` — SIM 
  - `2` — NÃO 

- **Observações**: inclusive crianças recém-nascidas e idosos.
- **Routing**: `IF (7.01 == 1) THEN 7.02; ELSE END_INTERVIEW` 

## 7.02 — Nome

- **Tipo**: `string`
- **Escopo**: `HH_OCC_PRIV`
- **Universo**: `7.01 == 1`
- **Opções**: `NA`
- **Observações**: repetir os itens 7.02 a 7.052 por cada óbito.
- **Routing**: `7.03`

## 7.03 — Mês e ano de falecimento

- **Tipo**: `single_choice`
- **Escopo**: `HH_OCC_PRIV`
- **Universo**: `7.01 == 1`
- **Opções**:
  - `1` — Agosto de 2009
  - `2` — Setembro de 2009
  - `3` — Outubro de 2009
  - `4` — Novembro de 2009
  - `5` — Dezembro de 2009
  - `6` — Janeiro de 2010
  - `7` — Fevereiro de 2010
  - `8` — Março de 2010
  - `9` — Abril de 2010
  - `10` — Maio de 2010
  - `11` — Junho de 2010
  - `12` — Julho de 2010

- **Observações**: repetir os itens 7.02 a 7.052 por cada óbito. No PDF, a lista mensal aparece abreviada graficamente no miolo; aqui ela foi expandida editorialmente para registrar explicitamente todos os meses entre agosto de 2009 e julho de 2010.
- **Routing**: `7.04`

## 7.04 — Sexo

- **Tipo**: `single_choice`
- **Escopo**: `HH_OCC_PRIV`
- **Universo**: `7.01 == 1`
- **Opções**:
  - `1` — M
  - `2` — F

- **Observações**: repetir os itens 7.02 a 7.052 por cada óbito.
- **Routing**: `7.051`

## 7.05 — Idade ao falecer

### 7.051 — Idade em anos 

- **Tipo**: `int`
- **Escopo**: `HH_OCC_PRIV`
- **Universo**: `7.01 == 1`
- **Opções**: `NA`
- **Observações**: somente preencher para quem tinha um ano ou mais na data do óbito. Repetir os itens 7.02 a 7.052 por cada óbito.
- **Routing**: `IF (is_blank(7.051)) THEN 7.052; ELSE END_DEATH_RECORD`

### 7.052 — Idade em meses

- **Tipo**: `int`
- **Escopo**: `HH_OCC_PRIV`
- **Universo**: `7.01 == 1`
- **Opções**: `NA`
- **Observações**: somente preencher para quem tinha menos de um ano na data do óbito. Repetir os itens 7.02 a 7.052 por cada óbito.
- **Routing**: `END_DEATH_RECORD`
