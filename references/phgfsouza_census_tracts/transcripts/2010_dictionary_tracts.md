# Base de Informações do Censo Demográfico 2010: Resultados do Universo por Setor Censitário


## Descrição

Este arquivo é uma versão em Markdown da documentação da base de dados agregada por setor censitário do Censo de 2010. Como o arquivo original está em formato PDF, o objetivo da conversão é disponibilizar os dados em formato mais facilmente *machine-readable* para facilitar o uso por humanos e agentes de IA.

- Gerado em:  2026-03-04 

  

## Fonte de dados

O arquivo original foi acessado a partir do [FTP do IBGE](https://ftp.ibge.gov.br/Censos/Censo_Demografico_2010/Resultados_do_Universo/Agregados_por_Setores_Censitarios/Documentacao_Agregado_dos_Setores_2010_20231030.zip). Alternativamente, o download do PDF também pode ser feito pela função `data_dictionary()`, do pacote [censobr](https://ipeagit.github.io/censobr/), disponível para R.

## Processamento

O conteúdo foi extraído via ChatGPT 5.2 Thinking, com ajustes manuais posteriores. A documentação original foi preservada,  **exceto** nos seguintes casos:

* **Seção 3**: 
	* Notas de rodapé no PDF original transformadas em ``blockquote`` ao fim da seção

* **Seção 5**:
	* Inserção do código V1005 no título da subseção dedicada ao código de situação do setor

* **Seção 6**

  * Títulos das subseções encurtados, com referências às fontes de dados movidas para o corpo das subseções
  * Subseções divididas em blocos (*Fonte de dados* e *Dicionário de dados*)
  * Títulos das colunas com os dicionários de dados  padronizados  (*Nome da variável* e *Descrição da variável*)
  * Variável *Código de situação do setor*, que aparece com diversos nomes no PDF original  padronizada  com o nome *V1005*.
  * Correção de nomes de variáveis devido a erros de digitação no PDF original (e.g., *Cod\_seto* na p. 10; *V02* na p. 76)
  

#  Sumário


1. [Introdução](#intro)
2. [Notas técnicas](#notas)
3. [Organização do arquivo da base de informações por setor censitário](#organizacao)
4. [Proteção dos dados dos informantes](#protecao)
5. [Cadastro de áreas e identificação dos itens geográficos](#cadastro)
6. [Relação das variáveis das planilhas](#dicionarios)
7. [Representação tabular das variáveis](#tabular)
8. [Referências](#referencias)


# 1\. Introdução {#intro}

O Censo Demográfico é a mais complexa operação estatística realizada por um país, quando são investigadas as características de toda a população e dos domicílios do Território Nacional.

Os Censos Demográficos, por pesquisarem todos os domicílios do País, constituem a única fonte de referência para o conhecimento das condições de vida da população em todos os municípios e em seus recortes territoriais internos - distritos, subdistritos, bairros e classificação de acordo com a localização dos domicílios em áreas urbanas ou rurais.

Os dados deste arquivo, por setor censitário, compreendem características dos domicílios particulares e das pessoas que foram investigadas para a totalidade da população e são denominados, por convenção, resultados do universo. Estes dados foram obtidos reunindo informações captadas por meio da investigação das características dos domicílios e das pessoas, que são comuns aos dois tipos de questionários utilizados para o levantamento do Censo Demográfico 2010 e que são:

* **Questionário Básico** - aplicado em todas as unidades domiciliares, exceto naquelas selecionadas para a amostra, e que contém a investigação das características do domicílio e dos moradores; e
* **Questionário da Amostra** - aplicado em todas as unidades domiciliares selecionadas para a amostra. Além da investigação contida no Questionário Básico, abrange outras características do domicílio e pesquisa importantes informações sociais, econômicas e demográficas dos seus moradores.

O setor censitário é a menor unidade territorial, formada por área contínua, integralmente contida em área urbana ou rural, com dimensão adequada à operação de pesquisas e cujo conjunto esgota a totalidade do Território Nacional, o que permite assegurar a plena cobertura do País.

Por esta razão, os arquivos com dados agregados por setor censitário foram originalmente concebidos como cadastros básicos de áreas para a seleção de amostras para as pesquisas domiciliares. Tinham, portanto, as variáveis de descrição da divisão territorial brasileira e algumas variáveis de porte ou tamanho dos setores, para estratificação dos setores e seleção de amostras com probabilidades desiguais (amostras com probabilidade proporcional a uma medida de tamanho do setor), além de variâncias de algumas variáveis para facilitar a determinação do tamanho das amostras. A partir do Censo Demográfico 1991, estes arquivos passaram a incorporar mais variáveis em nível de setor, como forma de produzir rapidamente resultados para subdivisões geográficas não atendidas pelas publicações do censo.

Para o Censo Demográfico 2000, o IBGE produziu um primeiro arquivo agregado com base nos dados da Sinopse Preliminar. Posteriormente, com a conclusão dos trabalhos de crítica dos dados de universo do Censo Demográfico 2000, o IBGE produziu a primeira edição do arquivo agregado por setores, com 527 variáveis sobre características dos domicílios, dos seus responsáveis e das pessoas residentes, sem cruzamento dos quesitos do questionário básico do Censo Demográfico 2000, com exceção do sexo. A segunda edição do arquivo Agregado por Setores Censitários dos Resultados do Universo foi gerada a partir dos microdados do universo do Censo Demográfico 2000 e é composta por planilhas para cada Unidade da Federação, abrangendo mais de 3.200 variáveis.

Para o Censo Demográfico 2010, foi produzido o primeiro arquivo com dados em nível de setor censitário, contendo os resultados para as mesmas variáveis que foram divulgadas na Sinopse, em abril de 2011.

Esta é a primeira edição desse arquivo, agora com resultados definitivos do Conjunto Universo, contendo os resultados para as mesmas variáveis que foram divulgadas na publicação “Censo Demográfico 2010 - Características da população e dos domicílios - Resultados do universo“, em novembro de 2011, em nível de Grandes Regiões, Unidades da Federação, Municípios, Distritos, Subdistritos, Bairros e Regiões Metropolitanas. Estão previstas outras edições desse arquivo para incorporar as variáveis sobre rendimentos das pessoas e dos domicílios, tipologia do setor censitário e características do entorno dos domicílios urbanos, após o término das etapas de apuração desses resultados.

Além das variáveis de identificação geográfica (Grandes Regiões, Unidades da Federação, Mesorregião, Microrregião, Região Metropolitana ou RIDE, Município, Distrito, Subdistrito, Bairro, Setor, Situação do Setor e Tipo do Setor), as informações em nível de setor estão distribuídas em planilhas, uma por Unidades da Federação, com cerca de 3.000 variáveis, que abrangem as seguintes características da população residente: sexo, idade, cor ou raça, condição no domicílio; pessoas responsáveis pelo domicílio; alfabetização; registro de nascimento das crianças de até 10 anos de idade; e  características dos domicílios particulares.

Complementa este produto de disseminação uma planilha com a descrição dos setores para cada Unidade da Federação.

Além disto, esta documentação inclui informações gerais sobre o Censo Demográfico 2010; sobre a organização do arquivo; sobre as técnicas de supressão de dados aplicadas para proteção dos dados dos informantes, bem como a relação das variáveis.

# 2\. Notas Técnicas {#notas}

## 2.1. Fundamento legal e sigilo das informações {#fundamento}

O Censo Demográfico 2010 segue os princípios normativos determinados na Lei nº 5.534, de 14 de novembro de 1968. Conforme esta lei, as informações são confidenciais e obrigatórias, destinam-se exclusivamente a fins estatísticos e não podem ser objeto de certidão e nem ter eficácia jurídica como meio de prova.

Já a periodicidade dos Censos Demográficos é regulamentada pela Lei nº 8.184, de 10 de maio de 1991, que estabelece um máximo de dez anos para o intervalo intercensitário.

## 2.2. O Censo 2010 no contexto internacional {#contexto}

Na fase de planejamento do Censo Demográfico 2010, o Brasil participou como membro do Grupo de Especialistas das Nações Unidas responsável pelo Programa Mundial sobre Censos de População e Habitação da rodada de 2010, com o objetivo de revisar e adotar um conjunto de princípios e recomendações em padrões internacionais para os Censos de População. Como parte do processo de revisão, a Divisão de Estatística das Nações Unidas organizou três reuniões do Grupo de Especialistas e, com base em discussões e deliberações, o documento Principles and recommendations for population and housing censuses: revision 2 foi finalizado e aprovado na 37ª sessão da Comissão de Estatística das Nações Unidas, em 2008. O Brasil participou da redação da segunda parte do referido documento que aborda os tópicos a serem investigados nos Censos de População e de Habitação. O documento contém os principais padrões e orientações internacionais, resultado de ampla consulta e de contribuições dadas por especialistas de outros institutos nacionais de estatística, do mundo por meio de mecanismos desenvolvidos e mantidos pela Divisão de Estatísticas das Nações Unidas, levando em consideração as características regionais. Esta experiência foi amplamente discutida e considerada no planejamento do Censo brasileiro.

Cabe destacar a cooperação técnica com o U.S. Census Bureau, ao qual o IBGE realizou uma visita técnica em Austin, Texas, com a finalidade de acompanhar o trabalho de campo da prova-piloto do Censo 2010 dos Estados Unidos para conhecer a organização e as diversas tarefas relacionadas com a operação de campo, em particular as equipes de coordenação, controle de qualidade, treinamento e tecnologia. Esse acompanhamento foi importante para o IBGE, porque o trabalho de coleta da referida provas-piloto foi realizado com computador de mão, tecnologia incorporada na Contagem da População 2007 e no Censo Demográfico 2010 realizado no Brasil.

O País, como membro do Grupo de Washington sobre Estatísticas das Pessoas com Deficiência (Washington Group on Disability Statistics - GW), que tem como objetivo padronizar o levantamento das estatísticas das pessoas com deficiência, tanto nos censos populacionais como em outras pesquisas domiciliares, foi sede de dois eventos internacionais do GW em 2005: o Segundo Encontro Regional (América Latina e Caribe) e o Quinto Encontro do GW, com o objetivo de discutir a incorporação da temática, e a realização de testes cognitivos e provas piloto das perguntas sobre o tema nos censos da região.

Os dois eventos, realizados no Rio de Janeiro, contaram com o apoio da Coordenadoria Nacional para a Integração da Pessoa Portadora de Deficiência - Corde da Secretaria de Direitos Humanos, atualmente, Secretaria Nacional de Promoção dos Direitos da Pessoa com Deficiência e com a participação da Organização Mundial de Saúde - OMS, de representantes dos institutos nacionais de estatística de mais de 40 países, e de outras organizações internacionais.

O Censo Comum do MERCOSUL tem como objetivo obter informações harmonizadas, integradas e comparáveis, sobre as características da população e dos domicílios, para o diagnóstico demográfico e social dos países-membros e associados como Chile, Bolívia, México, Equador e Venezuela. Considerado modelo de cooperação técnica horizontal em nível mundial, o projeto teve como meta incorporar, na rodada de Censos 2010, as variáveis relativas às pessoas com deficiência, às populações indígenas e à migração internacional, com ênfase na migração na fronteira entre os países da região. Para esse fim, foram realizadas, pela Argentina, Brasil e Paráguai, a I Prova-Piloto Conjunta sobre Pessoas com Deficiência e a II Prova-Piloto Conjunta sobre Migração Internacional, em 2006 e 2007, respectivamente. Em 2008, o Brasil e o Paráguai realizaram a III Prova-Piloto Conjunta sobre Populações Indígenas, continuando com a modalidade utilizada com sucesso para as variáveis harmonizadas na década de 2000. Esta modalidade de cooperação contou com a participação de diversos representantes de institutos nacionais de estatística e organismos internacionais como observadores.

O Brasil realizou um trabalho intenso de intercâmbio de experiências nas áreas de
Tecnologia da Informação e Cartografia no Censo 2010 com países como Estados Unidos
da América, Canadá, Austrália, Cabo Verde, entre outros.

## 2.3. Base territorial {#base}

Base territorial é a denominação dada ao sistema integrado de mapas, cadastros e banco de dados, construído segundo a metodologia própria para dar organização e sustentação espacial às atividades de planejamento operacional, coleta e apuração de dados e divulgação de resultados do censo demográfico.

O setor censitário é a unidade territorial de controle cadastral da coleta, constituída por áreas contíguas, respeitando-se os limites da divisão político-administrativa, do quadro urbano e rural legal e de outras estruturas territoriais de interesse, além dos parâmetros de dimensão mais adequados à operação de coleta.

O planejamento da base territorial consiste em processos de análise dos mapas e cadastros alfanuméricos que registram todo o histórico das malhas setoriais dos censos anteriores. O objetivo principal da base territorial do Censo Demográfico 2010 foi possibilitar a cobertura integrada de todo o território e ampliar as possibilidades de disseminação de informações à sociedade. Sua preparação levou em conta a oferta de infraestrutura cadastral e de mapeamento para a coleta dos dados do censo, e a necessidade de atender às demandas dos setores público e privado por informações georreferenciadas no nível de setor censitário.

Nesse sentido, o IBGE promoveu um amplo programa para a construção de cadastros territoriais e mapas digitais referentes aos municípios, às localidades e aos setores censitários, que incluiu o estabelecimento de parcerias com órgãos produtores e usuários de mapeamento, campanhas de campo para atualização da rede viária, da rede hidrográfica, da toponímia em geral, dos limites dos municípios, distritos, subdistritos, bairros e outros, assim como a definição dos limites dos novos setores adequados ao território atualizado.

A base territorial do Censo Demográfico 2010 foi elaborada de forma a integrar a representação espacial das áreas urbana e rural do Território Nacional em um ambiente de banco de dados geoespaciais, utilizando insumos e modernos recursos de tecnologia da informação.

Como insumo, entende-se todo o conjunto de dados gráficos (arquivos vetoriais e imagens orbitais disponíveis com diversas resoluções) e alfanuméricos que foram preparados pela Rede de Agências e Unidades Estaduais do IBGE, coordenados pelas equipes técnicas da Sede no Rio de Janeiro.  Foram desenvolvidas aplicações e softwares para a elaboração da base territorial visando atender aos objetivos específicos deste projeto, dentre os quais se destacaram o ajuste da geometria da malha dos setores urbanos, adaptando-a à malha dos setores rurais com a utilização de imagens orbitais, o ajuste da malha de arruamento urbano com a codificação das faces de quadra e a associação do elemento gráfico que representa a face de quadra com o Cadastro Nacional de Endereços para Fins Estatísticos - Cnefe.

O Cnefe, atualizado a partir dos registros de unidades recenseadas em 2010, compreende os endereços de todas as unidades registradas pelos recenseadores durante o trabalho de coleta das informações (domicílios e unidades não residenciais).

## 2.4. Divisão territorial {#div_territorial}

### 2.4.1. Divisão político-administrativa

A organização político-administrativa da República Federativa do Brasil compreende a União, o Distrito Federal, os estados e os municípios, todos autônomos nos termos da Constituição Federal de 1988.

#### Distrito Federal

É a unidade autônoma onde tem sede o Governo Federal com seus poderes Executivo, Legislativo e Judiciário. Tem as mesmas competências legislativas reservadas aos estados e municípios, e é regido por Lei Orgânica, sendo vedada sua divisão em municípios.

Brasília é a Capital Federal.

#### Estados

Os estados constituem as unidades de maior hierarquia dentro da organização político-administrativa do País. São subdivididos em municípios e podem ser incorporados entre si, subdivididos ou desmembrados para serem anexados a outros, ou formarem novos estados ou territórios federais, mediante aprovação da população diretamente interessada, através de plebiscito, e do Congresso Nacional, por lei complementar. Organizam-se e regem-se por constituições e leis próprias, observados os princípios da Constituição Federal.

A localidade que abriga a sede do governo denomina-se Capital.

#### Municípios

Os municípios constituem as unidades autônomas de menor hierarquia dentro da organização político-administrativa do Brasil. Sua criação, incorporação, fusão ou desmembramento dependem de leis estaduais, que devem observar o período determinado por lei complementar federal e a necessidade de consulta prévia, mediante plebiscito, às populações envolvidas, após divulgação dos estudos de viabilidade municipal, apresentados e publicados na formada lei. Os municípios são regidos por leis orgânicas, observados os princípios estabelecidos na Constituição Federal e na constituição do estado onde se situam, e podem criar, organizar e suprimir distritos.

A localidade onde está sediada a Prefeitura Municipal tem a categoria de Cidade.

#### Distritos

São unidades administrativas dos municípios. Sua criação, desmembramento ou fusão dependem de leis municipais, que devem observar a continuidade territorial e os requisitos previstos em lei complementar estadual. Podem ser subdivididos em unidades administrativas denominadas subdistritos, regiões administrativas, zonas ou outra denominação específica.

A localidade onde está sediada a autoridade distrital, excluídos os distritos das sedes municipais, tem a categoria de Vila. Observa-se que nem todas as vilas criadas pelas legislações municipais possuem ocupação urbana. Na ocorrência desses casos, tais vilas não foram isoladas em setores urbanos no Censo 2010.

#### Subdistritos

São unidades administrativas municipais, normalmente estabelecidas nas grandes cidades, criadas através de leis ordinárias das Câmaras Municipais e sancionadas pelo prefeito. Bairros Bairros são subdivisões intraurbanas legalmente estabelecidas através de leis ordinárias das Câmaras Municipais e sancionadas pelo Prefeito.

#### Bairros

Bairros são subdivisões intraurbanas legalmente estabelecidas através de leis ordinárias das Câmaras Municipais e sancionadas pelo Prefeito.

#### Regiões Metropolitanas

A Constituição Federal de 1988 facultou aos estados a instituição de Regiões Metropolitanas, “constituídas por agrupamentos de municípios limítrofes, com o objetivo de integrar a organização, o planejamento e a execução de funções públicas de interesse comum” (Art. 25, § 3o). Assim, a partir de 1988, as Unidades da Federação, buscando solucionar problemas de gestão do território estadual, definiram novas Regiões Metropolitanas, criadas por lei complementar estadual.

As Regiões Metropolitanas constituem um agrupamento de municípios com a finalidade de executar funções públicas que, por sua natureza, exigem a cooperação entre estes municípios para a solução de problemas comuns, como os serviços de saneamento básico e de transporte coletivo, o que legitima, em termos políticos-institucionais, sua existência, além de permitir uma atuação mais integrada do poder público no atendimento às necessidades da população ali residente, identificada com o recorte territorial institucionalizado.

Cabe ressaltar que no caso das Regiões Metropolitanas o próprio limite político-administrativo dos municípios que as compõem baliza esses espaços institucionais.

Nesta publicação considera-se que a Região Metropolitana de Manaus compreende apenas e tão somente os municípios reconhecidos pela decisão da Justiça do Estado do Amazonas, publicada em 08.11.2010, no Diário da Justiça Eletrônico de Manaus, Ano III, Edição 624, segundo a qual os municípios de Autazes, Careiro, Itapiranga, Manaquiri e Silves foram excluídos da composição da referida Região Metropolitana.

#### Regiões Integradas de Desenvolvimento (RIDE)

A criação de Regiões Integradas de Desenvolvimento está prevista na Constituição Federal de 1988, nos Art. 21, inciso IX; Art. 43; e Art. 48, inciso IV. São conjuntos de municípios cuja origem baseia-se no princípio de cooperação entre os diferentes níveis de governo - federal, estadual e municipal. Podem ser compostas por municípios de diferentes Unidades Federadas.

### 2.4.2. Divisão regional

Como parte de sua Missão Institucional, o IBGE tem como atribuição elaborar divisões regionais do território brasileiro, com a finalidade de atualizar o conhecimento regional do mesmo e viabilizar a definição de uma base territorial para fins de levantamento e divulgação de dados estatísticos.

A divisão regional constitui uma tarefa de caráter científico e, desse modo, está sujeita às mudanças ocorridas no campo teórico-metodológico da Geografia, que afetam o próprio conceito de região. Assim, as revisões periódicas dos diversos modelos de divisão regional adotados pelo IBGE foram estabelecidas com base em diferentes abordagens conceituais, visando traduzir, ainda que de maneira sintética, a diversidade natural, cultural, econômica, social e política coexistente no Território Nacional.

No IBGE, as divisões regionais se estabeleceram em diversas escalas de abrangência ao longo do tempo, conduzindo, em 1942, à agregação de Unidades Federadas em Grandes Regiões definidas pelas características físicas do território brasileiro e institucionalizadas com as denominações de: Região Norte, Região Meio-Norte, Região Nordeste Ocidental, Região Nordeste Oriental, Região Leste Setentrional, Região Leste Meridional, Região Sul e Região Centro-Oeste.

Em conseqüência das transformações ocorridas no espaço geográfico brasileiro, nas décadas de 1950 e 1960, uma nova divisão em Macrorregião foi elaborada em 1970, introduzindo conceitos e métodos reveladores da importância crescente da articulação econômica e da estrutura urbana na compreensão do processo de organização do espaço brasileiro, do que resultaram as seguintes denominações: Região Norte, Região Nordeste, Região Sudeste, Região Sul e Região Centro-Oeste, que permanecem em vigor até o momento atual.

Quanto às divisões regionais produzidas em escala mais detalhada, o IBGE delimitou, em 1945, a divisão do País em Zonas Fisiográficas, pautada predominantemente nas características do meio físico como elemento diferenciador do quadro regional brasileiro. Tal divisão representou não só um período no qual se tornava necessário o aprofundamento do conhecimento do Território Nacional, como, conceitualmente, reafirmava o predomínio, em meados do Século XX, da noção de “região natural” na compreensão do espaço geográfico, em um momento em que a questão regional ainda era entendida, em grande medida, como diferenças existentes nos elementos físicos do território. Essa regionalização perdurou até 1968, quando foi feita nova proposta de divisão regional denominada Microrregiões Homogêneas, definidas a partir da organização do espaço produtivo e das teorias de localização dos polos de desenvolvimento, identificando a estrutura urbano-industrial enquanto elemento estruturante do espaço regional brasileiro.

Em 1976, dada a necessidade de se ter um nível de agregação espacial intermediário entre as Grandes Regiões e as Microrregiões Homogêneas, foram definidas as Mesorregiões por agrupamento de Microrregiões.

Finalmente, em 1990, a Presidência do IBGE aprovou a atualização da Divisão Regional do Brasil em Microrregiões Geográficas, tendo por base um modelo conceitual fundamentado na premissa de que o desenvolvimento capitalista de produção teria afetado de maneira diferenciada o Território Nacional, com algumas áreas sofrendo grandes mudanças institucionais e avanços socioeconômicos, enquanto outras se manteriam estáveis ou apresentariam problemas acentuados.

Define-se como Microrregião Geográfica um conjunto de municípios, contíguos e contidos na mesma Unidade da Federação, definidos com base em características do quadro natural, da organização da produção e de sua integração; e Mesorregião Geográfica como um conjunto de Microrregiões, contíguas e contidas na mesma Unidade da Federação, definidas com base no quadro natural, no processo social e na rede de comunicações e lugares.

## 2.5. Aspectos da coleta {#coleta}

A coleta do Censo Demográfico 2010 foi realizada no período de 1º de agosto a 30 de outubro de 2010, utilizando a base territorial que se constituiu de 316 574 setores censitários.

O método de coleta dos dados foi através de entrevista presencial realizada pelo recenseador, sendo a resposta registrada em um computador de mão, ou pelo preenchimento do questionário via Internet.

O computador de mão disponibilizava o aplicativo de coleta para registrar e armazenar as informações coletadas e nele estavam contidos:

* **Mapa do Setor** - representação gráfica do setor censitário;
* **Lista de Endereços** - listagem com todas as informações referentes aos endereços das unidades levantadas na pré-coleta e utilizada para atualização dos registros dos endereços;
* **Questionário Básico** - questionário com 37 quesitos, onde foram registradas as características do domicílio e de seus moradores na data de referência. Aplicado em todas as unidades domiciliares que não foram selecionadas para a amostra;
* **Questionário da Amostra** - questionário com 108 quesitos, onde foram registradas as características do domicílio e de seus moradores na data de referência. Inclui os quesitos do Questionário Básico somados a outros de investigação mais detalhada e foi aplicado em todas as unidades domiciliares que foram selecionadas para a amostra;
* **Formulário de Domicílio Coletivo** - formulário utilizado para registrar os dados de identificação do domicílio coletivo e listar as suas unidades com morador; e
* **Relatórios de Acompanhamento** - resumo de informações da coleta e de questionários com pendências para facilitar o acompanhamento do trabalho do recenseador.

A possibilidade do preenchimento do questionário pela Internet foi uma outra inovação no Censo 2010. Esta alternativa procurou alcançar o informante que, embora disposto a participar do Censo 2010, não dispunha de tempo para fornecer as informações no momento da visita do recenseador. A opção de preenchimento do questionário pela Internet era registrada no computador de mão do recenseador com um código de identificação do domicílio.

Para a parte do levantamento pesquisada por amostragem no Censo Demográfico 2010 foram aplicadas cinco frações de amostragem, considerando os tamanhos dos municípios em termos da população estimada em 1º de julho de 2009. Em especial, na definição da fração amostral para os municípios de pequeno porte, buscou-se garantir tamanho suficiente para a divulgação dos seus resultados. A Tabela 1, a seguir, apresenta as frações adotadas.



**Tabela 1 — Fração amostral dos domicílios e número de municípios, segundo as classes de tamanho da população dos municípios**

|Classes de tamanho da população dos municípios (habitantes)|Fração amostral dos domicílios (%)|Número de municípios|
|-|-:|-:|
|Total|11|(1) 5 565|
|Até 2 500|50|260|
|Mais de 2 500 a 8 000|33|1 912|
|Mais de 8 000 a 20 000|20|1 749|
|Mais de 20 000 a 500 000|10|1 604|
|Mais de 500 000|5|40|

Fonte: IBGE, Diretoria de Pesquisas, Coordenação de População e Indicadores Sociais e Coordenação de Métodos e Qualidade.
Nota: Cálculo com base nas estimativas de população residente para 1º de julho de 2009.
(1) Inclui o Distrito Estadual de Fernando de Noronha e o Distrito Federal.

Para os 40 municípios com mais de 500 000 habitantes, foi avaliada a possibilidade de aplicação de frações amostrais diferentes em cada uma de suas divisões administrativas intramunicipais (distritos e subdistritos), de forma a permitir a divulgação de estimativas e de microdados nesses níveis geográficos. Em 18 desses municípios, houve a necessidade de aumento da fração amostral, definida dentre as especificadas na tabela, em pelo menos uma subdivisão. Nos demais 22 municípios dessa classe, a fração amostral foi mantida em 5%, pois para sete deles não há subdivisão administrativa na base territorial para o Censo 2010 e, para os 15 restantes, o tamanho esperado da amostra resultante em cada subdivisão já contempla o tamanho mínimo estabelecido para a divulgação de estimativas para todas as subdivisões existentes.

Todos os postos de coleta foram informatizados com laptops para o gerenciamento da coleta de dados. O Sistema de Informações Gerenciais do Posto de Coleta - SIGPC foi utilizado para organizar todo o trabalho no posto de coleta. Ele integrou localmente os sistemas de apoio à operação censitária, principalmente o de gerenciamento e de supervisão da coleta de dados, otimizando os processos de instalação de programas de coleta de dados e supervisão, descarga de questionários coletados e transmissão de dados para a central de recebimento. O SIGPC fez a comunicação entre o posto de coleta e os sistemas administrativos de apoio à operação censitária, e auxiliou nas tarefas de cadastramento de pessoal e equipamento do posto de coleta, bem como no pagamento dos recenseadores.

O Sistema de Indicadores Gerenciais da Coleta - SIGC foi responsável pelo processamento das informações da coleta transmitidas pelos postos através do SIGPC. Além disso, possibilitou aos servidores do IBGE acompanhar o andamento da coleta em níveis nacional, estadual e municipal, por posto de coleta e por setor censitário. Serviu, também, como veículo para disseminar informações: nele eram divulgadas as notas técnicas, as orientações das Coordenações e os procedimentos que deveriam ser executados pelas equipes de coleta.

Este arquivo contempla as populações dos 5 565 municípios brasileiros criados e instalados em 1º de agosto de 2010 e o total de domicílios particulares recenseados.

## 2.6. Âmbito da pesquisa {#ambito}

O Censo Demográfico 2010 abrangeu as pessoas residentes, na data de referência, em domicílios do Território Nacional.

As embaixadas, consulados e representações do Brasil no exterior são considerados Território Nacional, porém não foram incluídos no Censo. Atualmente, a maioria dos funcionários brasileiros reside em domicílios fora das representações diplomáticas.

## 2.7. Conceitos e definições {#conceitos}

### 2.7.1. Data de referência

A investigação das características dos domicílios e das pessoas neles residentes teve como data de referência o dia 31 de julho de 2010.

### 2.7.2. Domicílio

Domicílio é o local estruturalmente separado e independente que se destina a servir de habitação a uma ou mais pessoas, ou que esteja sendo utilizado como tal.

Os critérios essenciais desta definição são os de separação e independência.

A separação fica caracterizada quando o local de habitação for limitado por paredes, muros ou cercas e coberto por um teto, permitindo a uma ou mais pessoas, que nele habitam, isolar-se das demais, com a finalidade de dormir, preparar e/ou consumir seus alimentos e proteger-se do meio ambiente, arcando, total ou parcialmente, com suas despesas de alimentação ou moradia.

A independência fica caracterizada quando o local de habitação tem acesso direto, permitindo a seus moradores entrar e sair sem necessidade de passar por locais de moradia de outras pessoas.

#### Espécie do domicílio

Quanto à espécie, classificou-se o domicílio como:


- **Domicílio particular**

Domicílio onde o relacionamento entre seus ocupantes era ditado por laços de parentesco, de dependência doméstica ou por normas de convivência.

Entendeu-se como dependência doméstica a situação de subordinação dos empregados domésticos e agregados em relação à pessoa responsável pelo domicílio e por normas de convivência as regras estabelecidas para convivência de pessoas que residiam no mesmo domicílio e não estavam ligadas por laços de parentesco nem de dependência doméstica.

- **Domicílio particular permanente**

Domicílio construído para servir, exclusivamente, à habitação e, na data de referência, tinha a finalidade de servir de moradia a uma ou mais pessoas.

Os domicílios particulares fechados, ou seja, onde não foi possível realizar a entrevista com os seus moradores, passaram por um processo de imputação (ver o tópico Tratamento domicílios fechados). Os dados resultantes desse processo de imputação, referentes às pessoas e domicílios, foram agregados aos obtidos dos domicílios com entrevistas realizadas para a geração dos resultados do Censo.

- **Domicílio coletivo**

É uma instituição ou estabelecimento onde a relação entre as pessoas que nele se encontravam, moradoras ou não, era restrita a normas de subordinação administrativa, como em hotéis, motéis, camping, pensões, penitenciárias, presídios, casas de detenção, quartéis, postos militares, asilos, orfanatos, conventos, hospitais e clínicas (com internação), alojamento de trabalhadores ou de estudantes etc.

### 2.7.3. População residente

A população residente é constituída pelos moradores em domicílios na data de referência.

### 2.7.4. Morador

Considerou-se como moradora a pessoa que tinha o domicílio como local habitual de residência e que, na data de referência, estava presente ou ausente por período não superior a 12 meses em relação àquela data, por um dos seguintes motivos:

* Viagens: a passeio, a serviço, a negócio, de estudos etc.;
* Internação em estabelecimento de ensino ou hospedagem em outro domicílio, pensionato, república de estudantes, visando a facilitar a freqüência à escola durante o ano letivo;
* Detenção sem sentença definitiva declarada;
* Internação temporária em hospital ou estabelecimento similar; ou
* Embarque a serviço (militares, petroleiros etc.).

### 2.7.5. Situação do domicílio

Segundo a sua área de localização, o domicílio foi classificado em situação urbana ou rural. Em situação urbana, consideraram-se as áreas, urbanizadas ou não, internas ao perímetro urbano das cidades (sedes municipais) ou vilas (sedes distritais) ou as áreas urbanas isoladas, conforme definido por Lei Municipal vigente em 31 de julho de 2010. Para a cidade ou vila em que não existia legislação que regulamentava essas áreas, foi estabelecido um perímetro urbano para fins de coleta censitária, cujos limites foram aprovados pelo prefeito local. A situação rural abrangeu todas as áreas situadas fora desses limites. Este critério também foi utilizado na classificação da população urbana e da rural.

### 2.7.6. Características dos domicílios particulares permanentes

#### Tipo do domicílio

Quanto ao tipo, classificou-se o domicílio particular permanente como:

* **Casa** - quando localizado em uma edificação de um ou mais pavimentos, desde que ocupada integralmente por um único domicílio, com acesso direto a um logradouro (arruamento, vila, avenida, caminho etc.), legalizado ou não, independentemente do material utilizado em sua construção;
* **Casa de vila ou em condomínio**:

  * **Casa de vila** - quando localizado em edificação que fazia parte de um grupo de casas com acesso único a um logradouro. Na vila, as casas estão, geralmente, agrupadas umas junto às outras, constituindo-se, às vezes, de casas geminadas. Cada uma delas possui uma identificação de porta ou designação própria.
  * **Casa em condomínio** - quando localizado em edificação que fazia parte de um conjunto residencial (condomínio) constituído de dependências de uso comum (tais como áreas de lazer, praças interiores, quadras de esporte etc.). As casas de condomínio geralmente são separadas umas das outras, cada uma delas tendo uma identificação de porta ou designação própria.

* **Apartamento** - quando localizado em edifício: de um ou mais andares, com mais de um domicílio, servidos por espaços comuns (hall de entrada, escadas, corredores, portaria ou outras dependências); de dois ou mais andares em que as demais unidades eram não residenciais; e de dois ou mais pavimentos com entradas independentes para os andares.

#### Condição de ocupação no domicílio

Quanto à condição de ocupação, classificou-se o domicílio particular permanente como:

* **Próprio já quitado** - quando o domicílio era de propriedade, total ou parcial, de um ou mais moradores, estando integralmente pago;
* **Próprio em aquisição** - quando o domicílio era de propriedade, total ou parcial, de um ou mais moradores e ainda não estava integralmente pago;
* **Alugado** - quando o domicílio era alugado e o aluguel era pago por um ou mais moradores. Considerou-se também como alugado o domicílio em que o empregador (de qualquer um dos moradores) pagava, como parte integrante do salário, uma parcela em dinheiro para o pagamento do aluguel;
* **Cedido por empregador** - quando o domicílio era cedido por empregador (público ou privado) de qualquer um dos moradores, ainda que mediante uma taxa de ocupação ou conservação (condomínio, gás, luz, etc.). Incluiuse, neste caso, o domicílio cujo aluguel era pago diretamente pelo empregador de um dos moradores do domicílio;
* **Cedido de outra forma** - quando o domicílio era cedido gratuitamente por pessoa que não era moradora ou por instituição que não era empregadora de algum dos moradores, ainda que mediante uma taxa de ocupação (impostos, condomínio etc.) ou de conservação. Incluiu se, neste caso, o domicílio cujo aluguel integral era pago, direta ou indiretamente, por não morador ou por instituição que não era empregadora de algum morador; ou
* **Outra condição** - quando o domicílio era ocupado de forma diferente das anteriormente relacionadas. Incluíram-se neste caso: o domicílio cujo aluguel, pago por morador, referia-se à unidade domiciliar em conjunto com unidade não residencial (oficina, loja, etc.); o domicílio localizado em estabelecimento agropecuário arrendado; e, também, o domicílio ocupado por invasão.

#### Cômodo

Considerou-se como cômodo cada compartimento do domicílio particular permanente coberto por um teto e limitado por paredes, inclusive banheiro e cozinha de uso exclusivo dos moradores do domicílio. Não se considerou como cômodo: corredor, varanda aberta, alpendre, garagem e outros compartimentos utilizados para fins não residenciais.

#### Banheiro

Considerou-se como banheiro o cômodo que dispunha de chuveiro (ou banheira) e vaso sanitário (ou privada) e de uso exclusivo dos moradores, inclusive os localizados no terreno ou na propriedade.

#### Número de banheiros

Investigou-se o número de banheiros, de uso exclusivo dos moradores, existentes no domicílio particular permanente ou no terreno, ou na propriedade em que estava localizado.

#### Sanitário

Investigou-se a existência de sanitário, de uso exclusivo ou não dos moradores, no domicílio particular permanente ou no terreno, ou na propriedade em que se localizava. Considerou-se a existência de banheiro de uso comum a mais de um domicílio juntamente com a de sanitário.

Considerou-se como sanitário o local limitado por paredes de qualquer material, coberto ou não por um teto, que dispunha de vaso sanitário ou buraco para dejeções.

#### Tipo de esgotamento sanitário

O tipo de esgotamento sanitário do banheiro ou sanitário do domicílio particular permanente foi classificado como:

* **Rede geral de esgoto ou pluvial** - quando a canalização das águas servidas e dos dejetos, proveniente do banheiro ou sanitário, estava ligada a um sistema de coleta que os conduzia a um desaguadouro geral da área, região ou município, mesmo que o sistema não dispusesse de estação de tratamento da matéria esgotada;
* **Fossa séptica** - quando a canalização do banheiro ou sanitário estava ligada a uma fossa séptica, ou seja, a matéria era esgotada para uma fossa próxima, onde passava por um processo de tratamento ou decantação, sendo, ou não, a parte líquida conduzida em seguida para um desaguadouro geral da área, região ou município;
* **Fossa rudimentar** - quando o banheiro ou sanitário estava ligado a uma fossa rústica (fossa negra, poço, buraco, etc.);
* **Vala** - quando o banheiro ou sanitário estava ligado diretamente a uma vala a céu aberto;
* **Rio, lago ou mar** - quando o banheiro ou sanitário estava ligado diretamente a rio, lago ou mar; ou
* **Outro** - quando o esgotamento dos dejetos, proveniente do banheiro ou sanitário, não se enquadrasse em quaisquer dos tipos descritos anteriormente.

#### Forma de abastecimento de água

A forma de abastecimento de água do domicílio particular permanente foi classificada como:

* **Rede geral de distribuição** - quando o domicílio ou o terreno, ou a propriedade onde estava localizado, estava ligado a uma rede geral de distribuição de água;
* **Poço ou nascente na propriedade** - quando o domicílio era servido por água proveniente de poço ou nascente localizado no terreno ou na propriedade onde estava construído;
* **Água de chuva armazenada em cisterna** - quando o domicílio era servido por água de chuva armazenada em cisterna, caixa de cimento etc.
* **Outra** - quando a forma de abastecimento de água do domicílio era proveniente de poço ou nascente fora da propriedade, carro-pipa, água da chuva armazenada de outra forma, rio, açude, lago ou igarapé ou outra forma de abastecimento de água, diferente das descritas anteriormente.

#### Destino do lixo

O destino do lixo proveniente do domicílio particular permanente foi classificado como:

* **Coletado**:

  * **Diretamente por serviço de limpeza** - quando o lixo do domicílio era coletado diretamente por serviço de empresa pública ou privada; ou
  * **Em caçamba de serviço de limpeza** - quando o lixo do domicílio era depositado em uma caçamba, tanque ou depósito, fora do domicílio, para depois ser coletado por serviço de empresa pública ou privada;

* **Queimado (na propriedade)** - quando o lixo do domicílio era queimado no terreno ou propriedade em que se localizava o domicílio;
* **Enterrado (na propriedade)** - quando o lixo do domicílio era enterrado no terreno ou propriedade em que se localizava o domicílio;
* **Jogado em terreno baldio ou logradouro** - quando o lixo do domicílio era jogado em terreno baldio ou logradouro público;
* **Jogado em rio, lago ou mar** - quando o lixo do domicílio era jogado em rio, lago ou mar; ou
* **Outro destino** - quando o lixo do domicílio tinha destino diferente dos descritos anteriormente.

#### Energia elétrica

Pesquisou-se a existência, no domicílio particular permanente, de energia elétrica e, para o domicílio que possuía, investigou-se a sua origem: de companhia distribuidora ou de outra fonte (eólica, solar, gerador etc.).

#### Medidor ou relógio no domicílio

No domicílio particular permanente atendido por energia elétrica de companhia distribuidora, investigou-se a existência de medidor para registro do consumo de energia elétrica do domicílio e o seu uso.

O uso do medidor de consumo de energia elétrica foi classificado como:

* **Exclusivo do domicílio** - quando o medidor ou relógio era de uso exclusivo para registro do consumo de energia elétrica do domicílio; ou
* **De uso comum a mais de um domicílio** - quando o medidor ou relógio registrava o consumo de energia de mais de um domicílio. Inclui-se, neste caso, o medidor ou relógio de uso comum do domicílio com um ou mais estabelecimentos.

### 2.7.7. Composição dos moradores nos domicílios

#### Condição no domicílio

A condição no domicílio foi caracterizada através da relação existente entre a pessoa responsável pela unidade domiciliar (domicílio particular ou unidade de habitação em domicílio coletivo) e cada um dos demais moradores, de acordo com as seguintes definições:

* **Pessoa responsável pelo domicílio** - para a pessoa (homem ou mulher), de 10 anos ou mais de idade, reconhecida pelos moradores como responsável pela unidade domiciliar;
* **Cônjuge ou companheiro(a) de sexo diferente** - para a pessoa (homem ou mulher), de 10 anos ou mais de idade, que vivia conjugalmente com a pessoa responsável pela unidade domiciliar, sendo de sexo diferente, existindo ou não vínculo matrimonial;
* **Cônjuge ou companheiro(a) do mesmo sexo** - para a pessoa (homem ou mulher), de 10 anos ou mais de idade, que vivia conjugalmente com a pessoa responsável pela unidade domiciliar, sendo ambas do mesmo sexo;
* **Filho(a) do responsável e do cônjuge** - para o(a) filho(a) legítimo(a), seja consangüíneo(a) ou adotivo (a), ou de criação da pessoa responsável e do cônjuge;
* **Filho(a) somente do responsável** - para o(a) filho(a) legítimo(a), seja consangüíneo(a) ou adotivo(a), ou de criação somente da pessoa responsável;
* **Enteado(a)** - para o(a) filho(a) legítimo(a), seja consangüíneo(a) ou adotivo(a), ou de criação somente do cônjuge;
* **Genro ou nora** - para o genro ou a nora da pessoa responsável ou do cônjuge;
* **Pai, mãe, padrasto ou madrasta** - para o pai ou a mãe, padrasto ou madrasta da pessoa responsável;
* **Sogro(a)** - para o(a) sogro(a) da pessoa responsável ou do cônjuge;
* **Neto(a)** - para o(a) neto(a) da pessoa responsável ou do cônjuge;
* **Bisneto(a)** - para o(a) bisneto(a) da pessoa responsável ou do cônjuge;
* **Irmão ou irmã** - para o irmão ou a irmãlegítimo(a), seja consangüíneo(a) ou adotivo(a), ou de criação da pessoa responsável;
* **Avô ou avó** - para o avô ou a avó da pessoa responsável ou do cônjuge;
* **Outro parente** - para o(a) bisavô(ó), cunhado(a), tio(a), sobrinho(a), primo(a) da pessoa responsável ou do cônjuge;
* **Sem parentesco**

  * **Agregado(a)** - para a pessoa residente em domicílio particular que, sem ser parente, convivente, pensionista, empregado doméstico ou parente deste, não pagava hospedagem nem contribuía para as despesas de alimentação e moradia do domicílio;
  * **Convivente** - para a pessoa residente em domicílio particular que, sem ser parente, dividia as despesas de alimentação e/ou moradia;
  * **Pensionista** - para a pessoa residente em domicílio particular que, sem ser parente, pagava hospedagem;
  * **Empregado(a) doméstico(a)** - para a pessoa residente em domicílio particular que prestava serviços domésticos remunerados a um ou mais moradores do domicílio; ou
  * **Parente do(a) empregado(a) doméstico(a)** - para a pessoa residente em domicílio particular que era parente do(a) empregado(a) doméstico(a) e que não prestava serviços domésticos remunerados a moradores do domicílio;

* **Individual em domicílio coletivo** - para a pessoa só que residia em domicílio coletivo, ainda que compartilhando a unidade de habitação com outra(s) pessoa(s) com a(s) qual(is) não tinha laços de parentesco.

### 2.7.8. Características das pessoas

#### Idade

A investigação foi feita por meio da pesquisa do mês e ano de nascimento. Para as pessoas que não sabiam o mês e o ano de nascimento, foi investigada a idade em 31 de julho de 2010 em anos completos ou em meses completos para as crianças com menos de 1 ano. A idade foi calculada em relação à data de referência.

#### Cor ou raça

Investigou-se a cor ou raça declarada pela pessoa, com as seguintes opções de resposta:

* **Branca** - para a pessoa que se declarou branca;
* **Preta** - para a pessoa que se declarou preta;
* **Amarela** - para a pessoa que se declarou de cor amarela (de origem oriental: japonesa, chinesa, coreana etc.);
* **Parda** - para a pessoa que se declarou parda; ou
* **Indígena** - para a pessoa que se declarou indígena ou índia.

#### Registro de nascimento

Para a pessoa de até 10 anos de idade foi investigado se possuía algum dos seguintes tipos de registro de nascimento, de acordo com a ordem enumerada: registro de cartório; declaração de nascido vivo do hospital ou da maternidade; ou Registro Administrativo de Nascimento Indígena - RANI.

#### Alfabetização

Considerou-se como alfabetizada a pessoa capaz de ler e escrever um bilhete simples no idioma que conhecesse.

Foi considerada analfabeta a pessoa que aprendeu a ler e escrever, mas que esqueceu devido a ter passado por um processo de alfabetização que não se consolidou e a que apenas assinava o próprio nome.

### 2.7.9. Entorno

#### Iluminação Pública

Foi pesquisado se na face em trabalho ou na sua face confrontante, existia pelo menos um ponto fixo (poste) de iluminação pública.

#### Pavimentação

Pesquisou-se se no trecho do logradouro, na face percorrida, existia pavimentação, ou seja, cobertura da via pública com asfalto, cimento, paralelepípedos, pedras etc.

#### Arborização

Foi pesquisado se na face ou na sua face confrontante ou no canteiro central,existia arborização, ou seja, existia árvore ao longo do calçada/passeio e/ou em canteiro que divida pistas de um mesmo logradouro, mesmo que apenas em parte. Considerou-se também a arborização quando existente em logradouros sem pavimentação e/ou sem calçada/passeio.

#### Bueiro/boca de lobo

Pesquisou-se se na face ou na sua face confrontante, existia bueiro ou boca de lobo, ou seja, abertura que dá acesso a caixas subterrâneas, por onde escoam a água proveniente de chuvas, as regas etc. Bueiro/boca de lobo não se confunde com tampões para acesso a galerias subterrâneas.

#### Lixo acumulado nos logradouros

Considerou-se quando, na face ou na sua confrontante, existia local de depósito e acúmulo de lixo. A existência de caçamba de serviço de limpeza não foi considerada como lixo acumulado em via pública.

#### Esgoto a céu aberto

Foi pesquisado se na face ou na sua face confrontante, existia vala, córrego ou corpo d’água onde habitualmente ocorria lançamento de esgoto doméstico; ou valeta, por onde escorria, na superfície, o esgoto doméstico a céu aberto.

#### Meio-fio/guia

Considerou-se quando, somente na face, existia meio-fio/guia, ou seja, borda ao longo do logradouro.

#### Calçada

Pesquisou-se se, somente na face, existia calçada/passeio, ou seja, caminho calçado ou pavimentado, destinado à circulação de pedestres, quase sempre mais alto que a parte do logradouro em que trafegam os veículos.

#### Rampa para cadeirante

Foi pesquisado se, somente na calçada da face, existia rampa, ou seja, rebaixamento da calçada ou meio-fio/guia, geralmente nas proximidades das esquinas, destinado especificamente para dar acesso a pessoas que utilizam cadeira de rodas. Não foram consideradas rampas para acesso de veículos.

#### Cobertura

As informações do Entorno foram coletadas para os setores urbanos. Alguns setores de aglomerados sub-normais não foram coletados. A Cobertura foi de mais de 96%. Os setores onde não houve coleta, das informações do entorno, são aqueles que nos arquivos entorno01, entorno02, entorno03, entorno04 e entorno05 apresentam valor zero para todas as informações.

## 2.8. Tratamento dos domicílios fechados {#fechados}

### Motivação

As unidades domiciliares pesquisadas nos Censos Demográficos e em contagens da população são classificadas em categorias de acordo com a situação de seus moradores na data de referência da coleta, a saber: domicílios particulares, permanentes ou improvisados, ocupados; domicílios particulares permanentes fechados; domicílios particulares permanentes vagos; domicílios particulares permanentes de uso ocasional; e domicílios coletivos com ou sem morador. A operação censitária visa obter informações das pessoas moradoras nos domicílios classificados nas duas primeiras categorias (domicílios particulares ocupados e domicílios particulares permanentes fechados) e nos domicílios coletivos com morador.

Os domicílios classificados como fechados são aqueles que sabidamente possuíam moradores na data de referência, mas que não tiveram entrevista realizada para o preenchimento das informações do questionário, independentemente do motivo da não realização da entrevista.

Nas divulgações de resultados de Censos Demográficos, os totais da população para cada um dos municípios brasileiros foram sempre divulgados considerando os domicílios ocupados (particulares e coletivos) na data de referência da operação censitária.

As informações sobre o número de domicílios fechados, vagos e de uso ocasional, que também são divulgadas, são usadas, juntamente com outras informações disponíveis, para a avaliação da qualidade da cobertura das operações censitárias.

No Censo Demográfico 2010, com o objetivo de quantificar de forma exaustiva a população brasileira, o IBGE estimou a parcela da população moradora nos domicílios fechados em cada um dos municípios brasileiros. Essa prática é adotada internacionalmente por países como Austrália, Canadá, Estados Unidos, México e Reino Unido.

### Metodologia

No caso da estimação do número de moradores nos domicílios fechados do Censo Demográfico 2010, admitiu-se que o padrão dos domicílios fechados é diferente do padrão dos domicílios ocupados, que foram efetivamente investigados, no que se refere ao tamanho do domicílio. Ou seja, admitiu-se que os domicílios fechados possuem uma característica em sua composição, principalmente no número de moradores, que implicou a dificuldade do entrevistador para realizar a entrevista e a sua classificação como fechado, após o término do período de coleta.

Para avaliar essa hipótese, os domicílios particulares ocupados foram estratificados segundo a sua localização. Os estratos foram definidos, para cada Unidade da Federação, considerando a situação do domicílio, urbana ou rural, e a classe de tamanho do município ao qual pertence. Foram definidas três classes de tamanho, a saber: municípios com menos de 70 000 habitantes; municípios com 70 000 a menos de 500 000 habitantes e municípios com 500 000 habitantes ou mais. Os municípios com 500 000 ou mais habitantes foram tratados individualmente, enquanto os demais foram considerados em seus respectivos estratos de tamanho. Não fizeram parte da análise os domicílios de setores censitários localizados em Terras Indígenas, que foram objeto de um tratamento à parte, além dos domicílios com mais de 10 moradores, para garantir a robustez do método. Foram obtidas as distribuições do número de moradores em domicílios particulares ocupados por estrato em dois conjuntos de entrevistas realizadas, a saber: (1) domicílios particulares ocupados que tiveram entrevista realizada em apenas uma tentativa; e (2) domicílios particulares ocupados inicialmente classificados como fechados ou vagos (também considerados por terem sido erroneamente classificados como vagos), mas que posteriormente tiveram entrevista realizada. Em cada estrato, a análise das duas distribuições confirmou a hipótese, verificando-se quase que sistematicamente um menor número médio de moradores nos domicílios apontados em (2) do que em (1).

A classificação de um domicílio na categoria de fechado é equivalente a considerá-lo como uma não resposta, que é um dos erros não amostrais mais comuns na realização de uma pesquisa, seja ela censitária ou por amostragem. Há muitas formas diferentes de se lidar com a não resposta. Uma delas é a que utiliza procedimentos de imputação. Procedimento de imputação é aquele que atribui informações individuais às unidades sem informação. O pressuposto básico do procedimento de imputação é que a perda de dados seja aleatória, e se não for, que o padrão de não resposta seja conhecido ou pelo menos estimado, para ser considerado durante o tratamento da não resposta por imputação.

Para estimar as características dos domicílios fechados e de seus moradores para cada município abrangido pelo Censo Demográfico 2010, definiu-se cada domicílio fechado como uma não resposta cujo atributo necessário é o número de moradores e demais características. O tratamento adotado para essa não resposta foi um procedimento de imputação por meio de seleção aleatória de um domicílio doador entre um conjunto de possíveis doadores, tendo sido adotada ainda a estratificação de domicílios acima descrita. O conjunto de doadores foi definido conforme descrito em (2), com exceção dos estratos compostos pelos domicílios rurais de municípios com mais de 500 000 habitantes, onde, por uma questão de robustez do método, foram considerados como possíveis doadores todos os domicílios particulares ocupados, e não apenas o subconjunto dos que mudaram de espécie (fechado ou vago para ocupado) ao longo da coleta.

Conforme foi citado acima, os domicílios de setores censitários localizados em Terras Indígenas foram objeto de um tratamento à parte, no qual cada Terra Indígena configurou-se como sendo um estrato de domicílios.

Em termos operacionais, o procedimento de imputação consistiu em selecionar um domicílio doador para cada domicílio fechado. Em cada estrato, como definido anteriormente, o conjunto de doadores foi formado pelos domicílios particulares permanentes ocupados do respectivo estrato.

Assim, o total de moradores estimados no conjunto de domicílios fechados de cada município foi obtido pela soma dos moradores nos domicílios imputados, incluídos nesse total os moradores estimados em domicílios fechados em Terra Indígena.

Além da estimação do total de moradores em domicílios fechados, também foi realizado o procedimento de imputação de variáveis referentes a esses domicílios, bem como de variáveis associadas aos moradores dos mesmos. Em tal procedimento, cada domicílio fechado teve associado a ele as variáveis domiciliares do domicílio ocupado utilizado na estimação de seu número de moradores, exceto pelas variáveis espécies do domicílio, existência e características de emigrantes internacionais, existência e características de pessoas falecidas, situação e tipo do setor. E, por conseguinte, um morador do domicílio ocupado doador teve suas variáveis atribuídas a um morador de um domicílio fechado, exceto pela variável nome do morador. No caso das pessoas em Terras Indígenas, também não foram imputadas as informações sobre etnia e língua indígena.

O procedimento de estimação foi aplicado aos domicílios efetivamente fechados, após todas as tentativas de obtenção da entrevista, que correspondem a 1,3% do total de domicílios particulares abrangidos pelo Censo Demográfico 2010. A população total estimada por esse procedimento é de 2 795 533 pessoas, em 899 152 domicílios fechados.

Cabe salientar que foi definida nas bases de dados de domicílios e de pessoas uma variável que indica a imputação pelo procedimento aqui descrito.

# 3\. Organização do arquivo da base de informações por setor censitário {#organizacao}

O arquivo Agregado por Setores Censitários encontra-se armazenado em 1 (um) Digital Versatile Disc Only Memory (DVD).

No DVD, estão gravados os arquivos que contêm esta documentação: Documentação.doc, em formato MS-Word®, e sua réplica em portable document format, (Documentação.pdf), para ser processado pelo Adobe® Acrobat Reader. Existem pastas com o nome(s) da(s) unidade(s) da federação, onde estão gravados os arquivos da unidade correspondente, cuja maioria correspondem a planilhas MS-Excel® 97 e o formato CSV (Comma-separated values) que facilita a importação para diversos programas.

A Base de Informações por Setores Censitários de cada Unidade da Federação está subdividida em 18 (dezoito) planilhas, assim definidas:

* **Básico**: o arquivo Basico\_UF.xls contém os códigos e nomes das subdivisões geográficas e a informação básica do cadastro de áreas (totais, médias e variâncias), onde UF é a sigla da Unidade da Federação;
* **Domicílio**: são duas planilhas (Domicilio01\_UF.xls e Domicilio02\_UF.xls, onde UF é a sigla da Unidade da Federação) que fornecem informações sobre características dos domicílios, informações sobre os moradores por sexo, idade e características do domicílio;
* **Responsável**: são duas planilhas (Responsavel01\_UF.xls e Responsavel02\_UF.xls, onde UF é a sigla da Unidade da Federação) que fornecem informações sobre os responsáveis por domicílios particulares permanentes por sexo, idade, alfabetização;
* **Alfabetização**: são duas planilhas (Pessoa01\_UF.xls e Pessoa02\_UF.xls, onde UF é a sigla da Unidade da Federação) que fornecem informação sobre a população residente por sexo, idade;
* **Cor e Raça**:  são três planilhas (Pessoa03\_UF.xls a Pessoa05\_UF.xls, onde UF é a sigla da Unidade da Federação) que fornecem informação sobre cor ou raça da população por sexo, idade;
* **Parentesco**: são quatro planilhas (Pessoa06\_UF.xls a Pessoa09\_UF.xls, onde UF é a sigla da Unidade da Federação) que fornecem informação sobre cor ou raça da população por sexo, idade;
* **Registro Civil**: o arquivo Pessoa10\_UF.xls contém as informações sobre registro de nascimento da população, onde UF é a sigla da Unidade da Federação;
* **Pessoa**: são três planilhas (Pessoa11\_UF.xls a Pessoa13\_UF.xls, onde UF é a sigla da Unidade da Federação) que fornecem informação sobre a população residente por sexo, idade;
* **Entorno**: são cinco planilhas (Entorno01\_UF.xls a Entorno05\_UF.xls, onde UF é a sigla da Unidade da Federação) que fornecem informações sobre 10 variáveis a respeito do entorno das quadras/faces dos setores censitários; e
* **Renda**:  são três planilhas (DomicílioRenda\_UF.xls, PessoaRenda\_UF.xls e ResponsavelRenda\_UF.xls, onde UF é a sigla da Unidade da Federação), que fornecem informação sobre os rendimentos dos domicílios, pessoas e responsáveis.

Todas as planilhas indicadas acima têm a variável de identificação do setor censitário (Cod\_setor), e a situação do setor censitário. Os registros (ou linhas) de cada planilha estão classificados em ordem crescente de código do setor censitário. A variável Tipo do setor só está presente na tabela “Básico”.

Cada linha de cada planilha fornece os dados de um setor censitário e cada coluna corresponde a uma variável, seja o código ou nome de uma subdivisão geográfica, seja o tipo ou situação do setor, seja, ainda, o valor numérico de uma variável de domicílio, responsável ou pessoa.

Além das planilhas de dados, foram gravados arquivos com informações adicionais relacionadas aos setores censitários e à divisão territorial:

* **Descrição dos SetoresUF.xls**:  com informações sobre o ponto inicial e o perímetro de cada setor censitário, além da indicação de áreas ou setores, contidos no perímetro, que não pertencem ao setor censitário, e dos aglomerados rurais contidos no setor, que podem ou não pertencer ao setor, onde UF é a sigla da Unidade da Federação.



> **Observação**
> No caso do Estado de São Paulo, cuja dimensão obrigou a divisão em 2 arquivos, usou-se a seguinte convenção: (a) UF=SP1 para o arquivo de descrição dos setores dos municípios da Região Metropolitana de São Paulo; e (b) UF=SP2 para os setores dos demais municípios de São Paulo.



# 4\. Proteção dos dados dos informantes {#protecao}

A legislação estatística brasileira torna compulsório o fornecimento de informações ao IBGE para pesquisas constantes do Plano Geral de Informações Estatísticas e Geográficas e, em contrapartida, assegura a proteção destes dados, que só podem ser usados para fins estatísticos e disseminados de forma a não identificar os informantes das pesquisas.

Considerando que a identificação de um informante ocorre quando ele é diretamente identificado em um arquivo liberado (identificação direta), quando uma informação sensível sobre o informante é revelada por meio de um arquivo liberado (identificação por atributo), ou ainda quando um dado liberado torna possível determinar o valor de uma característica de um informante de modo mais preciso do que seria possível obter por qualquer outro meio (identificação por inferência), não basta disseminar arquivos com registros anônimos.

As formas de proteção dos informantes podem ser efetivadas por restrição de dados (a redução do volume de informação liberado em tabelas ou arquivos); restrição de acesso (introdução de condições para uso dos dados) ou alguma combinação desses procedimentos. No arquivo agregado por setores, o IBGE optou pela restrição de dados como forma de proteção dos dados dos informantes do Censo Demográfico 2010. Assim, em todos os setores com menos de cinco domicílios particulares permanentes foram omitidos os valores da maioria das variáveis de dados. Foram mantidas apenas as variáveis estruturais tais como: a identificação das subdivisões geográficas, o número de domicílios e a população por sexo. Para indicar a omissão dos dados, os valores das variáveis foram preenchidos com “x”.

O Quadro 1 indica o quantitativo de setores de cada macrorregião e de cada Unidade da Federação, o número de setores sem população, o número de setores que tiveram seus dados omitidos por terem poucos domicílios particulares permanentes, além do quantitativo de valores de anos de estudo e rendimento que sofreram omissão adicional (poucas pessoas na célula).

**Quadro 1 — Número de setores, total e sem domicílios e número de setores na case de informações, total e
com dados omitidos, para as Grandes Regiões e as Unidade da Federação**



|Nome|Sigla|Total|Sem domicílios|Na Base de informações (1) — Total|Com dados omitidos — Total|Com dados omitidos — %|
|-|-|-:|-:|-:|-:|-:|
|**Brasil**||**316574**|**6460**|**310114**|**6295**|**2,0**|
|**Região Norte**||**22301**|**937**|**21364**|**436**|**2,0**|
|Rondônia|RO|2443|97|2346|65|2,8|
|Acre|AC|900|26|874|20|2,3|
|Amazonas|AM|6184|544|5640|204|3,6|
|Roraima|RR|913|89|824|28|3,4|
|Pará|PA|8919|150|8769|78|0,9|
|Amapá|AP|827|17|810|12|1,5|
|Tocantins|TO|2115|14|2101|29|1,4|
|**Região Nordeste**||**81449**|**1104**|**80345**|**1218**|**1,5**|
|Maranhão|MA|8875|73|8802|107|1,2|
|Piauí|PI|5362|111|5251|104|2,0|
|Ceará|CE|13615|342|13273|368|2,8|
|Rio Grande do Norte|RN|4311|22|4289|38|0,9|
|Paraíba|PB|5574|26|5548|33|0,6|
|Pernambuco|PE|12498|119|12379|102|0,8|
|Alagoas|AL|3759|35|3724|34|0,9|
|Sergipe|SE|3316|19|3297|27|0,8|
|Bahia|BA|24139|357|23782|405|1,7|
|**Região Sudeste**||**135875**|**3066**|**132809**|**2401**|**1,8**|
|Minas Gerais|MG|32807|243|32564|537|1,6|
|Espírito Santo|ES|6454|74|6380|101|1,6|
|Rio de Janeiro|RJ|28318|549|27769|384|1,4|
|São Paulo|SP|68296|2200|66096|1379|2,1|
|**Região Sul**||**52646**|**969**|**51677**|**1772**|**3,4**|
|Paraná|PR|17691|228|17463|421|2,4|
|Santa Catarina|SC|12227|345|11882|529|4,5|
|Rio Grande do Sul|RS|22728|396|22332|822|3,7|
|**Região Centro-Oeste**||**24303**|**384**|**23919**|**468**|**2,0**|
|Mato Grosso do Sul|MS|4239|32|4207|55|1,3|
|Mato Grosso|MT|6119|190|5929|234|3,9|
|Goiás|GO|9491|57|9434|136|1,4|
|Distrito Federal|DF|4454|105|4349|43|1,0|



(1) Na Base de informações existem somente setores com domicílios particulares ocupados ou coletivos com morador.



# 5\. Cadastro de áreas e identificação dos itens geográficos {#cadastro}

## 5.1. Código do setor censitário {#codigo}

Indica o código numérico completo do setor censitário. Possui 15 dígitos divididos da seguinte forma: UFMMMMMDDSDSSSS, onde:

* UF - Unidade da Federação
* MMMMM - Município
* DD - Distrito
* SD - Subdistrito
* SSSS - Setor

### Casos Especiais

Na fase de planejamento da Base Territorial do Censo 2010, constatou-se que algumas áreas próximas aos limites municipais, que historicamente são recenseadas para um determinado município/UF, encontram-se, de fato, localizadas em município/UF limítrofe, se observada a legislação definidora do respectivo limite territorial.

No Censo 2010 estas áreas foram isoladas em setores censitários e receberam os geocódigos com final nº 9999 decrescendo até esgotar os casos dentro do município, na Malha de Setor Censitário Digital do Brasil: situação 2010, sendo os seus dados estatísticos associados aos geocódigos dos municípios para os quais foram historicamente recenseados, conforme a tabela abaixo.

O procedimento acima descrito foi adotado em conformidade com parecer emitido pela Procuradoria Federal no IBGE, no âmbito da divulgação dos resultados do Censo 2010, sem prejuízo da representação cartográfica dos limites praticada na Malha de Setor Censitário Digital do Brasil: situação 2010, que observa a legislação definidora de limites territoriais em vigor.

**Tabela 2 — Casos Especiais**

|Cedente|Cedente\_9999|Nome\_Munic\_Cedente|Receptor|Nome\_Munic\_Receptor|Tipo\_Setor|
|-|-|-|-|-|-|
|210750605000119|210750605009999|PAÇO DO LUMIAR|210945205000040|RAPOSA||
|210750605000120|210750605009998|PAÇO DO LUMIAR|210945205000041|RAPOSA||
|210750605000121|210750605009997|PAÇO DO LUMIAR|210945205000042|RAPOSA||
|210750605000134|210750605009996|PAÇO DO LUMIAR|210945205000043|RAPOSA||
|210750605000135|210750605009995|PAÇO DO LUMIAR|210945205000044|RAPOSA||
|210750605000136|210750605009994|PAÇO DO LUMIAR|210945205000045|RAPOSA||
|210750605000137|210750605009993|PAÇO DO LUMIAR|210945205000046|RAPOSA||
|241440705000046|241440705009999|TOUROS|241255905000016|SÃO MIGUEL DO GOSTOSO||
|241440705000047|241440705009998|TOUROS|241255905000017|SÃO MIGUEL DO GOSTOSO||
|280630505000022|280630505009999|SANTA LUZIA DO ITANHY|280040705000019|ARAUÁ||
|280630505000023|280630505009998|SANTA LUZIA DO ITANHY|280040705000020|ARAUÁ||
|280630505000024|280630505009997|SANTA LUZIA DO ITANHY|280040705000021|ARAUÁ||
|280760005000028|280760005009999|UMBAÚBA|280040705000023|ARAUÁ|PARCIAL|
|280760005000034|280760005009998|UMBAÚBA|280040705000022|ARAUÁ||
|530010805070228|530010805079999|BRASÍLIA|521975305000082|SANTO ANTÔNIO DO DESCOBERTO||
|530010805070229|530010805079998|BRASÍLIA|521523105000112|NOVO GAMA||
|530010805070230|530010805079997|BRASÍLIA|521523105000113|NOVO GAMA||
|530010805070231|530010805079996|BRASÍLIA|521523105000114|NOVO GAMA||
|530010805070232|530010805079995|BRASÍLIA|521523105000115|NOVO GAMA||
|530010805070233|530010805079994|BRASÍLIA|521523105000116|NOVO GAMA||
|530010805070234|530010805079993|BRASÍLIA|521523105000117|NOVO GAMA||
|530010805070235|530010805079992|BRASÍLIA|521523105000118|NOVO GAMA||
|530010805090103|530010805099991|BRASÍLIA|521560305000053|PADRE BERNARDO||
|530010805090104|530010805099990|BRASÍLIA|521560305000054|PADRE BERNARDO||
|530010805090105|530010805099989|BRASÍLIA|521560305000055|PADRE BERNARDO||
|530010805110294|530010805119988|BRASÍLIA|521760905000093|PLANALTINA||
|530010805110295|530010805119987|BRASÍLIA|521760905000094|PLANALTINA||
|530010805110296|530010805119986|BRASÍLIA|521760905000095|PLANALTINA||
|530010805110297|530010805119985|BRASÍLIA|521760905000096|PLANALTINA||
|530010805250202|530010805259984|BRASÍLIA|521523105000119|NOVO GAMA||
|530010805250203|530010805259983|BRASÍLIA|521523105000120|NOVO GAMA||
|530010805250204|530010805259982|BRASÍLIA|521523105000121|NOVO GAMA||
|530010805250205|530010805259981|BRASÍLIA|521523105000122|NOVO GAMA||
|530010805250206|530010805259980|BRASÍLIA|521523105000123|NOVO GAMA||
|530010805250207|530010805259979|BRASÍLIA|521523105000124|NOVO GAMA||
|530010805250208|530010805259978|BRASÍLIA|521523105000125|NOVO GAMA||
|530010805250209|530010805259977|BRASÍLIA|521523105000126|NOVO GAMA||
|530010805250210|530010805259976|BRASÍLIA|521523105000127|NOVO GAMA||
|530010805250211|530010805259975|BRASÍLIA|522185805000162|VALPARAÍSO DE GOIÁS||
|530010805250212|530010805259974|BRASÍLIA|522185805000163|VALPARAÍSO DE GOIÁS||
|530010805250213|530010805259973|BRASÍLIA|522185805000164|VALPARAÍSO DE GOIÁS||
|530010805250214|530010805259972|BRASÍLIA|522185805000165|VALPARAÍSO DE GOIÁS||
|530010805250215|530010805259971|BRASÍLIA|522185805000166|VALPARAÍSO DE GOIÁS||
|530010805250216|530010805259970|BRASÍLIA|522185805000167|VALPARAÍSO DE GOIÁS||
|530010805250217|530010805259969|BRASÍLIA|522185805000168|VALPARAÍSO DE GOIÁS||
|530010805250218|530010805259968|BRASÍLIA|522185805000169|VALPARAÍSO DE GOIÁS||
|530010805250219|530010805259967|BRASÍLIA|522185805000170|VALPARAÍSO DE GOIÁS||
|530010805250220|530010805259966|BRASÍLIA|522185805000171|VALPARAÍSO DE GOIÁS||
|530010805250221|530010805259965|BRASÍLIA|522185805000172|VALPARAÍSO DE GOIÁS||
|530010805250222|530010805259964|BRASÍLIA|522185805000173|VALPARAÍSO DE GOIÁS||
|530010805250223|530010805259963|BRASÍLIA|522185805000174|VALPARAÍSO DE GOIÁS||
|530010805250224|530010805259962|BRASÍLIA|522185805000175|VALPARAÍSO DE GOIÁS||
|530010805250225|530010805259961|BRASÍLIA|522185805000176|VALPARAÍSO DE GOIÁS||
|530010805250226|530010805259960|BRASÍLIA|522185805000177|VALPARAÍSO DE GOIÁS||
|530010805250227|530010805259959|BRASÍLIA|520549705000077|CIDADE OCIDENTAL||
|530010805250228|530010805259958|BRASÍLIA|520549705000078|CIDADE OCIDENTAL||
|530010805300157|530010805309957|BRASÍLIA|520549705000079|CIDADE OCIDENTAL||

### Código da Grande Região

Indica o código numérico da Grande Região. Possui 1 dígito.

### Nome da Grande Região

Indica o nome da Grande Região. Código da Unidade da Federação Indica o código numérico da Unidade da Federação. Possui 2 dígitos.

### Nome da Unidade da Federação

Indica o nome da Unidade da Federação. Código da mesorregião Indica o código numérico completo da mesorregião. Possui 4 dígitos divididos da seguinte forma: UFME, onde:

* UF - Unidade da Federação
* ME - Mesorregião

### Nome da mesorregião

Indica o nome da mesorregião.

### Código da microrregião

Indica o código numérico completo da microrregião. Possui 5 dígitos divididos da seguinte forma: UFMIC, onde:

* UF - Unidade da Federação
* MIC - Microrregião

### Nome da microrregião

Indica o nome da microrregião.

### Código da região metropolitana (inclusive RIDE)

Indica o código numérico da região metropolitana ou da Região Integrada de Desenvolvimento do Distrito Federal e Entorno – RIDE. Possui 2 dígitos, que variam entre 0 e 40. O código 0 (zero) indica que o setor não pertence a região metropolitana.

### Nome da Região Metropolitana (inclusive RIDE)

Indica o nome da região metropolitana ou da RIDE. Quando o código da região metropolitana for 0 (zero) o nome está em branco.

### Código do município

Indica o código numérico completo do município. Possui 7 dígitos divididos da seguinte forma:

* UFMMMMM, onde: UF - Unidade da Federação
* MMMMM - Município

### Nome do município

Indica o nome do município.

### Código do distrito

Indica o código numérico completo do distrito. Possui 9 dígitos divididos da seguinte forma: UFMMMMMDD, onde:

* UF - Unidade da Federação
* MMMMM - Município
* DD - Distrito

### Nome do distrito

Indica o nome do distrito.

### Código do subdistrito

Indica o código numérico completo do subdistrito. Possui 11 dígitos divididos da seguinte forma: UFMMMMMDDSD, onde:

* UF - Unidade da Federação
* MMMMM - Município
* DD - Distrito
* SD - Subdistrito

Nota: De acordo com a legislação vigente, alguns subdistritos estão contidos em mais de um distrito, conforme listado abaixo:

* Município de Fortaleza (CE):

  * Subdistrito Antonio Bezerra faz parte dos distritos Fortaleza e Antonio Bezerra.
  * Subdistrito Conjunto Ceará faz parte dos distritos Antonio Bezerra e Mondubim.

* Município de Cuiabá (MT):

  * Subdistritos Administração Regional Centro-Leste e Administração Regional do Norte fazem parte dos distritos Cuiabá e Coxipó da Ponte.

* Município de Belo Horizonte (MG):

  * Subdistrito Oeste faz parte dos distritos Belo Horizonte e Barreiro.
  * Subdistritos Nordeste, Pampulha e Venda Nova fazem parte dos distritos de Belo Horizonte e Venda Nova.

### Nome do subdistrito

Indica o nome do subdistrito. Se não existir subdistrito, ou seja, se SD = 00, no lugar do nome aparecerá à expressão “Não existe/não identificado”.

### Código do bairro

Indica o código numérico completo do bairro. Possui 10 dígitos divididos da seguinte forma: UFMMMMMBBB, onde:

* UF - Unidade da Federação
* MMMMM - Município
* BBB - Bairro

### Nome do bairro

Indica o nome do bairro. Se o setor não pertencer a um bairro, ou seja, se BBB = 000, no lugar do nome aparecerá o nome do município e a expressão “(todos os setores)”. Esta situação aplica-se tanto a municípios que têm subdivisão formal de bairros, mas o setor está fora dos limites legais dos bairros, quanto a municípios que não têm subdivisão formal de bairros.

### Código de situação do setor (V1005)

Indica o código numérico de situação do setor. Possui 1 dígito.

* **Situação urbana** - códigos: 1, 2 ou 3

  * 1 - Área urbanizada de cidade ou vila
  * 2 - Área não-urbanizada de cidade ou vila
  * 3 - Área urbana isolada

* **Situação rural** - códigos: 4, 5, 6, 7 ou 8

  * 4 - Aglomerado rural de extensão urbana
  * 5 - Aglomerado rural isolado - povoado
  * 6 - Aglomerado rural isolado - núcleo
  * 7 - Aglomerado rural isolado - outros aglomerados
  * 8 - Zona rural, exclusive aglomerado rural

### Código tipo do setor

Nesta divulgação indica se o setor é do Tipo aglomerado subnormal ou não. Nas divulgações futuras todos os códigos de tipo estarão disponíveis Possui 1 dígito.

* **Aglomerado subnormal** - código: S
* **Outro tipo** - código: N

# 6\. Relação das variáveis das planilhas {#dicionarios}

## 6.1. Arquivo Básico {#dic_basico}

### Fonte de dados

* Basico\_UF.xls ou Basico\_UF.csv

### Dicionário de dados

|Nome da variável|Descrição da variável|
|-|-|
|Cod\_setor|Código do setor|
|Cod\_das\_Grandes\_Regiões|Código das Grandes Regiões (Regiões Geográficas)|
|Nome\_das\_Grandes\_Regiões|Nome das Grandes Regiões (Regiões Geográficas)|
|Cod\_UF|Código da Unidade da Federação|
|Nome\_da\_UF|Nome da Unidade da Federação|
|Cod\_meso|Código da mesorregião|
|Nome\_da\_meso|Nome da mesorregião|
|Cod\_micro|Código da microrregião|
|Nome\_da\_micro|Nome da microrregião|
|Cod\_RM|Código da região metropolitana ou RIDE|
|Nome\_da\_RM|Nome da região metropolitana ou RIDE|
|Cod\_município|Código do município|
|Nome\_do\_município|Nome do município|
|Cod\_distrito|Código do distrito|
|Nome\_do\_distrito|Nome do distrito|
|Cod\_subdistrito|Código do subdistrito|
|Nome\_do\_subdistrito|Nome do subdistrito|
|Cod\_bairro|Código de bairro|
|Nome\_do\_bairro|Nome do bairro|
|V1005|Código de situação do setor (urbana/rural)|
|V001|Domicílios particulares permanentes ou pessoas responsáveis por domicílios particulares permanentes|
|V002|Moradores em domicílios particulares permanentes ou população residente em domicílios particulares permanentes|
|V003|Média do número de moradores em domicílios particulares permanentes (obtida pela divisão de Var2 por Var1)|
|V004|Variância do número de moradores em domicílios particulares permanentes|
|V005|Valor do rendimento nominal médio mensal das pessoas responsáveis por domicílios particulares permanentes (com e sem rendimento)|
|V006|Variância do rendimento nominal mensal das pessoas responsáveis por domicílios particulares permanentes (com e sem rendimento)|
|V007|Valor do rendimento nominal médio mensal das pessoas responsáveis por domicílios particulares permanentes (com rendimento)|
|V008|Variância do rendimento nominal mensal das pessoas responsáveis por domicílios particulares permanentes (com rendimento)|
|V009|Valor do rendimento nominal médio mensal das pessoas de 10 anos ou mais de idade (com e sem rendimento)|
|V010|Variância do rendimento nominal mensal das pessoas de 10 anos ou mais de idade (com e sem rendimento)|
|V011|Valor do rendimento nominal médio mensal das pessoas de 10 anos ou mais de idade (com rendimento)|
|V012|Variância do rendimento nominal mensal das pessoas de 10 anos ou mais de idade (com rendimento)|

## 6.2. Arquivo Domicílio, características gerais {#dic_dom01}

### Fonte de dados

* Domicílio01\_UF.xls ou Domicílio01\_UF.csv

### Dicionário de dados

|Nome da variável|Descrição da variável|
|-|-|
|Cod\_setor|Código do setor censitário|
|V1005|Código de situação do setor censitário (ver planilha Basico\_UF.xls)|
|V001|Domicílios particulares e domicílios coletivos|
|V002|Domicílios particulares permanentes|
|V003|Domicílios particulares permanentes do tipo casa|
|V004|Domicílios particulares permanentes do tipo casa de vila ou em condomínio|
|V005|Domicílios particulares permanentes do tipo apartamento|
|V006|Domicílios particulares permanentes próprios e quitados|
|V007|Domicílios particulares permanentes próprios em aquisição|
|V008|Domicílios particulares permanentes alugados|
|V009|Domicílios particulares permanentes cedidos por empregador|
|V010|Domicílios particulares permanentes cedidos de outra forma|
|V011|Domicílios particulares permanentes em outra condição de ocupação (não são próprios, alugados, nem cedidos)|
|V012|Domicílios particulares permanentes com abastecimento de água da rede geral|
|V013|Domicílios particulares permanentes com abastecimento de água de poço ou nascente na propriedade|
|V014|Domicílios particulares permanentes com abastecimento de água da chuva armazenada em cisterna|
|V015|Domicílios particulares permanentes com outra forma de abastecimento de água|
|V016|Domicílios particulares permanentes com banheiro de uso exclusivo dos moradores ou sanitário|
|V017|Domicílios particulares permanentes com banheiro de uso exclusivo dos moradores ou sanitário e esgotamento sanitário via rede geral de esgoto ou pluvial|
|V018|Domicílios particulares permanentes com banheiro de uso exclusivo dos moradores ou sanitário e esgotamento sanitário via fossa séptica|
|V019|Domicílios particulares permanentes com banheiro de uso exclusivo dos moradores ou sanitário e esgotamento sanitário via fossa rudimentar|
|V020|Domicílios particulares permanentes com banheiro de uso exclusivo dos moradores ou sanitário e esgotamento sanitário via vala|
|V021|Domicílios particulares permanentes, com banheiro de uso exclusivo dos moradores ou sanitário e esgotamento sanitário via rio, lago ou mar|
|V022|Domicílios particulares permanentes com banheiro de uso exclusivo dos moradores ou sanitário e esgotamento sanitário via outro escoadouro|
|V023|Domicílios particulares permanentes sem banheiro de uso exclusivo dos moradores e nem sanitário|
|V024|Domicílios particulares permanentes com banheiro de uso exclusivo dos moradores|
|V025|Domicílios particulares permanentes com 1 banheiro de uso exclusivo dos moradores|
|V026|Domicílios particulares permanentes com 2 banheiros de uso exclusivo dos moradores|
|V027|Domicílios particulares permanentes com 3 banheiros de uso exclusivo dos moradores|
|V028|Domicílios particulares permanentes com 4 banheiros de uso exclusivo dos moradores|
|V029|Domicílios particulares permanentes com 5 banheiros de uso exclusivo dos moradores|
|V030|Domicílios particulares permanentes com 6 banheiros de uso exclusivo dos moradores|
|V031|Domicílios particulares permanentes com 7 banheiros de uso exclusivo dos moradores|
|V032|Domicílios particulares permanentes com 8 banheiros de uso exclusivo dos moradores|
|V033|Domicílios particulares permanentes com 9 ou mais banheiros de uso exclusivo dos moradores|
|V034|Domicílios particulares permanentes sem banheiro de uso exclusivo dos moradores|
|V035|Domicílios particulares permanentes com lixo coletado|
|V036|Domicílios particulares permanentes com lixo coletado por servico de limpeza|
|V037|Domicílios particulares permanentes com lixo coletado em caçamba de servico de limpeza|
|V038|Domicílios particulares permanentes com lixo queimado na propriedade|
|V039|Domicílios particulares permanentes com lixo enterrado na propriedade|
|V040|Domicílios particulares permanentes com lixo jogado em terreno baldio ou logradouro|
|V041|Domicílios particulares permanentes com lixo jogado em rio, lago ou mar|
|V042|Domicílios particulares permanentes com outro destino do lixo|
|V043|Domicílios particulares permanentes com energia elétrica|
|V044|Domicílios particulares permanentes com energia elétrica de companhia distribuidora|
|V045|Domicílios particulares permanentes com energia elétrica de outras fontes|
|V046|Domicílios particulares permanentes sem energia elétrica|
|V047|Domicílios particulares permanentes com energia elétrica de companhia distribuidora e com medidor de uso exclusivo|
|V048|Domicílios particulares permanentes com energia elétrica de companhia distribuidora e com medidor comum a mais de um domicílio|
|V049|Domicílios particulares permanentes com energia elétrica de companhia distribuidora e sem medidor|
|V050|Domicílios particulares permanentes com 1 morador|
|V051|Domicílios particulares permanentes com 2 moradores|
|V052|Domicílios particulares permanentes com 3 moradores|
|V053|Domicílios particulares permanentes com 4 moradores|
|V054|Domicílios particulares permanentes com 5 moradores|
|V055|Domicílios particulares permanentes com 6 moradores|
|V056|Domicílios particulares permanentes com 7 moradores|
|V057|Domicílios particulares permanentes com 8 moradores|
|V058|Domicílios particulares permanentes com 9 moradores|
|V059|Domicílios particulares permanentes com 10 ou mais moradores|
|V060|Domicílios particulares permanentes sem morador do sexo masculino|
|V061|Domicílios particulares permanentes sem morador do sexo feminino|
|V062|Domicílios particulares permanentes com homem responsável e mais 1 morador|
|V063|Domicílios particulares permanentes com homem responsável e mais 2 moradores|
|V064|Domicílios particulares permanentes com homem responsável e mais 3 moradores|
|V065|Domicílios particulares permanentes com homem responsável e mais 4 moradores|
|V066|Domicílios particulares permanentes com homem responsável e mais 5 moradores|
|V067|Domicílios particulares permanentes com homem responsável e mais 6 ou mais moradores|
|V068|Domicílios particulares permanentes com homem responsável e sem outro morador|
|V069|Domicílios particulares permanentes com homem responsável e 1 morador do sexo masculino|
|V070|Domicílios particulares permanentes com homem responsável e 2 moradores do sexo masculino|
|V071|Domicílios particulares permanentes com homem responsável e 3 moradores do sexo masculino|
|V072|Domicílios particulares permanentes com homem responsável e 4 moradores do sexo masculino|
|V073|Domicílios particulares permanentes com homem responsável e 5 moradores do sexo masculino|
|V074|Domicílios particulares permanentes com homem responsável e 6 ou mais moradores do sexo masculino|
|V075|Domicílios particulares permanentes com homem responsável e 1 morador sexo feminino|
|V076|Domicílios particulares permanentes com homem responsável e 2 moradores do sexo feminino|
|V077|Domicílios particulares permanentes com homem responsável e 3 moradores do sexo feminino|
|V078|Domicílios particulares permanentes com homem responsável e 4 moradores do sexo feminino|
|V079|Domicílios particulares permanentes com homem responsável e 5 moradores do sexo feminino|
|V080|Domicílios particulares permanentes com homem responsável e 6 ou mais moradores do sexo feminino|
|V081|Domicílios particulares permanentes com mulher responsável e mais 1 morador|
|V082|Domicílios particulares permanentes com mulher responsável e mais 2 moradores|
|V083|Domicílios particulares permanentes com mulher responsável e mais 3 moradores|
|V084|Domicílios particulares permanentes com mulher responsável e mais 4 moradores|
|V085|Domicílios particulares permanentes com mulher responsável e mais 5 moradores|
|V086|Domicílios particulares permanentes com mulher responsável e mais 6 ou mais moradores|
|V087|Domicílios particulares permanentes com mulher responsável e sem outro morador|
|V088|Domicílios particulares permanentes com mulher responsável e mais 1 morador do sexo masculino|
|V089|Domicílios particulares permanentes com mulher responsável e mais 2 moradores do sexo masculino|
|V090|Domicílios particulares permanentes com mulher responsável e mais 3 moradores do sexo masculino|
|V091|Domicílios particulares permanentes com mulher responsável e mais 4 moradores do sexo masculino|
|V092|Domicílios particulares permanentes com mulher responsável e mais 5 moradores do sexo masculino|
|V093|Domicílios particulares permanentes com mulher responsável e mais 6 ou mais moradores do sexo masculino|
|V094|Domicílios particulares permanentes com mulher responsável e mais 1 morador do sexo feminino|
|V095|Domicílios particulares permanentes com mulher responsável e mais 2 moradores do sexo feminino|
|V096|Domicílios particulares permanentes com mulher responsável e mais 3 moradores do sexo feminino|
|V097|Domicílios particulares permanentes com mulher responsável e mais 4 moradores do sexo feminino|
|V098|Domicílios particulares permanentes com mulher responsável e mais 5 moradores do sexo feminino|
|V099|Domicílios particulares permanentes com mulher responsável e mais 6 ou mais moradores do sexo feminino|
|V100|Domicílios particulares permanentes do tipo casa próprios e quitados|
|V101|Domicílios particulares permanentes do tipo casa próprios e em aquisição|
|V102|Domicílios particulares permanentes do tipo casa alugados|
|V103|Domicílios particulares permanentes do tipo casa cedidos por empregador|
|V104|Domicílios particulares permanentes do tipo casa cedidos de outra forma|
|V105|Domicílios particulares permanentes do tipo casa em outra condição|
|V106|Domicílios particulares permanentes do tipo casa com abastecimento de água da rede geral|
|V107|Domicílios particulares permanentes do tipo casa com abastecimento de água de poço ou nascente na propriedade|
|V108|Domicílios particulares permanentes do tipo casa com abastecimento de água da chuva armazenada em cisterna|
|V109|Domicílios particulares permanentes do tipo casa com outra forma de abastecimento de água|
|V110|Domicílios particulares permanentes do tipo casa com banheiro de uso exclusivo dos moradores ou sanitário|
|V111|Domicílios particulares permanentes do tipo casa com banheiro de uso exclusivo dos moradores ou sanitário e esgotamento sanitário via rede geral de esgoto ou pluvial|
|V112|Domicílios particulares permanentes do tipo casa com banheiro de uso exclusivo dos moradores ou sanitário e esgotamento sanitário via fossa séptica|
|V113|Domicílios particulares permanentes do tipo casa com banheiro de uso exclusivo dos moradores ou sanitário e esgotamento sanitário via fossa rudimentar|
|V114|Domicílios particulares permanentes do tipo casa com banheiro de uso exclusivo dos moradores ou sanitário e esgotamento sanitário via vala|
|V115|Domicílios particulares permanentes do tipo casa com banheiro de uso exclusivo dos moradores ou sanitário e esgotamento sanitário via rio, lago ou mar|
|V116|Domicílios particulares permanentes do tipo casa com banheiro de uso exclusivo dos moradores ou sanitário e esgotamento sanitário via outro escoadouro|
|V117|Domicílios particulares permanentes do tipo casa sem banheiro de uso exclusivo dos moradores e nem sanitário|
|V118|Domicílios particulares permanentes do tipo casa com banheiro de uso exclusivo dos moradores|
|V119|Domicílios particulares permanentes do tipo casa com 1 banheiro de uso exclusivo dos moradores|
|V120|Domicílios particulares permanentes do tipo casa com 2 banheiros de uso exclusivo dos moradores|
|V121|Domicílios particulares permanentes do tipo casa com 3 banheiros de uso exclusivo dos moradores|
|V122|Domicílios particulares permanentes do tipo casa com 4 ou mais banheiros|
|V123|Domicílios particulares permanentes do tipo casa sem banheiro de uso exclusivo dos moradores|
|V124|Domicílios particulares permanentes do tipo casa com lixo coletado|
|V125|Domicílios particulares permanentes do tipo casa com lixo coletado por servico de limpeza|
|V126|Domicílios particulares permanentes do tipo casa com lixo coletado em caçamba de servico de limpeza|
|V127|Domicílios particulares permanentes do tipo casa com lixo queimado na propriedade|
|V128|Domicílios particulares permanentes do tipo casa com lixo enterrado na propriedade|
|V129|Domicílios particulares permanentes do tipo casa com lixo jogado em terreno baldio ou logradouro|
|V130|Domicílios particulares permanentes do tipo casa com lixo jogado em rio, lago ou mar|
|V131|Domicílios particulares permanentes do tipo casa com outro destino do lixo|
|V132|Domicílios particulares permanentes do tipo casa com energia elétrica|
|V133|Domicílios particulares permanentes do tipo casa com energia elétrica de companhia distribuidora|
|V134|Domicílios particulares permanentes do tipo casa com energia elétrica de outras fontes|
|V135|Domicílios particulares permanentes do tipo casa sem energia elétrica|
|V136|Domicílios particulares permanentes do tipo casa com energia elétrica de companhia distribuidora e com medidor de uso exclusivo|
|V137|Domicílios particulares permanentes do tipo casa com energia elétrica de companhia distribuidora e com medidor comum a mais de um domicílio|
|V138|Domicílios particulares permanentes do tipo casa com energia elétrica de companhia distribuidora e sem medidor|
|V139|Domicílios particulares permanentes do tipo casa de vila ou em condomínio próprios e quitados|
|V140|Domicílios particulares permanentes do tipo casa de vila ou em condomínio próprios e em aquisição|
|V141|Domicílios particulares permanentes do tipo casa de vila ou em condomínio alugados|
|V142|Domicílios particulares permanentes do tipo casa de vila ou em condomínio cedidos por empregador|
|V143|Domicílios particulares permanentes do tipo casa de vila ou em condomínio cedidos de outra forma|
|V144|Domicílios particulares permanentes do tipo casa de vila ou em condomínio em outra condição|
|V145|Domicílios particulares permanentes do tipo casa de vila ou em condomínio com abastecimento de água da rede geral|
|V146|Domicílios particulares permanentes do tipo casa de vila ou em condomínio com abastecimento de água de poço ou nascente na propriedade|
|V147|Domicílios particulares permanentes do tipo casa de vila ou em condomínio com abastecimento de água da chuva armazenada em cisterna|
|V148|Domicílios particulares permanentes do tipo casa de vila ou em condomínio com outra forma de abastecimento de água|
|V149|Domicílios particulares permanentes do tipo casa de vila ou em condomínio com banheiro de uso exclusivo dos moradores ou sanitário|
|V150|Domicílios particulares permanentes do tipo casa de vila ou em condomínio com banheiro de uso exclusivo dos moradores ou sanitário e esgotamento sanitário via rede geral de esgoto ou pluvial|
|V151|Domicílios particulares permanentes do tipo casa de vila ou em condomínio com banheiro de uso exclusivo dos moradores ou sanitário e esgotamento sanitário via fossa séptica|
|V152|Domicílios particulares permanentes do tipo casa de vila ou em condomínio com banheiro de uso exclusivo dos moradores ou sanitário e esgotamento sanitário via fossa rudimentar|
|V153|Domicílios particulares permanentes do tipo casa de vila ou em condomínio com banheiro de uso exclusivo dos moradores ou sanitário e esgotamento sanitário via vala|
|V154|Domicílios particulares permanentes do tipo casa de vila ou em condomínio com banheiro de uso exclusivo dos moradores ou sanitário e esgotamento sanitário via rio, lago ou mar|
|V155|Domicílios particulares permanentes do tipo casa de vila ou em condomínio com banheiro de uso exclusivo dos moradores ou sanitário e esgotamento sanitário via outro escoadouro|
|V156|Domicílios particulares permanentes do tipo casa de vila ou em condomínio sem banheiro e nem sanitário|
|V157|Domicílios particulares permanentes do tipo casa de vila ou em condomínio com banheiro de uso exclusivo dos moradores|
|V158|Domicílios particulares permanentes do tipo casa de vila ou em condomínio com 1 banheiro de uso exclusivo dos moradores|
|V159|Domicílios particulares permanentes do tipo casa de vila ou em condomínio com 2 banheiros de uso exclusivo dos moradores|
|V160|Domicílios particulares permanentes do tipo casa de vila ou em condomínio com 3 banheiros de uso exclusivo dos moradores|
|V161|Domicílios particulares permanentes do tipo casa de vila ou em condomínio com 4 ou mais banheiros de uso exclusivo dos moradores|
|V162|Domicílios particulares permanentes do tipo casa de vila ou em condomínio sem banheiro de uso exclusivo dos moradores|
|V163|Domicílios particulares permanentes do tipo casa de vila ou em condomínio com lixo coletado|
|V164|Domicílios particulares permanentes do tipo casa de vila ou em condomínio com lixo coletado por servico de limpeza|
|V165|Domicílios particulares permanentes do tipo casa de vila ou em condomínio com lixo coletado em caçamba de servico de limpeza|
|V166|Domicílios particulares permanentes do tipo casa de vila ou em condomínio com lixo queimado na propriedade|
|V167|Domicílios particulares permanentes do tipo casa de vila ou em condomínio com lixo enterrado na propriedade|
|V168|Domicílios particulares permanentes do tipo casa de vila ou em condomínio com lixo jogado em terreno baldio ou logradouro|
|V169|Domicílios particulares permanentes do tipo casa de vila ou em condomínio com lixo jogado em rio, lago ou mar|
|V170|Domicílios particulares permanentes do tipo casa de vila ou em condomínio com outro destino do lixo|
|V171|Domicílios particulares permanentes do tipo casa de vila ou em condomínio com energia elétrica|
|V172|Domicílios particulares permanentes do tipo casa de vila ou em condomínio com energia elétrica de companhia distribuidora|
|V173|Domicílios particulares permanentes do tipo casa de vila ou em condomínio com energia elétrica de outras fontes|
|V174|Domicílios particulares permanentes do tipo casa de vila ou em condomínio sem energia elétrica|
|V175|Domicílios particulares permanentes do tipo casa de vila ou em condomínio com energia elétrica de companhia distribuidora e com medidor de uso exclusivo|
|V176|Domicílios particulares permanentes do tipo casa de vila ou em condomínio com energia elétrica de companhia distribuidora e com medidor comum a mais de um Domicílio|
|V177|Domicílios particulares permanentes do tipo casa de vila ou em condomínio com energia elétrica de companhia distribuidora e sem medidor|
|V178|Domicílios particulares permanentes do tipo apartamento próprios e quitados|
|V179|Domicílios particulares permanentes do tipo apartamento próprios e em aquisição|
|V180|Domicílios particulares permanentes do tipo apartamento alugados|
|V181|Domicílios particulares permanentes do tipo apartamento cedidos por empregador|
|V182|Domicílios particulares permanentes do tipo apartamento cedidos de outra forma|
|V183|Domicílios particulares permanentes do tipo apartamento outra condição|
|V184|Domicílios particulares permanentes do tipo apartamento com abastecimento de água da rede geral|
|V185|Domicílios particulares permanentes do tipo apartamento com abastecimento de água de poço ou nascente na propriedade|
|V186|Domicílios particulares permanentes do tipo apartamento com abastecimento de água de chuva armazenada em cisterna|
|V187|Domicílios particulares permanentes do tipo apartamento com outra forma de abastecimento de água|
|V188|Domicílios particulares permanentes do tipo apartamento com banheiro de uso exclusivo dos moradores ou sanitário|
|V189|Domicílios particulares permanentes do tipo apartamento com banheiro de uso exclusivo dos moradores ou sanitário e esgotamento sanitário via rede geral de esgoto ou pluvial|
|V190|Domicílios particulares permanentes do tipo apartamento com banheiro de uso exclusivo dos moradores ou sanitário e esgotamento sanitário via fossa séptica|
|V191|Domicílios particulares permanentes do tipo apartamento com banheiro de uso exclusivo dos moradores ou sanitário e esgotamento sanitário via fossa rudimentar|
|V192|Domicílios particulares permanentes do tipo apartamento com banheiro de uso exclusivo dos moradores ou sanitário e esgotamento sanitário via vala|
|V193|Domicílios particulares permanentes do tipo apartamento com banheiro de uso exclusivo dos moradores ou sanitário e esgotamento sanitário via rio, lago ou mar|
|V194|Domicílios particulares permanentes do tipo apartamento com banheiro de uso exclusivo dos moradores ou sanitário e esgotamento sanitário via outro escoadouro|
|V195|Domicílios particulares permanentes do tipo apartamento sem banheiro de uso exclusivo dos moradores e nem sanitário|
|V196|Domicílios particulares permanentes do tipo apartamento com banheiro de uso exclusivo dos moradores|
|V197|Domicílios particulares permanentes do tipo apartamento com 1 banheiro de uso exclusivo dos moradores|
|V198|Domicílios particulares permanentes do tipo apartamento com 2 banheiros de uso exclusivo dos moradores|
|V199|Domicílios particulares permanentes do tipo apartamento com 3 banheiros de uso exclusivo dos moradores|
|V200|Domicílios particulares permanentes do tipo apartamento com 4 ou mais banheiros de uso exclusivo dos moradores|
|V201|Domicílios particulares permanentes do tipo apartamento sem banheiro de uso exclusivo dos moradores|
|V202|Domicílios particulares permanentes do tipo apartamento com lixo coletado|
|V203|Domicílios particulares permanentes do tipo apartamento com lixo coletado por servico de limpeza|
|V204|Domicílios particulares permanentes do tipo apartamento com lixo coletado em caçamba de servico de limpeza|
|V205|Domicílios particulares permanentes do tipo apartamento com lixo queimado na propriedade|
|V206|Domicílios particulares permanentes do tipo apartamento com lixo enterrado na propriedade|
|V207|Domicílios particulares permanentes do tipo apartamento com lixo jogado em terreno baldio ou logradouro|
|V208|Domicílios particulares permanentes do tipo apartamento com lixo jogado em rio, lago ou mar|
|V209|Domicílios particulares permanentes do tipo apartamento com outro destino do lixo|
|V210|Domicílios particulares permanentes do tipo apartamento com energia elétrica|
|V211|Domicílios particulares permanentes do tipo apartamento com energia elétrica de companhia distribuidora|
|V212|Domicílios particulares permanentes do tipo apartamento com energia elétrica de outras fontes|
|V213|Domicílios particulares permanentes do tipo apartamento sem energia elétrica|
|V214|Domicílios particulares permanentes do tipo apartamento com energia elétrica de companhia distribuidora e com medidor de uso exclusivo|
|V215|Domicílios particulares permanentes do tipo apartamento com energia elétrica de companhia distribuidora e com medidor comum a mais de um domicílio|
|V216|Domicílios particulares permanentes do tipo apartamento com energia elétrica de companhia distribuidora e sem medidor|
|V217|Domicílios particulares permanentes com lixo coletado e abastecimento de água da rede geral|
|V218|Domicílios particulares permanentes com lixo coletado e abastecimento de água de poço ou nascente na propriedade|
|V219|Domicílios particulares permanentes com lixo coletado e abastecimento de água de chuva armazenada em cisterna|
|V220|Domicílios particulares permanentes com lixo coletado e outra forma de abastecimento de água|
|V221|Domicílios particulares permanentes com lixo coletado e banheiro de uso exclusivo dos moradores ou sanitário|
|V222|Domicílios particulares permanentes com lixo coletado, banheiro de uso exclusivo dos moradores ou sanitário e esgotamento sanitário via rede geral de esgoto ou pluvial|
|V223|Domicílios particulares permanentes com lixo coletado, banheiro de uso exclusivo dos moradores ou sanitário e esgotamento sanitário via fossa séptica|
|V224|Domicílios particulares permanentes com lixo coletado, banheiro de uso exclusivo dos moradores ou sanitário e esgotamento sanitário via fossa rudimentar|
|V225|Domicílios particulares permanentes com lixo coletado, banheiro de uso exclusivo dos moradores ou sanitário e esgotamento sanitário via vala|
|V226|Domicílios particulares permanentes com lixo coletado, banheiro de uso exclusivo dos moradores ou sanitário e esgotamento sanitário via rio, lago ou mar|
|V227|Domicílios particulares permanentes com lixo coletado, banheiro ou sanitário e esgotamento sanitário via outro escoadouro|
|V228|Domicílios particulares permanentes com lixo coletado e sem banheiro de uso exclusivo dos moradores e nem sanitário|
|V229|Domicílios particulares permanentes com lixo coletado e banheiro|
|V230|Domicílios particulares permanentes com outra forma de destino do lixo e abastecimento de água da rede geral|
|V231|Domicílios particulares permanentes com outra forma de destino do lixo e abastecimento de água de poço ou nascente na propriedade|
|V232|Domicílios particulares permanentes com outra forma de destino do lixo e abastecimento de água de chuva armazenada em cisterna|
|V233|Domicílios particulares permanentes com outra forma de destino do lixo e outra forma de abastecimento de água|
|V234|Domicílios particulares permanentes com outra forma de destino do lixo e banheiro ou sanitário|
|V235|Domicílios particulares permanentes com outra forma de destino do lixo, banheiro de uso exclusivo dos moradores ou sanitário e esgotamento sanitário via rede geral de esgoto ou pluvial|
|V236|Domicílios particulares permanentes com outra forma de destino do lixo, banheiro de uso exclusivo dos moradores ou sanitário e esgotamento sanitário via fossa séptica|
|V237|Domicílios particulares permanentes com outra forma de destino do lixo, banheiro de uso exclusivo dos moradores ou sanitário e esgotamento sanitário via fossa rudimentar|
|V238|Domicílios particulares permanentes com outra forma de destino do lixo, banheiro de uso exclusivo dos moradores ou sanitário e esgotamento sanitário via vala|
|V239|Domicílios particulares permanentes com outra forma de destino do lixo, banheiro de uso exclusivo dos moradores ou sanitário e esgotamento sanitário via rio, lago ou mar|
|V240|Domicílios particulares permanentes com outra forma de destino do lixo, banheiro de uso exclusivo dos moradores ou sanitário e esgotamento sanitário via outro escoadouro|
|V241|Domicílios particulares permanentes com outra forma de destino do lixo e sem banheiro de uso exclusivo dos moradores e nem sanitário|

## 6.3. Arquivo Domicílio, moradores {#dic_dom02}

### Fonte de dados

* Domicílio01\_UF.xls ou Domicílio01\_UF.csv

### Dicionário de dados

|Nome da variável|Descrição da variável|
|-|-|
|Cod\_setor|Código do setor censitário|
|V1005|Código de situação do setor censitário (ver planilha Basico\_UF.xls)|
|V001|Moradores em domicílios particulares e domicílios coletivos|
|V002|Moradores em domicílios particulares permanentes|
|V003|Moradores em domicílios particulares permanentes do tipo casa|
|V004|Moradores em domicílios particulares permanentes do tipo casa de vila ou em condomínio|
|V005|Moradores em domicílios particulares permanentes do tipo apartamento|
|V006|Moradores em domicílios particulares permanentes próprios e quitados|
|V007|Moradores em domicílios particulares permanentes próprios e em aquisição|
|V008|Moradores em domicílios particulares permanentes alugados|
|V009|Moradores em domicílios particulares permanentes cedidos por empregador|
|V010|Moradores em domicílios particulares permanentes cedidos de outra forma|
|V011|Moradores em domicílios particulares permanentes com outra condição de ocupação (não são próprios, alugados, nem cedidos)|
|V012|Moradores em domicílios particulares permanentes com abastecimento de água da rede geral|
|V013|Moradores em domicílios particulares permanentes com abastecimento de água de poço ou nascente na propriedade|
|V014|Moradores em domicílios particulares permanentes com abastecimento de água de chuva armazenada em cisterna|
|V015|Moradores em domicílios particulares permanentes com outra forma de abastecimento de água|
|V016|Moradores em domicílios particulares permanentes com banheiro de uso exclusivo dos moradores ou sanitário|
|V017|Moradores em domicílios particulares permanentes com banheiro de uso exclusivo dos moradores ou sanitário e esgotamento sanitário via rede geral de esgoto ou pluvial|
|V018|Moradores em domicílios particulares permanentes com banheiro de uso exclusivo dos moradores ou sanitário e esgotamento sanitário via fossa séptica|
|V019|Moradores em domicílios particulares permanentes com banheiro de uso exclusivo dos moradores ou sanitário e esgotamento sanitário via fossa rudimentar|
|V020|Moradores em domicílios particulares permanentes com banheiro de uso exclusivo dos moradores ou sanitário e esgotamento sanitário via vala|
|V021|Moradores em domicílios particulares permanentes com banheiro de uso exclusivo dos moradores ou sanitário e esgotamento sanitário via rio, lago ou mar|
|V022|Moradores em domicílios particulares permanentes com banheiro de uso exclusivo dos moradores ou sanitário e esgotamento sanitário via outro escoadouro|
|V023|Moradores em domicílios particulares permanentes sem banheiro de uso exclusivo dos moradores e nem sanitário|
|V024|Moradores em domicílios particulares permanentes com banheiro de uso exclusivo dos moradores|
|V025|Moradores em domicílios particulares permanentes com 1 banheiro de uso exclusivo dos moradores|
|V026|Moradores em domicílios particulares permanentes com 2 banheiros de uso exclusivo dos moradores|
|V027|Moradores em domicílios particulares permanentes com 3 banheiros de uso exclusivo dos moradores|
|V028|Moradores em domicílios particulares permanentes com 4 ou mais banheiros de uso exclusivo dos moradores|
|V029|Moradores em domicílios particulares permanentes sem banheiro de uso exclusivo dos moradores|
|V030|Moradores em domicílios particulares permanentes com lixo coletado|
|V031|Moradores em domicílios particulares permanentes com lixo coletado por servico de limpeza|
|V032|Moradores em domicílios particulares permanentes com lixo coletado em caçamba de servico de limpeza|
|V033|Moradores em domicílios particulares permanentes com lixo queimado na propriedade|
|V034|Moradores em domicílios particulares permanentes com lixo enterrado na propriedade|
|V035|Moradores em domicílios particulares permanentes com lixo jogado em terreno baldio ou logradouro|
|V036|Moradores em domicílios particulares permanentes com lixo jogado em rio, lago ou mar|
|V037|Moradores em domicílios particulares permanentes com outro destino do lixo|
|V038|Moradores em domicílios particulares permanentes com energia elétrica|
|V039|Moradores em domicílios particulares permanentes com energia elétrica de companhia distribuidora|
|V040|Moradores em domicílios particulares permanentes com energia elétrica de outras fontes|
|V041|Moradores em domicílios particulares permanentes sem energia elétrica|
|V042|Moradores em domicílios particulares permanentes com energia elétrica de companhia distribuidora e com medidor de uso exclusivo|
|V043|Moradores em domicílios particulares permanentes com energia elétrica de companhia distribuidora e com medidor comum a mais de um Domicílio|
|V044|Moradores em domicílios particulares permanentes com energia elétrica de companhia distribuidora e sem medidor|
|V045|Homens moradores em domicílios particulares e domicílios coletivos|
|V046|Homens moradores em domicílios particulares permanentes|
|V047|Homens moradores em domicílios particulares permanentes do tipo casa|
|V048|Homens moradores em domicílios particulares permanentes do tipo casa de vila ou em condomínio|
|V049|Homens moradores em domicílios particulares permanentes do tipo apartamento|
|V050|Homens moradores em domicílios particulares permanentes próprios e quitados|
|V051|Homens moradores em domicílios particulares permanentes próprios e em aquisição|
|V052|Homens moradores em domicílios particulares permanentes alugados|
|V053|Homens moradores em domicílios particulares permanentes cedidos por empregador|
|V054|Homens moradores em domicílios particulares permanentes cedidos de outra forma|
|V055|Homens moradores em domicílios particulares permanentes com outra condição de ocupação (não são próprios, alugados, nem cedidos)|
|V056|Homens moradores em domicílios particulares permanentes com abastecimento de água da rede geral|
|V057|Homens moradores em domicílios particulares permanentes com abastecimento de água de poço ou nascente na propriedade|
|V058|Homens moradores em domicílios particulares permanentes com abastecimento de água de chuva armazenada em cisterna|
|V059|Homens moradores em domicílios particulares permanentes com outra forma de abastecimento de água|
|V060|Homens moradores em domicílios particulares permanentes com banheiro de uso exclusivo dos moradores ou sanitário|
|V061|Homens moradores em domicílios particulares permanentes com banheiro de uso exclusivo dos moradores ou sanitário e esgotamento sanitário via rede geral de esgoto ou pluvial|
|V062|Homens moradores em domicílios particulares permanentes com banheiro de uso exclusivo dos moradores ou sanitário e esgotamento sanitário via fossa séptica|
|V063|Homens moradores em domicílios particulares permanentes com banheiro de uso exclusivo dos moradores ou sanitário e esgotamento sanitário via fossa rudimentar|
|V064|Homens moradores em domicílios particulares permanentes com banheiro de uso exclusivo dos moradores ou sanitário e esgotamento sanitário via vala|
|V065|Homens moradores em domicílios particulares permanentes com banheiro de uso exclusivo dos moradores ou sanitário e esgotamento sanitário via rio, lago ou mar|
|V066|Homens moradores em domicílios particulares permanentes com banheiro de uso exclusivo dos moradores ou sanitário e esgotamento sanitário via outro escoadouro|
|V067|Homens moradores em domicílios particulares permanentes sem banheiro de uso exclusivo dos moradores e nem sanitário|
|V068|Homens moradores em domicílios particulares permanentes com banheiro de uso exclusivo dos moradores|
|V069|Homens moradores em domicílios particulares permanentes com 1 banheiro de uso exclusivo dos moradores|
|V070|Homens moradores em domicílios particulares permanentes com 2 banheiros de uso exclusivo dos moradores|
|V071|Homens moradores em domicílios particulares permanentes com 3 banheiros de uso exclusivo dos moradores|
|V072|Homens moradores em domicílios particulares permanentes com 4 ou mais banheiros de uso exclusivo dos moradores|
|V073|Homens moradores em domicílios particulares permanentes sem banheiro de uso exclusivo dos moradores|
|V074|Homens moradores em domicílios particulares permanentes com lixo coletado|
|V075|Homens moradores em domicílios particulares permanentes com lixo coletado por servico de limpeza|
|V076|Homens moradores em domicílios particulares permanentes com lixo coletado em caçamba de servico de limpeza|
|V077|Homens moradores em domicílios particulares permanentes com lixo queimado na propriedade|
|V078|Homens moradores em domicílios particulares permanentes com lixo enterrado na propriedade|
|V079|Homens moradores em domicílios particulares permanentes com lixo jogado em terreno baldio ou logradouro|
|V080|Homens moradores em domicílios particulares permanentes com lixo jogado em rio, lago ou mar|
|V081|Homens moradores em domicílios particulares permanentes com outro destino do lixo|
|V082|Homens moradores em domicílios particulares permanentes com energia elétrica|
|V083|Homens moradores em domicílios particulares permanentes com energia elétrica de companhia distribuidora|
|V084|Homens moradores em domicílios particulares permanentes com energia elétrica de outras fontes|
|V085|Homens moradores em domicílios particulares permanentes sem energia elétrica|
|V086|Homens moradores em domicílios particulares permanentes com energia elétrica de companhia distribuidora e com medidor de uso exclusivo|
|V087|Homens moradores em domicílios particulares permanentes com energia elétrica de companhia distribuidora e com medidor comum a mais de um domicílio|
|V088|Homens moradores em domicílios particulares permanentes com energia elétrica de companhia distribuidora e sem medidor|
|V089|Mulheres moradoras em domicílios particulares e domicílios coletivos|
|V090|Mulheres moradoras em domicílios particulares permanentes|
|V091|Mulheres moradoras em domicílios particulares permanentes do tipo casa|
|V092|Mulheres moradoras em domicílios particulares permanentes do tipo casa de vila ou em condomínio|
|V093|Mulheres moradoras em domicílios particulares permanentes do tipo apartamento|
|V094|Mulheres moradoras em domicílios particulares permanentes próprios e quitados|
|V095|Mulheres moradoras em domicílios particulares permanentes próprios e em aquisição|
|V096|Mulheres moradoras em domicílios particulares permanentes alugados|
|V097|Mulheres moradoras em domicílios particulares permanentes cedidos por empregador|
|V098|Mulheres moradoras em domicílios particulares permanentes cedidos de outra forma|
|V099|Mulheres moradoras em domicílios particulares permanentes com outra condição de ocupação (não são próprios, alugados, nem cedidos)|
|V100|Mulheres moradoras em domicílios particulares permanentes com abastecimento de água da rede geral|
|V101|Mulheres moradoras em domicílios particulares permanentes com abastecimento de água de poço ou nascente na propriedade|
|V102|Mulheres moradoras em domicílios particulares permanentes com abastecimento de água de chuva armazenada em cisterna|
|V103|Mulheres moradoras em domicílios particulares permanentes com outra forma de abastecimento de água|
|V104|Mulheres moradoras em domicílios particulares permanentes com banheiro de uso exclusivo dos moradores ou sanitário|
|V105|Mulheres moradoras em domicílios particulares permanentes com banheiro de uso exclusivo dos moradores ou sanitário e esgotamento sanitário via rede geral de esgoto ou pluvial|
|V106|Mulheres moradoras em domicílios particulares permanentes com banheiro de uso exclusivo dos moradores ou sanitário e esgotamento sanitário via fossa séptica|
|V107|Mulheres moradoras em domicílios particulares permanentes com banheiro de uso exclusivo dos moradores ou sanitário e esgotamento sanitário via fossa rudimentar|
|V108|Mulheres moradoras em domicílios particulares permanentes com banheiro de uso exclusivo dos moradores ou sanitário e esgotamento sanitário via vala|
|V109|Mulheres moradoras em domicílios particulares permanentes com banheiro de uso exclusivo dos moradores ou sanitário e esgotamento sanitário via rio, lago ou mar|
|V110|Mulheres moradoras em domicílios particulares permanentes com banheiro de uso exclusivo dos moradores ou sanitário e esgotamento sanitário via outro escoadouro|
|V111|Mulheres moradoras em domicílios particulares permanentes sem banheiro de uso exclusivo dos moradores e nem sanitário|
|V112|Mulheres moradoras em domicílios particulares permanentes com banheiro de uso exclusivo dos moradores|
|V113|Mulheres moradoras em domicílios particulares permanentes com 1 banheiro de uso exclusivo dos moradores|
|V114|Mulheres moradoras em domicílios particulares permanentes com 2 banheiros de uso exclusivo dos moradores|
|V115|Mulheres moradoras em domicílios particulares permanentes com 3 banheiros de uso exclusivo dos moradores|
|V116|Mulheres moradoras em domicílios particulares permanentes com 4 ou mais banheiros de uso exclusivo dos moradores|
|V117|Mulheres moradoras em domicílios particulares permanentes sem banheiro de uso exclusivo dos moradores|
|V118|Mulheres moradoras em domicílios particulares permanentes com lixo coletado|
|V119|Mulheres moradoras em domicílios particulares permanentes com lixo coletado por servico de limpeza|
|V120|Mulheres moradoras em domicílios particulares permanentes com lixo coletado em caçamba de servico de limpeza|
|V121|Mulheres moradoras em domicílios particulares permanentes com lixo queimado na propriedade|
|V122|Mulheres moradoras em domicílios particulares permanentes com lixo enterrado na propriedade|
|V123|Mulheres moradoras em domicílios particulares permanentes com lixo jogado em terreno baldio ou logradouro|
|V124|Mulheres moradoras em domicílios particulares permanentes com lixo jogado em rio, lago ou mar|
|V125|Mulheres moradoras em domicílios particulares permanentes com outro destino do lixo|
|V126|Mulheres moradoras em domicílios particulares permanentes com energia elétrica|
|V127|Mulheres moradoras em domicílios particulares permanentes com energia elétrica de companhia distribuidora|
|V128|Mulheres moradoras em domicílios particulares permanentes com energia elétrica de outras fontes|
|V129|Mulheres moradoras em domicílios particulares permanentes sem energia elétrica|
|V130|Mulheres moradoras em domicílios particulares permanentes com energia elétrica de companhia distribuidora e com medidor de uso exclusivo|
|V131|Mulheres moradoras em domicílios particulares permanentes com energia elétrica de companhia distribuidora e com medidor comum a mais de um Domicílio|
|V132|Mulheres moradoras em domicílios particulares permanentes com energia elétrica de companhia distribuidora e sem medidor|

## 6.4. Arquivo Responsável pelo domicílio, mulheres {#dic_resp01}

### Fonte de dados:

* Responsavel01\_UF.xls ou Responsavel01\_UF.csv

### Dicionário de dados

|Nome da variável|Descrição da variável|
|-|-|
|Cod\_setor|Código do setor censitário|
|V1005|Código de situação do setor censitário (ver planilha Basico\_UF.xls)|
|V001|Pessoas responsáveis, do sexo feminino|
|V002|Pessoas responsáveis com 10 anos de idade, do sexo feminino|
|V003|Pessoas responsáveis com 11 anos de idade, do sexo feminino|
|V004|Pessoas responsáveis com 12 anos de idade, do sexo feminino|
|V005|Pessoas responsáveis com 13 anos de idade, do sexo feminino|
|V006|Pessoas responsáveis com 14 anos de idade, do sexo feminino|
|V007|Pessoas responsáveis com 15 anos de idade, do sexo feminino|
|V008|Pessoas responsáveis com 16 anos de idade, do sexo feminino|
|V009|Pessoas responsáveis com 17 anos de idade, do sexo feminino|
|V010|Pessoas responsáveis com 18 anos de idade, do sexo feminino|
|V011|Pessoas responsáveis com 19 anos de idade, do sexo feminino|
|V012|Pessoas responsáveis com 20 anos de idade, do sexo feminino|
|V013|Pessoas responsáveis com 21 anos de idade, do sexo feminino|
|V014|Pessoas responsáveis com 22 anos de idade, do sexo feminino|
|V015|Pessoas responsáveis com 23 anos de idade, do sexo feminino|
|V016|Pessoas responsáveis com 24 anos de idade, do sexo feminino|
|V017|Pessoas responsáveis com 25 anos de idade, do sexo feminino|
|V018|Pessoas responsáveis com 26 anos de idade, do sexo feminino|
|V019|Pessoas responsáveis com 27 anos de idade, do sexo feminino|
|V020|Pessoas responsáveis com 28 anos de idade, do sexo feminino|
|V021|Pessoas responsáveis com 29 anos de idade, do sexo feminino|
|V022|Pessoas responsáveis com 30 anos de idade, do sexo feminino|
|V023|Pessoas responsáveis com 31 anos de idade, do sexo feminino|
|V024|Pessoas responsáveis com 32 anos de idade, do sexo feminino|
|V025|Pessoas responsáveis com 33 anos de idade, do sexo feminino|
|V026|Pessoas responsáveis com 34 anos de idade, do sexo feminino|
|V027|Pessoas responsáveis com 35 anos de idade, do sexo feminino|
|V028|Pessoas responsáveis com 36 anos de idade, do sexo feminino|
|V029|Pessoas responsáveis com 37 anos de idade, do sexo feminino|
|V030|Pessoas responsáveis com 38 anos de idade, do sexo feminino|
|V031|Pessoas responsáveis com 39 anos de idade, do sexo feminino|
|V032|Pessoas responsáveis com 40 anos de idade, do sexo feminino|
|V033|Pessoas responsáveis com 41 anos de idade, do sexo feminino|
|V034|Pessoas responsáveis com 42 anos de idade, do sexo feminino|
|V035|Pessoas responsáveis com 43 anos de idade, do sexo feminino|
|V036|Pessoas responsáveis com 44 anos de idade, do sexo feminino|
|V037|Pessoas responsáveis com 45 anos de idade, do sexo feminino|
|V038|Pessoas responsáveis com 46 anos de idade, do sexo feminino|
|V039|Pessoas responsáveis com 47 anos de idade, do sexo feminino|
|V040|Pessoas responsáveis com 48 anos de idade, do sexo feminino|
|V041|Pessoas responsáveis com 49 anos de idade, do sexo feminino|
|V042|Pessoas responsáveis com 50 anos de idade, do sexo feminino|
|V043|Pessoas responsáveis com 51 anos de idade, do sexo feminino|
|V044|Pessoas responsáveis com 52 anos de idade, do sexo feminino|
|V045|Pessoas responsáveis com 53 anos de idade, do sexo feminino|
|V046|Pessoas responsáveis com 54 anos de idade, do sexo feminino|
|V047|Pessoas responsáveis com 55 anos de idade, do sexo feminino|
|V048|Pessoas responsáveis com 56 anos de idade, do sexo feminino|
|V049|Pessoas responsáveis com 57 anos de idade, do sexo feminino|
|V050|Pessoas responsáveis com 58 anos de idade, do sexo feminino|
|V051|Pessoas responsáveis com 59 anos de idade, do sexo feminino|
|V052|Pessoas responsáveis com 60 anos de idade, do sexo feminino|
|V053|Pessoas responsáveis com 61 anos de idade, do sexo feminino|
|V054|Pessoas responsáveis com 62 anos de idade, do sexo feminino|
|V055|Pessoas responsáveis com 63 anos de idade, do sexo feminino|
|V056|Pessoas responsáveis com 64 anos de idade, do sexo feminino|
|V057|Pessoas responsáveis com 65 anos de idade, do sexo feminino|
|V058|Pessoas responsáveis com 66 anos de idade, do sexo feminino|
|V059|Pessoas responsáveis com 67 anos de idade, do sexo feminino|
|V060|Pessoas responsáveis com 68 anos de idade, do sexo feminino|
|V061|Pessoas responsáveis com 69 anos de idade, do sexo feminino|
|V062|Pessoas responsáveis com 70 anos de idade, do sexo feminino|
|V063|Pessoas responsáveis com 71 anos de idade, do sexo feminino|
|V064|Pessoas responsáveis com 72 anos de idade, do sexo feminino|
|V065|Pessoas responsáveis com 73 anos de idade, do sexo feminino|
|V066|Pessoas responsáveis com 74 anos de idade, do sexo feminino|
|V067|Pessoas responsáveis com 75 anos de idade, do sexo feminino|
|V068|Pessoas responsáveis com 76 anos de idade, do sexo feminino|
|V069|Pessoas responsáveis com 77 anos de idade, do sexo feminino|
|V070|Pessoas responsáveis com 78 anos de idade, do sexo feminino|
|V071|Pessoas responsáveis com 79 anos de idade, do sexo feminino|
|V072|Pessoas responsáveis com 80 anos de idade, do sexo feminino|
|V073|Pessoas responsáveis com 81 anos de idade, do sexo feminino|
|V074|Pessoas responsáveis com 82 anos de idade, do sexo feminino|
|V075|Pessoas responsáveis com 83 anos de idade, do sexo feminino|
|V076|Pessoas responsáveis com 84 anos de idade, do sexo feminino|
|V077|Pessoas responsáveis com 85 anos de idade, do sexo feminino|
|V078|Pessoas responsáveis com 86 anos de idade, do sexo feminino|
|V079|Pessoas responsáveis com 87 anos de idade, do sexo feminino|
|V080|Pessoas responsáveis com 88 anos de idade, do sexo feminino|
|V081|Pessoas responsáveis com 89 anos de idade, do sexo feminino|
|V082|Pessoas responsáveis com 90 anos de idade, do sexo feminino|
|V083|Pessoas responsáveis com 91 anos de idade, do sexo feminino|
|V084|Pessoas responsáveis com 92 anos de idade, do sexo feminino|
|V085|Pessoas responsáveis com 93 anos de idade, do sexo feminino|
|V086|Pessoas responsáveis com 94 anos de idade, do sexo feminino|
|V087|Pessoas responsáveis com 95 anos de idade, do sexo feminino|
|V088|Pessoas responsáveis com 96 anos de idade, do sexo feminino|
|V089|Pessoas responsáveis com 97 anos de idade, do sexo feminino|
|V090|Pessoas responsáveis com 98 anos de idade, do sexo feminino|
|V091|Pessoas responsáveis com 99 anos de idade, do sexo feminino|
|V092|Pessoas responsáveis com 100 ou mais anos de idade, do sexo feminino|
|V093|Pessoas alfabetizadas responsáveis, do sexo feminino|
|V094|Pessoas alfabetizadas responsáveis com 10 a 14 anos de idade, do sexo feminino|
|V095|Pessoas alfabetizadas responsáveis com 15 a 19 anos de idade, do sexo feminino|
|V096|Pessoas alfabetizadas responsáveis com 20 a 24 anos de idade, do sexo feminino|
|V097|Pessoas alfabetizadas responsáveis com 25 a 29 anos de idade, do sexo feminino|
|V098|Pessoas alfabetizadas responsáveis com 30 a 34 anos de idade, do sexo feminino|
|V099|Pessoas alfabetizadas responsáveis com 35 a 39 anos de idade, do sexo feminino|
|V100|Pessoas alfabetizadas responsáveis com 40 a 44 anos de idade, do sexo feminino|
|V101|Pessoas alfabetizadas responsáveis com 45 a 49 anos de idade, do sexo feminino|
|V102|Pessoas alfabetizadas responsáveis com 50 a 54 anos de idade, do sexo feminino|
|V103|Pessoas alfabetizadas responsáveis com 55 a 59 anos de idade, do sexo feminino|
|V104|Pessoas alfabetizadas responsáveis com 60 a 64 anos de idade, do sexo feminino|
|V105|Pessoas alfabetizadas responsáveis com 65 a 69 anos de idade, do sexo feminino|
|V106|Pessoas alfabetizadas responsáveis com 70 a 74 anos de idade, do sexo feminino|
|V107|Pessoas alfabetizadas responsáveis com 75 a 79 anos de idade, do sexo feminino|
|V108|Pessoas alfabetizadas responsáveis com 80 ou mais anos de idade, do sexo feminino|

## 6.5. Arquivo Responsável pelo domicílio, total e homens {#dic_resp02}

### Fonte de dados

* Responsavel02\_UF.xls ou Responsavel02\_UF.csv

### Dicionário de dados

|Nome da variável|Descrição da variável|
|-|-|
|Cod\_setor|Código do setor censitário|
|V1005|Código de situação do setor censitário (ver planilha Basico\_UF.xls)|
|V001|Pessoas responsáveis|
|V002|Pessoas responsáveis com 10 anos de idade|
|V003|Pessoas responsáveis com 11 anos de idade|
|V004|Pessoas responsáveis com 12 anos de idade|
|V005|Pessoas responsáveis com 13 anos de idade|
|V006|Pessoas responsáveis com 14 anos de idade|
|V007|Pessoas responsáveis com 15 anos de idade|
|V008|Pessoas responsáveis com 16 anos de idade|
|V009|Pessoas responsáveis com 17 anos de idade|
|V010|Pessoas responsáveis com 18 anos de idade|
|V011|Pessoas responsáveis com 19 anos de idade|
|V012|Pessoas responsáveis com 20 anos de idade|
|V013|Pessoas responsáveis com 21 anos de idade|
|V014|Pessoas responsáveis com 22 anos de idade|
|V015|Pessoas responsáveis com 23 anos de idade|
|V016|Pessoas responsáveis com 24 anos de idade|
|V017|Pessoas responsáveis com 25 anos de idade|
|V018|Pessoas responsáveis com 26 anos de idade|
|V019|Pessoas responsáveis com 27 anos de idade|
|V020|Pessoas responsáveis com 28 anos de idade|
|V021|Pessoas responsáveis com 29 anos de idade|
|V022|Pessoas responsáveis com 30 anos de idade|
|V023|Pessoas responsáveis com 31 anos de idade|
|V024|Pessoas responsáveis com 32 anos de idade|
|V025|Pessoas responsáveis com 33 anos de idade|
|V026|Pessoas responsáveis com 34 anos de idade|
|V027|Pessoas responsáveis com 35 anos de idade|
|V028|Pessoas responsáveis com 36 anos de idade|
|V029|Pessoas responsáveis com 37 anos de idade|
|V030|Pessoas responsáveis com 38 anos de idade|
|V031|Pessoas responsáveis com 39 anos de idade|
|V032|Pessoas responsáveis com 40 anos de idade|
|V033|Pessoas responsáveis com 41 anos de idade|
|V034|Pessoas responsáveis com 42 anos de idade|
|V035|Pessoas responsáveis com 43 anos de idade|
|V036|Pessoas responsáveis com 44 anos de idade|
|V037|Pessoas responsáveis com 45 anos de idade|
|V038|Pessoas responsáveis com 46 anos de idade|
|V039|Pessoas responsáveis com 47 anos de idade|
|V040|Pessoas responsáveis com 48 anos de idade|
|V041|Pessoas responsáveis com 49 anos de idade|
|V042|Pessoas responsáveis com 50 anos de idade|
|V043|Pessoas responsáveis com 51 anos de idade|
|V044|Pessoas responsáveis com 52 anos de idade|
|V045|Pessoas responsáveis com 53 anos de idade|
|V046|Pessoas responsáveis com 54 anos de idade|
|V047|Pessoas responsáveis com 55 anos de idade|
|V048|Pessoas responsáveis com 56 anos de idade|
|V049|Pessoas responsáveis com 57 anos de idade|
|V050|Pessoas responsáveis com 58 anos de idade|
|V051|Pessoas responsáveis com 59 anos de idade|
|V052|Pessoas responsáveis com 60 anos de idade|
|V053|Pessoas responsáveis com 61 anos de idade|
|V054|Pessoas responsáveis com 62 anos de idade|
|V055|Pessoas responsáveis com 63 anos de idade|
|V056|Pessoas responsáveis com 64 anos de idade|
|V057|Pessoas responsáveis com 65 anos de idade|
|V058|Pessoas responsáveis com 66 anos de idade|
|V059|Pessoas responsáveis com 67 anos de idade|
|V060|Pessoas responsáveis com 68 anos de idade|
|V061|Pessoas responsáveis com 69 anos de idade|
|V062|Pessoas responsáveis com 70 anos de idade|
|V063|Pessoas responsáveis com 71 anos de idade|
|V064|Pessoas responsáveis com 72 anos de idade|
|V065|Pessoas responsáveis com 73 anos de idade|
|V066|Pessoas responsáveis com 74 anos de idade|
|V067|Pessoas responsáveis com 75 anos de idade|
|V068|Pessoas responsáveis com 76 anos de idade|
|V069|Pessoas responsáveis com 77 anos de idade|
|V070|Pessoas responsáveis com 78 anos de idade|
|V071|Pessoas responsáveis com 79 anos de idade|
|V072|Pessoas responsáveis com 80 anos de idade|
|V073|Pessoas responsáveis com 81 anos de idade|
|V074|Pessoas responsáveis com 82 anos de idade|
|V075|Pessoas responsáveis com 83 anos de idade|
|V076|Pessoas responsáveis com 84 anos de idade|
|V077|Pessoas responsáveis com 85 anos de idade|
|V078|Pessoas responsáveis com 86 anos de idade|
|V079|Pessoas responsáveis com 87 anos de idade|
|V080|Pessoas responsáveis com 88 anos de idade|
|V081|Pessoas responsáveis com 89 anos de idade|
|V082|Pessoas responsáveis com 90 anos de idade|
|V083|Pessoas responsáveis com 91 anos de idade|
|V084|Pessoas responsáveis com 92 anos de idade|
|V085|Pessoas responsáveis com 93 anos de idade|
|V086|Pessoas responsáveis com 94 anos de idade|
|V087|Pessoas responsáveis com 95 anos de idade|
|V088|Pessoas responsáveis com 96 anos de idade|
|V089|Pessoas responsáveis com 97 anos de idade|
|V090|Pessoas responsáveis com 98 anos de idade|
|V091|Pessoas responsáveis com 99 anos de idade|
|V092|Pessoas responsáveis com 100 ou mais anos de idade|
|V093|Pessoas responsáveis alfabetizados|
|V094|Pessoas responsáveis alfabetizados com 10 a 14 anos de idade|
|V095|Pessoas responsáveis alfabetizados com 15 a 19 anos de idade|
|V096|Pessoas responsáveis alfabetizados com 20 a 24 anos de idade|
|V097|Pessoas responsáveis alfabetizados com 25 a 29 anos de idade|
|V098|Pessoas responsáveis alfabetizados com 30 a 34 anos de idade|
|V099|Pessoas responsáveis alfabetizados com 35 a 39 anos de idade|
|V100|Pessoas responsáveis alfabetizados com 40 a 44 anos de idade|
|V101|Pessoas responsáveis alfabetizados com 45 a 49 anos de idade|
|V102|Pessoas responsáveis alfabetizados com 50 a 54 anos de idade|
|V103|Pessoas responsáveis alfabetizados com 55 a 59 anos de idade|
|V104|Pessoas responsáveis alfabetizados com 60 a 64 anos de idade|
|V105|Pessoas responsáveis alfabetizados com 65 a 69 anos de idade|
|V106|Pessoas responsáveis alfabetizados com 70 a 74 anos de idade|
|V107|Pessoas responsáveis alfabetizados com 75 a 79 anos de idade|
|V108|Pessoas responsáveis alfabetizados com 80 ou mais anos de idade|
|V109|Pessoas responsáveis, do sexo masculino|
|V110|Pessoas responsáveis com 10 anos de idade, do sexo masculino|
|V111|Pessoas responsáveis com 11 anos de idade, do sexo masculino|
|V112|Pessoas responsáveis com 12 anos de idade, do sexo masculino|
|V113|Pessoas responsáveis com 13 anos de idade, do sexo masculino|
|V114|Pessoas responsáveis com 14 anos de idade, do sexo masculino|
|V115|Pessoas responsáveis com 15 anos de idade, do sexo masculino|
|V116|Pessoas responsáveis com 16 anos de idade, do sexo masculino|
|V117|Pessoas responsáveis com 17 anos de idade, do sexo masculino|
|V118|Pessoas responsáveis com 18 anos de idade, do sexo masculino|
|V119|Pessoas responsáveis com 19 anos de idade, do sexo masculino|
|V120|Pessoas responsáveis com 20 anos de idade, do sexo masculino|
|V121|Pessoas responsáveis com 21 anos de idade, do sexo masculino|
|V122|Pessoas responsáveis com 22 anos de idade, do sexo masculino|
|V123|Pessoas responsáveis com 23 anos de idade, do sexo masculino|
|V124|Pessoas responsáveis com 24 anos de idade, do sexo masculino|
|V125|Pessoas responsáveis com 25 anos de idade, do sexo masculino|
|V126|Pessoas responsáveis com 26 anos de idade, do sexo masculino|
|V127|Pessoas responsáveis com 27 anos de idade, do sexo masculino|
|V128|Pessoas responsáveis com 28 anos de idade, do sexo masculino|
|V129|Pessoas responsáveis com 29 anos de idade, do sexo masculino|
|V130|Pessoas responsáveis com 30 anos de idade, do sexo masculino|
|V131|Pessoas responsáveis com 31 anos de idade, do sexo masculino|
|V132|Pessoas responsáveis com 32 anos de idade, do sexo masculino|
|V133|Pessoas responsáveis com 33 anos de idade, do sexo masculino|
|V134|Pessoas responsáveis com 34 anos de idade, do sexo masculino|
|V135|Pessoas responsáveis com 35 anos de idade, do sexo masculino|
|V136|Pessoas responsáveis com 36 anos de idade, do sexo masculino|
|V137|Pessoas responsáveis com 37 anos de idade, do sexo masculino|
|V138|Pessoas responsáveis com 38 anos de idade, do sexo masculino|
|V139|Pessoas responsáveis com 39 anos de idade, do sexo masculino|
|V140|Pessoas responsáveis com 40 anos de idade, do sexo masculino|
|V141|Pessoas responsáveis com 41 anos de idade, do sexo masculino|
|V142|Pessoas responsáveis com 42 anos de idade, do sexo masculino|
|V143|Pessoas responsáveis com 43 anos de idade, do sexo masculino|
|V144|Pessoas responsáveis com 44 anos de idade, do sexo masculino|
|V145|Pessoas responsáveis com 45 anos de idade, do sexo masculino|
|V146|Pessoas responsáveis com 46 anos de idade, do sexo masculino|
|V147|Pessoas responsáveis com 47 anos de idade, do sexo masculino|
|V148|Pessoas responsáveis com 48 anos de idade, do sexo masculino|
|V149|Pessoas responsáveis com 49 anos de idade, do sexo masculino|
|V150|Pessoas responsáveis com 50 anos de idade, do sexo masculino|
|V151|Pessoas responsáveis com 51 anos de idade, do sexo masculino|
|V152|Pessoas responsáveis com 52 anos de idade, do sexo masculino|
|V153|Pessoas responsáveis com 53 anos de idade, do sexo masculino|
|V154|Pessoas responsáveis com 54 anos de idade, do sexo masculino|
|V155|Pessoas responsáveis com 55 anos de idade, do sexo masculino|
|V156|Pessoas responsáveis com 56 anos de idade, do sexo masculino|
|V157|Pessoas responsáveis com 57 anos de idade, do sexo masculino|
|V158|Pessoas responsáveis com 58 anos de idade, do sexo masculino|
|V159|Pessoas responsáveis com 59 anos de idade, do sexo masculino|
|V160|Pessoas responsáveis com 60 anos de idade, do sexo masculino|
|V161|Pessoas responsáveis com 61 anos de idade, do sexo masculino|
|V162|Pessoas responsáveis com 62 anos de idade, do sexo masculino|
|V163|Pessoas responsáveis com 63 anos de idade, do sexo masculino|
|V164|Pessoas responsáveis com 64 anos de idade, do sexo masculino|
|V165|Pessoas responsáveis com 65 anos de idade, do sexo masculino|
|V166|Pessoas responsáveis com 66 anos de idade, do sexo masculino|
|V167|Pessoas responsáveis com 67 anos de idade, do sexo masculino|
|V168|Pessoas responsáveis com 68 anos de idade, do sexo masculino|
|V169|Pessoas responsáveis com 69 anos de idade, do sexo masculino|
|V170|Pessoas responsáveis com 70 anos de idade, do sexo masculino|
|V171|Pessoas responsáveis com 71 anos de idade, do sexo masculino|
|V172|Pessoas responsáveis com 72 anos de idade, do sexo masculino|
|V173|Pessoas responsáveis com 73 anos de idade, do sexo masculino|
|V174|Pessoas responsáveis com 74 anos de idade, do sexo masculino|
|V175|Pessoas responsáveis com 75 anos de idade, do sexo masculino|
|V176|Pessoas responsáveis com 76 anos de idade, do sexo masculino|
|V177|Pessoas responsáveis com 77 anos de idade, do sexo masculino|
|V178|Pessoas responsáveis com 78 anos de idade, do sexo masculino|
|V179|Pessoas responsáveis com 79 anos de idade, do sexo masculino|
|V180|Pessoas responsáveis com 80 anos de idade, do sexo masculino|
|V181|Pessoas responsáveis com 81 anos de idade, do sexo masculino|
|V182|Pessoas responsáveis com 82 anos de idade, do sexo masculino|
|V183|Pessoas responsáveis com 83 anos de idade, do sexo masculino|
|V184|Pessoas responsáveis com 84 anos de idade, do sexo masculino|
|V185|Pessoas responsáveis com 85 anos de idade, do sexo masculino|
|V186|Pessoas responsáveis com 86 anos de idade, do sexo masculino|
|V187|Pessoas responsáveis com 87 anos de idade, do sexo masculino|
|V188|Pessoas responsáveis com 88 anos de idade, do sexo masculino|
|V189|Pessoas responsáveis com 89 anos de idade, do sexo masculino|
|V190|Pessoas responsáveis com 90 anos de idade, do sexo masculino|
|V191|Pessoas responsáveis com 91 anos de idade, do sexo masculino|
|V192|Pessoas responsáveis com 92 anos de idade, do sexo masculino|
|V193|Pessoas responsáveis com 93 anos de idade, do sexo masculino|
|V194|Pessoas responsáveis com 94 anos de idade, do sexo masculino|
|V195|Pessoas responsáveis com 95 anos de idade, do sexo masculino|
|V196|Pessoas responsáveis com 96 anos de idade, do sexo masculino|
|V197|Pessoas responsáveis com 97 anos de idade, do sexo masculino|
|V198|Pessoas responsáveis com 98 anos de idade, do sexo masculino|
|V199|Pessoas responsáveis com 99 anos de idade, do sexo masculino|
|V200|Pessoas responsáveis com 100 ou mais anos de idade, do sexo masculino|
|V201|Pessoas alfabetizadas responsáveis, do sexo masculino|
|V202|Pessoas alfabetizadas responsáveis com 10 a 14 anos de idade, do sexo masculino|
|V203|Pessoas alfabetizadas responsáveis com 15 a 19 anos de idade, do sexo masculino|
|V204|Pessoas alfabetizadas responsáveis com 20 a 24 anos de idade, do sexo masculino|
|V205|Pessoas alfabetizadas responsáveis com 25 a 29 anos de idade, do sexo masculino|
|V206|Pessoas alfabetizadas responsáveis com 30 a 34 anos de idade, do sexo masculino|
|V207|Pessoas alfabetizadas responsáveis com 35 a 39 anos de idade, do sexo masculino|
|V208|Pessoas alfabetizadas responsáveis com 40 a 44 anos de idade, do sexo masculino|
|V209|Pessoas alfabetizadas responsáveis com 45 a 49 anos de idade, do sexo masculino|
|V210|Pessoas alfabetizadas responsáveis com 50 a 54 anos de idade, do sexo masculino|
|V211|Pessoas alfabetizadas responsáveis com 55 a 59 anos de idade, do sexo masculino|
|V212|Pessoas alfabetizadas responsáveis com 60 a 64 anos de idade, do sexo masculino|
|V213|Pessoas alfabetizadas responsáveis com 65 a 69 anos de idade, do sexo masculino|
|V214|Pessoas alfabetizadas responsáveis com 70 a 74 anos de idade, do sexo masculino|
|V215|Pessoas alfabetizadas responsáveis com 75 a 79 anos de idade, do sexo masculino|
|V216|Pessoas alfabetizadas responsáveis com 80 ou mais anos de idade, do sexo masculino|

## 6.6. Arquivo Alfabetização, total {#dic_pessoa01}

### Fonte de dados

* Pessoa01\_UF.xls ou Pessoa01\_UF.csv

### Dicionário de dados

|Nome da variável|Descrição da variável|
|-|-|
|Cod\_setor|Código do setor censitário|
|V1005|Código de situação do setor censitário (ver planilha Basico\_UF.xls)|
|V001|Pessoas alfabetizadas com 5 ou mais anos de idade|
|V002|Pessoas alfabetizadas com 5 anos de idade|
|V003|Pessoas alfabetizadas com 6 anos de idade|
|V004|Pessoas alfabetizadas com 7 anos de idade|
|V005|Pessoas alfabetizadas com 8 anos de idade|
|V006|Pessoas alfabetizadas com 9 anos de idade|
|V007|Pessoas alfabetizadas com 10 anos de idade|
|V008|Pessoas alfabetizadas com 11 anos de idade|
|V009|Pessoas alfabetizadas com 12 anos de idade|
|V010|Pessoas alfabetizadas com 13 anos de idade|
|V011|Pessoas alfabetizadas com 14 anos de idade|
|V012|Pessoas alfabetizadas com 15 anos de idade|
|V013|Pessoas alfabetizadas com 16 anos de idade|
|V014|Pessoas alfabetizadas com 17 anos de idade|
|V015|Pessoas alfabetizadas com 18 anos de idade|
|V016|Pessoas alfabetizadas com 19 anos de idade|
|V017|Pessoas alfabetizadas com 20 anos de idade|
|V018|Pessoas alfabetizadas com 21 anos de idade|
|V019|Pessoas alfabetizadas com 22 anos de idade|
|V020|Pessoas alfabetizadas com 23 anos de idade|
|V021|Pessoas alfabetizadas com 24 anos de idade|
|V022|Pessoas alfabetizadas com 25 anos de idade|
|V023|Pessoas alfabetizadas com 26 anos de idade|
|V024|Pessoas alfabetizadas com 27 anos de idade|
|V025|Pessoas alfabetizadas com 28 anos de idade|
|V026|Pessoas alfabetizadas com 29 anos de idade|
|V027|Pessoas alfabetizadas com 30 anos de idade|
|V028|Pessoas alfabetizadas com 31 anos de idade|
|V029|Pessoas alfabetizadas com 32 anos de idade|
|V030|Pessoas alfabetizadas com 33 anos de idade|
|V031|Pessoas alfabetizadas com 34 anos de idade|
|V032|Pessoas alfabetizadas com 35 anos de idade|
|V033|Pessoas alfabetizadas com 36 anos de idade|
|V034|Pessoas alfabetizadas com 37 anos de idade|
|V035|Pessoas alfabetizadas com 38 anos de idade|
|V036|Pessoas alfabetizadas com 39 anos de idade|
|V037|Pessoas alfabetizadas com 40 anos de idade|
|V038|Pessoas alfabetizadas com 41 anos de idade|
|V039|Pessoas alfabetizadas com 42 anos de idade|
|V040|Pessoas alfabetizadas com 43 anos de idade|
|V041|Pessoas alfabetizadas com 44 anos de idade|
|V042|Pessoas alfabetizadas com 45 anos de idade|
|V043|Pessoas alfabetizadas com 46 anos de idade|
|V044|Pessoas alfabetizadas com 47 anos de idade|
|V045|Pessoas alfabetizadas com 48 anos de idade|
|V046|Pessoas alfabetizadas com 49 anos de idade|
|V047|Pessoas alfabetizadas com 50 anos de idade|
|V048|Pessoas alfabetizadas com 51 anos de idade|
|V049|Pessoas alfabetizadas com 52 anos de idade|
|V050|Pessoas alfabetizadas com 53 anos de idade|
|V051|Pessoas alfabetizadas com 54 anos de idade|
|V052|Pessoas alfabetizadas com 55 anos de idade|
|V053|Pessoas alfabetizadas com 56 anos de idade|
|V054|Pessoas alfabetizadas com 57 anos de idade|
|V055|Pessoas alfabetizadas com 58 anos de idade|
|V056|Pessoas alfabetizadas com 59 anos de idade|
|V057|Pessoas alfabetizadas com 60 anos de idade|
|V058|Pessoas alfabetizadas com 61 anos de idade|
|V059|Pessoas alfabetizadas com 62 anos de idade|
|V060|Pessoas alfabetizadas com 63 anos de idade|
|V061|Pessoas alfabetizadas com 64 anos de idade|
|V062|Pessoas alfabetizadas com 65 anos de idade|
|V063|Pessoas alfabetizadas com 66 anos de idade|
|V064|Pessoas alfabetizadas com 67 anos de idade|
|V065|Pessoas alfabetizadas com 68 anos de idade|
|V066|Pessoas alfabetizadas com 69 anos de idade|
|V067|Pessoas alfabetizadas com 70 anos de idade|
|V068|Pessoas alfabetizadas com 71 anos de idade|
|V069|Pessoas alfabetizadas com 72 anos de idade|
|V070|Pessoas alfabetizadas com 73 anos de idade|
|V071|Pessoas alfabetizadas com 74 anos de idade|
|V072|Pessoas alfabetizadas com 75 anos de idade|
|V073|Pessoas alfabetizadas com 76 anos de idade|
|V074|Pessoas alfabetizadas com 77 anos de idade|
|V075|Pessoas alfabetizadas com 78 anos de idade|
|V076|Pessoas alfabetizadas com 79 anos de idade|
|V077|Pessoas alfabetizadas com 80 anos ou mais de idade|
|V078|responsáveis alfabetizados(as) com 10 ou mais anos de idade em domicílios particulares|
|V079|Cônjuges ou companheiros(as) (de sexo diferente do mesmo sexo da pessoa responsável) alfabetizados(as) com 10 ou mais anos de idade em domicílios particulares|
|V080|Filhos(as) ou enteados(as) alfabetizados(as) com 10 ou mais anos de idade em domicílios particulares|
|V081|Pais, mães ou sogros(as) alfabetizados(as) com 20 ou mais anos de idade em domicílios particulares|
|V082|Netos(as) ou bisnetos(as) alfabetizados(as) com 10 ou mais anos de idade em domicílios particulares|
|V083|Irmãos ou irmãs alfabetizados(as) com 10 ou mais anos de idade em domicílios particulares|
|V084|Outros parentes alfabetizados(as) com 10 ou mais anos de idade em domicílios particulares|
|V085|Conviventes alfabetizados com 10 ou mais anos de idade em domicílios particulares|

## 6.7. Arquivo Alfabetização, homens e mulheres {#dic_pessoa02}

### Fonte de dados

- Pessoa02\_UF.xls ou Pessoa02\_UF.csv

### Dicionário de dados

|Nome da variável|Descrição da variável|
|-|-|
|Cod\_setor|Código do setor censitário|
|V1005|Código de situação do setor censitário (ver planilha Basico\_UF.xls)|
|V001|Homens alfabetizados com 5 ou mais anos de idade|
|V002|Homens alfabetizados com 5 anos de idade|
|V003|Homens alfabetizados com 6 anos de idade|
|V004|Homens alfabetizados com 7 anos de idade|
|V005|Homens alfabetizados com 8 anos de idade|
|V006|Homens alfabetizados com 9 anos de idade|
|V007|Homens alfabetizados com 10 anos de idade|
|V008|Homens alfabetizados com 11 anos de idade|
|V009|Homens alfabetizados com 12 anos de idade|
|V010|Homens alfabetizados com 13 anos de idade|
|V011|Homens alfabetizados com 14 anos de idade|
|V012|Homens alfabetizados com 15 anos de idade|
|V013|Homens alfabetizados com 16 anos de idade|
|V014|Homens alfabetizados com 17 anos de idade|
|V015|Homens alfabetizados com 18 anos de idade|
|V016|Homens alfabetizados com 19 anos de idade|
|V017|Homens alfabetizados com 20 anos de idade|
|V018|Homens alfabetizados com 21 anos de idade|
|V019|Homens alfabetizados com 22 anos de idade|
|V020|Homens alfabetizados com 23 anos de idade|
|V021|Homens alfabetizados com 24 anos de idade|
|V022|Homens alfabetizados com 25 anos de idade|
|V023|Homens alfabetizados com 26 anos de idade|
|V024|Homens alfabetizados com 27 anos de idade|
|V025|Homens alfabetizados com 28 anos de idade|
|V026|Homens alfabetizados com 29 anos de idade|
|V027|Homens alfabetizados com 30 anos de idade|
|V028|Homens alfabetizados com 31 anos de idade|
|V029|Homens alfabetizados com 32 anos de idade|
|V030|Homens alfabetizados com 33 anos de idade|
|V031|Homens alfabetizados com 34 anos de idade|
|V032|Homens alfabetizados com 35 anos de idade|
|V033|Homens alfabetizados com 36 anos de idade|
|V034|Homens alfabetizados com 37 anos de idade|
|V035|Homens alfabetizados com 38 anos de idade|
|V036|Homens alfabetizados com 39 anos de idade|
|V037|Homens alfabetizados com 40 anos de idade|
|V038|Homens alfabetizados com 41 anos de idade|
|V039|Homens alfabetizados com 42 anos de idade|
|V040|Homens alfabetizados com 43 anos de idade|
|V041|Homens alfabetizados com 44 anos de idade|
|V042|Homens alfabetizados com 45 anos de idade|
|V043|Homens alfabetizados com 46 anos de idade|
|V044|Homens alfabetizados com 47 anos de idade|
|V045|Homens alfabetizados com 48 anos de idade|
|V046|Homens alfabetizados com 49 anos de idade|
|V047|Homens alfabetizados com 50 anos de idade|
|V048|Homens alfabetizados com 51 anos de idade|
|V049|Homens alfabetizados com 52 anos de idade|
|V050|Homens alfabetizados com 53 anos de idade|
|V051|Homens alfabetizados com 54 anos de idade|
|V052|Homens alfabetizados com 55 anos de idade|
|V053|Homens alfabetizados com 56 anos de idade|
|V054|Homens alfabetizados com 57 anos de idade|
|V055|Homens alfabetizados com 58 anos de idade|
|V056|Homens alfabetizados com 59 anos de idade|
|V057|Homens alfabetizados com 60 anos de idade|
|V058|Homens alfabetizados com 61 anos de idade|
|V059|Homens alfabetizados com 62 anos de idade|
|V060|Homens alfabetizados com 63 anos de idade|
|V061|Homens alfabetizados com 64 anos de idade|
|V062|Homens alfabetizados com 65 anos de idade|
|V063|Homens alfabetizados com 66 anos de idade|
|V064|Homens alfabetizados com 67 anos de idade|
|V065|Homens alfabetizados com 68 anos de idade|
|V066|Homens alfabetizados com 69 anos de idade|
|V067|Homens alfabetizados com 70 anos de idade|
|V068|Homens alfabetizados com 71 anos de idade|
|V069|Homens alfabetizados com 72 anos de idade|
|V070|Homens alfabetizados com 73 anos de idade|
|V071|Homens alfabetizados com 74 anos de idade|
|V072|Homens alfabetizados com 75 anos de idade|
|V073|Homens alfabetizados com 76 anos de idade|
|V074|Homens alfabetizados com 77 anos de idade|
|V075|Homens alfabetizados com 78 anos de idade|
|V076|Homens alfabetizados com 79 anos de idade|
|V077|Homens alfabetizados com 80 ou mais anos de idade|
|V078|Homens responsáveis alfabetizados com 10 ou mais anos de idade em domicílios particulares|
|V079|Homens, cônjuges ou companheiros (de sexo diferente e do mesmo sexo da pessoa responsável) alfabetizados com 10 ou mais anos de idade em domicílios particulares|
|V080|Filhos ou enteados alfabetizados com 10 ou mais anos de idade em domicílios particulares|
|V081|Pais ou sogros alfabetizados com 20 ou mais anos de idade em domicílios particulares|
|V082|Netos ou bisnetos alfabetizados com 10 ou mais anos de idade em domicílios particulares|
|V083|Irmãos alfabetizados com 10 ou mais anos de idade em domicílios particulares|
|V084|Outros parentes homens alfabetizados com 10 ou mais anos de idade em domicílios particulares|
|V085|Conviventes alfabetizados com 10 ou mais anos de idade em domicílios particulares|
|V086|Mulheres alfabetizadas com 5 ou mais anos de idade|
|V087|Mulheres alfabetizadas com 5 anos de idade|
|V088|Mulheres alfabetizadas com 6 anos de idade|
|V089|Mulheres alfabetizadas com 7 anos de idade|
|V090|Mulheres alfabetizadas com 8 anos de idade|
|V091|Mulheres alfabetizadas com 9 anos de idade|
|V092|Mulheres alfabetizadas com 10 anos de idade|
|V093|Mulheres alfabetizadas com 11 anos de idade|
|V094|Mulheres alfabetizadas com 12 anos de idade|
|V095|Mulheres alfabetizadas com 13 anos de idade|
|V096|Mulheres alfabetizadas com 14 anos de idade|
|V097|Mulheres alfabetizadas com 15 anos de idade|
|V098|Mulheres alfabetizadas com 16 anos de idade|
|V099|Mulheres alfabetizadas com 17 anos de idade|
|V100|Mulheres alfabetizadas com 18 anos de idade|
|V101|Mulheres alfabetizadas com 19 anos de idade|
|V102|Mulheres alfabetizadas com 20 anos de idade|
|V103|Mulheres alfabetizadas com 21 anos de idade|
|V104|Mulheres alfabetizadas com 22 anos de idade|
|V105|Mulheres alfabetizadas com 23 anos de idade|
|V106|Mulheres alfabetizadas com 24 anos de idade|
|V107|Mulheres alfabetizadas com 25 anos de idade|
|V108|Mulheres alfabetizadas com 26 anos de idade|
|V109|Mulheres alfabetizadas com 27 anos de idade|
|V110|Mulheres alfabetizadas com 28 anos de idade|
|V111|Mulheres alfabetizadas com 29 anos de idade|
|V112|Mulheres alfabetizadas com 30 anos de idade|
|V113|Mulheres alfabetizadas com 31 anos de idade|
|V114|Mulheres alfabetizadas com 32 anos de idade|
|V115|Mulheres alfabetizadas com 33 anos de idade|
|V116|Mulheres alfabetizadas com 34 anos de idade|
|V117|Mulheres alfabetizadas com 35 anos de idade|
|V118|Mulheres alfabetizadas com 36 anos de idade|
|V119|Mulheres alfabetizadas com 37 anos de idade|
|V120|Mulheres alfabetizadas com 38 anos de idade|
|V121|Mulheres alfabetizadas com 39 anos de idade|
|V122|Mulheres alfabetizadas com 40 anos de idade|
|V123|Mulheres alfabetizadas com 41 anos de idade|
|V124|Mulheres alfabetizadas com 42 anos de idade|
|V125|Mulheres alfabetizadas com 43 anos de idade|
|V126|Mulheres alfabetizadas com 44 anos de idade|
|V127|Mulheres alfabetizadas com 45 anos de idade|
|V128|Mulheres alfabetizadas com 46 anos de idade|
|V129|Mulheres alfabetizadas com 47 anos de idade|
|V130|Mulheres alfabetizadas com 48 anos de idade|
|V131|Mulheres alfabetizadas com 49 anos de idade|
|V132|Mulheres alfabetizadas com 50 anos de idade|
|V133|Mulheres alfabetizadas com 51 anos de idade|
|V134|Mulheres alfabetizadas com 52 anos de idade|
|V135|Mulheres alfabetizadas com 53 anos de idade|
|V136|Mulheres alfabetizadas com 54 anos de idade|
|V137|Mulheres alfabetizadas com 55 anos de idade|
|V138|Mulheres alfabetizadas com 56 anos de idade|
|V139|Mulheres alfabetizadas com 57 anos de idade|
|V140|Mulheres alfabetizadas com 58 anos de idade|
|V141|Mulheres alfabetizadas com 59 anos de idade|
|V142|Mulheres alfabetizadas com 60 anos de idade|
|V143|Mulheres alfabetizadas com 61 anos de idade|
|V144|Mulheres alfabetizadas com 62 anos de idade|
|V145|Mulheres alfabetizadas com 63 anos de idade|
|V146|Mulheres alfabetizadas com 64 anos de idade|
|V147|Mulheres alfabetizadas com 65 anos de idade|
|V148|Mulheres alfabetizadas com 66 anos de idade|
|V149|Mulheres alfabetizadas com 67 anos de idade|
|V150|Mulheres alfabetizadas com 68 anos de idade|
|V151|Mulheres alfabetizadas com 69 anos de idade|
|V152|Mulheres alfabetizadas com 70 anos de idade|
|V153|Mulheres alfabetizadas com 71 anos de idade|
|V154|Mulheres alfabetizadas com 72 anos de idade|
|V155|Mulheres alfabetizadas com 73 anos de idade|
|V156|Mulheres alfabetizadas com 74 anos de idade|
|V157|Mulheres alfabetizadas com 75 anos de idade|
|V158|Mulheres alfabetizadas com 76 anos de idade|
|V159|Mulheres alfabetizadas com 77 anos de idade|
|V160|Mulheres alfabetizadas com 78 anos de idade|
|V161|Mulheres alfabetizadas com 79 anos de idade|
|V162|Mulheres alfabetizadas com 80 ou mais anos de idade|
|V163|Mulheres responsáveis alfabetizadas com 10 ou mais anos de idade em domicílios particulares|
|V164|Mulheres, cônjuges ou companheiras (de sexo diferente e do mesmo sexo da pessoa responsável) alfabetizadas com 10 ou mais anos de idade em domicílios particulares|
|V165|Filhas ou enteadas alfabetizadas com 10 ou mais anos de idade em domicílios particulares|
|V166|Mães ou sogras alfabetizadas com 20 ou mais anos de idade em domicílios particulares|
|V167|Netas ou bisnetas alfabetizadas com 10 ou mais anos de idade em domicílios particulares|
|V168|Irmãs alfabetizadas com 10 ou mais anos de idade em domicílios particulares|
|V169|Outros parentes mulheres alfabetizadas com 10 ou mais anos de idade em domicílios particulares|
|V170|Conviventes alfabetizadas com 10 mais anos de idade em domicílios particulares|

## 6.8. Arquivo Cor ou Raça, idade e gênero {#dic_pessoa03}

### Fonte de dados

- Pessoa03\_UF.xls ou Pessoa03\_UF.csv

### Dicionário de dados

|Nome da variável|Descrição da variável|
|-|-|
|Cod\_setor|Código do setor censitário|
|V1005|Código de situação do setor censitário (ver planilha Basico\_UF.xls)|
|V001|Pessoas residentes|
|V002|Pessoas residentes e cor ou raça - branca|
|V003|Pessoas residentes e cor ou raça - preta|
|V004|Pessoas residentes e cor ou raça - amarela|
|V005|Pessoas residentes e cor ou raça - parda|
|V006|Pessoas residentes e cor ou raça - indígena|
|V007|Pessoas residentes de 0 a 4 anos de idade e cor ou raça - branca|
|V008|Pessoas residentes de 0 a 4 anos de idade e cor ou raça - preta|
|V009|Pessoas residentes de 0 a 4 anos de idade e cor ou raça - amarela|
|V010|Pessoas residentes de 0 a 4 anos de idade e cor ou raça - parda|
|V011|Pessoas residentes de 0 a 4 anos de idade e cor ou raça - indígena|
|V012|Pessoas residentes de 5 a 9 anos de idade e cor ou raça - branca|
|V013|Pessoas residentes de 5 a 9 anos de idade e cor ou raça - preta|
|V014|Pessoas residentes de 5 a 9 anos de idade e cor ou raça - amarela|
|V015|Pessoas residentes de 5 a 9 anos de idade e cor ou raça - parda|
|V016|Pessoas residentes de 5 a 9 anos de idade e cor ou raça - indígena|
|V017|Pessoas residentes de 10 a 14 anos de idade e cor ou raça - branca|
|V018|Pessoas residentes de 10 a 14 anos de idade e cor ou raça - preta|
|V019|Pessoas residentes de 10 a 14 anos de idade e cor ou raça - amarela|
|V020|Pessoas residentes de 10 a 14 anos de idade e cor ou raça - parda|
|V021|Pessoas residentes de 10 a 14 anos de idade e cor ou raça - indígena|
|V022|Pessoas residentes de15 a 19 anos de idade ec or ou raca - branca|
|V023|Pessoas residentes de15 a 19 anos de idade ec or ou raca - preta|
|V024|Pessoas residentes de15 a 19 anos de idade ec or ou raca - amarela|
|V025|Pessoas residentes de15 a 19 anos de idade ec or ou raca - parda|
|V026|Pessoas residentes de15 a 19 anos de idade ec or ou raca - indígena|
|V027|Pessoas residentes de 15 a 17 anos de idade e cor ou raça - branca|
|V028|Pessoas residentes de 15 a 17 anos de idade e cor ou raça - preta|
|V029|Pessoas residentes de 15 a 17 anos de idade e cor ou raça - amarela|
|V030|Pessoas residentes de 15 a 17 anos de idade e cor ou raça - parda|
|V031|Pessoas residentes de 15 a 17 anos de idade e cor ou raça - indígena|
|V032|Pessoas residentes de 18 ou 19 anos de idade e cor ou raça - branca|
|V033|Pessoas residentes de 18 ou 19 anos de idade e cor ou raça - preta|
|V034|Pessoas residentes de 18 ou 19 anos de idade e cor ou raça - amarela|
|V035|Pessoas residentes de 18 ou 19 anos de idade e cor ou raça - parda|
|V036|Pessoas residentes de 18 ou 19 anos de idade e cor ou raça - indígena|
|V037|Pessoas residentes de 20 a 24 anos de idade e cor ou raça - branca|
|V038|Pessoas residentes de 20 a 24 anos de idade e cor ou raça - preta|
|V039|Pessoas residentes de 20 a 24 anos de idade e cor ou raça - amarela|
|V040|Pessoas residentes de 20 a 24 anos de idade e cor ou raça - parda|
|V041|Pessoas residentes de 20 a 24 anos de idade e cor ou raça - indígena|
|V042|Pessoas residentes de 25 a 29 anos de idade e cor ou raça - branca|
|V043|Pessoas residentes de 25 a 29 anos de idade e cor ou raça - preta|
|V044|Pessoas residentes de 25 a 29 anos de idade e cor ou raça - amarela|
|V045|Pessoas residentes de 25 a 29 anos de idade e cor ou raça - parda|
|V046|Pessoas residentes de 25 a 29 anos de idade e cor ou raça - indígena|
|V047|Pessoas residentes de 30 a 34 anos de idade e cor ou raça - branca|
|V048|Pessoas residentes de 30 a 34 anos de idade e cor ou raça - preta|
|V049|Pessoas residentes de 30 a 34 anos de idade e cor ou raça - amarela|
|V050|Pessoas residentes de 30 a 34 anos de idade e cor ou raça - parda|
|V051|Pessoas residentes de 30 a 34 anos de idade e cor ou raça - indígena|
|V052|Pessoas residentes de 35 a 39 anos de idade e cor ou raça - branca|
|V053|Pessoas residentes de 35 a 39 anos de idade e cor ou raça - preta|
|V054|Pessoas residentes de 35 a 39 anos de idade e cor ou raça - amarela|
|V055|Pessoas residentes de 35 a 39 anos de idade e cor ou raça - parda|
|V056|Pessoas residentes de 35 a 39 anos de idade e cor ou raça - indígena|
|V057|Pessoas residentes de 40 a 44 anos de idade e cor ou raça - branca|
|V058|Pessoas residentes de 40 a 44 anos de idade e cor ou raça - preta|
|V059|Pessoas residentes de 40 a 44 anos de idade e cor ou raça - amarela|
|V060|Pessoas residentes de 40 a 44 anos de idade e cor ou raça - parda|
|V061|Pessoas residentes de 40 a 44 anos de idade e cor ou raça - indígena|
|V062|Pessoas residentes de 45 a 49 anos de idade e cor ou raça - branca|
|V063|Pessoas residentes de 45 a 49 anos de idade e cor ou raça - preta|
|V064|Pessoas residentes de 45 a 49 anos de idade e cor ou raça - amarela|
|V065|Pessoas residentes de 45 a 49 anos de idade e cor ou raça - parda|
|V066|Pessoas residentes de 45 a 49 anos de idade e cor ou raça - indígena|
|V067|Pessoas residentes de 50 a 54 anos de idade e cor ou raça - branca|
|V068|Pessoas residentes de 50 a 54 anos de idade e cor ou raça - preta|
|V069|Pessoas residentes de 50 a 54 anos de idade e cor ou raça - amarela|
|V070|Pessoas residentes de 50 a 54 anos de idade e cor ou raça - parda|
|V071|Pessoas residentes de 50 a 54 anos de idade e cor ou raça - indígena|
|V072|Pessoas residentes de 55 a 59 anos de idade e cor ou raça - branca|
|V073|Pessoas residentes de 55 a 59 anos de idade e cor ou raça - preta|
|V074|Pessoas residentes de 55 a 59 anos de idade e cor ou raça - amarela|
|V075|Pessoas residentes de 55 a 59 anos de idade e cor ou raça - parda|
|V076|Pessoas residentes de 55 a 59 anos de idade e cor ou raça - indígena|
|V077|Pessoas residentes de 60 a 69 anos de idade e cor ou raça - branca|
|V078|Pessoas residentes de 60 a 69 anos de idade e cor ou raça - preta|
|V079|Pessoas residentes de 60 a 69 anos de idade e cor ou raça - amarela|
|V080|Pessoas residentes de 60 a 69 anos de idade e cor ou raça - parda|
|V081|Pessoas residentes de 60 a 69 anos de idade e cor ou raça - indígena|
|V082|Pessoas residentes de 70 anos ou mais de idade e cor ou raça - branca|
|V083|Pessoas residentes de 70 anos ou mais de idade e cor ou raça - preta|
|V084|Pessoas residentes de 70 anos ou mais de idade e cor ou raça - amarela|
|V085|Pessoas residentes de 70 anos ou mais de idade e cor ou raça - parda|
|V086|Pessoas residentes de 70 anos ou mais de idade e cor ou raça - indígena|
|V087|Pessoas de 5 ou 6 anos de idade, do sexo masculino e cor ou raça - branca|
|V088|Pessoas de 5 ou 6 anos de idade, do sexo masculino e cor ou raça - preta|
|V089|Pessoas de 5 ou 6 anos de idade, do sexo masculino e cor ou raça - amarela|
|V090|Pessoas de 5 ou 6 anos de idade, do sexo masculino e cor ou raça - parda|
|V091|Pessoas de 5 ou 6 anos de idade, do sexo masculino e cor ou raça - indígena|
|V092|Pessoas de 7 a 9 anos de idade, do sexo masculino e cor ou raça - branca|
|V093|Pessoas de 7 a 9 anos de idade, do sexo masculino e cor ou raça - preta|
|V094|Pessoas de 7 a 9 anos de idade, do sexo masculino e cor ou raça - amarela|
|V095|Pessoas de 7 a 9 anos de idade, do sexo masculino e cor ou raça - parda|
|V096|Pessoas de 7 a 9 anos de idade, do sexo masculino e cor ou raça - indígena|
|V097|Pessoas de 10 a 14 anos de idade, do sexo masculino e cor ou raça - branca|
|V098|Pessoas de 10 a 14 anos de idade, do sexo masculino e cor ou raça - preta|
|V099|Pessoas de 10 a 14 anos de idade, do sexo masculino e cor ou raça - amarela|
|V100|Pessoas de 10 a 14 anos de idade, do sexo masculino e cor ou raça - parda|
|V101|Pessoas de 10 a 14 anos de idade, do sexo masculino e cor ou raça - indígena|
|V102|Pessoas de 15 a 19 anos de idade, do sexo masculino e cor ou raça - branca|
|V103|Pessoas de 15 a 19 anos de idade, do sexo masculino e cor ou raça - preta|
|V104|Pessoas de 15 a 19 anos de idade, do sexo masculino e cor ou raça - amarela|
|V105|Pessoas de 15 a 19 anos de idade, do sexo masculino e cor ou raça - parda|
|V106|Pessoas de 15 a 19 anos de idade, do sexo masculino e cor ou raça - indígena|
|V107|Pessoas de 15 a 17 anos de idade, do sexo masculino e cor ou raça - branca|
|V108|Pessoas de 15 a 17 anos de idade, do sexo masculino e cor ou raça - preta|
|V109|Pessoas de 15 a 17 anos de idade, do sexo masculino e cor ou raça - amarela|
|V110|Pessoas de 15 a 17 anos de idade, do sexo masculino e cor ou raça - parda|
|V111|Pessoas de 15 a 17 anos de idade, do sexo masculino e cor ou raça - indígena|
|V112|Pessoas de 18 ou 19 anos de idade, do sexo masculino e cor ou raça - branca|
|V113|Pessoas de 18 ou 19 anos de idade, do sexo masculino e cor ou raça - preta|
|V114|Pessoas de 18 ou 19 anos de idade, do sexo masculino e cor ou raça - amarela|
|V115|Pessoas de 18 ou 19 anos de idade, do sexo masculino e cor ou raça - parda|
|V116|Pessoas de 18 ou 19 anos de idade, do sexo masculino e cor ou raça - indígena|
|V117|Pessoas de 20 a 24 anos de idade, do sexo masculino e cor ou raça - branca|
|V118|Pessoas de 20 a 24 anos de idade, do sexo masculino e cor ou raça - preta|
|V119|Pessoas de 20 a 24 anos de idade, do sexo masculino e cor ou raça - amarela|
|V120|Pessoas de 20 a 24 anos de idade, do sexo masculino e cor ou raça - parda|
|V121|Pessoas de 20 a 24 anos de idade, do sexo masculino e cor ou raça - indígena|
|V122|Pessoas de 25 a 29 anos de idade, do sexo masculino e cor ou raça - branca|
|V123|Pessoas de 25 a 29 anos de idade, do sexo masculino e cor ou raça - preta|
|V124|Pessoas de 25 a 29 anos de idade, do sexo masculino e cor ou raça - amarela|
|V125|Pessoas de 25 a 29 anos de idade, do sexo masculino e cor ou raça - parda|
|V126|Pessoas de 25 a 29 anos de idade, do sexo masculino e cor ou raça - indígena|
|V127|Pessoas de 30 a 34 anos de idade, do sexo masculino e cor ou raça - branca|
|V128|Pessoas de 30 a 34 anos de idade, do sexo masculino e cor ou raça - preta|
|V129|Pessoas de 30 a 34 anos de idade, do sexo masculino e cor ou raça - amarela|
|V130|Pessoas de 30 a 34 anos de idade, do sexo masculino e cor ou raça - parda|
|V131|Pessoas de 30 a 34 anos de idade, do sexo masculino e cor ou raça - indígena|
|V132|Pessoas de 35 a 39 anos de idade, do sexo masculino e cor ou raça - branca|
|V133|Pessoas de 35 a 39 anos de idade, do sexo masculino e cor ou raça - preta|
|V134|Pessoas de 35 a 39 anos de idade, do sexo masculino e cor ou raça - amarela|
|V135|Pessoas de 35 a 39 anos de idade, do sexo masculino e cor ou raça - parda|
|V136|Pessoas de 35 a 39 anos de idade, do sexo masculino e cor ou raça - indígena|
|V137|Pessoas de 40 a 44 anos de idade, do sexo masculino e cor ou raça - branca|
|V138|Pessoas de 40 a 44 anos de idade, do sexo masculino e cor ou raça - preta|
|V139|Pessoas de 40 a 44 anos de idade, do sexo masculino e cor ou raça - amarela|
|V140|Pessoas de 40 a 44 anos de idade, do sexo masculino e cor ou raça - parda|
|V141|Pessoas de 40 a 44 anos de idade, do sexo masculino e cor ou raça - indígena|
|V142|Pessoas de 45 a 49 anos de idade, do sexo masculino e cor ou raça - branca|
|V143|Pessoas de 45 a 49 anos de idade, do sexo masculino e cor ou raça - preta|
|V144|Pessoas de 45 a 49 anos de idade, do sexo masculino e cor ou raça - amarela|
|V145|Pessoas de 45 a 49 anos de idade, do sexo masculino e cor ou raça - parda|
|V146|Pessoas de 45 a 49 anos de idade, do sexo masculino e cor ou raça - indígena|
|V147|Pessoas de 50 a 54 anos de idade, do sexo masculino e cor ou raça - branca|
|V148|Pessoas de 50 a 54 anos de idade, do sexo masculino e cor ou raça - preta|
|V149|Pessoas de 50 a 54 anos de idade, do sexo masculino e cor ou raça - amarela|
|V150|Pessoas de 50 a 54 anos de idade, do sexo masculino e cor ou raça - parda|
|V151|Pessoas de 50 a 54 anos de idade, do sexo masculino e cor ou raça - indígena|
|V152|Pessoas de 55 a 59 anos de idade, do sexo masculino e cor ou raça - branca|
|V153|Pessoas de 55 a 59 anos de idade, do sexo masculino e cor ou raça - preta|
|V154|Pessoas de 55 a 59 anos de idade, do sexo masculino e cor ou raça - amarela|
|V155|Pessoas de 55 a 59 anos de idade, do sexo masculino e cor ou raça - parda|
|V156|Pessoas de 55 a 59 anos de idade, do sexo masculino e cor ou raça - indígena|
|V157|Pessoas de 60 a 69 anos de idade, do sexo masculino e cor ou raça - branca|
|V158|Pessoas de 60 a 69 anos de idade, do sexo masculino e cor ou raça - preta|
|V159|Pessoas de 60 a 69 anos de idade, do sexo masculino e cor ou raça - amarela|
|V160|Pessoas de 60 a 69 anos de idade, do sexo masculino e cor ou raça - parda|
|V161|Pessoas de 60 a 69 anos de idade, do sexo masculino e cor ou raça - indígena|
|V162|Pessoas de 70 anos ou mais de idade, do sexo masculino e cor ou raça - branca|
|V163|Pessoas de 70 anos ou mais de idade, do sexo masculino e cor ou raça - preta|
|V164|Pessoas de 70 anos ou mais de idade, do sexo masculino e cor ou raça - amarela|
|V165|Pessoas de 70 anos ou mais de idade, do sexo masculino e cor ou raça - parda|
|V166|Pessoas de 70 anos ou mais de idade, do sexo masculino e cor ou raça indígena|
|V167|Pessoas de 5 ou 6 anos de idade, do sexo feminino e cor ou raça - branca|
|V168|Pessoas de 5 ou 6 anos de idade, do sexo feminino e cor ou raça - preta|
|V169|Pessoas de 5 ou 6 anos de idade, do sexo feminino e cor ou raça - amarela|
|V170|Pessoas de 5 ou 6 anos de idade, do sexo feminino e cor ou raça - parda|
|V171|Pessoas de 5 ou 6 anos de idade, do sexo feminino e cor ou raça - indígena|
|V172|Pessoas de 7 a 9 anos de idade, do sexo feminino e cor ou raça - branca|
|V173|Pessoas de 7 a 9 anos de idade, do sexo feminino e cor ou raça - preta|
|V174|Pessoas de 7 a 9 anos de idade, do sexo feminino e cor ou raça - amarela|
|V175|Pessoas de 7 a 9 anos de idade, do sexo feminino e cor ou raça - parda|
|V176|Pessoas de 7 a 9 anos de idade, do sexo feminino e cor ou raça - indígena|
|V177|Pessoas de 10 a 14 anos de idade, do sexo feminino e cor ou raça - branca|
|V178|Pessoas de 10 a 14 anos de idade, do sexo feminino e cor ou raça - preta|
|V179|Pessoas de 10 a 14 anos de idade, do sexo feminino e cor ou raça - amarela|
|V180|Pessoas de 10 a 14 anos de idade, do sexo feminino e cor ou raça - parda|
|V181|Pessoas de 10 a 14 anos de idade, do sexo feminino e cor ou raça - indígena|
|V182|Pessoas de 15 a 19 anos de idade, do sexo feminino e cor ou raça - branca|
|V183|Pessoas de 15 a 19 anos de idade, do sexo feminino e cor ou raça - preta|
|V184|Pessoas de 15 a 19 anos de idade, do sexo feminino e cor ou raça - amarela|
|V185|Pessoas de 15 a 19 anos de idade, do sexo feminino e cor ou raça - parda|
|V186|Pessoas de 15 a 19 anos de idade, do sexo feminino e cor ou raça - indígena|
|V187|Pessoas de 15 a 17 anos de idade, do sexo feminino e cor ou raça - branca|
|V188|Pessoas de 15 a 17 anos de idade, do sexo feminino e cor ou raça - preta|
|V189|Pessoas de 15 a 17 anos de idade, do sexo feminino e cor ou raça - amarela|
|V190|Pessoas de 15 a 17 anos de idade, do sexo feminino e cor ou raça - parda|
|V191|Pessoas de 15 a 17 anos de idade, do sexo feminino e cor ou raça - indígena|
|V192|Pessoas de 18 ou 19 anos de idade, do sexo feminino e cor ou raça - branca|
|V193|Pessoas de 18 ou 19 anos de idade, do sexo feminino e cor ou raça - preta|
|V194|Pessoas de 18 ou 19 anos de idade, do sexo feminino e cor ou raça - amarela|
|V195|Pessoas de 18 ou 19 anos de idade, do sexo feminino e cor ou raça - parda|
|V196|Pessoas de 18 ou 19 anos de idade, do sexo feminino e cor ou raça - indígena|
|V197|Pessoas de 20 a 24 anos de idade, do sexo feminino e cor ou raça - branca|
|V198|Pessoas de 20 a 24 anos de idade, do sexo feminino e cor ou raça - preta|
|V199|Pessoas de 20 a 24 anos de idade, do sexo feminino e cor ou raça - amarela|
|V200|Pessoas de 20 a 24 anos de idade, do sexo feminino e cor ou raça - parda|
|V201|Pessoas de 20 a 24 anos de idade, do sexo feminino e cor ou raça - indígena|
|V202|Pessoas de 25 a 29 anos de idade, do sexo feminino e cor ou raça - branca|
|V203|Pessoas de 25 a 29 anos de idade, do sexo feminino e cor ou raça - preta|
|V204|Pessoas de 25 a 29 anos de idade, do sexo feminino e cor ou raça - amarela|
|V205|Pessoas de 25 a 29 anos de idade, do sexo feminino e cor ou raça - parda|
|V206|Pessoas de 25 a 29 anos de idade, do sexo feminino e cor ou raça - indígena|
|V207|Pessoas de 30 a 34 anos de idade, do sexo feminino e cor ou raça - branca|
|V208|Pessoas de 30 a 34 anos de idade, do sexo feminino e cor ou raça - preta|
|V209|Pessoas de 30 a 34 anos de idade, do sexo feminino e cor ou raça - amarela|
|V210|Pessoas de 30 a 34 anos de idade, do sexo feminino e cor ou raça - parda|
|V211|Pessoas de 30 a 34 anos de idade, do sexo feminino e cor ou raça - indígena|
|V212|Pessoas de 35 a 39 anos de idade, do sexo feminino e cor ou raça - branca|
|V213|Pessoas de 35 a 39 anos de idade, do sexo feminino e cor ou raça - preta|
|V214|Pessoas de 35 a 39 anos de idade, do sexo feminino e cor ou raça - amarela|
|V215|Pessoas de 35 a 39 anos de idade, do sexo feminino e cor ou raça - parda|
|V216|Pessoas de 35 a 39 anos de idade, do sexo feminino e cor ou raça - indígena|
|V217|Pessoas de 40 a 44 anos de idade, do sexo feminino e cor ou raça - branca|
|V218|Pessoas de 40 a 44 anos de idade, do sexo feminino e cor ou raça - preta|
|V219|Pessoas de 40 a 44 anos de idade, do sexo feminino e cor ou raça - amarela|
|V220|Pessoas de 40 a 44 anos de idade, do sexo feminino e cor ou raça - parda|
|V221|Pessoas de 40 a 44 anos de idade, do sexo feminino e cor ou raça - indígena|
|V222|Pessoas de 45 a 49 anos de idade, do sexo feminino e cor ou raça - branca|
|V223|Pessoas de 45 a 49 anos de idade, do sexo feminino e cor ou raça - preta|
|V224|Pessoas de 45 a 49 anos de idade, do sexo feminino e cor ou raça - amarela|
|V225|Pessoas de 45 a 49 anos de idade, do sexo feminino e cor ou raça - parda|
|V226|Pessoas de 45 a 49 anos de idade, do sexo feminino e cor ou raça - indígena|
|V227|Pessoas de 50 a 54 anos de idade, do sexo feminino e cor ou raça - branca|
|V228|Pessoas de 50 a 54 anos de idade, do sexo feminino e cor ou raça - preta|
|V229|Pessoas de 50 a 54 anos de idade, do sexo feminino e cor ou raça - amarela|
|V230|Pessoas de 50 a 54 anos de idade, do sexo feminino e cor ou raça - parda|
|V231|Pessoas de 50 a 54 anos de idade, do sexo feminino e cor ou raça - indígena|
|V232|Pessoas de 55 a 59 anos de idade, do sexo feminino e cor ou raça - branca|
|V233|Pessoas de 55 a 59 anos de idade, do sexo feminino e cor ou raça - preta|
|V234|Pessoas de 55 a 59 anos de idade, do sexo feminino e cor ou raça - amarela|
|V235|Pessoas de 55 a 59 anos de idade, do sexo feminino e cor ou raça - parda|
|V236|Pessoas de 55 a 59 anos de idade, do sexo feminino e cor ou raça - indígena|
|V237|Pessoas de 60 a 69 anos de idade, do sexo feminino e cor ou raça - branca|
|V238|Pessoas de 60 a 69 anos de idade, do sexo feminino e cor ou raça - preta|
|V239|Pessoas de 60 a 69 anos de idade, do sexo feminino e cor ou raça - amarela|
|V240|Pessoas de 60 a 69 anos de idade, do sexo feminino e cor ou raça - parda|
|V241|Pessoas de 60 a 69 anos de idade, do sexo feminino e cor ou raça - indígena|
|V242|Pessoas de 70 anos ou mais de idade, do sexo feminino e cor ou raça - branca|
|V243|Pessoas de 70 anos ou mais de idade, do sexo feminino e cor ou raça - preta|
|V244|Pessoas de 70 anos ou mais de idade, do sexo feminino e cor ou raça - amarela|
|V245|Pessoas de 70 anos ou mais de idade, do sexo feminino e cor ou raça - parda|
|V246|Pessoas de 70 anos ou mais de idade, do sexo feminino e cor ou raça - indígena|
|V247|Pessoas alfabetizadas de 5 ou 6 anos de idade, do sexo masculino e cor ou raça - branca|
|V248|Pessoas alfabetizadas de 5 ou 6 anos de idade, do sexo masculino e cor ou raça - preta|
|V249|Pessoas alfabetizadas de 5 ou 6 anos de idade, do sexo masculino e cor ou raça - amarela|
|V250|Pessoas alfabetizadas de 5 ou 6 anos de idade, do sexo masculino e cor ou raça - parda|
|V251|Pessoas alfabetizadas de 5 ou 6 anos de idade, do sexo masculino e cor ou raça - indígena|

## 6.9. Arquivo Cor ou Raça, alfabetização, idade e gênero {#dic_pessoa04}

### Fonte de dados

- Pessoa04\_UF.xls ou Pessoa04\_UF.csv

### Dicionário de dados

|Nome da variável|Descrição da variável|
|-|-|
|Cod\_setor|Código do setor censitário|
|V1005|Código de situação do setor censitário (ver planilha Basico\_UF.xls)|
|V001|Pessoas alfabetizadas de 7 a 9 anos de idade, do sexo masculino e cor ou raça - branca|
|V002|Pessoas alfabetizadas de 7 a 9 anos de idade, do sexo masculino e cor ou raça - preta|
|V003|Pessoas alfabetizadas de 7 a 9 anos de idade, do sexo masculino e cor ou raça - amarela|
|V004|Pessoas alfabetizadas de 7 a 9 anos de idade, do sexo masculino e cor ou raça - parda|
|V005|Pessoas alfabetizadas de 7 a 9 anos de idade, do sexo masculino e cor ou raça - indígena|
|V006|Pessoas alfabetizadas de 10 a 14 anos de idade, do sexo masculino e cor ou raça - branca|
|V007|Pessoas alfabetizadas de 10 a 14 anos de idade, do sexo masculino e cor ou raça - preta|
|V008|Pessoas alfabetizadas de 10 a 14 anos de idade, do sexo masculino e cor ou raça - amarela|
|V009|Pessoas alfabetizadas de 10 a 14 anos de idade, do sexo masculino e cor ou raça - parda|
|V010|Pessoas alfabetizadas de 10 a 14 anos de idade, do sexo masculino e cor ou raça - indígena|
|V011|Pessoas alfabetizadas de 15 a 19 anos de idade, do sexo masculino e cor ou raça - branca|
|V012|Pessoas alfabetizadas de 15 a 19 anos de idade, do sexo masculino e cor ou raça - preta|
|V013|Pessoas alfabetizadas de 15 a 19 anos de idade, do sexo masculino e cor ou raça - amarela|
|V014|Pessoas alfabetizadas de 15 a 19 anos de idade, do sexo masculino e cor ou raça - parda|
|V015|Pessoas alfabetizadas de 15 a 19 anos de idade, do sexo masculino e cor ou raça - indígena|
|V016|Pessoas alfabetizadas de 15 a 17 anos de idade, do sexo masculino e cor ou raça - branca|
|V017|Pessoas alfabetizadas de 15 a 17 anos de idade, do sexo masculino e cor ou raça - preta|
|V018|Pessoas alfabetizadas de 15 a 17 anos de idade, do sexo masculino e cor ou raça - amarela|
|V019|Pessoas alfabetizadas de 15 a 17 anos de idade, do sexo masculino e cor ou raça - parda|
|V020|Pessoas alfabetizadas de 15 a 17 anos de idade, do sexo masculino e cor ou raça - indígena|
|V021|Pessoas alfabetizadas de 18 ou 19 anos de idade, do sexo masculino e cor ou raça - branca|
|V022|Pessoas alfabetizadas de 18 ou 19 anos de idade, do sexo masculino e cor ou raça - preta|
|V023|Pessoas alfabetizadas de 18 ou 19 anos de idade, do sexo masculino e cor ou raça - amarela|
|V024|Pessoas alfabetizadas de 18 ou 19 anos de idade, do sexo masculino e cor ou raça - parda|
|V025|Pessoas alfabetizadas de 18 ou 19 anos de idade, do sexo masculino e cor ou raça - indígena|
|V026|Pessoas alfabetizadas de 20 a 24 anos de idade, do sexo masculino e cor ou raça - branca|
|V027|Pessoas alfabetizadas de 20 a 24 anos de idade, do sexo masculino e cor ou raça - preta|
|V028|Pessoas alfabetizadas de 20 a 24 anos de idade, do sexo masculino e cor ou raça - amarela|
|V029|Pessoas alfabetizadas de 20 a 24 anos de idade, do sexo masculino e cor ou raça - parda|
|V030|Pessoas alfabetizadas de 20 a 24 anos de idade, do sexo masculino e cor ou raça - indígena|
|V031|Pessoas alfabetizadas de 25 a 29 anos de idade, do sexo masculino e cor ou raça - branca|
|V032|Pessoas alfabetizadas de 25 a 29 anos de idade, do sexo masculino e cor ou raça - preta|
|V033|Pessoas alfabetizadas de 25 a 29 anos de idade, do sexo masculino e cor ou raça - amarela|
|V034|Pessoas alfabetizadas de 25 a 29 anos de idade, do sexo masculino e cor ou raça - parda|
|V035|Pessoas alfabetizadas de 25 a 29 anos de idade, do sexo masculino e cor ou raça - indígena|
|V036|Pessoas alfabetizadas de 30 a 34 anos de idade, do sexo masculino e cor ou raça - branca|
|V037|Pessoas alfabetizadas de 30 a 34 anos de idade, do sexo masculino e cor ou raça - preta|
|V038|Pessoas alfabetizadas de 30 a 34 anos de idade, do sexo masculino e cor ou raça - amarela|
|V039|Pessoas alfabetizadas de 30 a 34 anos de idade, do sexo masculino e cor ou raça - parda|
|V040|Pessoas alfabetizadas de 30 a 34 anos de idade, do sexo masculino e cor ou raça - indígena|
|V041|Pessoas alfabetizadas de 35 a 39 anos de idade, do sexo masculino e cor ou raça - branca|
|V042|Pessoas alfabetizadas de 35 a 39 anos de idade, do sexo masculino e cor ou raça - preta|
|V043|Pessoas alfabetizadas de 35 a 39 anos de idade, do sexo masculino e cor ou raça - amarela|
|V044|Pessoas alfabetizadas de 35 a 39 anos de idade, do sexo masculino e cor ou raça - parda|
|V045|Pessoas alfabetizadas de 35 a 39 anos de idade, do sexo masculino e cor ou raça - indígena|
|V046|Pessoas alfabetizadas de 40 a 44 anos de idade, do sexo masculino e cor ou raça - branca|
|V047|Pessoas alfabetizadas de 40 a 44 anos de idade, do sexo masculino e cor ou raça - preta|
|V048|Pessoas alfabetizadas de 40 a 44 anos de idade, do sexo masculino e cor ou raça - amarela|
|V049|Pessoas alfabetizadas de 40 a 44 anos de idade, do sexo masculino e cor ou raça - parda|
|V050|Pessoas alfabetizadas de 40 a 44 anos de idade, do sexo masculino e cor ou raça - indígena|
|V051|Pessoas alfabetizadas de 45 a 49 anos de idade, do sexo masculino e cor ou raça - branca|
|V052|Pessoas alfabetizadas de 45 a 49 anos de idade, do sexo masculino e cor ou raça - preta|
|V053|Pessoas alfabetizadas de 45 a 49 anos de idade, do sexo masculino e cor ou raça - amarela|
|V054|Pessoas alfabetizadas de 45 a 49 anos de idade, do sexo masculino e cor ou raça - parda|
|V055|Pessoas alfabetizadas de 45 a 49 anos de idade, do sexo masculino e cor ou raça - indígena|
|V056|Pessoas alfabetizadas de 50 a 54 anos de idade, do sexo masculino e cor ou raça - branca|
|V057|Pessoas alfabetizadas de 50 a 54 anos de idade, do sexo masculino e cor ou raça - preta|
|V058|Pessoas alfabetizadas de 50 a 54 anos de idade, do sexo masculino e cor ou raça - amarela|
|V059|Pessoas alfabetizadas de 50 a 54 anos de idade, do sexo masculino e cor ou raça - parda|
|V060|Pessoas alfabetizadas de 50 a 54 anos de idade, do sexo masculino e cor ou raça - indígena|
|V061|Pessoas alfabetizadas de 55 a 59 anos de idade, do sexo masculino e cor ou raça - branca|
|V062|Pessoas alfabetizadas de 55 a 59 anos de idade, do sexo masculino e cor ou raça - preta|
|V063|Pessoas alfabetizadas de 55 a 59 anos de idade, do sexo masculino e cor ou raça - amarela|
|V064|Pessoas alfabetizadas de 55 a 59 anos de idade, do sexo masculino e cor ou raça - parda|
|V065|Pessoas alfabetizadas de 55 a 59 anos de idade, do sexo masculino e cor ou raça - indígena|
|V066|Pessoas alfabetizadas de 60 a 69 anos de idade, do sexo masculino e cor ou raça - branca|
|V067|Pessoas alfabetizadas de 60 a 69 anos de idade, do sexo masculino e cor ou raça - preta|
|V068|Pessoas alfabetizadas de 60 a 69 anos de idade, do sexo masculino e cor ou raça - amarela|
|V069|Pessoas alfabetizadas de 60 a 69 anos de idade, do sexo masculino e cor ou raça - parda|
|V070|Pessoas alfabetizadas de 60 a 69 anos de idade, do sexo masculino e cor ou raça - indígena|
|V071|Pessoas alfabetizadas de 70 anos ou mais de idade, do sexo masculino e cor ou raça - branca|
|V072|Pessoas alfabetizadas de 70 anos ou mais de idade, do sexo masculino e cor ou raça - preta|
|V073|Pessoas alfabetizadas de 70 anos ou mais de idade, do sexo masculino e cor ou raça - amarela|
|V074|Pessoas alfabetizadas de 70 anos ou mais de idade, do sexo masculino e cor ou raça - parda|
|V075|Pessoas alfabetizadas de 70 anos ou mais de idade, do sexo masculino e cor ou raça - indígena|
|V076|Pessoas alfabetizadas de 5 ou 6 anos de idade, do sexo feminino e cor ou raça branca|
|V077|Pessoas alfabetizadas de 5 ou 6 anos de idade, do sexo feminino e cor ou raça preta|
|V078|Pessoas alfabetizadas de 5 ou 6 anos de idade, do sexo feminino e cor ou raça amarela|
|V079|Pessoas alfabetizadas de 5 ou 6 anos de idade, do sexo feminino e cor ou raça parda|
|V080|Pessoas alfabetizadas de 5 ou 6 anos de idade, do sexo feminino e cor ou raça indígena|
|V081|Pessoas alfabetizadas de 7 a 9 anos de idade, do sexo feminino e cor ou raça branca|
|V082|Pessoas alfabetizadas de 7 a 9 anos de idade, do sexo feminino e cor ou raça preta|
|V083|Pessoas alfabetizadas de 7 a 9 anos de idade, do sexo feminino e cor ou raça amarela|
|V084|Pessoas alfabetizadas de 7 a 9 anos de idade, do sexo feminino e cor ou raça parda|
|V085|Pessoas alfabetizadas de 7 a 9 anos de idade, do sexo feminino e cor ou raça indígena|
|V086|Pessoas alfabetizadas de 10 a 14 anos de idade, do sexo feminino e cor ou raça - branca|
|V087|Pessoas alfabetizadas de 10 a 14 anos de idade, do sexo feminino e cor ou raça - preta|
|V088|Pessoas alfabetizadas de 10 a 14 anos de idade, do sexo feminino e cor ou raça - amarela|
|V089|Pessoas alfabetizadas de 10 a 14 anos de idade, do sexo feminino e cor ou raça - parda|
|V090|Pessoas alfabetizadas de 10 a 14 anos de idade, do sexo feminino e cor ou raça - indígena|
|V091|Pessoas de 15 a 19 anos de idade, do sexo feminino e cor ou raça - branca|
|V092|Pessoas de 15 a 19 anos de idade, do sexo feminino e cor ou raça - preta|
|V093|Pessoas alfabetizadas de 15 a 19 anos de idade, do sexo feminino e cor ou raça - amarela|
|V094|Pessoas alfabetizadas de 15 a 19 anos de idade, do sexo feminino e cor ou raça - parda|
|V095|Pessoas alfabetizadas de 15 a 19 anos de idade, do sexo feminino e cor ou raça indígena|
|V096|Pessoas alfabetizadas de 15 a 17 anos de idade, do sexo feminino e cor ou raça - branca|
|V097|Pessoas alfabetizadas de 15 a 17 anos de idade, do sexo feminino e cor ou raça - preta|
|V098|Pessoas alfabetizadas de 15 a 17 anos de idade, do sexo feminino e cor ou raça - amarela|
|V099|Pessoas alfabetizadas de 15 a 17 anos de idade, do sexo feminino e cor ou raça - parda|
|V100|Pessoas alfabetizadas de 15 a 17 anos de idade, do sexo feminino e cor ou raça - indígena|
|V101|Pessoas alfabetizadas de 18 ou 19 anos de idade, do sexo feminino e cor ou raça - branca|
|V102|Pessoas alfabetizadas de 18 ou 19 anos de idade, do sexo feminino e cor ou raça - preta|
|V103|Pessoas alfabetizadas de 18 ou 19 anos de idade, do sexo feminino e cor ou raça - amarela|
|V104|Pessoas alfabetizadas de 18 ou 19 anos de idade, do sexo feminino e cor ou raça - parda|
|V105|Pessoas alfabetizadas de 18 ou 19 anos de idade, do sexo feminino e cor ou raça - indígena|
|V106|Pessoas alfabetizadas de 20 a 24 anos de idade, do sexo feminino e cor ou raça - branca|
|V107|Pessoas alfabetizadas de 20 a 24 anos de idade, do sexo feminino e cor ou raça - preta|
|V108|Pessoas alfabetizadas de 20 a 24 anos de idade, do sexo feminino e cor ou raça - amarela|
|V109|Pessoas alfabetizadas de 20 a 24 anos de idade, do sexo feminino e cor ou raça - parda|
|V110|Pessoas alfabetizadas de 20 a 24 anos de idade, do sexo feminino e cor ou raça -indígena|
|V111|Pessoas alfabetizadas de 25 a 29 anos de idade, do sexo feminino e cor ou raça - branca|
|V112|Pessoas alfabetizadas de 25 a 29 anos de idade, do sexo feminino e cor ou raça - preta|
|V113|Pessoas alfabetizadas de 25 a 29 anos de idade, do sexo feminino e cor ou raça - amarela|
|V114|Pessoas alfabetizadas de 25 a 29 anos de idade, do sexo feminino e cor ou raça - parda|
|V115|Pessoas alfabetizadas de 25 a 29 anos de idade, do sexo feminino e cor ou raça - indígena|
|V116|Pessoas alfabetizadas de 30 a 34 anos de idade, do sexo feminino e cor ou raça - branca|
|V117|Pessoas alfabetizadas de 30 a 34 anos de idade, do sexo feminino e cor ou raça - preta|
|V118|Pessoas alfabetizadas de 30 a 34 anos de idade, do sexo feminino e cor ou raça - amarela|
|V119|Pessoas alfabetizadas de 30 a 34 anos de idade, do sexo feminino e cor ou raça - parda|
|V120|Pessoas alfabetizadas de 30 a 34 anos de idade, do sexo feminino e cor ou raça - indígena|
|V121|Pessoas alfabetizadas de 35 a 39 anos de idade, do sexo feminino e cor ou raça - branca|
|V122|Pessoas alfabetizadas de 35 a 39 anos de idade, do sexo feminino e cor ou raça - preta|
|V123|Pessoas alfabetizadas de 35 a 39 anos de idade, do sexo feminino e cor ou raça - amarela|
|V124|Pessoas alfabetizadas de 35 a 39 anos de idade, do sexo feminino e cor ou raça - parda|
|V125|Pessoas alfabetizadas de 35 a 39 anos de idade, do sexo feminino e cor ou raça - indígena|
|V126|Pessoas alfabetizadas de 40 a 44 anos de idade, do sexo feminino e cor ou raça - branca|
|V127|Pessoas alfabetizadas de 40 a 44 anos de idade, do sexo feminino e cor ou raça - preta|
|V128|Pessoas alfabetizadas de 40 a 44 anos de idade, do sexo feminino e cor ou raça - amarela|
|V129|Pessoas alfabetizadas de 40 a 44 anos de idade, do sexo feminino e cor ou raça - parda|
|V130|Pessoas alfabetizadas de 40 a 44 anos de idade, do sexo feminino e cor ou raça - indígena|
|V131|Pessoas alfabetizadas de 45 a 49 anos de idade, do sexo feminino e cor ou raça - branca|
|V132|Pessoas alfabetizadas de 45 a 49 anos de idade, do sexo feminino e cor ou raça - preta|
|V133|Pessoas alfabetizadas de 45 a 49 anos de idade, do sexo feminino e cor ou raça - amarela|
|V134|Pessoas alfabetizadas de 45 a 49 anos de idade, do sexo feminino e cor ou raça - parda|
|V135|Pessoas alfabetizadas de 45 a 49 anos de idade, do sexo feminino e cor ou raça - indígena|
|V136|Pessoas alfabetizadas de 50 a 54 anos de idade, do sexo feminino e cor ou raça - branca|
|V137|Pessoas alfabetizadas de 50 a 54 anos de idade, do sexo feminino e cor ou raça - preta|
|V138|Pessoas alfabetizadas de 50 a 54 anos de idade, do sexo feminino e cor ou raça - amarela|
|V139|Pessoas alfabetizadas de 50 a 54 anos de idade, do sexo feminino e cor ou raça - parda|
|V140|Pessoas alfabetizadas de 50 a 54 anos de idade, do sexo feminino e cor ou raça - indígena|
|V141|Pessoas alfabetizadas de 55 a 59 anos de idade, do sexo feminino e cor ou raça - branca|
|V142|Pessoas alfabetizadas de 55 a 59 anos de idade, do sexo feminino e cor ou raça - preta|
|V143|Pessoas alfabetizadas de 55 a 59 anos de idade, do sexo feminino e cor ou raça - amarela|
|V144|Pessoas alfabetizadas de 55 a 59 anos de idade, do sexo feminino e cor ou raça - parda|
|V145|Pessoas alfabetizadas de 55 a 59 anos de idade, do sexo feminino e cor ou raça - indígena|
|V146|Pessoas alfabetizadas de 60 a 69 anos de idade, do sexo feminino e cor ou raça - branca|
|V147|Pessoas alfabetizadas de 60 a 69 anos de idade, do sexo feminino e cor ou raça - preta|
|V148|Pessoas alfabetizadas de 60 a 69 anos de idade, do sexo feminino e cor ou raça - amarela|
|V149|Pessoas alfabetizadas de 60 a 69 anos de idade, do sexo feminino e cor ou raça - parda|
|V150|Pessoas alfabetizadas de 60 a 69 anos de idade, do sexo feminino e cor ou raça - indígena|
|V151|Pessoas alfabetizadas de 70 anos ou mais de idade, do sexo feminino e cor ou raça - branca|
|V152|Pessoas alfabetizadas de 70 anos ou mais de idade, do sexo feminino e cor ou raça - preta|
|V153|Pessoas alfabetizadas de 70 anos ou mais de idade, do sexo feminino e cor ou raça - amarela|
|V154|Pessoas alfabetizadas de 70 anos ou mais de idade, do sexo feminino e cor ou raça - parda|
|V155|Pessoas alfabetizadas de 70 anos ou mais de idade, do sexo feminino e cor ou raça - indígena|

## 6.10. Arquivo Cor ou Raça, idade 0 a 4 anos e gênero {#dic_pessoa05}

### Fonte de dados

- Pessoa05\_UF.xls ou Pessoa05\_UF.csv

### Dicionário de dados

|Nome da variável|Descrição da variável|
|-|-|
|Cod\_setor|Código do setor censitário|
|V1005|Código de situação do setor censitário (ver planilha Basico\_UF.xls)|
|V001|Pessoas de 0 a 4 anos de idade, do sexo masculino e cor ou raça - branca|
|V002|Pessoas de 0 a 4 anos de idade, do sexo masculino e cor ou raça - preta|
|V003|Pessoas de 0 a 4 anos de idade, do sexo masculino e cor ou raça - amarela|
|V004|Pessoas de 0 a 4 anos de idade, do sexo masculino e cor ou raça - parda|
|V005|Pessoas de 0 a 4 anos de idade, do sexo masculino e cor ou raça - indígena|
|V006|Pessoas de 0 a 4 anos de idade, do sexo feminino e cor ou raça - branca|
|V007|Pessoas de 0 a 4 anos de idade, do sexo feminino e cor ou raça - preta|
|V008|Pessoas de 0 a 4 anos de idade, do sexo feminino e cor ou raça - amarela|
|V009|Pessoas de 0 a 4 anos de idade, do sexo feminino e cor ou raça - parda|
|V010|Pessoas de 0 a 4 anos de idade, do sexo feminino e cor ou raça - indígena|

## 6.11. Arquivo Relação de parentesco, cônjuges {#dic_pessoa06}

### Fonte de dados

- Pessoa06\_UF.xls ou Pessoa06\_UF.csv

### Dicionário de dados

|Nome da variável|Descrição da variável|
|-|-|
|Cod\_setor|Código do setor censitário|
|V1005|Código de situação do setor censitário (ver planilha Basico\_UF.xls)|
|V001|Cônjuges ou companheiros(as) de sexo diferente com 10 anos de idade|
|V002|Cônjuges ou companheiros(as) de sexo diferente com 11 anos de idade|
|V003|Cônjuges ou companheiros(as) de sexo diferente com 12 anos de idade|
|V004|Cônjuges ou companheiros(as) de sexo diferente com 13 anos de idade|
|V005|Cônjuges ou companheiros(as) de sexo diferente com 14 anos de idade|
|V006|Cônjuges ou companheiros(as) de sexo diferente com 15 anos de idade|
|V007|Cônjuges ou companheiros(as) de sexo diferente com 16 anos de idade|
|V008|Cônjuges ou companheiros(as) de sexo diferente com 17 anos de idade|
|V009|Cônjuges ou companheiros(as) de sexo diferente com 18 anos de idade|
|V010|Cônjuges ou companheiros(as) de sexo diferente com 19 anos de idade|
|V011|Cônjuges ou companheiros(as) de sexo diferente com 20 anos de idade|
|V012|Cônjuges ou companheiros(as) de sexo diferente com 21 anos de idade|
|V013|Cônjuges ou companheiros(as) de sexo diferente com 22 anos de idade|
|V014|Cônjuges ou companheiros(as) de sexo diferente com 23 anos de idade|
|V015|Cônjuges ou companheiros(as) de sexo diferente com 24 anos de idade|
|V016|Cônjuges ou companheiros(as) de sexo diferente com 25 anos de idade|
|V017|Cônjuges ou companheiros(as) de sexo diferente com 26 anos de idade|
|V018|Cônjuges ou companheiros(as) de sexo diferente com 27 anos de idade|
|V019|Cônjuges ou companheiros(as) de sexo diferente com 28 anos de idade|
|V020|Cônjuges ou companheiros(as) de sexo diferente com 29 anos de idade|
|V021|Cônjuges ou companheiros(as) de sexo diferente com 30 anos de idade|
|V022|Cônjuges ou companheiros(as) de sexo diferente com 31 anos de idade|
|V023|Cônjuges ou companheiros(as) de sexo diferente com 32 anos de idade|
|V024|Cônjuges ou companheiros(as) de sexo diferente com 33 anos de idade|
|V025|Cônjuges ou companheiros(as) de sexo diferente com 34 anos de idade|
|V026|Cônjuges ou companheiros(as) de sexo diferente com 35 anos de idade|
|V027|Cônjuges ou companheiros(as) de sexo diferente com 36 anos de idade|
|V028|Cônjuges ou companheiros(as) de sexo diferente com 37 anos de idade|
|V029|Cônjuges ou companheiros(as) de sexo diferente com 38 anos de idade|
|V030|Cônjuges ou companheiros(as) de sexo diferente com 39 anos de idade|
|V031|Cônjuges ou companheiros(as) de sexo diferente com 40 anos de idade|
|V032|Cônjuges ou companheiros(as) de sexo diferente com 41 anos de idade|
|V033|Cônjuges ou companheiros(as) de sexo diferente com 42 anos de idade|
|V034|Cônjuges ou companheiros(as) de sexo diferente com 43 anos de idade|
|V035|Cônjuges ou companheiros(as) de sexo diferente com 44 anos de idade|
|V036|Cônjuges ou companheiros(as) de sexo diferente com 45 anos de idade|
|V037|Cônjuges ou companheiros(as) de sexo diferente com 46 anos de idade|
|V038|Cônjuges ou companheiros(as) de sexo diferente com 47 anos de idade|
|V039|Cônjuges ou companheiros(as) de sexo diferente com 48 anos de idade|
|V040|Cônjuges ou companheiros(as) de sexo diferente com 49 anos de idade|
|V041|Cônjuges ou companheiros(as) de sexo diferente com 50 anos de idade|
|V042|Cônjuges ou companheiros(as) de sexo diferente com 51 anos de idade|
|V043|Cônjuges ou companheiros(as) de sexo diferente com 52 anos de idade|
|V044|Cônjuges ou companheiros(as) de sexo diferente com 53 anos de idade|
|V045|Cônjuges ou companheiros(as) de sexo diferente com 54 anos de idade|
|V046|Cônjuges ou companheiros(as) de sexo diferente com 55 anos de idade|
|V047|Cônjuges ou companheiros(as) de sexo diferente com 56 anos de idade|
|V048|Cônjuges ou companheiros(as) de sexo diferente com 57 anos de idade|
|V049|Cônjuges ou companheiros(as) de sexo diferente com 58 anos de idade|
|V050|Cônjuges ou companheiros(as) de sexo diferente com 59 anos de idade|
|V051|Cônjuges ou companheiros(as) de sexo diferente com 60 anos de idade|
|V052|Cônjuges ou companheiros(as) de sexo diferente com 61 anos de idade|
|V053|Cônjuges ou companheiros(as) de sexo diferente com 62 anos de idade|
|V054|Cônjuges ou companheiros(as) de sexo diferente com 63 anos de idade|
|V055|Cônjuges ou companheiros(as) de sexo diferente com 64 anos de idade|
|V056|Cônjuges ou companheiros(as) de sexo diferente com 65 anos de idade|
|V057|Cônjuges ou companheiros(as) de sexo diferente com 66 anos de idade|
|V058|Cônjuges ou companheiros(as) de sexo diferente com 67 anos de idade|
|V059|Cônjuges ou companheiros(as) de sexo diferente com 68 anos de idade|
|V060|Cônjuges ou companheiros(as) de sexo diferente com 69 anos de idade|
|V061|Cônjuges ou companheiros(as) de sexo diferente com 70 anos de idade|
|V062|Cônjuges ou companheiros(as) de sexo diferente com 71 anos de idade|
|V063|Cônjuges ou companheiros(as) de sexo diferente com 72 anos de idade|
|V064|Cônjuges ou companheiros(as) de sexo diferente com 73 anos de idade|
|V065|Cônjuges ou companheiros(as) de sexo diferente com 74 anos de idade|
|V066|Cônjuges ou companheiros(as) de sexo diferente com 75 anos de idade|
|V067|Cônjuges ou companheiros(as) de sexo diferente com 76 anos de idade|
|V068|Cônjuges ou companheiros(as) de sexo diferente com 77 anos de idade|
|V069|Cônjuges ou companheiros(as) de sexo diferente com 78 anos de idade|
|V070|Cônjuges ou companheiros(as) de sexo diferente com 79 anos de idade|
|V071|Cônjuges ou companheiros(as) de sexo diferente com 80 anos ou mais de idade|
|V072|Homens, cônjuges ou companheiros de sexo diferente com 10 anos de idade|
|V073|Homens, cônjuges ou companheiros de sexo diferente com 11 anos de idade|
|V074|Homens, cônjuges ou companheiros de sexo diferente com 12 anos de idade|
|V075|Homens, cônjuges ou companheiros de sexo diferente com 13 anos de idade|
|V076|Homens, cônjuges ou companheiros de sexo diferente com 14 anos de idade|
|V077|Homens, cônjuges ou companheiros de sexo diferente com 15 anos de idade|
|V078|Homens, cônjuges ou companheiros de sexo diferente com 16 anos de idade|
|V079|Homens, cônjuges ou companheiros de sexo diferente com 17 anos de idade|
|V080|Homens, cônjuges ou companheiros de sexo diferente com 18 anos de idade|
|V081|Homens, cônjuges ou companheiros de sexo diferente com 19 anos de idade|
|V082|Homens, cônjuges ou companheiros de sexo diferente com 20 anos de idade|
|V083|Homens, cônjuges ou companheiros de sexo diferente com 21 anos de idade|
|V084|Homens, cônjuges ou companheiros de sexo diferente com 22 anos de idade|
|V085|Homens, cônjuges ou companheiros de sexo diferente com 23 anos de idade|
|V086|Homens, cônjuges ou companheiros de sexo diferente com 24 anos de idade|
|V087|Homens, cônjuges ou companheiros de sexo diferente com 25 anos de idade|
|V088|Homens, cônjuges ou companheiros de sexo diferente com 26 anos de idade|
|V089|Homens, cônjuges ou companheiros de sexo diferente com 27 anos de idade|
|V090|Homens, cônjuges ou companheiros de sexo diferente com 28 anos de idade|
|V091|Homens, cônjuges ou companheiros de sexo diferente com 29 anos de idade|
|V092|Homens, cônjuges ou companheiros de sexo diferente com 30 anos de idade|
|V093|Homens, cônjuges ou companheiros de sexo diferente com 31 anos de idade|
|V094|Homens, cônjuges ou companheiros de sexo diferente com 32 anos de idade|
|V095|Homens, cônjuges ou companheiros de sexo diferente com 33 anos de idade|
|V096|Homens, cônjuges ou companheiros de sexo diferente com 34 anos de idade|
|V097|Homens, cônjuges ou companheiros de sexo diferente com 35 anos de idade|
|V098|Homens, cônjuges ou companheiros de sexo diferente com 36 anos de idade|
|V099|Homens, cônjuges ou companheiros de sexo diferente com 37 anos de idade|
|V100|Homens, cônjuges ou companheiros de sexo diferente com 38 anos de idade|
|V101|Homens, cônjuges ou companheiros de sexo diferente com 39 anos de idade|
|V102|Homens, cônjuges ou companheiros de sexo diferente com 40 anos de idade|
|V103|Homens, cônjuges ou companheiros de sexo diferente com 41 anos de idade|
|V104|Homens, cônjuges ou companheiros de sexo diferente com 42 anos de idade|
|V105|Homens, cônjuges ou companheiros de sexo diferente com 43 anos de idade|
|V106|Homens, cônjuges ou companheiros de sexo diferente com 44 anos de idade|
|V107|Homens, cônjuges ou companheiros de sexo diferente com 45 anos de idade|
|V108|Homens, cônjuges ou companheiros de sexo diferente com 46 anos de idade|
|V109|Homens, cônjuges ou companheiros de sexo diferente com 47 anos de idade|
|V110|Homens, cônjuges ou companheiros de sexo diferente com 48 anos de idade|
|V111|Homens, cônjuges ou companheiros de sexo diferente com 49 anos de idade|
|V112|Homens, cônjuges ou companheiros de sexo diferente com 50 anos de idade|
|V113|Homens, cônjuges ou companheiros de sexo diferente com 51 anos de idade|
|V114|Homens, cônjuges ou companheiros de sexo diferente com 52 anos de idade|
|V115|Homens, cônjuges ou companheiros de sexo diferente com 53 anos de idade|
|V116|Homens, cônjuges ou companheiros de sexo diferente com 54 anos de idade|
|V117|Homens, cônjuges ou companheiros de sexo diferente com 55 anos de idade|
|V118|Homens, cônjuges ou companheiros de sexo diferente com 56 anos de idade|
|V119|Homens, cônjuges ou companheiros de sexo diferente com 57 anos de idade|
|V120|Homens, cônjuges ou companheiros de sexo diferente com 58 anos de idade|
|V121|Homens, cônjuges ou companheiros de sexo diferente com 59 anos de idade|
|V122|Homens, cônjuges ou companheiros de sexo diferente com 60 anos de idade|
|V123|Homens, cônjuges ou companheiros de sexo diferente com 61 anos de idade|
|V124|Homens, cônjuges ou companheiros de sexo diferente com 62 anos de idade|
|V125|Homens, cônjuges ou companheiros de sexo diferente com 63 anos de idade|
|V126|Homens, cônjuges ou companheiros de sexo diferente com 64 anos de idade|
|V127|Homens, cônjuges ou companheiros de sexo diferente com 65 anos de idade|
|V128|Homens, cônjuges ou companheiros de sexo diferente com 66 anos de idade|
|V129|Homens, cônjuges ou companheiros de sexo diferente com 67 anos de idade|
|V130|Homens, cônjuges ou companheiros de sexo diferente com 68 anos de idade|
|V131|Homens, cônjuges ou companheiros de sexo diferente com 69 anos de idade|
|V132|Homens, cônjuges ou companheiros de sexo diferente com 70 anos de idade|
|V133|Homens, cônjuges ou companheiros de sexo diferente com 71 anos de idade|
|V134|Homens, cônjuges ou companheiros de sexo diferente com 72 anos de idade|
|V135|Homens, cônjuges ou companheiros de sexo diferente com 73 anos de idade|
|V136|Homens, cônjuges ou companheiros de sexo diferente com 74 anos de idade|
|V137|Homens, cônjuges ou companheiros de sexo diferente com 75 anos de idade|
|V138|Homens, cônjuges ou companheiros de sexo diferente com 76 anos de idade|
|V139|Homens, cônjuges ou companheiros de sexo diferente com 77 anos de idade|
|V140|Homens, cônjuges ou companheiros de sexo diferente com 78 anos de idade|
|V141|Homens, cônjuges ou companheiros de sexo diferente com 79 anos de idade|
|V142|Homens, cônjuges ou companheiros de sexo diferente com 80 anos ou mais de idade|
|V143|Mulheres, cônjuges ou companheiras de sexo dif erente com 10 anos de idade|
|V144|Mulheres, cônjuges ou companheiras de sexo dif erente com 11 anos de idade|
|V145|Mulheres, cônjuges ou companheiras de sexo dif erente com 12 anos de idade|
|V146|Mulheres, cônjuges ou companheiras de sexo dif erente com 13 anos de idade|
|V147|Mulheres, cônjuges ou companheiras de sexo dif erente com 14 anos de idade|
|V148|Mulheres, cônjuges ou companheiras de sexo dif erente com 15 anos de idade|
|V149|Mulheres, cônjuges ou companheiras de sexo dif erente com 16 anos de idade|
|V150|Mulheres, cônjuges ou companheiras de sexo dif erente com 17 anos de idade|
|V151|Mulheres, cônjuges ou companheiras de sexo dif erente com 18 anos de idade|
|V152|Mulheres, cônjuges ou companheiras de sexo dif erente com 19 anos de idade|
|V153|Mulheres, cônjuges ou companheiras de sexo dif erente com 20 anos de idade|
|V154|Mulheres, cônjuges ou companheiras de sexo dif erente com 21 anos de idade|
|V155|Mulheres, cônjuges ou companheiras de sexo dif erente com 22 anos de idade|
|V156|Mulheres, cônjuges ou companheiras de sexo dif erente com 23 anos de idade|
|V157|Mulheres, cônjuges ou companheiras de sexo dif erente com 24 anos de idade|
|V158|Mulheres, cônjuges ou companheiras de sexo dif erente com 25 anos de idade|
|V159|Mulheres, cônjuges ou companheiras de sexo dif erente com 26 anos de idade|
|V160|Mulheres, cônjuges ou companheiras de sexo dif erente com 27 anos de idade|
|V161|Mulheres, cônjuges ou companheiras de sexo dif erente com 28 anos de idade|
|V162|Mulheres, cônjuges ou companheiras de sexo dif erente com 29 anos de idade|
|V163|Mulheres, cônjuges ou companheiras de sexo dif erente com 30 anos de idade|
|V164|Mulheres, cônjuges ou companheiras de sexo dif erente com 31 anos de idade|
|V165|Mulheres, cônjuges ou companheiras de sexo dif erente com 32 anos de idade|
|V166|Mulheres, cônjuges ou companheiras de sexo dif erente com 33 anos de idade|
|V167|Mulheres, cônjuges ou companheiras de sexo dif erente com 34 anos de idade|
|V168|Mulheres, cônjuges ou companheiras de sexo dif erente com 35 anos de idade|
|V169|Mulheres, cônjuges ou companheiras de sexo dif erente com 36 anos de idade|
|V170|Mulheres, cônjuges ou companheiras de sexo dif erente com 37 anos de idade|
|V171|Mulheres, cônjuges ou companheiras de sexo dif erente com 38 anos de idade|
|V172|Mulheres, cônjuges ou companheiras de sexo dif erente com 39 anos de idade|
|V173|Mulheres, cônjuges ou companheiras de sexo dif erente com 40 anos de idade|
|V174|Mulheres, cônjuges ou companheiras de sexo dif erente com 41 anos de idade|
|V175|Mulheres, cônjuges ou companheiras de sexo dif erente com 42 anos de idade|
|V176|Mulheres, cônjuges ou companheiras de sexo dif erente com 43 anos de idade|
|V177|Mulheres, cônjuges ou companheiras de sexo dif erente com 44 anos de idade|
|V178|Mulheres, cônjuges ou companheiras de sexo dif erente com 45 anos de idade|
|V179|Mulheres, cônjuges ou companheiras de sexo dif erente com 46 anos de idade|
|V180|Mulheres, cônjuges ou companheiras de sexo dif erente com 47 anos de idade|
|V181|Mulheres, cônjuges ou companheiras de sexo dif erente com 48 anos de idade|
|V182|Mulheres, cônjuges ou companheiras de sexo dif erente com 49 anos de idade|
|V183|Mulheres, cônjuges ou companheiras de sexo dif erente com 50 anos de idade|
|V184|Mulheres, cônjuges ou companheiras de sexo dif erente com 51 anos de idade|
|V185|Mulheres, cônjuges ou companheiras de sexo dif erente com 52 anos de idade|
|V186|Mulheres, cônjuges ou companheiras de sexo dif erente com 53 anos de idade|
|V187|Mulheres, cônjuges ou companheiras de sexo dif erente com 54 anos de idade|
|V188|Mulheres, cônjuges ou companheiras de sexo dif erente com 55 anos de idade|
|V189|Mulheres, cônjuges ou companheiras de sexo dif erente com 56 anos de idade|
|V190|Mulheres, cônjuges ou companheiras de sexo dif erente com 57 anos de idade|
|V191|Mulheres, cônjuges ou companheiras de sexo dif erente com 58 anos de idade|
|V192|Mulheres, cônjuges ou companheiras de sexo dif erente com 59 anos de idade|
|V193|Mulheres, cônjuges ou companheiras de sexo dif erente com 60 anos de idade|
|V194|Mulheres, cônjuges ou companheiras de sexo dif erente com 61 anos de idade|
|V195|Mulheres, cônjuges ou companheiras de sexo dif erente com 62 anos de idade|
|V196|Mulheres, cônjuges ou companheiras de sexo dif erente com 63 anos de idade|
|V197|Mulheres, cônjuges ou companheiras de sexo dif erente com 64 anos de idade|
|V198|Mulheres, cônjuges ou companheiras de sexo dif erente com 65 anos de idade|
|V199|Mulheres, cônjuges ou companheiras de sexo dif erente com 66 anos de idade|
|V200|Mulheres, cônjuges ou companheiras de sexo dif erente com 67 anos de idade|
|V201|Mulheres, cônjuges ou companheiras de sexo diferente com 68 anos de idade|
|V202|Mulheres, cônjuges ou companheiras de sexo diferente com 69 anos de idade|
|V203|Mulheres, cônjuges ou companheiras de sexo diferente com 70 anos de idade|
|V204|Mulheres, cônjuges ou companheiras de sexo diferente com 71 anos de idade|
|V205|Mulheres, cônjuges ou companheiras de sexo diferente com 72 anos de idade|
|V206|Mulheres, cônjuges ou companheiras de sexo diferente com 73 anos de idade|
|V207|Mulheres, cônjuges ou companheiras de sexo diferente com 74 anos de idade|
|V208|Mulheres, cônjuges ou companheiras de sexo diferente com 75 anos de idade|
|V209|Mulheres, cônjuges ou companheiras de sexo diferente com 76 anos de idade|
|V210|Mulheres, cônjuges ou companheiras de sexo diferente com 77 anos de idade|
|V211|Mulheres, cônjuges ou companheiras de sexo diferente com 78 anos de idade|
|V212|Mulheres, cônjuges ou companheiras de sexo diferente com 79 anos de idade|
|V213|Mulheres, cônjuges ou companheiras de sexo diferente com 80 anos ou mais de idade|

## 6.12. Arquivo Relação de parentesco, filho {#dic_pessoa07}

### Fonte de dados

- Pessoa07\_UF.xls ou Pessoa07\_UF.csv

### Dicionário de dados

|Nome da variável|Descrição da variável|
|-|-|
|Cod\_setor|Código do setor censitário|
|V1005|Código de situação do setor censitário (ver planilha Basico\_UF.xls)|
|V001|Filhos(as) do responsável e do cônjuge com menos de 1 ano de idade|
|V002|Filhos(as) do responsável e do cônjuge com 1 ano de idade|
|V003|Filhos(as) do responsável e do cônjuge com 2 anos de idade|
|V004|Filhos(as) do responsável e do cônjuge com 3 anos de idade|
|V005|Filhos(as) do responsável e do cônjuge com 4 anos de idade|
|V006|Filhos(as) do responsável e do cônjuge com 5 anos de idade|
|V007|Filhos(as) do responsável e do cônjuge com 6 anos de idade|
|V008|Filhos(as) do responsável e do cônjuge com 7 anos de idade|
|V009|Filhos(as) do responsável e do cônjuge com 8 anos de idade|
|V010|Filhos(as) do responsável e do cônjuge com 9 anos de idade|
|V011|Filhos(as) do responsável e do cônjuge com 10 anos de idade|
|V012|Filhos(as) do responsável e do cônjuge com 11 anos de idade|
|V013|Filhos(as) do responsável e do cônjuge com 12 anos de idade|
|V014|Filhos(as) do responsável e do cônjuge com 13 anos de idade|
|V015|Filhos(as) do responsável e do cônjuge com 14 anos de idade|
|V016|Filhos(as) do responsável e do cônjuge com 15 anos de idade|
|V017|Filhos(as) do responsável e do cônjuge com 16 anos de idade|
|V018|Filhos(as) do responsável e do cônjuge com 17 anos de idade|
|V019|Filhos(as) do responsável e do cônjuge com 18 anos de idade|
|V020|Filhos(as) do responsável e do cônjuge com 19 anos de idade|
|V021|Filhos(as) do responsável e do cônjuge com 20 anos de idade|
|V022|Filhos(as) do responsável e do cônjuge com 21 anos de idade|
|V023|Filhos(as) do responsável e do cônjuge com 22 anos de idade|
|V024|Filhos(as) do responsável e do cônjuge com 23 anos de idade|
|V025|Filhos(as) do responsável e do cônjuge com 24 anos de idade|
|V026|Filhos(as) do responsável e do cônjuge com 25 anos de idade|
|V027|Filhos(as) do responsável e do cônjuge com 26 anos de idade|
|V028|Filhos(as) do responsável e do cônjuge com 27 anos de idade|
|V029|Filhos(as) do responsável e do cônjuge com 28 anos de idade|
|V030|Filhos(as) do responsável e do cônjuge com 29 anos de idade|
|V031|Filhos(as) do responsável e do cônjuge com 30 anos de idade|
|V032|Filhos(as) do responsável e do cônjuge com 31 anos de idade|
|V033|Filhos(as) do responsável e do cônjuge com 32 anos de idade|
|V034|Filhos(as) do responsável e do cônjuge com 33 anos de idade|
|V035|Filhos(as) do responsável e do cônjuge com 34 anos de idade|
|V036|Filhos(as) do responsável e do cônjuge com 35 anos de idade|
|V037|Filhos(as) do responsável e do cônjuge com 36 anos de idade|
|V038|Filhos(as) do responsável e do cônjuge com 37 anos de idade|
|V039|Filhos(as) do responsável e do cônjuge com 38 anos de idade|
|V040|Filhos(as) do responsável e do cônjuge com 39 anos de idade|
|V041|Filhos(as) do responsável e do cônjuge com 40 anos de idade|
|V042|Filhos(as) do responsável e do cônjuge com 41 anos de idade|
|V043|Filhos(as) do responsável e do cônjuge com 42 anos de idade|
|V044|Filhos(as) do responsável e do cônjuge com 43 anos de idade|
|V045|Filhos(as) do responsável e do cônjuge com 44 anos de idade|
|V046|Filhos(as) do responsável e do cônjuge com 45 anos de idade|
|V047|Filhos(as) do responsável e do cônjuge com 46 anos de idade|
|V048|Filhos(as) do responsável e do cônjuge com 47 anos de idade|
|V049|Filhos(as) do responsável e do cônjuge com 48 anos de idade|
|V050|Filhos(as) do responsável e do cônjuge com 49 anos de idade|
|V051|Filhos(as) do responsável e do cônjuge com 50 anos ou mais de idade|
|V052|Filhos(as) somente do responsável com menos de 1 ano de idade|
|V053|Filhos(as) somente do responsável com 1 ano de idade|
|V054|Filhos(as) somente do responsável com 2 anos de idade|
|V055|Filhos(as) somente do responsável com 3 anos de idade|
|V056|Filhos(as) somente do responsável com 4 anos de idade|
|V057|Filhos(as) somente do responsável com 5 anos de idade|
|V058|Filhos(as) somente do responsável com 6 anos de idade|
|V059|Filhos(as) somente do responsável com 7 anos de idade|
|V060|Filhos(as) somente do responsável com 8 anos de idade|
|V061|Filhos(as) somente do responsável com 9 anos de idade|
|V062|Filhos(as) somente do responsável com 10 anos de idade|
|V063|Filhos(as) somente do responsável com 11 anos de idade|
|V064|Filhos(as) somente do responsável com 12 anos de idade|
|V065|Filhos(as) somente do responsável com 13 anos de idade|
|V066|Filhos(as) somente do responsável com 14 anos de idade|
|V067|Filhos(as) somente do responsável com 15 anos de idade|
|V068|Filhos(as) somente do responsável com 16 anos de idade|
|V069|Filhos(as) somente do responsável com 17 anos de idade|
|V070|Filhos(as) somente do responsável com 18 anos de idade|
|V071|Filhos(as) somente do responsável com 19 anos de idade|
|V072|Filhos(as) somente do responsável com 20 anos de idade|
|V073|Filhos(as) somente do responsável com 21 anos de idade|
|V074|Filhos(as) somente do responsável com 22 anos de idade|
|V075|Filhos(as) somente do responsável com 23 anos de idade|
|V076|Filhos(as) somente do responsável com 24 anos de idade|
|V077|Filhos(as) somente do responsável com 25 anos de idade|
|V078|Filhos(as) somente do responsável com 26 anos de idade|
|V079|Filhos(as) somente do responsável com 27 anos de idade|
|V080|Filhos(as) somente do responsável com 28 anos de idade|
|V081|Filhos(as) somente do responsável com 29 anos de idade|
|V082|Filhos(as) somente do responsável com 30 anos de idade|
|V083|Filhos(as) somente do responsável com 31 anos de idade|
|V084|Filhos(as) somente do responsável com 32 anos de idade|
|V085|Filhos(as) somente do responsável com 33 anos de idade|
|V086|Filhos(as) somente do responsável com 34 anos de idade|
|V087|Filhos(as) somente do responsável com 35 anos de idade|
|V088|Filhos(as) somente do responsável com 36 anos de idade|
|V089|Filhos(as) somente do responsável com 37 anos de idade|
|V090|Filhos(as) somente do responsável com 38 anos de idade|
|V091|Filhos(as) somente do responsável com 39 anos de idade|
|V092|Filhos(as) somente do responsável com 40 anos de idade|
|V093|Filhos(as) somente do responsável com 41 anos de idade|
|V094|Filhos(as) somente do responsável com 42 anos de idade|
|V095|Filhos(as) somente do responsável com 43 anos de idade|
|V096|Filhos(as) somente do responsável com 44 anos de idade|
|V097|Filhos(as) somente do responsável com 45 anos de idade|
|V098|Filhos(as) somente do responsável com 46 anos de idade|
|V099|Filhos(as) somente do responsável com 47 anos de idade|
|V100|Filhos(as) somente do responsável com 48 anos de idade|
|V101|Filhos(as) somente do responsável com 49 anos de idade|
|V102|Filhos(as) somente do responsável com 50 anos ou mais de idade|
|V103|Enteados(as) com menos de 1 ano de idade|
|V104|Enteados(as) com 1 ano de idade|
|V105|Enteados(as) com 2 anos de idade|
|V106|Enteados(as) com 3 anos de idade|
|V107|Enteados(as) com 4 anos de idade|
|V108|Enteados(as) com 5 anos de idade|
|V109|Enteados(as) com 6 anos de idade|
|V110|Enteados(as) com 7 anos de idade|
|V111|Enteados(as) com 8 anos de idade|
|V112|Enteados(as) com 9 anos de idade|
|V113|Enteados(as) com 10 anos de idade|
|V114|Enteados(as) com 11 anos de idade|
|V115|Enteados(as) com 12 anos de idade|
|V116|Enteados(as) com 13 anos de idade|
|V117|Enteados(as) com 14 anos de idade|
|V118|Enteados(as) com 15 anos de idade|
|V119|Enteados(as) com 16 anos de idade|
|V120|Enteados(as) com 17 anos de idade|
|V121|Enteados(as) com 18 anos de idade|
|V122|Enteados(as) com 19 anos de idade|
|V123|Enteados(as) com 20 anos de idade|
|V124|Enteados(as) com 21 anos de idade|
|V125|Enteados(as) com 22 anos de idade|
|V126|Enteados(as) com 23 anos de idade|
|V127|Enteados(as) com 24 anos de idade|
|V128|Enteados(as) com 25 anos de idade|
|V129|Enteados(as) com 26 anos de idade|
|V130|Enteados(as) com 27 anos de idade|
|V131|Enteados(as) com 28 anos de idade|
|V132|Enteados(as) com 29 anos de idade|
|V133|Enteados(as) com 30 anos de idade|
|V134|Enteados(as) com 31 anos de idade|
|V135|Enteados(as) com 32 anos de idade|
|V136|Enteados(as) com 33 anos de idade|
|V137|Enteados(as) com 34 anos de idade|
|V138|Enteados(as) com 35 anos de idade|
|V139|Enteados(as) com 36 anos de idade|
|V140|Enteados(as) com 37 anos de idade|
|V141|Enteados(as) com 38 anos de idade|
|V142|Enteados(as) com 39 anos de idade|
|V143|Enteados(as) com 40 anos de idade|
|V144|Enteados(as) com 41 anos de idade|
|V145|Enteados(as) com 42 anos de idade|
|V146|Enteados(as) com 43 anos de idade|
|V147|Enteados(as) com 44 anos de idade|
|V148|Enteados(as) com 45 anos de idade|
|V149|Enteados(as) com 46 anos de idade|
|V150|Enteados(as) com 47 anos de idade|
|V151|Enteados(as) com 48 anos de idade|
|V152|Enteados(as) com 49 anos de idade|
|V153|Enteados(as) com 50 ou mais anos de idade|
|V154|Filhos do responsável e do cônjuge com menos de 1 ano de idade|
|V155|Filhos do responsável e do cônjuge com 1 ano de idade|
|V156|Filhos do responsável e do cônjuge com 2 anos de idade|
|V157|Filhos do responsável e do cônjuge com 3 anos de idade|
|V158|Filhos do responsável e do cônjuge com 4 anos de idade|
|V159|Filhos do responsável e do cônjuge com 5 anos de idade|
|V160|Filhos do responsável e do cônjuge com 6 anos de idade|
|V161|Filhos do responsável e do cônjuge com 7 anos de idade|
|V162|Filhos do responsável e do cônjuge com 8 anos de idade|
|V163|Filhos do responsável e do cônjuge com 9 anos de idade|
|V164|Filhos do responsável e do cônjuge com 10 anos de idade|
|V165|Filhos do responsável e do cônjuge com 11 anos de idade|
|V166|Filhos do responsável e do cônjuge com 12 anos de idade|
|V167|Filhos do responsável e do cônjuge com 13 anos de idade|
|V168|Filhos do responsável e do cônjuge com 14 anos de idade|
|V169|Filhos do responsável e do cônjuge com 15 anos de idade|
|V170|Filhos do responsável e do cônjuge com 16 anos de idade|
|V171|Filhos do responsável e do cônjuge com 17 anos de idade|
|V172|Filhos do responsável e do cônjuge com 18 anos de idade|
|V173|Filhos do responsável e do cônjuge com 19 anos de idade|
|V174|Filhos do responsável e do cônjuge com 20 anos de idade|
|V175|Filhos do responsável e do cônjuge com 21 anos de idade|
|V176|Filhos do responsável e do cônjuge com 22 anos de idade|
|V177|Filhos do responsável e do cônjuge com 23 anos de idade|
|V178|Filhos do responsável e do cônjuge com 24 anos de idade|
|V179|Filhos do responsável e do cônjuge com 25 anos de idade|
|V180|Filhos do responsável e do cônjuge com 26 anos de idade|
|V181|Filhos do responsável e do cônjuge com 27 anos de idade|
|V182|Filhos do responsável e do cônjuge com 28 anos de idade|
|V183|Filhos do responsável e do cônjuge com 29 anos de idade|
|V184|Filhos do responsável e do cônjuge com 30 anos de idade|
|V185|Filhos do responsável e do cônjuge com 31 anos de idade|
|V186|Filhos do responsável e do cônjuge com 32 anos de idade|
|V187|Filhos do responsável e do cônjuge com 33 anos de idade|
|V188|Filhos do responsável e do cônjuge com 34 anos de idade|
|V189|Filhos do responsável e do cônjuge com 35 anos de idade|
|V190|Filhos do responsável e do cônjuge com 36 anos de idade|
|V191|Filhos do responsável e do cônjuge com 37 anos de idade|
|V192|Filhos do responsável e do cônjuge com 38 anos de idade|
|V193|Filhos do responsável e do cônjuge com 39 anos de idade|
|V194|Filhos do responsável e do cônjuge com 40 anos de idade|
|V195|Filhos do responsável e do cônjuge com 41 anos de idade|
|V196|Filhos do responsável e do cônjuge com 42 anos de idade|
|V197|Filhos do responsável e do cônjuge com 43 anos de idade|
|V198|Filhos do responsável e do cônjuge com 44 anos de idade|
|V199|Filhos do responsável e do cônjuge com 45 anos de idade|
|V200|Filhos do responsável e do cônjuge com 46 anos de idade|
|V201|Filhos do responsável e do cônjuge com 47 anos de idade|
|V202|Filhos do responsável e do cônjuge com 48 anos de idade|
|V203|Filhos do responsável e do cônjuge com 49 anos de idade|
|V204|Filhos do responsável e do cônjuge com 50 anos ou mais de idade|

## 6.13. Arquivo Relação de parentesco, filhos e enteados {#dic_pessoa08}

### Fonte de dados

- Pessoa08\_UF.xls ou Pessoa08\_UF.csv

### Dicionário de dados

|Nome da variável|Descrição da variável|
|-|-|
|Cod\_setor|Código do setor censitário|
|V1005|Código de situação do setor censitário (ver planilha Basico\_UF.xls)|
|V001|Filhos somente do responsável com menos de 1 ano de idade|
|V002|Filhos somente do responsável com 1 ano de idade|
|V003|Filhos somente do responsável com 2 anos de idade|
|V004|Filhos somente do responsável com 3 anos de idade|
|V005|Filhos somente do responsável com 4 anos de idade|
|V006|Filhos somente do responsável com 5 anos de idade|
|V007|Filhos somente do responsável com 6 anos de idade|
|V008|Filhos somente do responsável com 7 anos de idade|
|V009|Filhos somente do responsável com 8 anos de idade|
|V010|Filhos somente do responsável com 9 anos de idade|
|V011|Filhos somente do responsável com 10 anos de idade|
|V012|Filhos somente do responsável com 11 anos de idade|
|V013|Filhos somente do responsável com 12 anos de idade|
|V014|Filhos somente do responsável com 13 anos de idade|
|V015|Filhos somente do responsável com 14 anos de idade|
|V016|Filhos somente do responsável com 15 anos de idade|
|V017|Filhos somente do responsável com 16 anos de idade|
|V018|Filhos somente do responsável com 17 anos de idade|
|V019|Filhos somente do responsável com 18 anos de idade|
|V020|Filhos somente do responsável com 19 anos de idade|
|V021|Filhos somente do responsável com 20 anos de idade|
|V022|Filhos somente do responsável com 21 anos de idade|
|V023|Filhos somente do responsável com 22 anos de idade|
|V024|Filhos somente do responsável com 23 anos de idade|
|V025|Filhos somente do responsável com 24 anos de idade|
|V026|Filhos somente do responsável com 25 anos de idade|
|V027|Filhos somente do responsável com 26 anos de idade|
|V028|Filhos somente do responsável com 27 anos de idade|
|V029|Filhos somente do responsável com 28 anos de idade|
|V030|Filhos somente do responsável com 29 anos de idade|
|V031|Filhos somente do responsável com 30 anos de idade|
|V032|Filhos somente do responsável com 31 anos de idade|
|V033|Filhos somente do responsável com 32 anos de idade|
|V034|Filhos somente do responsável com 33 anos de idade|
|V035|Filhos somente do responsável com 34 anos de idade|
|V036|Filhos somente do responsável com 35 anos de idade|
|V037|Filhos somente do responsável com 36 anos de idade|
|V038|Filhos somente do responsável com 37 anos de idade|
|V039|Filhos somente do responsável com 38 anos de idade|
|V040|Filhos somente do responsável com 39 anos de idade|
|V041|Filhos somente do responsável com 40 anos de idade|
|V042|Filhos somente do responsável com 41 anos de idade|
|V043|Filhos somente do responsável com 42 anos de idade|
|V044|Filhos somente do responsável com 43 anos de idade|
|V045|Filhos somente do responsável com 44 anos de idade|
|V046|Filhos somente do responsável com 45 anos de idade|
|V047|Filhos somente do responsável com 46 anos de idade|
|V048|Filhos somente do responsável com 47 anos de idade|
|V049|Filhos somente do responsável com 48 anos de idade|
|V050|Filhos somente do responsável com 49 anos de idade|
|V051|Filhos somente do responsável com 50 anos ou mais de idade|
|V052|Enteados com menos de 1 ano de idade|
|V053|Enteados com 1 ano de idade|
|V054|Enteados com 2 anos de idade|
|V055|Enteados com 3 anos de idade|
|V056|Enteados com 4 anos de idade|
|V057|Enteados com 5 anos de idade|
|V058|Enteados com 6 anos de idade|
|V059|Enteados com 7 anos de idade|
|V060|Enteados com 8 anos de idade|
|V061|Enteados com 9 anos de idade|
|V062|Enteados com 10 anos de idade|
|V063|Enteados com 11 anos de idade|
|V064|Enteados com 12 anos de idade|
|V065|Enteados com 13 anos de idade|
|V066|Enteados com 14 anos de idade|
|V067|Enteados com 15 anos de idade|
|V068|Enteados com 16 anos de idade|
|V069|Enteados com 17 anos de idade|
|V070|Enteados com 18 anos de idade|
|V071|Enteados com 19 anos de idade|
|V072|Enteados com 20 anos de idade|
|V073|Enteados com 21 anos de idade|
|V074|Enteados com 22 anos de idade|
|V075|Enteados com 23 anos de idade|
|V076|Enteados com 24 anos de idade|
|V077|Enteados com 25 anos de idade|
|V078|Enteados com 26 anos de idade|
|V079|Enteados com 27 anos de idade|
|V080|Enteados com 28 anos de idade|
|V081|Enteados com 29 anos de idade|
|V082|Enteados com 30 anos de idade|
|V083|Enteados com 31 anos de idade|
|V084|Enteados com 32 anos de idade|
|V085|Enteados com 33 anos de idade|
|V086|Enteados com 34 anos de idade|
|V087|Enteados com 35 anos de idade|
|V088|Enteados com 36 anos de idade|
|V089|Enteados com 37 anos de idade|
|V090|Enteados com 38 anos de idade|
|V091|Enteados com 39 anos de idade|
|V092|Enteados com 40 anos de idade|
|V093|Enteados com 41 anos de idade|
|V094|Enteados com 42 anos de idade|
|V095|Enteados com 43 anos de idade|
|V096|Enteados com 44 anos de idade|
|V097|Enteados com 45 anos de idade|
|V098|Enteados com 46 anos de idade|
|V099|Enteados com 47 anos de idade|
|V100|Enteados com 48 anos de idade|
|V101|Enteados com 49 anos de idade|
|V102|Enteados com 50 ou mais anos de idade|
|V103|Filhas do responsável e do cônjuge com menos de 1 ano de idade|
|V104|Filhas do responsável e do cônjuge com 1 ano de idade|
|V105|Filhas do responsável e do cônjuge com 2 anos de idade|
|V106|Filhas do responsável e do cônjuge com 3 anos de idade|
|V107|Filhas do responsável e do cônjuge com 4 anos de idade|
|V108|Filhas do responsável e do cônjuge com 5 anos de idade|
|V109|Filhas do responsável e do cônjuge com 6 anos de idade|
|V110|Filhas do responsável e do cônjuge com 7 anos de idade|
|V111|Filhas do responsável e do cônjuge com 8 anos de idade|
|V112|Filhas do responsável e do cônjuge com 9 anos de idade|
|V113|Filhas do responsável e do cônjuge com 10 anos de idade|
|V114|Filhas do responsável e do cônjuge com 11 anos de idade|
|V115|Filhas do responsável e do cônjuge com 12 anos de idade|
|V116|Filhas do responsável e do cônjuge com 13 anos de idade|
|V117|Filhas do responsável e do cônjuge com 14 anos de idade|
|V118|Filhas do responsável e do cônjuge com 15 anos de idade|
|V119|Filhas do responsável e do cônjuge com 16 anos de idade|
|V120|Filhas do responsável e do cônjuge com 17 anos de idade|
|V121|Filhas do responsável e do cônjuge com 18 anos de idade|
|V122|Filhas do responsável e do cônjuge com 19 anos de idade|
|V123|Filhas do responsável e do cônjuge com 20 anos de idade|
|V124|Filhas do responsável e do cônjuge com 21 anos de idade|
|V125|Filhas do responsável e do cônjuge com 22 anos de idade|
|V126|Filhas do responsável e do cônjuge com 23 anos de idade|
|V127|Filhas do responsável e do cônjuge com 24 anos de idade|
|V128|Filhas do responsável e do cônjuge com 25 anos de idade|
|V129|Filhas do responsável e do cônjuge com 26 anos de idade|
|V130|Filhas do responsável e do cônjuge com 27 anos de idade|
|V131|Filhas do responsável e do cônjuge com 28 anos de idade|
|V132|Filhas do responsável e do cônjuge com 29 anos de idade|
|V133|Filhas do responsável e do cônjuge com 30 anos de idade|
|V134|Filhas do responsável e do cônjuge com 31 anos de idade|
|V135|Filhas do responsável e do cônjuge com 32 anos de idade|
|V136|Filhas do responsável e do cônjuge com 33 anos de idade|
|V137|Filhas do responsável e do cônjuge com 34 anos de idade|
|V138|Filhas do responsável e do cônjuge com 35 anos de idade|
|V139|Filhas do responsável e do cônjuge com 36 anos de idade|
|V140|Filhas do responsável e do cônjuge com 37 anos de idade|
|V141|Filhas do responsável e do cônjuge com 38 anos de idade|
|V142|Filhas do responsável e do cônjuge com 39 anos de idade|
|V143|Filhas do responsável e do cônjuge com 40 anos de idade|
|V144|Filhas do responsável e do cônjuge com 41 anos de idade|
|V145|Filhas do responsável e do cônjuge com 42 anos de idade|
|V146|Filhas do responsável e do cônjuge com 43 anos de idade|
|V147|Filhas do responsável e do cônjuge com 44 anos de idade|
|V148|Filhas do responsável e do cônjuge com 45 anos de idade|
|V149|Filhas do responsável e do cônjuge com 46 anos de idade|
|V150|Filhas do responsável e do cônjuge com 47 anos de idade|
|V151|Filhas do responsável e do cônjuge com 48 anos de idade|
|V152|Filhas do responsável e do cônjuge com 49 anos de idade|
|V153|Filhas do responsável e do cônjuge com 50 anos ou mais de idade|
|V154|Filhas somente do responsável com menos de 1 ano de idade|
|V155|Filhas somente do responsável com 1 ano de idade|
|V156|Filhas somente do responsável com 2 anos de idade|
|V157|Filhas somente do responsável com 3 anos de idade|
|V158|Filhas somente do responsável com 4 anos de idade|
|V159|Filhas somente do responsável com 5 anos de idade|
|V160|Filhas somente do responsável com 6 anos de idade|
|V161|Filhas somente do responsável com 7 anos de idade|
|V162|Filhas somente do responsável com 8 anos de idade|
|V163|Filhas somente do responsável com 9 anos de idade|
|V164|Filhas somente do responsável com 10 anos de idade|
|V165|Filhas somente do responsável com 11 anos de idade|
|V166|Filhas somente do responsável com 12 anos de idade|
|V167|Filhas somente do responsável com 13 anos de idade|
|V168|Filhas somente do responsável com 14 anos de idade|
|V169|Filhas somente do responsável com 15 anos de idade|
|V170|Filhas somente do responsável com 16 anos de idade|
|V171|Filhas somente do responsável com 17 anos de idade|
|V172|Filhas somente do responsável com 18 anos de idade|
|V173|Filhas somente do responsável com 19 anos de idade|
|V174|Filhas somente do responsável com 20 anos de idade|
|V175|Filhas somente do responsável com 21 anos de idade|
|V176|Filhas somente do responsável com 22 anos de idade|
|V177|Filhas somente do responsável com 23 anos de idade|
|V178|Filhas somente do responsável com 24 anos de idade|
|V179|Filhas somente do responsável com 25 anos de idade|
|V180|Filhas somente do responsável com 26 anos de idade|
|V181|Filhas somente do responsável com 27 anos de idade|
|V182|Filhas somente do responsável com 28 anos de idade|
|V183|Filhas somente do responsável com 29 anos de idade|
|V184|Filhas somente do responsável com 30 anos de idade|
|V185|Filhas somente do responsável com 31 anos de idade|
|V186|Filhas somente do responsável com 32 anos de idade|
|V187|Filhas somente do responsável com 33 anos de idade|
|V188|Filhas somente do responsável com 34 anos de idade|
|V189|Filhas somente do responsável com 35 anos de idade|
|V190|Filhas somente do responsável com 36 anos de idade|
|V191|Filhas somente do responsável com 37 anos de idade|
|V192|Filhas somente do responsável com 38 anos de idade|
|V193|Filhas somente do responsável com 39 anos de idade|
|V194|Filhas somente do responsável com 40 anos de idade|
|V195|Filhas somente do responsável com 41 anos de idade|
|V196|Filhas somente do responsável com 42 anos de idade|
|V197|Filhas somente do responsável com 43 anos de idade|
|V198|Filhas somente do responsável com 44 anos de idade|
|V199|Filhas somente do responsável com 45 anos de idade|
|V200|Filhas somente do responsável com 46 anos de idade|
|V201|Filhas somente do responsável com 47 anos de idade|
|V202|Filhas somente do responsável com 48 anos de idade|
|V203|Filhas somente do responsável com 49 anos de idade|
|V204|Filhas somente do responsável com 50 anos ou mais de idade|
|V205|Enteadas com menos de 1 ano de idade|
|V206|Enteadas com 1 ano de idade|
|V207|Enteadas com 2 anos de idade|
|V208|Enteadas com 3 anos de idade|
|V209|Enteadas com 4 anos de idade|
|V210|Enteadas com 5 anos de idade|
|V211|Enteadas com 6 anos de idade|
|V212|Enteadas com 7 anos de idade|
|V213|Enteadas com 8 anos de idade|
|V214|Enteadas com 9 anos de idade|
|V215|Enteadas com 10 anos de idade|
|V216|Enteadas com 11 anos de idade|
|V217|Enteadas com 12 anos de idade|
|V218|Enteadas com 13 anos de idade|
|V219|Enteadas com 14 anos de idade|
|V220|Enteadas com 15 anos de idade|
|V221|Enteadas com 16 anos de idade|
|V222|Enteadas com 17 anos de idade|
|V223|Enteadas com 18 anos de idade|
|V224|Enteadas com 19 anos de idade|
|V225|Enteadas com 20 anos de idade|
|V226|Enteadas com 21 anos de idade|
|V227|Enteadas com 22 anos de idade|
|V228|Enteadas com 23 anos de idade|
|V229|Enteadas com 24 anos de idade|
|V230|Enteadas com 25 anos de idade|
|V231|Enteadas com 26 anos de idade|
|V232|Enteadas com 27 anos de idade|
|V233|Enteadas com 28 anos de idade|
|V234|Enteadas com 29 anos de idade|
|V235|Enteadas com 30 anos de idade|
|V236|Enteadas com 31 anos de idade|
|V237|Enteadas com 32 anos de idade|
|V238|Enteadas com 33 anos de idade|
|V239|Enteadas com 34 anos de idade|
|V240|Enteadas com 35 anos de idade|
|V241|Enteadas com 36 anos de idade|
|V242|Enteadas com 37 anos de idade|
|V243|Enteadas com 38 anos de idade|
|V244|Enteadas com 39 anos de idade|
|V245|Enteadas com 40 anos de idade|
|V246|Enteadas com 41 anos de idade|
|V247|Enteadas com 42 anos de idade|
|V248|Enteadas com 43 anos de idade|
|V249|Enteadas com 44 anos de idade|
|V250|Enteadas com 45 anos de idade|
|V251|Enteadas com 46 anos de idade|
|V252|Enteadas com 47 anos de idade|
|V253|Enteadas com 48 anos de idade|
|V254|Enteadas com 49 anos de idade|

## 6.14. Arquivo Relação de parentesco, outros {#dic_pessoa09}

### Fonte de dados

- Pessoa09\_UF.xls ou Pessoa09\_UF.csv

### Dicionário de dados

|Nome da variável|Descrição da variável|
|-|-|
|Cod\_setor|Código do setor censitário|
|V1005|Código de situação do setor censitário (ver planilha Basico\_UF.xls)|
|V001|Genro ou nora com 10 a 14 anos de idade|
|V002|Genro ou nora com 15 a 19 anos de idade|
|V003|Genro ou nora com 20 a 24 anos de idade|
|V004|Genro ou nora com 25 a 29 anos de idade|
|V005|Genro ou nora com 30 a 34 anos de idade|
|V006|Genro ou nora com 35 a 39 anos de idade|
|V007|Genro ou nora com 40 a 44 anos de idade|
|V008|Genro ou nora com 45 a 49 anos de idade|
|V009|Genro ou nora com 50 a 54 anos de idade|
|V010|Genro ou nora com 55 a 59 anos de idade|
|V011|Genro ou nora com 60 a 64 anos de idade|
|V012|Genro ou nora com 65 a 69 anos de idade|
|V013|Genro ou nora com 70 a 74 anos de idade|
|V014|Genro ou nora com 75 a 79 anos de idade|
|V015|Genro ou nora com 80 anos ou mais de idade|
|V016|Genro com 10 a 14 anos de idade|
|V017|Genro com 15 a 19 anos de idade|
|V018|Genro com 20 a 24 anos de idade|
|V019|Genro com 25 a 29 anos de idade|
|V020|Genro com 30 a 34 anos de idade|
|V021|Genro com 35 a 39 anos de idade|
|V022|Genro com 40 a 44 anos de idade|
|V023|Genro com 45 a 49 anos de idade|
|V024|Genro com 50 a 54 anos de idade|
|V025|Genro com 55 a 59 anos de idade|
|V026|Genro com 60 a 64 anos de idade|
|V027|Genro com 65 a 69 anos de idade|
|V028|Genro com 70 a 74 anos de idade|
|V029|Genro com 75 a 79 anos de idade|
|V030|Genro com 80 anos ou mais de idade|
|V031|Nora com 10 a 14 anos de idade|
|V032|Nora com 15 a 19 anos de idade|
|V033|Nora com 20 a 24 anos de idade|
|V034|Nora com 25 a 29 anos de idade|
|V035|Nora com 30 a 34 anos de idade|
|V036|Nora com 35 a 39 anos de idade|
|V037|Nora com 40 a 44 anos de idade|
|V038|Nora com 45 a 49 anos de idade|
|V039|Nora com 50 a 54 anos de idade|
|V040|Nora com 55 a 59 anos de idade|
|V041|Nora com 60 a 64 anos de idade|
|V042|Nora com 65 a 69 anos de idade|
|V043|Nora com 70 a 74 anos de idade|
|V044|Nora com 75 a 79 anos de idade|
|V045|Nora com 80 anos ou mais de idade|
|V046|Pai, mãe, padrasto ou madrasta com 20 a 24 anos de idade|
|V047|Pai, mãe, padrasto ou madrasta com 25 a 29 anos de idade|
|V048|Pai, mãe, padrasto ou madrasta com 30 a 34 anos de idade|
|V049|Pai, mãe, padrasto ou madrasta com 35 a 39 anos de idade|
|V050|Pai, mãe, padrasto ou madrasta com 40 a 44 anos de idade|
|V051|Pai, mãe, padrasto ou madrasta com 45 a 49 anos de idade|
|V052|Pai, mãe, padrasto ou madrasta com 50 a 54 anos de idade|
|V053|Pai, mãe, padrasto ou madrasta com 55 a 59 anos de idade|
|V054|Pai, mãe, padrasto ou madrasta com 60 a 64 anos de idade|
|V055|Pai, mãe, padrasto ou madrasta com 65 a 69 anos de idade|
|V056|Pai, mãe, padrasto ou madrasta com 70 a 74 anos de idade|
|V057|Pai, mãe, padrasto ou madrasta com 75 a 79 anos de idade|
|V058|Pai, mãe, padrasto ou madrasta com 80 anos ou mais de idade|
|V059|Pai ou padrasto com 20 a 24 anos de idade|
|V060|Pai ou padrasto com 25 a 29 anos de idade|
|V061|Pai ou padrasto com 30 a 34 anos de idade|
|V062|Pai ou padrasto com 35 a 39 anos de idade|
|V063|Pai ou padrasto com 40 a 44 anos de idade|
|V064|Pai ou padrasto com 45 a 49 anos de idade|
|V065|Pai ou padrasto com 50 a 54 anos de idade|
|V066|Pai ou padrasto com 55 a 59 anos de idade|
|V067|Pai ou padrasto com 60 a 64 anos de idade|
|V068|Pai ou padrasto com 65 a 69 anos de idade|
|V069|Pai ou padrasto com 70 a 74 anos de idade|
|V070|Pai ou padrasto com 75 a 79 anos de idade|
|V071|Pai ou padrasto com 80 anos ou mais de idade|
|V072|Mãe ou madastra com 20 a 24 anos de idade|
|V073|Mãe ou madastra com 25 a 29 anos de idade|
|V074|Mãe ou madastra com 30 a 34 anos de idade|
|V075|Mãe ou madastra com 35 a 39 anos de idade|
|V076|Mãe ou madastra com 40 a 44 anos de idade|
|V077|Mãe ou madastra com 45 a 49 anos de idade|
|V078|Mãe ou madastra com 50 a 54 anos de idade|
|V079|Mãe ou madastra com 55 a 59 anos de idade|
|V080|Mãe ou madastra com 60 a 64 anos de idade|
|V081|Mãe ou madastra com 65 a 69 anos de idade|
|V082|Mãe ou madastra com 70 a 74 anos de idade|
|V083|Mãe ou madastra com 75 a 79 anos de idade|
|V084|Mãe ou madastra com 80 anos ou mais de idade|
|V085|Sogro(a) com 20 a 24 anos de idade|
|V086|Sogro(a) com 25 a 29 anos de idade|
|V087|Sogro(a) com 30 a 34 anos de idade|
|V088|Sogro(a) com 35 a 39 anos de idade|
|V089|Sogro(a) com 40 a 44 anos de idade|
|V090|Sogro(a) com 45 a 49 anos de idade|
|V091|Sogro(a) com 50 a 54 anos de idade|
|V092|Sogro(a) com 55 a 59 anos de idade|
|V093|Sogro(a) com 60 a 64 anos de idade|
|V094|Sogro(a) com 65 a 69 anos de idade|
|V095|Sogro(a) com 70 a 74 anos de idade|
|V096|Sogro(a) com 75 a 79 anos de idade|
|V097|Sogro(a) com 80 anos ou mais de idade|
|V098|Sogro com 20 a 24 anos de idade|
|V099|Sogro com 25 a 29 anos de idade|
|V100|Sogro com 30 a 34 anos de idade|
|V101|Sogro com 35 a 39 anos de idade|
|V102|Sogro com 40 a 44 anos de idade|
|V103|Sogro com 45 a 49 anos de idade|
|V104|Sogro com 50 a 54 anos de idade|
|V105|Sogro com 55 a 59 anos de idade|
|V106|Sogro com 60 a 64 anos de idade|
|V107|Sogro com 65 a 69 anos de idade|
|V108|Sogro com 70 a 74 anos de idade|
|V109|Sogro com 75 a 79 anos de idade|
|V110|Sogro com 80 anos ou mais de idade|
|V111|Sogra com 20 a 24 anos de idade|
|V112|Sogra com 25 a 29 anos de idade|
|V113|Sogra com 30 a 34 anos de idade|
|V114|Sogra com 35 a 39 anos de idade|
|V115|Sogra com 40 a 44 anos de idade|
|V116|Sogra com 45 a 49 anos de idade|
|V117|Sogra com 50 a 54 anos de idade|
|V118|Sogra com 55 a 59 anos de idade|
|V119|Sogra com 60 a 64 anos de idade|
|V120|Sogra com 65 a 69 anos de idade|
|V121|Sogra com 70 a 74 anos de idade|
|V122|Sogra com 75 a 79 anos de idade|
|V123|Sogra com 80 anos ou mais de idade|
|V124|Neto(a) com 0 a 4 anos de idade|
|V125|Neto(a) com 5 a 9 anos de idade|
|V126|Neto(a) com 10 a 14 anos de idade|
|V127|Neto(a) com 15 a 19 anos de idade|
|V128|Neto(a) com 20 a 24 anos de idade|
|V129|Neto(a) com 25 a 29 anos de idade|
|V130|Neto(a) com 30 a 34 anos de idade|
|V131|Neto(a) com 35 a 39 anos de idade|
|V132|Neto(a) com 40 a 44 anos de idade|
|V133|Neto(a) com 45 a 49 anos de idade|
|V134|Neto(a) com 50 ou mais de idade|
|V135|Neto com 0 a 4 anos de idade|
|V136|Neto com 5 a 9 anos de idade|
|V137|Neto com 10 a 14 anos de idade|
|V138|Neto com 15 a 19 anos de idade|
|V139|Neto com 20 a 24 anos de idade|
|V140|Neto com 25 a 29 anos de idade|
|V141|Neto com 30 a 34 anos de idade|
|V142|Neto com 35 a 39 anos de idade|
|V143|Neto com 40 a 44 anos de idade|
|V144|Neto com 45 a 49 anos de idade|
|V145|Neto com 50 anos ou mais de idade|
|V146|Neta com 0 a 4 anos de idade|
|V147|Neta com 5 a 9 anos de idade|
|V148|Neta com 10 a 14 anos de idade|
|V149|Neta com 15 a 19 anos de idade|
|V150|Neta com 20 a 24 anos de idade|
|V151|Neta com 25 a 29 anos de idade|
|V152|Neta com 30 a 34 anos de idade|
|V153|Neta com 35 a 39 anos de idade|
|V154|Neta com 40 a 44 anos de idade|
|V155|Neta com 45 a 49 anos de idade|
|V156|Neta com 50 anos ou mais de idade|
|V157|Bisneto(a) com 0 a 4 anos de idade|
|V158|Bisneto(a) com 5 a 9 anos de idade|
|V159|Bisneto(a) com 10 a 14 anos de idade|
|V160|Bisneto(a) com 15 a 19 anos de idade|
|V161|Bisneto(a) com 20 a 24 anos de idade|
|V162|Bisneto(a) com 25 a 29 anos de idade|
|V163|Bisneto(a) com 30 a 34 anos de idade|
|V164|Bisneto(a) com 35 a 39 anos de idade|
|V165|Bisneto(a) com 40 a 44 anos de idade|
|V166|Bisneto(a) com 45 a 49 anos de idade|
|V167|Bisneto(a) com 50 ou mais de idade|
|V168|Bisneto com 0 a 4 anos de idade|
|V169|Bisneto com 5 a 9 anos de idade|
|V170|Bisneto com 10 a 14 anos de idade|
|V171|Bisneto com 15 a 19 anos de idade|
|V172|Bisneto com 20 a 24 anos de idade|
|V173|Bisneto com 25 a 29 anos de idade|
|V174|Bisneto com 30 a 34 anos de idade|
|V175|Bisneto com 35 a 39 anos de idade|
|V176|Bisneto com 40 a 44 anos de idade|
|V177|Bisneto com 45 a 49 anos de idade|
|V178|Bisneto com 50 anos ou mais de idade|
|V179|Bisneta com 0 a 4 anos de idade|
|V180|Bisneta com 5 a 9 anos de idade|
|V181|Bisneta com 10 a 14 anos de idade|
|V182|Bisneta com 15 a 19 anos de idade|
|V183|Bisneta com 20 a 24 anos de idade|
|V184|Bisneta com 25 a 29 anos de idade|
|V185|Bisneta com 30 a 34 anos de idade|
|V186|Bisneta com 35 a 39 anos de idade|
|V187|Bisneta com 40 a 44 anos de idade|
|V188|Bisneta com 45 a 49 anos de idade|
|V189|Bisneta com 50 anos ou mais de idade|
|V190|Irmão ou irmã com 0 a 4 anos de idade|
|V191|Irmão ou irmã com 5 a 9 anos de idade|
|V192|Irmão ou irmã com 10 a 14 anos de idade|
|V193|Irmão ou irmã com 15 a 19 anos de idade|
|V194|Irmão ou irmã com 20 a 24 anos de idade|
|V195|Irmão ou irmã com 25 a 29 anos de idade|
|V196|Irmão ou irmã com 30 a 34 anos de idade|
|V197|Irmão ou irmã com 35 a 39 anos de idade|
|V198|Irmão ou irmã com 40 a 44 anos de idade|
|V199|Irmão ou irmã com 45 a 49 anos de idade|
|V200|Irmão ou irmã com 50 a 54 anos de idade|
|V201|Irmão ou irmã com 55 a 59 anos de idade|
|V202|Irmão ou irmã com 60 a 64 anos de idade|
|V203|Irmão ou irmã com 65 a 69 anos de idade|
|V204|Irmão ou irmã com 70 a 74 anos de idade|
|V205|Irmão ou irmã com 75 a 79 anos de idade|
|V206|Irmão ou irmã com 80 anos ou mais de idade|
|V207|Irmão com 0 a 4 anos de idade|
|V208|Irmão com 5 a 9 anos de idade|
|V209|Irmão com 10 a 14 anos de idade|
|V210|Irmão com 15 a 19 anos de idade|
|V211|Irmão com 20 a 24 anos de idade|
|V212|Irmão com 25 a 29 anos de idade|
|V213|Irmão com 30 a 34 anos de idade|
|V214|Irmão com 35 a 39 anos de idade|
|V215|Irmão com 40 a 44 anos de idade|
|V216|Irmão com 45 a 49 anos de idade|
|V217|Irmão com 50 a 54 anos de idade|
|V218|Irmão com 55 a 59 anos de idade|
|V219|Irmão com 60 a 64 anos de idade|
|V220|Irmão com 65 a 69 anos de idade|
|V221|Irmão com 70 a 74 anos de idade|
|V222|Irmão com 75 a 79 anos de idade|
|V223|Irmão com 80 anos ou mais de idade|
|V224|Irmã com 0 a 4 anos de idade|
|V225|Irmã com 5 a 9 anos de idade|
|V226|Irmã com 10 a 14 anos de idade|
|V227|Irmã com 15 a 19 anos de idade|
|V228|Irmã com 20 a 24 anos de idade|
|V229|Irmã com 25 a 29 anos de idade|
|V230|Irmã com 30 a 34 anos de idade|
|V231|Irmã com 35 a 39 anos de idade|
|V232|Irmã com 40 a 44 anos de idade|
|V233|Irmã com 45 a 49 anos de idade|
|V234|Irmã com 50 a 54 anos de idade|
|V235|Irmã com 55 a 59 anos de idade|
|V236|Irmã com 60 a 64 anos de idade|
|V237|Irmã com 65 a 69 anos de idade|
|V238|Irmã com 70 a 74 anos de idade|
|V239|Irmã com 75 a 79 anos de idade|
|V240|Irmã com 80 anos ou mais de idade|

## 6.15. Arquivo Registro Civil {#dic_pessoa10}

### Fonte de dados

- Pessoa10\_UF.xls ou Pessoa10\_UF.csv

### Dicionário de dados

|Nome da variável|Descrição da variável|
|-|-|
|Cod\_setor|Código do setor censitário|
|V1005|Código de situação do setor censitário (ver planilha Basico\_UF.xls)|
|V001|Total de pessoas de até 10 anos de idade que tinham registro de nascimento|
|V002|Total de pessoas de até 10 anos de idade que não tinham registro de nascimento|
|V003|Total de pessoas de até 10 anos de idade que não sabiam se tinham registro de nascimento (inclusive sem declaração)|

## 6.16. Arquivo Idade, total {#dic_pessoa13}

### Fonte de dados

- Pessoa13\_UF.xls ou Pessoa13\_UF.csv

### Dicionário de dados

|Nome da variável|Descrição da variável|
|-|-|
|Cod\_setor|Código do setor censitário|
|V1005|Código de situação do setor censitário (ver planilha Basico\_UF.xls)|
|V001|Pessoas residentes em domicílios particulares e domicílios coletivos|
|V002|Pessoas residentes em domicílios particulares permanentes|
|V003|Responsáveis pelos Domicílios particulares|
|V004|Cônjuges ou companheiros(as) (de sexo diferente do mesmo sexo da pessoa responsável) em domicílios particulares|
|V005|Filhos(as) do responsável e do cônjuge em domicílios particulares|
|V006|Filhos(as) somente do responsável em domicílios particulares|
|V007|Enteados(as) em domicílios particulares|
|V008|Genros ou noras em domicílios particulares|
|V009|Pais, mães, padrastos ou madrastas em domicílios particulares|
|V010|Sogros (as) em domicílios particulares|
|V011|Netos(as) em domicílios particulares|
|V012|Bisnetos(as) em domicílios particulares|
|V013|Irmãos ou irmãs em domicílios particulares|
|V014|Avôs ou avós em domicílios particulares|
|V015|Outros parentes em domicílios particulares|
|V016|Agregados(as) em domicílios particulares|
|V017|Conviventes em domicílios particulares|
|V018|Pensionistas em domicílios particulares|
|V019|Empregados(as) domésticos(as) em domicílios particulares|
|V020|Parentes de empregados(as) domésticos(as) em domicílios particulares|
|V021|Individuais em domicílio coletivo|
|V022|Pessoas com menos de 1 ano de idade|
|V023|Pessoas com menos de 1 mes de idade|
|V024|Pessoas com 1 mes de idade|
|V025|Pessoas com 2 meses de idade|
|V026|Pessoas com 3 meses de idade|
|V027|Pessoas com 4 meses de idade|
|V028|Pessoas com 5 meses de idade|
|V029|Pessoas com 6 meses de idade|
|V030|Pessoas com 7 meses de idade|
|V031|Pessoas com 8 meses de idade|
|V032|Pessoas com 9 meses de idade|
|V033|Pessoas com 10 meses de idade|
|V034|Pessoas com 11 meses de idade|
|V035|Pessoas de 1 ano de idade|
|V036|Pessoas com 2 anos de idade|
|V037|Pessoas com 3 anos de idade|
|V038|Pessoas com 4 anos de idade|
|V039|Pessoas com 5 anos de idade|
|V040|Pessoas com 6 anos de idade|
|V041|Pessoas com 7 anos de idade|
|V042|Pessoas com 8 anos de idade|
|V043|Pessoas com 9 anos de idade|
|V044|Pessoas com 10 anos de idade|
|V045|Pessoas com 11 anos de idade|
|V046|Pessoas com 12 anos de idade|
|V047|Pessoas com 13 anos de idade|
|V048|Pessoas com 14 anos de idade|
|V049|Pessoas com 15 anos de idade|
|V050|Pessoas com 16 anos de idade|
|V051|Pessoas com 17 anos de idade|
|V052|Pessoas com 18 anos de idade|
|V053|Pessoas com 19 anos de idade|
|V054|Pessoas com 20 anos de idade|
|V055|Pessoas com 21 anos de idade|
|V056|Pessoas com 22 anos de idade|
|V057|Pessoas com 23 anos de idade|
|V058|Pessoas com 24 anos de idade|
|V059|Pessoas com 25 anos de idade|
|V060|Pessoas com 26 anos de idade|
|V061|Pessoas com 27 anos de idade|
|V062|Pessoas com 28 anos de idade|
|V063|Pessoas com 29 anos de idade|
|V064|Pessoas com 30 anos de idade|
|V065|Pessoas com 31 anos de idade|
|V066|Pessoas com 32 anos de idade|
|V067|Pessoas com 33 anos de idade|
|V068|Pessoas com 34 anos de idade|
|V069|Pessoas com 35 anos de idade|
|V070|Pessoas com 36 anos de idade|
|V071|Pessoas com 37 anos de idade|
|V072|Pessoas com 38 anos de idade|
|V073|Pessoas com 39 anos de idade|
|V074|Pessoas com 40 anos de idade|
|V075|Pessoas com 41 anos de idade|
|V076|Pessoas com 42 anos de idade|
|V077|Pessoas com 43 anos de idade|
|V078|Pessoas com 44 anos de idade|
|V079|Pessoas com 45 anos de idade|
|V080|Pessoas com 46 anos de idade|
|V081|Pessoas com 47 anos de idade|
|V082|Pessoas com 48 anos de idade|
|V083|Pessoas com 49 anos de idade|
|V084|Pessoas com 50 anos de idade|
|V085|Pessoas com 51 anos de idade|
|V086|Pessoas com 52 anos de idade|
|V087|Pessoas com 53 anos de idade|
|V088|Pessoas com 54 anos de idade|
|V089|Pessoas com 55 anos de idade|
|V090|Pessoas com 56 anos de idade|
|V091|Pessoas com 57 anos de idade|
|V092|Pessoas com 58 anos de idade|
|V093|Pessoas com 59 anos de idade|
|V094|Pessoas com 60 anos de idade|
|V095|Pessoas com 61 anos de idade|
|V096|Pessoas com 62 anos de idade|
|V097|Pessoas com 63 anos de idade|
|V098|Pessoas com 64 anos de idade|
|V099|Pessoas com 65 anos de idade|
|V100|Pessoas com 66 anos de idade|
|V101|Pessoas com 67 anos de idade|
|V102|Pessoas com 68 anos de idade|
|V103|Pessoas com 69 anos de idade|
|V104|Pessoas com 70 anos de idade|
|V105|Pessoas com 71 anos de idade|
|V106|Pessoas com 72 anos de idade|
|V107|Pessoas com 73 anos de idade|
|V108|Pessoas com 74 anos de idade|
|V109|Pessoas com 75 anos de idade|
|V110|Pessoas com 76 anos de idade|
|V111|Pessoas com 77 anos de idade|
|V112|Pessoas com 78 anos de idade|
|V113|Pessoas com 79 anos de idade|
|V114|Pessoas com 80 anos de idade|
|V115|Pessoas com 81 anos de idade|
|V116|Pessoas com 82 anos de idade|
|V117|Pessoas com 83 anos de idade|
|V118|Pessoas com 84 anos de idade|
|V119|Pessoas com 85 anos de idade|
|V120|Pessoas com 86 anos de idade|
|V121|Pessoas com 87 anos de idade|
|V122|Pessoas com 88 anos de idade|
|V123|Pessoas com 89 anos de idade|
|V124|Pessoas com 90 anos de idade|
|V125|Pessoas com 91 anos de idade|
|V126|Pessoas com 92 anos de idade|
|V127|Pessoas com 93 anos de idade|
|V128|Pessoas com 94 anos de idade|
|V129|Pessoas com 95 anos de idade|
|V130|Pessoas com 96 anos de idade|
|V131|Pessoas com 97 anos de idade|
|V132|Pessoas com 98 anos de idade|
|V133|Pessoas com 99 anos de idade|
|V134|Pessoas com 100 anos ou mais de idade|

## 6.17. Arquivo Idade, homens {#dic_pessoa11}

### Fonte de dados

- Pessoa11\_UF.xls ou Pessoa11\_UF.csv

### Dicionário de dados

|Nome da variável|Descrição da variável|
|-|-|
|Cod\_setor|Código do setor censitário|
|V1005|Código de situação do setor censitário (ver planilha Basico\_UF.xls)|
|V001|Homens residentes em domicílios particulares e domicílios coletivos|
|V002|Homens residentes em domicílios particulares permanentes|
|V003|Responsáveis pelos domicílios particulares|
|V004|Cônjuges ou companheiros (de sexo diferente e do mesmo sexo da pessoa responsável) em domicílios particulares|
|V005|Filhos do responsável e do cônjuge em domicílios particulares|
|V006|Filhos somente do responsável em domicílios particulares|
|V007|Enteados em domicílios particulares|
|V008|Genros ou noras em domicílios particulares|
|V009|Pais, mães, padrastos ou madrastas em domicílios particulares|
|V010|Sogros em domicílios particulares|
|V011|Netos em domicílios particulares|
|V012|Bisnetos em domicílios particulares|
|V013|Irmãos ou irmãs em domicílios particulares|
|V014|Avôs ou avós em domicílios particulares|
|V015|Outros parentes em domicílios particulares, do sexo masculino|
|V016|Agregados em domicílios particulares, do sexo masculino|
|V017|Conviventes em domicílios particulares, do sexo masculino|
|V018|Pensionistas em domicílios particulares, do sexo masculino|
|V019|Empregados domésticos em domicílios particular es, do sexo masculino|
|V020|Parentes de empregados domésticos em domicílios particulares, do sexo masculino|
|V021|Individuais em domicílio coletivo, do sexo masculino|
|V022|Homens com menos de 1 ano de idade|
|V023|Homens com menos de 1 mes de idade|
|V024|Homens com 1 mes de idade|
|V025|Homens com 2 meses de idade|
|V026|Homens com 3 meses de idade|
|V027|Homens com 4 meses de idade|
|V028|Homens com 5 meses de idade|
|V029|Homens com 6 meses de idade|
|V030|Homens com 7 meses de idade|
|V031|Homens com 8 meses de idade|
|V032|Homens com 9 meses de idade|
|V033|Homens com 10 meses de idade|
|V034|Homens com 11 meses de idade|
|V035|Homens de 1 ano de idade|
|V036|Homens com 2 anos de idade|
|V037|Homens com 3 anos de idade|
|V038|Homens com 4 anos de idade|
|V039|Homens com 5 anos de idade|
|V040|Homens com 6 anos de idade|
|V041|Homens com 7 anos de idade|
|V042|Homens com 8 anos de idade|
|V043|Homens com 9 anos de idade|
|V044|Homens com 10 anos de idade|
|V045|Homens com 11 anos de idade|
|V046|Homens com 12 anos de idade|
|V047|Homens com 13 anos de idade|
|V048|Homens com 14 anos de idade|
|V049|Homens com 15 anos de idade|
|V050|Homens com 16 anos de idade|
|V051|Homens com 17 anos de idade|
|V052|Homens com 18 anos de idade|
|V053|Homens com 19 anos de idade|
|V054|Homens com 20 anos de idade|
|V055|Homens com 21 anos de idade|
|V056|Homens com 22 anos de idade|
|V057|Homens com 23 anos de idade|
|V058|Homens com 24 anos de idade|
|V059|Homens com 25 anos de idade|
|V060|Homens com 26 anos de idade|
|V061|Homens com 27 anos de idade|
|V062|Homens com 28 anos de idade|
|V063|Homens com 29 anos de idade|
|V064|Homens com 30 anos de idade|
|V065|Homens com 31 anos de idade|
|V066|Homens com 32 anos de idade|
|V067|Homens com 33 anos de idade|
|V068|Homens com 34 anos de idade|
|V069|Homens com 35 anos de idade|
|V070|Homens com 36 anos de idade|
|V071|Homens com 37 anos de idade|
|V072|Homens com 38 anos de idade|
|V073|Homens com 39 anos de idade|
|V074|Homens com 40 anos de idade|
|V075|Homens com 41 anos de idade|
|V076|Homens com 42 anos de idade|
|V077|Homens com 43 anos de idade|
|V078|Homens com 44 anos de idade|
|V079|Homens com 45 anos de idade|
|V080|Homens com 46 anos de idade|
|V081|Homens com 47 anos de idade|
|V082|Homens com 48 anos de idade|
|V083|Homens com 49 anos de idade|
|V084|Homens com 50 anos de idade|
|V085|Homens com 51 anos de idade|
|V086|Homens com 52 anos de idade|
|V087|Homens com 53 anos de idade|
|V088|Homens com 54 anos de idade|
|V089|Homens com 55 anos de idade|
|V090|Homens com 56 anos de idade|
|V091|Homens com 57 anos de idade|
|V092|Homens com 58 anos de idade|
|V093|Homens com 59 anos de idade|
|V094|Homens com 60 anos de idade|
|V095|Homens com 61 anos de idade|
|V096|Homens com 62 anos de idade|
|V097|Homens com 63 anos de idade|
|V098|Homens com 64 anos de idade|
|V099|Homens com 65 anos de idade|
|V100|Homens com 66 anos de idade|
|V101|Homens com 67 anos de idade|
|V102|Homens com 68 anos de idade|
|V103|Homens com 69 anos de idade|
|V104|Homens com 70 anos de idade|
|V105|Homens com 71 anos de idade|
|V106|Homens com 72 anos de idade|
|V107|Homens com 73 anos de idade|
|V108|Homens com 74 anos de idade|
|V109|Homens com 75 anos de idade|
|V110|Homens com 76 anos de idade|
|V111|Homens com 77 anos de idade|
|V112|Homens com 78 anos de idade|
|V113|Homens com 79 anos de idade|
|V114|Homens com 80 anos de idade|
|V115|Homens com 81 anos de idade|
|V116|Homens com 82 anos de idade|
|V117|Homens com 83 anos de idade|
|V118|Homens com 84 anos de idade|
|V119|Homens com 85 anos de idade|
|V120|Homens com 86 anos de idade|
|V121|Homens com 87 anos de idade|
|V122|Homens com 88 anos de idade|
|V123|Homens com 89 anos de idade|
|V124|Homens com 90 anos de idade|
|V125|Homens com 91 anos de idade|
|V126|Homens com 92 anos de idade|
|V127|Homens com 93 anos de idade|
|V128|Homens com 94 anos de idade|
|V129|Homens com 95 anos de idade|
|V130|Homens com 96 anos de idade|
|V131|Homens com 97 anos de idade|
|V132|Homens com 98 anos de idade|
|V133|Homens com 99 anos de idade|
|V134|Homens com 100 anos ou mais de idade|

## 6.18. Arquivo Idade, mulheres {#dic_pessoa12}

### Fonte de dados

- Pessoa12\_UF.xls ou Pessoa12\_UF.csv

### Dicionário de dados

|Nome da variável|Descrição da variável|
|-|-|
|Cod\_setor|Código do setor censitário|
|V1005|Código de situação do setor censitário (ver planilha Basico\_UF.xls)|
|V001|Mulheres em domicílios particulares e domicílios coletivos|
|V002|Mulheres em domicílios particulares permanentes|
|V003|Mulheres responsáveis pelo Domicílio particular|
|V004|Cônjuges ou companheiros(as) (de sexo diferente e do mesmo sexo da pessoa responsável) em domicílios particulares|
|V005|Filhas do responsável e do cônjuge em domicílios particulares|
|V006|Filhas somente do responsável em domicílios particulares|
|V007|Enteadas em domicílios particulares|
|V008|Noras em domicílios particulares|
|V009|Mães, madrastas em domicílios particulares|
|V010|Sogras em domicílios particulares|
|V011|Netas em domicílios particulares|
|V012|Bisnetas em domicílios particulares|
|V013|Irmãs em domicílios particulares|
|V014|Avos em domicílios particulares|
|V015|Outros parentes em domicílios particulares do sexo feminino|
|V016|Agregadas em domicílios particulares|
|V017|Convivente em domicílios particulares, do sexo feminino|
|V018|Pensionistas em domicílios particulares, do sexo feminino|
|V019|Empregadas domésticas em domicílios particulares|
|V020|Parentes dos(as) empregados(as) domésticos(as) em domicílios particulares, do sexo feminino|
|V021|Individuais em domicílio coletivo do sexo feminino|
|V022|Mulheres com menos de 1 ano de idade|
|V023|Mulheres com menos de 1 mes de idade|
|V024|Mulheres com 1 mes de idade|
|V025|Mulheres com 2 meses de idade|
|V026|Mulheres com 3 meses de idade|
|V027|Mulheres com 4 meses de idade|
|V028|Mulheres com 5 meses de idade|
|V029|Mulheres com 6 meses de idade|
|V030|Mulheres com 7 meses de idade|
|V031|Mulheres com 8 meses de idade|
|V032|Mulheres com 9 meses de idade|
|V033|Mulheres com 10 meses de idade|
|V034|Mulheres com 11 meses de idade|
|V035|Mulheres com 1 ano de idade|
|V036|Mulheres com 2 anos de idade|
|V037|Mulheres com 3 anos de idade|
|V038|Mulheres com 4 anos de idade|
|V039|Mulheres com 5 anos de idade|
|V040|Mulheres com 6 anos de idade|
|V041|Mulheres com 7 anos de idade|
|V042|Mulheres com 8 anos de idade|
|V043|Mulheres com 9 anos de idade|
|V044|Mulheres com 10 anos de idade|
|V045|Mulheres com 11 anos de idade|
|V046|Mulheres com 12 anos de idade|
|V047|Mulheres com 13 anos de idade|
|V048|Mulheres com 14 anos de idade|
|V049|Mulheres com 15 anos de idade|
|V050|Mulheres com 16 anos de idade|
|V051|Mulheres com 17 anos de idade|
|V052|Mulheres com 18 anos de idade|
|V053|Mulheres com 19 anos de idade|
|V054|Mulheres com 20 anos de idade|
|V055|Mulheres com 21 anos de idade|
|V056|Mulheres com 22 anos de idade|
|V057|Mulheres com 23 anos de idade|
|V058|Mulheres com 24 anos de idade|
|V059|Mulheres com 25 anos de idade|
|V060|Mulheres com 26 anos de idade|
|V061|Mulheres com 27 anos de idade|
|V062|Mulheres com 28 anos de idade|
|V063|Mulheres com 29 anos de idade|
|V064|Mulheres com 30 anos de idade|
|V065|Mulheres com 31 anos de idade|
|V066|Mulheres com 32 anos de idade|
|V067|Mulheres com 33 anos de idade|
|V068|Mulheres com 34 anos de idade|
|V069|Mulheres com 35 anos de idade|
|V070|Mulheres com 36 anos de idade|
|V071|Mulheres com 37 anos de idade|
|V072|Mulheres com 38 anos de idade|
|V073|Mulheres com 39 anos de idade|
|V074|Mulheres com 40 anos de idade|
|V075|Mulheres com 41 anos de idade|
|V076|Mulheres com 42 anos de idade|
|V077|Mulheres com 43 anos de idade|
|V078|Mulheres com 44 anos de idade|
|V079|Mulheres com 45 anos de idade|
|V080|Mulheres com 46 anos de idade|
|V081|Mulheres com 47 anos de idade|
|V082|Mulheres com 48 anos de idade|
|V083|Mulheres com 49 anos de idade|
|V084|Mulheres com 50 anos de idade|
|V085|Mulheres com 51 anos de idade|
|V086|Mulheres com 52 anos de idade|
|V087|Mulheres com 53 anos de idade|
|V088|Mulheres com 54 anos de idade|
|V089|Mulheres com 55 anos de idade|
|V090|Mulheres com 56 anos de idade|
|V091|Mulheres com 57 anos de idade|
|V092|Mulheres com 58 anos de idade|
|V093|Mulheres com 59 anos de idade|
|V094|Mulheres com 60 anos de idade|
|V095|Mulheres com 61 anos de idade|
|V096|Mulheres com 62 anos de idade|
|V097|Mulheres com 63 anos de idade|
|V098|Mulheres com 64 anos de idade|
|V099|Mulheres com 65 anos de idade|
|V100|Mulheres com 66 anos de idade|
|V101|Mulheres com 67 anos de idade|
|V102|Mulheres com 68 anos de idade|
|V103|Mulheres com 69 anos de idade|
|V104|Mulheres com 70 anos de idade|
|V105|Mulheres com 71 anos de idade|
|V106|Mulheres com 72 anos de idade|
|V107|Mulheres com 73 anos de idade|
|V108|Mulheres com 74 anos de idade|
|V109|Mulheres com 75 anos de idade|
|V110|Mulheres com 76 anos de idade|
|V111|Mulheres com 77 anos de idade|
|V112|Mulheres com 78 anos de idade|
|V113|Mulheres com 79 anos de idade|
|V114|Mulheres com 80 anos de idade|
|V115|Mulheres com 81 anos de idade|
|V116|Mulheres com 82 anos de idade|
|V117|Mulheres com 83 anos de idade|
|V118|Mulheres com 84 anos de idade|
|V119|Mulheres com 85 anos de idade|
|V120|Mulheres com 86 anos de idade|
|V121|Mulheres com 87 anos de idade|
|V122|Mulheres com 88 anos de idade|
|V123|Mulheres com 89 anos de idade|
|V124|Mulheres com 90 anos de idade|
|V125|Mulheres com 91 anos de idade|
|V126|Mulheres com 92 anos de idade|
|V127|Mulheres com 93 anos de idade|
|V128|Mulheres com 94 anos de idade|
|V129|Mulheres com 95 anos de idade|
|V130|Mulheres com 96 anos de idade|
|V131|Mulheres com 97 anos de idade|
|V132|Mulheres com 98 anos de idade|
|V133|Mulheres com 99 anos de idade|
|V134|Mulheres com 100 anos ou mais de idade|

## 6.19. Arquivo Renda dos Domicílios {#dic_domrenda}

### Fonte de dados

- DomicílioRenda\_UF.xls ou DomicílioRenda \_UF.csv

### Dicionário de dados

|Nome da variável|Descrição da variável|
|-|-|
|Cod\_setor|Código do setor censitário|
|V1005|Código de situação do setor censitário (ver planilha Basico\_UF.xls)|
|V001|Total de domicílios particulares improvisados|
|V002|Total do rendimento nominal mensal dos domicílios particulares|
|V003|Total do rendimento nominal mensal dos domicílios particulares permanentes|
|V004|Total do rendimento nominal mensal dos domicílios particulares improvisados|
|V005|Domicílios particulares com rendimento nominal mensal domiciliar per capita de até 1/8 salário mínimo|
|V006|Domicílios particulares com rendimento nominal mensal domiciliar per capita de mais de 1/8 a 1/4 salário mínimo|
|V007|Domicílios particulares com rendimento nominal mensal domiciliar per capita de mais de 1/4 a 1/2 salário mínimo|
|V008|Domicílios particulares com rendimento nominal mensal domiciliar per capita de mais de 1/2 a 1 salário mínimo|
|V009|Domicílios particulares com rendimento nominal mensal domiciliar per capita de mais de 1 a 2 salários mínimos|
|V010|Domicílios particulares com rendimento nominal mensal domiciliar per capita de mais de 2 a 3 salários mínimos|
|V011|Domicílios particulares com rendimento nominal mensal domiciliar per capita de mais de 3 a 5 salários mínimos|
|V012|Domicílios particulares com rendimento nominal mensal domiciliar per capita de mais de 5 a 10 salários mínimos|
|V013|Domicílios particulares com rendimento nominal mensal domiciliar per capita de mais de 10 salários mínimos|
|V014|Domicílios particulares sem rendimento nominal mensal domiciliar per capita|

## 6.20. Arquivo Renda da Pessoa Responsável {#dic_resprenda}

### Fonte de dados

- ResponsavelRenda\_UF.xls ou ResponsavelRenda\_UF.csv

### Dicionário de dados

|Nome da variável|Descrição da variável|
|-|-|
|Cod\_setor|Código do setor censitário|
|V1005|Código de situação do setor censitário (ver planilha Basico\_UF.xls)|
|V001|Pessoas responsáveis com rendimento nominal mensal de até 1/2 salário mínimo|
|V002|Pessoas responsáveis com rendimento nominal mensal de mais de 1/2 a 1 salário mínimo|
|V003|Pessoas responsáveis com rendimento nominal mensal de mais de 1 a 2 salários mínimos|
|V004|Pessoas responsáveis com rendimento nominal mensal de mais de 2 a 3 salários mínimos|
|V005|Pessoas responsáveis com rendimento nominal mensal de mais de 3 a 5 salários mínimos|
|V006|Pessoas responsáveis com rendimento nominal mensal de mais de 5 a 10 salários mínimos|
|V007|Pessoas responsáveis com rendimento nominal m ensal de mais de 10 a 15 salários mínimos|
|V008|Pessoas responsáveis com rendimento nominal mensal de mais de 15 a 20 salários mínimos|
|V009|Pessoas responsáveis com rendimento nominal mensal de mais de 20 salários mínimos|
|V010|Pessoas responsáveis sem rendimento nominal mensal|
|V011|Total do rendimento nominal mensal das pessoas responsáveis com rendimento nominal mensal de até 1/2 salário mínimo|
|V012|Total do rendimento nominal mensal das pessoas responsáveis com rendimento nominal mensal de mais de 1/2 a 1 salário mínimo|
|V013|Total do rendimento nominal mensal das pessoas responsáveis com rendimento nominal mensal de mais de 1 a 2 salários mínimos|
|V014|Total do rendimento nominal mensal das pessoas responsáveis com rendimento nominal mensal de mais de 2 a 3 salários mínimos|
|V015|Total do rendimento nominal mensal das pessoas responsáveis com rendimento nominal mensal de mais de 3 a 5 salários mínimos|
|V016|Total do rendimento nominal mensal das pessoas responsáveis com rendimento nominal mensal de mais de 5 a 10 salários mínimos|
|V017|Total do rendimento nominal mensal das pessoas responsáveis com rendimento nominal mensal de mais de 10 a 15 salários mínimos|
|V018|Total do rendimento nominal mensal das pessoas responsáveis com rendimento nominal mensal de mais de 15 a 20 salários mínimos|
|V019|Total do rendimento nominal mensal das pessoas responsáveis com rendimento nominal mensal de mais de 20 salários mínimos|
|V020|Pessoas responsáveis com ou sem rendimento|
|V021|Pessoas responsáveis com rendimento positivo|
|V022|Total do rendimento nominal mensal das pessoas responsáveis|
|V023|Pessoas responsáveis com rendimento nominal mensal de até 1/2 salário mínimo, do sexo masculino|
|V024|Pessoas responsáveis com rendimento nominal mensal de mais de 1/2 a 1 salário mínimo, do sexo masculino|
|V025|Pessoas responsáveis com rendimento nominal mensal de mais de 1 a 2 salários mínimos, do sexo masculino|
|V026|Pessoas responsáveis com rendimento nominal mensal de mais de 2 a 3 salários mínimos, do sexo masculino|
|V027|Pessoas responsáveis com rendimento nominal mensal de mais de 3 a 5 salários mínimos, do sexo masculino|
|V028|Pessoas responsáveis com rendimento nominal mensal de mais de 5 a 10 salários mínimos, do sexo masculino|
|V029|Pessoas responsáveis com rendimento nominal mensal de mais de 10 a 15 salários mínimos, do sexo masculino|
|V030|Pessoas responsáveis com rendimento nominal mensal de mais de 15 a 20 salários mínimos, do sexo masculino|
|V031|Pessoas responsáveis com rendimento nominal mensal de mais de 20 salários mínimos, do sexo masculino|
|V032|Pessoas responsáveis sem rendimento nominal mensal, do sexo masculino|
|V033|Total do rendimento nominal mensal das pessoas responsáveis com rendimento nominal mensal de até 1/2 salário mínimo, do sexo masculino|
|V034|Total do rendimento nominal mensal das pessoas responsáveis com rendimento nominal mensal de mais de 1/2 a 1 salário mínimo, do sexo masculino|
|V035|Total do rendimento nominal mensal das pessoas responsáveis com rendi mento nominal mensal de mais de 1 a 2 salários mínimos, do sexo masculino|
|V036|Total do rendimento nominal mensal das pessoas responsáveis com rendimento nominal mensal de mais de 2 a 3 salários mínimos, do sexo masculino|
|V037|Total do rendimento nomina l mensal das pessoas responsáveis com rendimento nominal mensal de mais de 3 a 5 salários mínimos, do sexo masculino|
|V038|Total do rendimento nominal mensal das pessoas responsáveis com rendimento nominal mensal de mais de 5 a 10 salários mínimos, do sexo masculino|
|V039|Total do rendimento nominal mensal das pessoas responsáveis com rendimento nominal mensal de mais de 10 a 15 salários mínimos, do sexo masculino|
|V040|Total do rendimento nominal mensal das pessoas responsáveis com rendimento nominal mensal de mais de 15 a 20 salários mínimos, do sexo masculino|
|V041|Total do rendimento nominal mensal das pessoas responsáveis com rendimento nominal mensal de mais de 20 salários mínimos, do sexo masculino|
|V042|Pessoas responsáveis com ou sem rendimento, do sexo masculino|
|V043|Pessoas responsáveis com rendimento positivo, do sexo masculino|
|V044|Total do rendimento nominal mensal das pessoas responsáveis, do sexo masculino|
|V045|Pessoas responsáveis com rendimento nomi nal mensal de até 1/2 salário mínimo, do sexo feminino|
|V046|Pessoas responsáveis com rendimento nominal mensal de mais de 1/2 a 1 salário mínimo, do sexo feminino|
|V047|Pessoas responsáveis com rendimento nominal mensal de mais de 1 a 2 salários mínimos, do sexo feminino|
|V048|Pessoas responsáveis com rendimento nominal mensal de mais de 2 a 3 salários mínimos, do sexo feminino|
|V049|Pessoas responsáveis com rendimento nominal mensal de mais de 3 a 5 salários mínimos, do sexo feminino|
|V050|Pessoas responsav eis com rendimento nominal mensal de mais de 5 a 10 salários mínimos, do sexo feminino|
|V051|Pessoas responsáveis com rendimento nominal mensal de mais de 10 a 15 salários mínimos, do sexo feminino|
|V052|Pessoas responsáveis com rendimento nominal mensal de mais de 15 a 20 salários mínimos, do sexo feminino|
|V053|Pessoas responsáveis com rendimento nominal mensal de mais de 20 salários mínimos, do sexo feminino|
|V054|Pessoas responsáveis sem rendimento nominal mensal, do sexo feminino|
|V055|Total do rendimento nominal mensal das pessoas responsáveis com rendimento nominal mensal de até 1/2 salário mínimo, do sexo feminino|
|V056|Total do rendimento nominal mensal das pessoas responsáveis com rendimento nominal mensal de mais de 1/2 a 1 salário mínimo, do sexo feminino|
|V057|Total do rendimento nominal mensal das pessoas responsáveis com rendimento nominal mensal de mais de 1 a 2 salários mínimos, do sexo feminino|
|V058|Total do rendimento nominal mensal das pessoas responsáveis com rendimento nominal mensal de mais de 2 a 3 salários mínimos, do sexo feminino|
|V059|Total do rendimento nominal mensal das pessoas responsáveis com rendimento nominal mensal de mais de 3 a 5 salários mínimos, do sexo feminino|
|V060|Total do rendimento nominal mensal das pessoas re sponsaveis com rendimento nominal mensal de mais de 5 a 10 salários mínimos, do sexo feminino|
|V061|Total do rendimento nominal mensal das pessoas responsáveis com rendimento nominal mensal de mais de 10 a 15 salários mínimos, do sexo feminino|
|V062|Total do rendimento nominal mensal das pessoas responsáveis com rendimento nominal mensal de mais de 15 a 20 salários mínimos, do sexo feminino|
|V063|Total do rendimento nominal mensal das pessoas responsáveis com rendimento nominal mensal de mais de 20 salários mínimos|
|V064|Pessoas responsáveis com ou sem rendimento, do sexo feminino|
|V065|Pessoas responsáveis com rendimento positivo, do sexo feminino|
|V066|Total do rendimento nominal mensal das pessoas responsáveis, do sexo feminino|
|V067|Pessoas responsáveis moradoras em domicílios particulares permanentes com rendimento nominal mensal de até 1/2 salário mínimo|
|V068|Pessoas responsáveis moradoras em domicílios particulares permanentes com rendimento nominal mensal de mais de 1/2 a 1 salário mínimo|
|V069|Pessoas responsáveis moradoras em domicílios particulares permanentes com rendimento nominal mensal de mais de 1 a 2 salários mínimos|
|V070|Pessoas responsáveis moradoras em domicílios particulares permanentes com rendimento nominal mensal de mais de 2 a 3 salários mínimos|
|V071|Pessoas responsáveis moradoras em domicílios particulares permanentes com rendimento nominal mensal de mais de 3 a 5 salários mínimos|
|V072|Pessoas responsáveis moradoras em domicílios particulares permanentes com rendimento nominal mensal de mais de 5 a 10 salários mínimos|
|V073|Pessoas responsáveis moradoras em domicílios particulares permanentes com rendimento nominal mensal de mais de 10 a 15 salários mínimos|
|V074|Pessoas responsáveis moradoras em domicílios particulares permanentes com rendimento nominal mensal de mais de 15 a 20 salários mínimos|
|V075|Pessoas responsáveis moradoras em domicílios particulares permanentes com rendimento nominal mensal de mais de 20 salários mínimos|
|V076|Pessoas responsáveis moradoras em domicílios particulares permanentes sem rendimento nominal mensal|
|V077|Total do rendimento nominal mensal das pessoas responsáveis moradoras em domicílios particulares permanentes com rendimento nominal mensal de até 1/2 salário mínimo|
|V078|Total do rendimento nominal mensal das pessoas responsáveis moradoras em domicílios particulares permanentes com rendimento nominal mensal de mais de 1/2 a 1 salário mínimo|
|V079|Total do rendimento nominal mensal das pessoas responsáveis moradoras em domicílios particulares permanentes com rendimento nominal mensal de mais de 1 a 2 salários mínimos|
|V080|Total do rendimento nominal mensal das pessoas responsáveis moradoras em domicílios particulares permanentes com rendimento nominal mensa l de mais de 2 a 3 salários mínimos|
|V081|Total do rendimento nominal mensal das pessoas responsáveis moradoras em domicílios particulares permanentes com rendimento nominal mensal de mais de 3 a 5 salários mínimos|
|V082|Total do rendimento nominal mensal das pessoas responsáveis moradoras em domicílios particulares permanentes com rendimento nominal mensal de mais de 5 a 10 salários mínimos|
|V083|Total do rendimento nominal mensal das pessoas responsáveis moradoras em domicílios particulares permanentes com rendimento nominal mensal de mais de 10 a 15 salários mínimos|
|V084|Total do rendimento nominal mensal das pessoas responsáveis moradoras em domicílios particulares permanentes com rendimento nominal mensal de mais de 15 a 20 salários mínimos|
|V085|Total do rendimento nominal mensal das pessoas responsáveis moradoras em domicílios particulares permanentes com rendimento nominal mensal de mais de 20 salários mínimos|
|V086|Pessoas responsáveis moradoras em domicílios particulares permanentes com ou sem rendimento|
|V087|Pessoas responsáveis moradoras em domicílios particulares permanentes com rendimento positivo|
|V088|Total do rendimento nominal mensal das pessoas responsáveis moradoras em domicílios particulares permanentes|
|V089|Pessoas responsáveis moradoras em domicílios particulares permanentes com rendimento nominal mensal de até 1/2 salário mínimo, do sexo masculino|
|V090|Pessoas responsáveis moradoras em domicílios particulares permanentes com rendimento nominal mensal de mais de 1/2 a 1 salário mínimo, do sexo masculino|
|V091|Pessoas responsáveis moradoras em domicílios particulares permanentes com rendimento nominal mensal de mais de 1 a 2 salários mínimos, do sexo masculino|
|V092|Pessoas responsáveis moradoras em domicílios particulares permanentes com rendimento nominal mensal de mais de 2 a 3 salários mínimos, do sexo masculino|
|V093|Pessoas responsáveis moradoras em domicílios particulares permanentes com rendimento nominal mensal de mais de 3 a 5 salários mínimos, do sexo masculino|
|V094|Pessoas responsáveis moradoras em domicílios particulares permanentes com rendimento nominal mensal de mais de 5 a 10 salários mínimos, do sexo masculino|
|V095|Pessoas responsáveis moradoras em domicílios particulares permanentes com rendimento nominal mensal de mais de 10 a 15 salários mínimos, do sexo masculino|
|V096|Pessoas responsáveis moradoras em domicílios particulares permanentes com rendimento nominal mensal de mais de 15 a 20 salários mínimos, do sexo masculino|
|V097|Pessoas responsáveis moradoras em domicílios particulares permanentes com rendimento nominal mensal de mais de 20 salários mínimos, do sexo masculino|
|V098|Pessoas responsáveis moradoras em domicílios particulares permanentes sem rendimento nominal mensal, do sexo masculino|
|V099|Total do rendimento nominal mensal das pessoas responsáveis moradoras em domicílios particulares permanentes com rendimento nominal mensal de até 1/2 salário mínimo, do sexo masculino|
|V100|Total do rendimento nominal mensal das pessoas responsáveis moradoras em domicílios particulares permanentes com rendimento nominal mensal de mais de 1/2 a 1 salário mínimo, do sexo masculino|
|V101|Total do rendimento nominal mensal das pessoas responsáveis moradoras em domicílios particulares permanentes com rendimento nominal mensal de mais de 1 a 2 salários mínimos, do sexo masculino|
|V102|Total do rendimento nominal mensal das pessoas responsáveis moradoras em domicílios particulares permanentes com rendimento nominal mensal de mais de 2 a 3 salários mínimos, do sexo masculino|
|V103|Total do rendimento nominal mensal das pessoas responsáveis moradoras em domicílios particulares permanentes com rendimento nominal mensal de mais de 3 a 5 salários mínimos, do sexo masculino|
|V104|Total do rendimento nominal mensal das pessoas responsáveis moradoras em domicílios particulares permanentes com rendimento nominal mensal de mais de 5 a 10 salários mínimos, do sexo masculino|
|V105|Total do rendimento nominal mensal das pessoas responsáveis moradoras em domicílios particulares permanentes com rendimento nominal mensal de mais de 10 a 15 salários mínimos, do sexo masculino|
|V106|Total do rendimento nominal mensal das pessoas responsáveis morad oras em domicílios particulares permanentes com rendimento nominal mensal de mais de 15 a 20 salários mínimos, do sexo masculino|
|V107|Total do rendimento nominal mensal das pessoas responsáveis moradoras em domicílios particulares permanentes com rendimento nominal mensal de mais de 20 salários mínimos, do sexo masculino|
|V108|Pessoas responsáveis moradoras em domicílios particulares permanentes com ou sem rendimento, do sexo masculino|
|V109|Pessoas responsáveis moradoras em domicílios particulares permanentes com rendimento positivo, do sexo masculino|
|V110|Total do rendimento nominal mensal das pessoas responsáveis moradoras em domicílios particulares permanentes, do sexo masculino|
|V111|Pessoas responsáveis moradoras em domicílios particulares permanentes com rendimento nominal mensal de até 1/2 salário mínimo, do sexo feminino|
|V112|Pessoas responsáveis moradoras em domicílios particulares permanentes com rendimento nominal mensal de mais de 1/2 a 1 salário mínimo, do sexo feminino|
|V113|Pessoas responsave is moradoras em domicílios particulares permanentes com rendimento nominal mensal de mais de 1 a 2 salários mínimos, do sexo feminino|
|V114|Pessoas responsáveis moradoras em domicílios particulares permanentes com rendimento nominal mensal de mais de 2 a 3 salários mínimos, do sexo feminino|
|V115|Pessoas responsáveis moradoras em domicílios particulares permanentes com rendimento nominal mensal de mais de 3 a 5 salários mínimos, do sexo feminino|
|V116|Pessoas respons aveis moradoras em domicílios particulares permanentes com rendimento nominal mensal de mais de 5 a 10 salários mínimos, do sexo feminino|
|V117|Pessoas responsáveis moradoras em domicílios particulares permanentes com rendimento nominal mensal de mais de 1 0 a 15 salários mínimos, do sexo feminino|
|V118|Pessoas responsáveis com rendimento nominal mensal de mais de 15 a 20 salários mínimos, do sexo feminino|
|V119|Pessoas responsáveis moradoras em domicílios particulares permanentes com rendimento nominal mensal de mais de 20 salários mínimos, do sexo feminino|
|V120|Pessoas responsáveis moradoras em domicílios particulares permanentes sem rendimento nominal mensal, do sexo feminino|
|V121|Total do rendimento nominal mensal das pessoas responsáveis moradoras em domicílios particulares permanentes com rendimento nominal mensal de até 1/2 salário mínimo, do sexo feminino|
|V122|Total do rendimento nominal mensal das pessoas responsáveis moradoras em domicílios particulares permanentes com rendimento nominal mensal de mais de 1/2 a 1 salário mínimo, do sexo feminino|
|V123|Total do rendimento nominal mensal das pessoas responsáveis moradoras em domicílios particulares permanentes com rendimento nominal mensal de mais de 1 a 2 salários mínimos, do sexo feminino|
|V124|Total do rendimento nominal mensal das pessoas responsáveis moradoras em domicílios particulares permanentes com rendimento nominal mensal de mais de 2 a 3 salários mínimos, do sexo feminino|
|V125|Total do rendimento nominal mensal das pessoas responsáveis mora doras em domicílios particulares permanentes com rendimento nominal mensal de mais de 3 a 5 salários mínimos, do sexo feminino|
|V126|Total do rendimento nominal mensal das pessoas responsáveis moradoras em domicílios particulares permanentes com rendimento nominal mensal de mais de 5 a 10 salários mínimos, do sexo feminino|
|V127|Total do rendimento nominal mensal das pessoas responsáveis moradoras em domicílios particulares permanentes com rendimento nominal mensal de mais de 10 a 15 salários mínimos, do sexo feminino|
|V128|Total do rendimento nominal mensal das pessoas responsáveis moradoras em domicílios particulares permanentes com rendimento nominal mensal de mais de 15 a 20 salários mínimos, do sexo feminino|
|V129|Total do rendimento nominal mensal das pessoas responsáveis moradoras em domicílios particulares permanentes com rendimento nominal mensal de mais de 20 salários mínimos|
|V130|Pessoas responsáveis moradoras em domicílios particulares permanentes com ou sem rendimento, do sexo feminino|
|V131|Pessoas responsáveis moradoras em domicílios particulares permanentes com rendimento positivo, do sexo feminino|
|V132|Total do rendimento nominal mensal das pessoas responsáveis moradoras em domicílios particulares permanentes do sexo feminino|

## 6.21. Arquivo Renda da Pessoa {#dic_pessrenda}

### Fonte de dados

- PessoaRenda\_UF.xls ou PessoaRenda\_UF.csv

### Dicionário de dados

|Nome da variável|Descrição da variável|
|-|-|
|Cod\_setor|Código do setor censitário|
|V1005|Código de situação do setor censitário (ver planilha Basico\_UF.xls)|
|V001|Pessoas de 10 anos ou mais de idade com rendimento nominal mensal de até 1/2 salário mínimo|
|V002|Pessoas de 10 anos ou mais de idade com rendimento nominal mensal de mais de 1/2 a 1 salário mínimo|
|V003|Pessoas de 10 anos ou mais de idade com rendimento nominal mensal de mais de 1 a 2 salários mínimos|
|V004|Pessoas de 10 anos ou mais de idade com rendimento nominal mensal de mais de 2 a 3 salários mínimos|
|V005|Pessoas de 10 anos ou mais de idade com rendimento nominal mensal de mais de 3 a 5 salários mínimos|
|V006|Pessoas de 10 anos ou mais de idade com rendimento nominal mensal de mais de 5 a 10 salários mínimos|
|V007|Pessoas de 10 anos ou mais de idade com rendimento nominal mensal de mais de 10 a 15 salários mínimos|
|V008|Pessoas de 10 anos ou mais de idade com rendimento nominal mensal de mais de 15 a 20 salários mínimos|
|V009|Pessoas de 10 anos ou mais de idade com rendimento nominal mensal de mais de 20 salários mínimos|
|V010|Pessoas de 10 anos ou mais de idade sem rendimento nominal mensal|
|V011|Total do rendimento nominal mensal das pessoas de 10 anos ou mais de idade com rendimento nominal mensal de até 1/2 salário mínimo|
|V012|Total do rendimento nominal mensal das pessoas de 10 anos ou mais de idade com rendimento nominal mensal de mais de 1/2 a 1 salário mínimo|
|V013|Total do rendimento nominal mensal das pessoas de 10 anos ou mais de idade com rendimento nominal mensal de mais de 1 a 2 salários mínimos|
|V014|Total do rendimento nominal mensal das pessoas de 10 anos ou mais de idade com rendimento nominal mensal de mais de 2 a 3 salários mínimos|
|V015|Total do rendimento nominal mensal das pessoas de 10 anos ou mais de idade com rendimento nominal mensal de mais de 3 a 5 salários mínimos|
|V016|Total do rendimento nominal mensal das pessoas de 10 anos ou mais de idade com rendimento nominal mensal de mais de 5 a 10 salários mínimos|
|V017|Total do rendimento nominal mensal das pessoas de 10 anos ou mais de idade com rendimento nominal mensal de mais de 10 a 15 salários mínimos|
|V018|Total do rendimento nominal mensal das pessoas de 10 anos ou mais de idade com rendimento nominal mensal de mais de 15 a 20 salários mínimos|
|V019|Total do rendimento nominal mensal das pessoas de 10 anos ou mais de idade com rendimento nominal mensal de mais de 20 salários mínimos|
|V020|Pessoas de 10 anos ou mais de idade com ou sem rendimento|
|V021|Pessoas de 10 anos ou mais de idade com rendimento positivo|
|V022|Total do rendimento nominal mensal das pessoas de 10 anos ou mais de idade|
|V023|Homens de 10 anos ou mais de idade com rendimento nominal mensal de até 1/2 salário mínimo|
|V024|Homens de 10 anos ou mais de idade com rendimento nominal mensal de mais de 1/2 a 1 salário mínimo|
|V025|Homens de 10 anos ou mais de idade com rendimento nominal mensal de mais de 1 a 2 salários mínimos|
|V026|Homens de 10 anos ou mais de idade com rendimento nominal mensal de mais de 2 a 3 salários mínimos|
|V027|Homens de 10 anos ou mais de idade com rendimento nominal mensal de mais de 3 a 5 salários mínimos|
|V028|Homens de 10 anos ou mais de idade com rendimento nominal mensal de mais de 5 a 10 salários mínimos|
|V029|Homens de 10 anos ou mais de idade com rendimento nominal mensal de mais de 10 a 15 salários mínimos|
|V030|Homens de 10 anos ou mais de idade com rendimento nominal mensal de mais de 15 a 20 salários mínimos|
|V031|Homens de 10 anos ou mais de idade com rendimento nominal mensal de mais de 20 salários mínimos|
|V032|Homens de 10 anos ou mais de idade sem rendimento nominal mensal|
|V033|Total do rendimento nominal mensal dos homens de 10 anos ou mais de idade com rendimento nominal mensal de até 1/2 salário mínimo|
|V034|Total do rendimento nominal mensal dos homens de 10 anos ou mais de idade com rendimento nominal mensal de mais de 1/2 a 1 salário mínimo|
|V035|Total do rendimento nominal mensal dos homens de 10 anos ou mais de idade com rendimento nominal mensal de mais de 1 a 2 salários mínimos|
|V036|Total do rendimento nominal mensal dos homens de 10 anos ou mais de idade com rendimento nominal mensal de mais de 2 a 3 salários mínimos|
|V037|Total do rendimento nominal mensal dos homens de 10 anos ou mais de idade com rendimento nominal mensal de mais de 3 a 5 salários mínimos|
|V038|Total do rendimento nominal mensal dos homens de 10 anos ou mais de idade com rendimento nominal mensal de mais de 5 a 10 salários mínimos|
|V039|Total do rendimento nominal mensal dos homens de 10 anos ou mais de idade com rendimento nominal mensal de mais de 10 a 15 salários mínimos|
|V040|Total do rendimento nominal mensal dos homens de 10 anos ou mais de idade com rendimento nominal mensal de mais de 15 a 20 salários mínimos|
|V041|Total do rendimento nominal mensal dos homens de 10 anos ou mais de idade com rendimento nominal mensal de mais de 20 salários mínimos|
|V042|Homens de 10 anos ou mais de idade com ou sem rendimento|
|V043|Homens de 10 anos ou mais de idade com rendimento positivo|
|V044|Total do rendimento nominal mensal dos homens de 10 anos ou mais de idade|
|V045|Mulheres de 10 anos ou mais de idade com rendimento nominal mensal de até 1/2 salário mínimo|
|V046|Mulheres de 10 anos ou mais de idade com rendimento nominal mensal de mais de 1/2 a 1 salário mínimo|
|V047|Mulheres de 10 anos ou mais de idade com rendimento nominal mensal de mais de 1 a 2 salários mínimos|
|V048|Mulheres de 10 anos ou mais de idade com rendimento nominal mensal de mais de 2 a 3 salários mínimos|
|V049|Mulheres de 10 anos ou mais de idade com rendimento nominal mensal de mais de 3 a 5 salários mínimos|
|V050|Mulheres de 10 anos ou mais de idade com rendimento nominal mensal de mais de 5 a 10 salários mínimos|
|V051|Mulheres de 10 anos ou mais de idade com rendimento nominal mensal de mais de 10 a 15 salários mínimos|
|V052|Mulheres de 10 anos ou mais de idade com rendimento nominal mensal de mais de 15 a 20 salários mínimos|
|V053|Mulheres de 10 anos ou mais de idade com rendimento nominal mensal de mais de 20 salários mínimos|
|V054|Mulheres de 10 anos ou mais de idade sem rendimento nominal mensal|
|V055|Total do rendimento nominal mensal das mulheres de 10 anos ou mais de idade com rendimento nominal mensal de até 1/2 salário mínimo|
|V056|Total do rendimento nominal mensal das mulheres de 10 anos ou mais de idade com rendimento nominal mensal de mais de 1/2 a 1 salário mínimo|
|V057|Total do rendimento nominal mensal das mulheres de 10 anos ou mais de idade com rendimento nominal mensal de mais de 1 a 2 salários mínimos|
|V058|Total do rendimento nominal mensal das mulheres de 10 anos ou mais de idade com rendimento nominal mensal de mais de 2 a 3 salários mínimos|
|V059|Total do rendimento nominal mensal das mulheres de 10 anos ou mais de idade com rendimento nominal mensal de mais de 3 a 5 salários mínimos|
|V060|Total do rendimento nominal mensal das mulheres de 10 anos ou mais de idade com rendimento nominal mensal de mais de 5 a 10 salários mínimos|
|V061|Total do rendimento nominal mensal das mulheres de 10 anos ou mais de idade com rendimento nominal mensal de mais de 10 a 15 salários mínimos|
|V062|Total do rendimento nominal mensal das mulheres de 10 anos ou mais de idade com rendimento nominal mensal de mais de 15 a 20 salários mínimos|
|V063|Total do rendimento nominal mensal das mulheres de 10 anos ou mais de idade com rendimento nominal mensal de mais de 20 salários mínimos|
|V064|Mulheres de 10 anos ou mais de idade com ou se m rendimento|
|V065|Mulheres de 10 anos ou mais de idade com rendimento positivo|
|V066|Total do rendimento nominal mensal das mulheres de 10 anos ou mais de idade|
|V067|Pessoas de 10 anos ou mais de idade moradoras em domicílios particulares permanentes com rendimento nominal mensal de até 1/2 salário mínimo|
|V068|Pessoas de 10 anos ou mais de idade moradoras em domicílios particulares permanentes com rendimento nominal mensal de mais de 1/2 a 1 salário mínimo|
|V069|Pessoas de 10 anos ou mais de idade moradoras em domicílios particulares permanentes com rendimento nominal mensal de mais de 1 a 2 salários mínimos|
|V070|Pessoas de 10 anos ou mais de idade moradoras em domicílios particulares permanentes com rendimento nominal mensal de mais de 2 a 3 salários mínimos|
|V071|Pessoas de 10 anos ou mais de idade moradoras em domicílios particulares permanentes com rendimento nominal mensal de mais de 3 a 5 sa larios mínimos|
|V072|Pessoas de 10 anos ou mais de idade moradoras em domicílios particulares permanentes com rendimento nominal mensal de mais de 5 a 10 salários mínimos|
|V073|Pessoas de 10 anos ou mais de idade moradoras em domicílios particulares permanentes com rendimento nominal mensal de mais de 10 a 15 salários mínimos|
|V074|Pessoas de 10 anos ou mais de idade moradoras em domicílios particulares permanentes com rendimento nominal mensal de mais de 15 a 20 salários mínimos|
|V075|Pessoas de 10 anos ou mais de idade moradoras em domicílios particulares permanentes com rendimento nominal mensal de mais de 20 salários mínimos|
|V076|Pessoas de 10 anos ou mais de idade moradoras em domicílios particulares permanentes sem rendimento nominal mensal|
|V077|Total do rendimento nominal mensal das pessoas de 10 anos ou mais de idade moradoras em domicílios particulares permanentes com rendimento nominal mensal de até 1/2 salário mínimo|
|V078|Total do rendimento nominal mensal das pessoas de 10 anos ou mais de idade moradoras em domicílios particulares permanentes com rendimento nominal mensal de mais de 1/2 a 1 salário mínimo|
|V079|Total do rendimento nominal mensal das pessoas de 10 anos ou mais de idade moradoras em domicílios particulares permanentes com rendimento nominal mensal de mais de 1 a 2 salários mínimos|
|V080|Total do rendimento nominal mensal das pessoas de 10 anos ou mais de idade moradoras em domicílios particulares permanentes com rendimento nominal mensal de mais de 2 a 3 salários mínimos|
|V081|Total do rendimento nominal mensal das pessoas de 10 anos ou mais de idade moradoras em domicílios particulares permanentes com rendimento nominal mensal de mais de 3 a 5 salários mínimos|
|V082|Total do rendimento nominal mensal das pessoas de 10 anos ou mais de idade moradoras em domicílios particulares permanentes com rendimento nominal mensal de mais de 5 a 10 salários mínimos|
|V083|Total do rendimento nominal mensal das pessoas de 10 anos ou mais de idade moradoras em domicílios particulares permanentes com rendimento nominal mensal de mais de 10 a 15 salários mínimos|
|V084|Total do rendimento nominal mensal das pessoas de 10 anos ou mais de idade moradoras em domicílios particulares permanentes com rendimento nominal mensal de mais de 15 a 20 salários mínimos|
|V085|Total do rendimento nominal mensal das pessoas de 10 anos ou mais de idade moradoras em domicílios particulares permanentes com rendimento nominal mensal de mais de 20 salários mínimos|
|V086|Pessoas de 10 anos ou mais de idade moradoras em domicílios particulares permanentes com ou sem rendimento|
|V087|Pessoas de 10 anos ou mais de idade moradoras em domicílios particulares permanentes com rendimento positivo|
|V088|Total do rendimento nominal mensal das pessoas de 10 anos ou mais de idade moradoras em domicílios particulares permanentes|
|V089|Homens de 10 anos ou mais de idade moradores em domicílios particulares permanentes com rendimento nominal mensal de até 1/2 salário mínimo|
|V090|Homens de 10 anos ou mais de idade moradores em domicílios particulares permanentes com rendimento nominal mensal de mais de 1/2 a 1 salário mínimo|
|V091|Homens de 10 anos ou mais de idade moradores em domicílios particulares permanentes com rendimento nominal mensal de mais de 1 a 2 sal arios mínimos|
|V092|Homens de 10 anos ou mais de idade moradores em domicílios particulares permanentes com rendimento nominal mensal de mais de 2 a 3 salários mínimos|
|V093|Homens de 10 anos ou mais de idade moradores em domicílios particulares permanentes com rendimento nominal mensal de mais de 3 a 5 salários mínimos|
|V094|Homens de 10 anos ou mais de idade moradores em domicílios particulares permanentes com rendimento nominal mensal de mais de 5 a 10 salários mínimos|
|V095|Homens de 10 anos ou mais de idade moradores em domicílios particulares permanentes com rendimento nominal mensal de mais de 10 a 15 salários mínimos|
|V096|Homens de 10 anos ou mais de idade moradores em domicílios particulares permanentes com rendimento nominal mensal de mais de 15 a 20 salários mínimos|
|V097|Homens de 10 anos ou mais de idade moradores em domicílios particulares permanentes com rendimento nominal mensal de mais de 20 salários mínimos|
|V098|Homens de 10 anos ou mais de idade moradores em domicílios particulares permanentes sem rendimento nominal mensal|
|V099|Total do rendimento nominal mensal dos homens de 10 anos ou mais de idade moradores em domicílios particulares permanentes com rendimento nominal mensal de até 1/2 salário mínimo|
|V100|Total do rendimento nominal mensal dos homens de 10 anos ou mais de idade moradores em domicílios particulares permanentes com rendimento nominal mensal de mais de 1/2 a 1 salário mínimo|
|V101|Total do rendimento nominal mensal dos homens de 10 anos ou mais de idade moradores em domicílios particulares permanentes com rendimento nominal mensal de mais de 1 a 2 salários mínimos|
|V102|Total do rendimento nominal mensal dos homens de 10 anos ou mais de idade moradores em domicílios particulares permanentes com rendimento nominal mensal de mais de 2 a 3 salários mínimos|
|V103|Total do rendimento nominal mensal dos homens de 10 anos ou mais de idade moradores em domicílios particulares permanentes com rendimento nominal mensal de mais de 3 a 5 salários mínimos|
|V104|Total do rendimento nominal mensal dos homens de 10 anos ou mais de idade moradores em domicílios particulares permanentes com rendimento nominal mensal de mais de 5 a 10 salários mínimos|
|V105|Total do rendimento nominal mensal dos homens de 10 anos ou mais de idade moradores em domicílios particulares permanentes com rendimento nominal mensal de mais de 10 a 15 salários mínimos|
|V106|Total do rendimento nominal mensal dos homens de 10 anos ou mais de idade moradores em domicílios particulares permanentes com rendimento nominal mensal de mais de 15 a 20 salários mínimos|
|V107|Total do rendimento nominal mensal dos homens de 10 anos ou mais de idade moradores em domicílios particulares permanentes com rendimento nominal mensal de mais de 20 salários mínimos|
|V108|Homens de 10 anos ou mais de idade moradores em domicílios particulares permanentes com ou sem rendimento|
|V109|Homens de 10 anos ou mais de idade moradores em domicílios particulares permanentes com rendimento positivo|
|V110|Total do re ndimento nominal mensal dos homens de 10 anos ou mais de idade moradores em domicílios particulares permanentes|
|V111|Mulheres de 10 anos ou mais de idade moradoras em domicílios particulares permanentes com rendimento nominal mensal de até 1/2 salário mínimo|
|V112|Mulheres de 10 anos ou mais de idade moradoras em domicílios particulares permanentes com rendimento nominal mensal de mais de 1/2 a 1 salário mínimo|
|V113|Mulheres de 10 anos ou mais de idade moradoras em domicílios particulares permanentes com rend imento nominal mensal de mais de 1 a 2 salários mínimos|
|V114|Mulheres de 10 anos ou mais de idade moradoras em domicílios particulares permanentes com rendimento nominal mensal de mais de 2 a 3 salários mínimos|
|V115|Mulheres de 10 anos ou mais de idade moradoras em domicílios particulares permanentes com rendimento nominal mensal de mais de 3 a 5 salários mínimos|
|V116|Mulheres de 10 anos ou mais de idade moradoras em domicílios particulares permanentes com rendimento nominal mensal de mais de 5 a 10 salários mínimos|
|V117|Mulheres de 10 anos ou mais de idade moradoras em domicílios particulares permanentes com rendimento nominal mensal de mais de 10 a 15 salários mínimos|
|V118|Mulheres de 10 anos ou mais de idade moradoras em domicílios particulares permanentes com rendimento nominal mensal de mais de 15 a 20 salários mínimos|
|V119|Mulheres de 10 anos ou mais de idade moradoras em domicílios particulares permanentes com rendimento nominal mensal de mais de 20 salários mínimos|
|V120|Mulheres de 10 anos ou mais de idade moradoras em domicílios particulares permanentes sem rendimento nominal mensal|
|V121|Total do rendimento nominal mensal das mulheres de 10 anos ou mais de idade moradoras em domicílios particulares permanentes com rendimento nominal mensal de até 1/2 salário mínimo|
|V122|Total do rendimento nominal mensal das mulheres de 10 anos ou mais de idade moradoras em domicílios particulares permanentes com rendimento nominal mensal de mais de 1/2 a 1 salário mínimo|
|V123|Total do rendimento nominal mensal das mulheres de 10 anos ou mais de idade moradoras em domicílios particulares permanentes com rendimento nominal mensal de mais de 1 a 2 salários mínimos|
|V124|Total do rendimento nominal mensal das mulheres de 10 a nos ou mais de idade moradoras em domicílios particulares permanentes com rendimento nominal mensal de mais de 2 a 3 salários mínimos|
|V125|Total do rendimento nominal mensal das mulheres de 10 anos ou mais de idade moradoras em domicílios particulares permanentes com rendimento nominal mensal de mais de 3 a 5 salários mínimos|
|V126|Total do rendimento nominal mensal das mulheres de 10 anos ou mais de idade moradoras em domicílios particulares permanentes com rendimento nominal mensal de mais de 5 a 10 salários mínimos|
|V127|Total do rendimento nominal mensal das mulheres de 10 anos ou mais de idade moradoras em domicílios particulares permanentes com rendimento nominal mensal de mais de 10 a 15 salários mínimos|
|V128|Total do rendimento nominal mensal das m ulheres de 10 anos ou mais de idade moradoras em domicílios particulares permanentes com rendimento nominal mensal de mais de 15 a 20 salários mínimos|
|V129|Total do rendimento nominal mensal das mulheres de 10 anos ou mais de idade moradoras em domicílios particulares permanentes com rendimento nominal mensal de mais de 20 salários mínimos|
|V130|Mulheres de 10 anos ou mais de idade moradoras em domicílios particulares permanentes com ou sem rendimento|
|V131|Mulheres de 10 anos ou mais de idade moradoras em domicílios particulares permanentes com rendimento positivo|
|V132|Total do rendimento nominal mensal das mulheres de 10 anos ou mais de idade moradoras em domicílios particulares permanentes|

## 6.22. Arquivo Entorno 01 {#dic_ent01}

### Fonte de dados:

- Entorno 01\_UF.xls ou Entorno 01\_UF.csv

### Dicionário de dados

|Nome da variável|Descrição da variável|
|-|-|
|Cod\_setor|Código do setor|
|V1005|Código de situação do setor|
|V001|Domicílios particulares permanentes|
|V002|Domicílios particulares permanentes próprios - Existe identificação do logradouro|
|V003|Domicílios particulares permanentes próprios - Não existe identificação do logradouro|
|V004|Domicílios particulares permanentes alugados - Existe identificação do logradouro|
|V005|Domicílios particulares permanentes alugados - Não existe identificação do logradouro|
|V006|Domicílios particulares permanentes cedidos - Existe identificação do logradouro|
|V007|Domicílios particulares permanentes cedidos - Não existe identificação do logradouro|
|V008|Domicílios particulares permanentes próprios - Existe iluminação pública|
|V009|Domicílios particulares permanentes próprios - Não existe iluminaçãopública|
|V010|Domicílios particulares permanentes alugados - Existe iluminação pública|
|V011|Domicílios particulares permanentes alugados - Não existe iluminação pública|
|V012|Domicílios particulares permanentes cedidos - Existe iluminação pública|
|V013|Domicílios particulares permanentes cedidos - Não existe iluminação pública|
|V014|Domicílios particulares permanentes próprios - Existe pavimentação|
|V015|Domicílios particulares permanentes próprios - Não existe pavimentação|
|V016|Domicílios particulares permanentes alugados - Existe pavimentação|
|V017|Domicílios particulares permanentes alugados - Não existepavimentação|
|V018|Domicílios particulares permanentes cedidos - Existe pavimentação|
|V019|Domicílios particulares permanentes cedidos - Não existe pavimentação|
|V020|Domicílios particulares permanentes próprios - Existe calçada|
|V021|Domicílios particulares permanentes próprios - Não existe calçada|
|V022|Domicílios particulares permanentes alugados - Existe calçada|
|V023|Domicílios particulares permanentes alugados - Não existe calçada|
|V024|Domicílios particulares permanentes cedidos - Existe calçada|
|V025|Domicílios particulares permanentes cedidos - Não existe calçada|
|V026|Domicílios particulares permanentes próprios - Existe meio-fio/guia|
|V027|Domicílios particulares permanentes próprios - Não existe meio-fio/guia|
|V028|Domicílios particulares permanentes alugados - Existe meio-fio/guia|
|V029|Domicílios particulares permanentes alugados - Não existe meio-fio/guia|
|V030|Domicílios particulares permanentes cedidos - Existe meio-fio/guia|
|V031|Domicílios particulares permanentes cedidos - Não existe meio-fio/guia|
|V032|Domicílios particulares permanentes próprios - Existe bueiro/boca-de-lobo|
|V033|Domicílios particulares permanentes próprios - Não existe bueiro/boca-de-lobo|
|V034|Domicílios particulares permanentes alugados - Existe bueiro/boca-de-lobo|
|V035|Domicílios particulares permanentes alugados - Não existe bueiro/boca-de-lobo|
|V036|Domicílios particulares permanentes cedidos - Existe bueiro/boca-de-lobo|
|V037|Domicílios particulares permanentes cedidos - Não existe bueiro/boca-de-lobo|
|V038|Domicílios particulares permanentes próprios - Existe rampa para cadeirante|
|V039|Domicílios particulares permanentes próprios - Não existe rampa para cadeirante|
|V040|Domicílios particulares permanentes alugados - Existe rampa para cadeirante|
|V041|Domicílios particulares permanentes alugados - Não existe rampa para cadeirante|
|V042|Domicílios particulares permanentes cedidos - Existe rampa para cadeirante|
|V043|Domicílios particulares permanentes cedidos - Não existe rampa para cadeirante|
|V044|Domicílios particulares permanentes próprios - Existe arborização|
|V045|Domicílios particulares permanentes próprios - Não existe arborização|
|V046|Domicílios particulares permanentes alugados - Existe arborização|
|V047|Domicílios particulares permanentes alugados - Não existe arborização|
|V048|Domicílios particulares permanentes cedidos - Existe arborização|
|V049|Domicílios particulares permanentes cedidos - Não existe arborização|
|V050|Domicílios particulares permanentes próprios - Existe esgoto a céu aberto|
|V051|Domicílios particulares permanentes próprios - Não existe esgoto a céu aberto|
|V052|Domicílios particulares permanentes alugados - Existe esgoto a céu aberto|
|V053|Domicílios particulares permanentes alugados - Não existe esgoto a céu aberto|
|V054|Domicílios particulares permanentes cedidos - Existe esgoto a céu aberto|
|V055|Domicílios particulares permanentes cedidos - Não existe esgoto a céu aberto|
|V056|Domicílios particulares permanentes próprios - Existe lixo acumulado nos logradouros|
|V057|Domicílios particulares permanentes próprios - Não existe lixo acumulado nos logradouros|
|V058|Domicílios particulares permanentes alugados - Existe lixo acumulado nos logradoudos|
|V059|Domicílios particulares permanentes alugados - Não existe lixo acumulado nos logradouros|
|V060|Domicílios particulares permanentes cedidos - Existe lixo acumulado nos logradouros|
|V061|Domicílios particulares permanentes cedidos - Não existe lixo acumulado nos logradouros|
|V062|Domicílios particulares permanentes com rede geral de distribuição de água - Existe identificação do logradouro|
|V063|Domicílios particulares permanentes com rede geral de distribuição de água - Não existe identificação do logradouro|
|V064|Domicílios particulares permanentes com poço ou nascente na propriedade - Existe identificação do logradouro|
|V065|Domicílios particulares permanentes com poço ou nascente na propriedade - Não existe identificação do logradouro|
|V066|Domicílios particulares permanentes com rede geral de distribuição de água - Existe iluminação pública|
|V067|Domicílios particulares permanentes com rede geral de distribuição de água - Não existe iluminação pública|
|V068|Domicílios particulares permanentes com poço ou nascente na propriedade - Existe iluminação pública|
|V069|Domicílios particulares permanentes com poço ou nascente na propriedade - Não existe iluminação pública|
|V070|Domicílios particulares permanentes com rede geral de distribuição de água - Existe pavimentação|
|V071|Domicílios particulares permanentes com rede geral de distribuição de água - Não existe pavimentação|
|V072|Domicílios particulares permanentes com poço ou nascente na propriedade - Existe pavimentação|
|V073|Domicílios particulares permanentes com poço ou nascente na propriedade - Não existe pavimentação|
|V074|Domicílios particulares permanentes com rede geral de distribuição de água - Existe calçada|
|V075|Domicílios particulares permanentes com rede geral de distribuição de água - Não existe calçada|
|V076|Domicílios particulares permanentes com poço ou nascente na propriedade - Existe calçada|
|V077|Domicílios particulares permanentes com poço ou nascente na propriedade - Não existe calçada|
|V078|Domicílios particulares permanentes com rede geral de distribuição de água - Existe meio-fio/guia|
|V079|Domicílios particulares permanentes com rede geral de distribuição de água - Não existe meio-fio/guia|
|V080|Domicílios particulares permanentes com poço ou nascente na propriedade - Existe meio-fio/guia|
|V081|Domicílios particulares permanentes com poço ou nascente na propriedade - Não existe meio-fio/guia|
|V082|Domicílios particulares permanentes com rede geral de distribuição de água - Existe bueiro/boca-de-lobo|
|V083|Domicílios particulares permanentes com rede geral de distribuição de água - Não existe bueiro/boca-de-lobo|
|V084|Domicílios particulares permanentes com poço ou nascente na propriedade - Existe bueiro/boca-de-lobo|
|V085|Domicílios particulares permanentes com poço ou nascente na propriedade - Não existe bueiro/boca-de-lobo|
|V086|Domicílios particulares permanentes com rede geral de distribuição de água - Existe rampa para cadeirante|
|V087|Domicílios particulares permanentes com rede geral de distribuição de água - Não existe rampa para cadeirante|
|V088|Domicílios particulares permanentes com poço ou nascente na propriedade - Existe rampa para cadeirante|
|V089|Domicílios particulares permanentes com poço ou nascente na propriedade - Não existe rampa para cadeirante|
|V090|Domicílios particulares permanentes com rede geral de distribuição de água - Existe arborização|
|V091|Domicílios particulares permanentes com rede geral de distribuição de água - Não existe arborização|
|V092|Domicílios particulares permanentes com poço ou nascente na propriedade - Existe arborização|
|V093|Domicílios particulares permanentes com poço ou nascente na propriedade - Não existe arborização|
|V094|Domicílios particulares permanentes com rede geral de distribuição de água - Existe esgoto a céu aberto|
|V095|Domicílios particulares permanentes com rede geral de distribuição de água - Não existe esgoto a céu aberto|
|V096|Domicílios particulares permanentes com poço ou nascente na propriedade - Existe esgoto a céu aberto|
|V097|Domicílios particulares permanentes com poço ou nascente na propriedade - Não existe esgoto a céu aberto|
|V098|Domicílios particulares permanentes com rede geral de distribuição de água - Existe lixo acumulado nos logradouros|
|V099|Domicílios particulares permanentes com rede geral de distribuição de água - Não existe lixo acumulado nos logradouros|
|V100|Domicílios particulares permanentes com poço ou nascente na propriedade - Existe lixo acumulado nos logradouros|
|V101|Domicílios particulares permanentes com poço ou nascente na propriedade - Não existe lixo acumulado nos logradouros|
|V102|Domicílios particulares permanentes que tinham banheiro ou sanitário e esgotamento sanitário da rede geral de esgoto ou rede pluvial - Existe identificação do logradouro|
|V103|Domicílios particulares permanentes que tinham banheiro ou sanitário e esgotamento sanitário da rede geral de esgoto ou rede pluvial - Não existe identificação do logradouro|
|V104|Domicílios particulares permanentes que tinham banheiro ou sanitário e esgotamento sanitário de fossa séptica - Existe identificação do logradouro|
|V105|Domicílios particulares permanentes que tinham banheiro ou sanitário e esgotamento sanitário de fossa séptica - Não existe identificação do logradouro|
|V106|Domicílios particulares permanentes que não tinham banheiro ou sanitário - Existe identificação do logradouro|
|V107|Domicílios particulares permanentes que não tinham banheiro ou sanitário - Não existe identificação do logradouro|
|V108|Domicílios particulares permanentes que tinham banheiro ou sanitário e esgotamento sanitário da rede geral de esgoto ou rede pluvial - Existe iluminação pública|
|V109|Domicílios particulares permanentes que tinham banheiro ou sanitário e esgotamento sanitário da rede geral de esgoto ou rede pluvial - Não existe iluminação pública|
|V110|Domicílios particulares permanentes que tinham banheiro ou sanitário e esgotamento sanitário de fossa séptica - Existe iluminação pública|
|V111|Domicílios particulares permanentes que tinham banheiro ou sanitário e esgotamento sanitário de fossa séptica - Não existe iluminação pública|
|V112|Domicílios particulares permanentes que não tinham banheiro ou sanitário - Existe iluminação pública|
|V113|Domicílios particulares permanentes que não tinham banheiro ou sanitário - Não existe iluminação pública|
|V114|Domicílios particulares permanentes que tinham banheiro ou sanitário e esgotamento sanitário da rede geral de esgoto ou rede pluvial - Existe pavimentação|
|V115|Domicílios particulares permanentes que tinham banheiro ou sanitário e esgotamento sanitário da rede geral de esgoto ou rede pluvial - Não existe pavimentação|
|V116|Domicílios particulares permanentes que tinham banheiro ou sanitário e esgotamento sanitário de fossa séptica - Existe pavimentação|
|V117|Domicílios particulares permanentes que tinham banheiro ou sanitário e esgotamento sanitário de fossa séptica - Não existe pavimentação|
|V118|Domicílios particulares permanentes que não tinham banheiro ou sanitário - Existe pavimentação|
|V119|Domicílios particulares permanentes que não tinham banheiro ou sanitário - Não existe pavimentação|
|V120|Domicílios particulares permanentes que tinham banheiro ou sanitário e esgotamento sanitário da rede geral de esgoto ou rede pluvial - Existe calçada|
|V121|Domicílios particulares permanentes que tinham banheiro ou sanitário e esgotamento sanitário da rede geral de esgoto ou rede pluvial - Não existe calçada|
|V122|Domicílios particulares permanentes que tinham banheiro ou sanitário e esgotamento sanitário de fossa séptica - Existe calçada|
|V123|Domicílios particulares permanentes que tinham banheiro ou sanitário e esgotamento sanitário de fossa séptica - Não existe calçada|
|V124|Domicílios particulares permanentes que não tinham banheiro ou sanitário - Existe calçada|
|V125|Domicílios particulares permanentes que não tinham banheiro ou sanitário - Não existe calçada|
|V126|Domicílios particulares permanentes que tinham banheiro ou sanitário e esgotamento sanitário da rede geral de esgoto ou rede pluvial - Existe meio-fio/guia|
|V127|Domicílios particulares permanentes que tinham banheiro ou sanitário e esgotamento sanitário da rede geral de esgoto ou rede pluvial - Não existe meio-fio/guia|
|V128|Domicílios particulares permanentes que tinham banheiro ou sanitário e esgotamento sanitário de fossa séptica - Existe meio-fio/guia|
|V129|Domicílios particulares permanentes que tinham banheiro ou sanitário e esgotamento sanitário de fossa séptica - Não existe meio-fio/guia|
|V130|Domicílios particulares permanentes que não tinham banheiro ou sanitário - Existe meio-fio/guia|
|V131|Domicílios particulares permanentes que não tinham banheiro ou sanitário - Não existe meio-fio/guia|
|V132|Domicílios particulares permanentes que tinham banheiro ou sanitário e esgotamento sanitário da rede geral de esgoto ou rede pluvial - Existe bueiro/boca-de-lobo|
|V133|Domicílios particulares permanentes que tinham banheiro ou sanitário e esgotamento sanitário da rede geral de esgoto ou rede pluvial - Não existe bueiro/boca-de-lobo|
|V134|Domicílios particulares permanentes que tinham banheiro ou sanitário e esgotamento sanitário de fossa séptica - Existe bueiro/boca-de-lobo|
|V135|Domicílios particulares permanentes que tinham banheiro ou sanitário e esgotamento sanitário de fossa séptica - Não existe bueiro/boca-de-lobo|
|V136|Domicílios particulares permanentes que não tinham banheiro ou sanitário - Existe bueiro/boca-de-lobo|
|V137|Domicílios particulares permanentes que não tinham banheiro ou sanitário - Não existe bueiro/boca-de-lobo|
|V138|Domicílios particulares permanentes que tinham banheiro ou sanitário e esgotamento sanitário da rede geral de esgoto ou rede pluvial - Existe rampa para cadeirante|
|V139|Domicílios particulares permanentes que tinham banheiro ou sanitário e esgotamento sanitário da rede geral de esgoto ou rede pluvial - Não existe rampa para cadeirante|
|V140|Domicílios particulares permanentes que tinham banheiro ou sanitário e esgotamento sanitário de fossa séptica - Existe rampa para cadeirante|
|V141|Domicílios particulares permanentes que tinham banheiro ou sanitário e esgotamento sanitário de fossa séptica - Não existe rampa para cadeirante|
|V142|Domicílios particulares permanentes que não tinham banheiro ou sanitário - Existe rampa para cadeirante|
|V143|Domicílios particulares permanentes que não tinham banheiro ou sanitário - Não existe rampa para cadeirante|
|V144|Domicílios particulares permanentes que tinham banheiro ou sanitário e esgotamento sanitário da rede geral de esgoto ou rede pluvial - Existe arborização|
|V145|Domicílios particulares permanentes que tinham banheiro ou sanitário e esgotamento sanitário da rede geral de esgoto ou rede pluvial - Não existe arborização|
|V146|Domicílios particulares permanentes que tinham banheiro ou sanitário e esgotamento sanitário de fossa séptica - Existe arborização|
|V147|Domicílios particulares permanentes que tinham banheiro ou sanitário e esgotamento sanitário de fossa séptica - Não existe arborização|
|V148|Domicílios particulares permanentes que não tinham banheiro ou sanitário - Existe arborização|
|V149|Domicílios particulares permanentes que não tinham banheiro ou sanitário - Não existe arborização|
|V150|Domicílios particulares permanentes que tinham banheiro ou sanitário e esgotamento sanitário da rede geral de esgoto ou rede pluvial - Existe esgoto a céu aberto|
|V151|Domicílios particulares permanentes que tinham banheiro ou sanitário e esgotamento sanitário da rede geral de esgoto ou rede pluvial - Não existe esgoto a céu aberto|
|V152|Domicílios particulares permanentes que tinham banheiro ou sanitário e esgotamento sanitário de fossa séptica - Existe esgoto a céu aberto|
|V153|Domicílios particulares permanentes que tinham banheiro ou sanitário e esgotamento sanitário de fossa séptica - Não existe esgoto a céu aberto|
|V154|Domicílios particulares permanentes que não tinham banheiro ou sanitário - Existe esgoto a céu aberto|
|V155|Domicílios particulares permanentes que não tinham banheiro ou sanitário - Não existe esgoto a céu aberto|
|V156|Domicílios particulares permanentes que tinham banheiro ou sanitário e esgotamento sanitário da rede geral de esgoto ou rede pluvial - Existe lixo acumulado nos logradouros|
|V157|Domicílios particulares permanentes que tinham banheiro ou sanitário e esgotamento sanitário da rede geral de esgoto ou rede pluvial - Não existe lixo acumulado nos logradouros|
|V158|Domicílios particulares permanentes que tinham banheiro ou sanitário e esgotamento sanitário de fossa séptica - Existe lixo acumulado nos logradouros|
|V159|Domicílios particulares permanentes que tinham banheiro ou sanitário e esgotamento sanitário de fossa séptica - Não existe lixo acumulado nos logradouros|
|V160|Domicílios particulares permanentes que não tinham banheiro ou sanitário - Existe lixo acumulado nos logradouros|
|V161|Domicílios particulares permanentes que não tinham banheiro ou sanitário - Não existe lixo acumulado nos logradouros|
|V162|Domicílios particulares permanentes com lixo coletado diretamente por serviço de limpeza - Existe identificação do logradouro|
|V163|Domicílios particulares permanentes com lixo coletado diretamente por serviço de limpeza - Não existe identificação do logradouro|
|V164|Domicílios particulares permanentes com lixo depositado em caçamba de serviço de limpeza - Existe identificação do logradouro|
|V165|Domicílios particulares permanentes com lixo depositado em caçamba de serviço de limpeza - Não existe identificação do logradouro|
|V166|Domicílios particulares permanentes com lixo coletado diretamente por serviço de limpeza - Existe iluminação pública|
|V167|Domicílios particulares permanentes com lixo coletado diretamente por serviço de limpeza - Não existe iluminação pública|
|V168|Domicílios particulares permanentes com lixo depositado em caçamba de serviço de limpeza - Existe iluminação pública|
|V169|Domicílios particulares permanentes com lixo depositado em caçamba de serviço de limpeza - Não existe iluminação pública|
|V170|Domicílios particulares permanentes com lixo coletado diretamente por serviço de limpeza - Existe pavimentação|
|V171|Domicílios particulares permanentes com lixo coletado diretamente por serviço de limpeza - Não existe pavimentação|
|V172|Domicílios particulares permanentes com lixo depositado em caçamba de serviço de limpeza - Existe pavimentação|
|V173|Domicílios particulares permanentes com lixo depositado em caçamba de serviço de limpeza - Não existe pavimentação|
|V174|Domicílios particulares permanentes com lixo coletado diretamente por serviço de limpeza - Existe calçada|
|V175|Domicílios particulares permanentes com lixo coletado diretamente por serviço de limpeza - Não existe calçada|
|V176|Domicílios particulares permanentes com lixo depositado em caçamba de serviço de limpeza - Existe calçada|
|V177|Domicílios particulares permanentes com lixo depositado em caçamba de serviço de limpeza - Não existe calçada|
|V178|Domicílios particulares permanentes com lixo coletado diretamente por serviço de limpeza - Existe meio-fio/guia|
|V179|Domicílios particulares permanentes com lixo coletado diretamente por serviço de limpeza - Não existe meio-fio/guia|
|V180|Domicílios particulares permanentes com lixo depositado em caçamba de serviço de limpeza - Existe meio-fio/guia|
|V181|Domicílios particulares permanentes com lixo depositado em caçamba de serviço de limpeza - Não existe meio-fio/guia|
|V182|Domicílios particulares permanentes com lixo coletado diretamente por serviço de limpeza - Existe bueiro/boca-de-lobo|
|V183|Domicílios particulares permanentes com lixo coletado diretamente por serviço de limpeza - Não existe bueiro/boca-de-lobo|
|V184|Domicílios particulares permanentes com lixo depositado em caçamba de serviço de limpeza - Existe bueiro/boca-de-lobo|
|V185|Domicílios particulares permanentes com lixo depositado em caçamba de serviço de limpeza - Não existe bueiro/boca-de-lobo|
|V186|Domicílios particulares permanentes com lixo coletado diretamente por serviço de limpeza - Existe rampa para cadeirante|
|V187|Domicílios particulares permanentes com lixo coletado diretamente por serviço de limpeza - Não existe rampa para cadeirante|
|V188|Domicílios particulares permanentes com lixo depositado em caçamba de serviço de limpeza - Existe rampa para cadeirante|
|V189|Domicílios particulares permanentes com lixo depositado em caçamba de serviço de limpeza - Não existe rampa para cadeirante|
|V190|Domicílios particulares permanentes com lixo coletado diretamente por serviço de limpeza - Existe arborização|
|V191|Domicílios particulares permanentes com lixo coletado diretamente por serviço de limpeza - Não existe arborização|
|V192|Domicílios particulares permanentes com lixo depositado em caçamba de serviço de limpeza - Existe arborização|
|V193|Domicílios particulares permanentes com lixo depositado em caçamba de serviço de limpeza - Não existe arborização|
|V194|Domicílios particulares permanentes com lixo coletado diretamente por serviço de limpeza - Existe esgoto a céu aberto|
|V195|Domicílios particulares permanentes com lixo coletado diretamente por serviço de limpeza - Não existe esgoto a céu aberto|
|V196|Domicílios particulares permanentes com lixo depositado em caçamba de serviço de limpeza - Existe esgoto a céu aberto|
|V197|Domicílios particulares permanentes com lixo depositado em caçamba de serviço de limpeza - Não existe esgoto a céu aberto|
|V198|Domicílios particulares permanentes com lixo coletado diretamente por serviço de limpeza - Existe lixo acumulado nos logradouros|
|V199|Domicílios particulares permanentes com lixo coletado diretamente por serviço de limpeza - Não existe lixo acumulado nos logradouros|
|V200|Domicílios particulares permanentes com lixo depositado em caçamba de serviço de limpeza - Existe lixo acumulado nos logradouros|
|V201|Domicílios particulares permanentes com lixo depositado em caçamba de serviço de limpeza - Não existe lixo acumulado nos logradouros|

## 6.23. Arquivo Entorno 02 {#dic_ent02}

### Fonte de dados

- Entorno 02\_UF.xls ou Entorno 02\_UF.csv

### Dicionário de dados

|Nome da variável|Descrição da variável|
|-|-|
|Cod\_setor|Código do setor|
|V1005|Código de situação do setor|
|V202|Domicílios particulares permanentes com moradia adequada - Existe identificação do logradouro|
|V203|Domicílios particulares permanentes com moradia adequada - Não existe identificação do logradouro|
|V204|Domicílios particulares permanentes com moradia semi-adequada - Existe identificação do logradouro|
|V205|Domicílios particulares permanentes com moradia semi-adequada - Não existe identificação do logradouro|
|V206|Domicílios particulares permanentes com moradia inadequada - Existe identificação do logradouro|
|V207|Domicílios particulares permanentes com moradia inadequada - Não existe identificação do logradouro|
|V208|Domicílios particulares permanentes com moradia adequada - Existe iluminação pública|
|V209|Domicílios particulares permanentes com moradia adequada - Não existe iluminação pública|
|V210|Domicílios particulares permanentes com moradia semi-adequada - Existe iluminação pública|
|V211|Domicílios particulares permanentes com moradia semi-adequada - Não existe iluminação pública|
|V212|Domicílios particulares permanentes com moradia inadequada - Existe iluminação pública|
|V213|Domicílios particulares permanentes com moradia inadequada - Não existe iluminação pública|
|V214|Domicílios particulares permanentes com moradia adequada - Existe pavimentação|
|V215|Domicílios particulares permanentes com moradia adequada - Não existe pavimentação|
|V216|Domicílios particulares permanentes com moradia semi-adequada - Existe pavimentação|
|V217|Domicílios particulares permanentes com moradia semi-adequada - Não existe pavimentação|
|V218|Domicílios particulares permanentes com moradia inadequada - Existe pavimentação|
|V219|Domicílios particulares permanentes com moradia inadequada - Não existe pavimentação|
|V220|Domicílios particulares permanentes com moradia adequada - Existe calçada|
|V221|Domicílios particulares permanentes com moradia adequada - Não existe calçada|
|V222|Domicílios particulares permanentes com moradia semi-adequada - Existe calçada|
|V223|Domicílios particulares permanentes com moradia semi-adequada - Não existe calçada|
|V224|Domicílios particulares permanentes com moradia inadequada - Existe calçada|
|V225|Domicílios particulares permanentes com moradia inadequada - Não existe calçada|
|V226|Domicílios particulares permanentes com moradia adequada - Existe meio-fio/guia|
|V227|Domicílios particulares permanentes com moradia adequada - Não existe meio-fio/guia|
|V228|Domicílios particulares permanentes com moradia semi-adequada - Existe meio-fio/guia|
|V229|Domicílios particulares permanentes com moradia semi-adequada - Não existe meio-fio/guia|
|V230|Domicílios particulares permanentes com moradia inadequada - Existe meio-fio/guia|
|V231|Domicílios particulares permanentes com moradia inadequada - Não existe meio-fio/guia|
|V232|Domicílios particulares permanentes com moradia adequada - Existe bueiro/boca-de-lobo|
|V233|Domicílios particulares permanentes com moradia adequada - Não existe bueiro/boca-de-lobo|
|V234|Domicílios particulares permanentes com moradia semi-adequada - Existe bueiro/boca-de-lobo|
|V235|Domicílios particulares permanentes com moradia semi-adequada - Não existe bueiro/boca-de-lobo|
|V236|Domicílios particulares permanentes com moradia inadequada - Existe bueiro/boca-de-lobo|
|V237|Domicílios particulares permanentes com moradia inadequada - Não existe bueiro/boca-de-lobo|
|V238|Domicílios particulares permanentes com moradia adequada - Existe rampa para cadeirante|
|V239|Domicílios particulares permanentes com moradia adequada - Não existe rampa para cadeirante|
|V240|Domicílios particulares permanentes com moradia semi-adequada - Existe rampa para cadeirante|
|V241|Domicílios particulares permanentes com moradia semi-adequada - Não existe rampa para cadeirante|
|V242|Domicílios particulares permanentes com moradia inadequada - Existe rampa para cadeirante|
|V243|Domicílios particulares permanentes com moradia inadequada - Não existe rampa para cadeirante|
|V244|Domicílios particulares permanentes com moradia adequada - Existe arborização|
|V245|Domicílios particulares permanentes com moradia adequada - Não existe arborização|
|V246|Domicílios particulares permanentes com moradia semi-adequada - Existe arborização|
|V247|Domicílios particulares permanentes com moradia semi-adequada - Não existe arborização|
|V248|Domicílios particulares permanentes com moradia inadequada - Existe arborização|
|V249|Domicílios particulares permanentes com moradia inadequada - Não existe arborização|
|V250|Domicílios particulares permanentes com moradia adequada - Existe esgoto a céu aberto|
|V251|Domicílios particulares permanentes com moradia adequada - Não existe esgoto a céu aberto|
|V252|Domicílios particulares permanentes com moradia semi-adequada - Existe esgoto a céu aberto|
|V253|Domicílios particulares permanentes com moradia semi-adequada - Não existe esgoto a céu aberto|
|V254|Domicílios particulares permanentes com moradia inadequada - Existe esgoto a céu aberto|
|V255|Domicílios particulares permanentes com moradia inadequada - Não existe esgoto a céu aberto|
|V256|Domicílios particulares permanentes com moradia adequada - Existe lixo acumulado nos logradouros|
|V257|Domicílios particulares permanentes com moradia adequada - Não existe lixo acumulado nos logradouros|
|V258|Domicílios particulares permanentes com moradia semi-adequada - Existe lixo acumulado nos logradouros|
|V259|Domicílios particulares permanentes com moradia semi-adequada - Não existe lixo acumulado nos logradouros|
|V260|Domicílios particulares permanentes com moradia inadequada - Existe lixo acumulado nos logradouros|
|V261|Domicílios particulares permanentes com moradia inadequada - Não existe lixo acumulado nos logradouros|
|V262|Domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita até 1/4 do SM - Existe identificação do logradouro|
|V263|Domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita até 1/4 do SM - Não existe identificação do logradouro|
|V264|Domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1/4 a 1/2 SM - Existe identificação do logradouro|
|V265|Domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1/4 a 1/2 SM - Não existe identificação do logradouro|
|V266|Domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1/2 a 1 SM - Existe identificação do logradouro|
|V267|Domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1/2 a 1 SM - Não existe identificação do logradouro|
|V268|Domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1 a 2 SM - Existe identificação do logradouro|
|V269|Domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1 a 2 SM - Não existe identificação do logradouro|
|V270|Domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 2 SM - Existe identificação do logradouro|
|V271|Domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 2 SM - Não existe identificação do logradouro|
|V272|Domicílios particulares permanentes sem rendimento nominal mensal domiciliar per capita - Existe identificação do logradouro|
|V273|Domicílios particulares permanentes sem rendimento nominal mensal domiciliar per capita - Não existe identificação do logradouro|
|V274|Domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita até 1/4 do SM - Existe iluminação pública|
|V275|Domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita até 1/4 do SM - Não existe iluminação pública|
|V276|Domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1/4 a 1/2 SM - Existe iluminação pública|
|V277|Domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1/4 a 1/2 SM - Não existe iluminação pública|
|V278|Domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1/2 a 1 SM - Existe iluminação pública|
|V279|Domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1/2 a 1 SM - Não existe iluminação pública|
|V280|Domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1 a 2 SM - Existe iluminação pública|
|V281|Domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1 a 2 SM - Não existe iluminação pública|
|V282|Domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 2 SM - Existe iluminação pública|
|V283|Domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 2 SM - Não existe iluminação pública|
|V284|Domicílios particulares permanentes sem rendimento nominal mensal domiciliar per capita - Existe iluminação pública|
|V285|Domicílios particulares permanentes sem rendimento nominal mensal domiciliar per capita - Não existe iluminação pública|
|V286|Domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita até 1/4 do SM - Existe pavimentação|
|V287|Domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita até 1/4 do SM - Não existe pavimentação|
|V288|Domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1/4 a 1/2 SM - Existe pavimentação|
|V289|Domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1/4 a 1/2 SM - Não existe pavimentação|
|V290|Domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1/2 a 1 SM - Existe pavimentação|
|V291|Domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1/2 a 1 SM - Não existe pavimentação|
|V292|Domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1 a 2 SM - Existe pavimentação|
|V293|Domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1 a 2 SM - Não existe pavimentação|
|V294|Domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 2 SM - Existe pavimentação|
|V295|Domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 2 SM - Não existe pavimentação|
|V296|Domicílios particulares permanentes sem rendimento nominal mensal domiciliar per capita - Existe pavimentação|
|V297|Domicílios particulares permanentes sem rendimento nominal mensal domiciliar per capita - Não existe pavimentação|
|V298|Domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita até 1/4 do SM - Existe calçada|
|V299|Domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita até 1/4 do SM - Não existe calçada|
|V300|Domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1/4 a 1/2 SM - Existe calçada|
|V301|Domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1/4 a 1/2 SM - Não existe calçada|
|V302|Domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1/2 a 1 SM - Existe calçada|
|V303|Domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1/2 a 1 SM - Não existe calçada|
|V304|Domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1 a 2 SM - Existe calçada|
|V305|Domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1 a 2 SM - Não existe calçada|
|V306|Domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 2 SM - Existe calçada|
|V307|Domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 2 SM - Não existe calçada|
|V308|Domicílios particulares permanentes sem rendimento nominal mensal domiciliar per capita - Existe calçada|
|V309|Domicílios particulares permanentes sem rendimento nominal mensal domiciliar per capita - Não existe calçada|
|V310|Domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita até 1/4 do SM - Existe meio-fio/guia|
|V311|Domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita até 1/4 do SM - Não existe meio-fio/guia|
|V312|Domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1/4 a 1/2 SM - Existe meio-fio/guia|
|V313|Domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1/4 a 1/2 SM - Não existe meio-fio/guia|
|V314|Domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1/2 a 1 SM - Existe meio-fio/guia|
|V315|Domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1/2 a 1 SM - Não existe meio-fio/guia|
|V316|Domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1 a 2 SM - Existe meio-fio/guia|
|V317|Domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1 a 2 SM - Não existe meio-fio/guia|
|V318|Domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 2 SM - Existe meio-fio/guia|
|V319|Domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 2 SM - Não existe meio-fio/guia|
|V320|Domicílios particulares permanentes sem rendimento nominal mensal domiciliar per capita - Existe meio-fio/guia|
|V321|Domicílios particulares permanentes sem rendimento nominal mensal domiciliar per capita - Não existe meio-fio/guia|
|V322|Domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita até 1/4 do SM - Existe bueiro/boca-de-lobo|
|V323|Domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita até 1/4 do SM - Não existe bueiro/boca-de-lobo|
|V324|Domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1/4 a 1/2 SM - Existe bueiro/boca-de-lobo|
|V325|Domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1/4 a 1/2 SM - Não existe bueiro/boca-de-lobo|
|V326|Domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1/2 a 1 SM - Existe bueiro/boca-de-lobo|
|V327|Domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1/2 a 1 SM - Não existe bueiro/boca-de-lobo|
|V328|Domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1 a 2 SM - Existe bueiro/boca-de-lobo|
|V329|Domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1 a 2 SM - Não existe bueiro/boca-de-lobo|
|V330|Domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais 2 de SM - Existe bueiro/boca-de-lobo|
|V331|Domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 2 SM - Não existe bueiro/boca-de-lobo|
|V332|Domicílios particulares permanentes sem rendimento nominal mensal domiciliar per capita - Existe bueiro/boca-de-lobo|
|V333|Domicílios particulares permanentes sem rendimento nominal mensal domiciliar per capita - Não existe bueiro/boca-de-lobo|
|V334|Domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita até 1/4 do SM - Existe rampa para cadeirante|
|V335|Domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita até 1/4 do SM - Não existe rampa para cadeirante|
|V336|Domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1/4 a 1/2 SM - Existe rampa para cadeirante|
|V337|Domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1/4 a 1/2 SM - Não existe rampa para cadeirante|
|V338|Domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1/2 a 1 SM - Existe rampa para cadeirante|
|V339|Domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1/2 a 1 SM - Não existe rampa para cadeirante|
|V340|Domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1 a 2 SM - Existe rampa para cadeirante|
|V341|Domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1 a 2 SM - Não existe rampa para cadeirante|
|V342|Domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 2 SM - Existe rampa para cadeirante|
|V343|Domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 2 SM - Não existe rampa para cadeirante|
|V344|Domicílios particulares permanentes sem rendimento nominal mensal domiciliar per capita - Existe rampa para cadeirante|
|V345|Domicílios particulares permanentes sem rendimento nominal mensal domiciliar per capita - Não existe rampa para cadeirante|
|V346|Domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita até 1/4 do SM - Existe arborização|
|V347|Domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita até 1/4 do SM - Não existe arborização|
|V348|Domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1/4 a 1/2 SM - Existe arborização|
|V349|Domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1/4 a 1/2 SM - Não existe arborização|
|V350|Domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1/2 a 1 SM - Existe arborização|
|V351|Domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1/2 a 1 SM - Não existe arborização|
|V352|Domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1 a 2 SM - Existe arborização|
|V353|Domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1 a 2 SM - Não existe arborização|
|V354|Domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 2 SM - Existe arborização|
|V355|Domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 2 SM - Não existe arborização|
|V356|Domicílios particulares permanentes sem rendimento nominal mensal domiciliar per capita - Existe arborização|
|V357|Domicílios particulares permanentes sem rendimento nominal mensal domiciliar per capita - Não existe arborização|
|V358|Domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita até 1/4 do SM - Existe esgoto a céu aberto|
|V359|Domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita até 1/4 do SM - Não existe esgoto a céu aberto|
|V360|Domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1/4 a 1/2 SM - Existe esgoto a céu aberto|
|V361|Domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1/4 a 1/2 SM - Não existe esgoto a céu aberto|
|V362|Domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1/2 a 1 SM - Existe esgoto a céu aberto|
|V363|Domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1/2 a 1 SM - Não existe esgoto a céu aberto|
|V364|Domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1 a 2 SM - Existe esgoto a céu aberto|
|V365|Domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1 a 2 SM - Não existe esgoto a céu aberto|
|V366|Domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 2 SM - Existe esgoto a céu aberto|
|V367|Domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 2 SM - Não existe esgoto a céu aberto|
|V368|Domicílios particulares permanentes sem rendimento nominal mensal domiciliar per capita - Existe esgoto a céu aberto|
|V369|Domicílios particulares permanentes sem rendimento nominal mensal domiciliar per capita - Não existe esgoto a céu aberto|
|V370|Domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita até 1/4 do SM - Existe lixo acumulado nos logradouros|
|V371|Domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita até 1/4 do SM - Não existe lixo acumulado nos logradouros|
|V372|Domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1/4 a 1/2 SM - Existe lixo acumulado nos logradouros|
|V373|Domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1/4 a 1/2 SM - Não existe lixo acumulado nos logradouros|
|V374|Domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1/2 a 1 SM - Existe lixo acumulado nos logradouros|
|V375|Domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1/2 a 1 SM - Não existe lixo acumulado nos logradouros|
|V376|Domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1 a 2 SM - Existe lixo acumulado nos logradouros|
|V377|Domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1 a 2 SM - Não existe lixo acumulado nos logradouros|
|V378|Domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 2 SM - Existe lixo acumulado nos logradouros|
|V379|Domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 2 SM - Não existe lixo acumulado nos logradouros|
|V380|Domicílios particulares permanentes sem rendimento nominal mensal domiciliar per capita - Existe lixo acumulado nos logradouros|
|V381|Domicílios particulares permanentes sem rendimento nominal mensal domiciliar per capita - Não existe lixo acumulado nos logradouros|
|V382|Domicílios particulares permanentes com responsável do sexo masculino - Existe identificação do logradouro|
|V383|Domicílios particulares permanentes com responsável do sexo masculino - Não existe identificação do logradouro|
|V384|Domicílios particulares permanentes com responsável do sexo feminino - Existe identificação do logradouro|
|V385|Domicílios particulares permanentes com responsável do sexo feminino - Não existe identificação do logradouro|
|V386|Domicílios particulares permanentes com responsável do sexo masculino - Existe iluminação pública|
|V387|Domicílios particulares permanentes com responsável do sexo masculino - Não existe iluminação pública|
|V388|Domicílios particulares permanentes com responsável do sexo feminino - Existe iluminação pública|
|V389|Domicílios particulares permanentes com responsável do sexo feminino - Não existe iluminação pública|
|V390|Domicílios particulares permanentes com responsável do sexo masculino - Existe pavimentação|
|V391|Domicílios particulares permanentes com responsável do sexo masculino - Não existe pavimentação|
|V392|Domicílios particulares permanentes com responsável do sexo feminino - Existe pavimentação|
|V393|Domicílios particulares permanentes com responsável do sexo feminino - Não existe pavimentação|
|V394|Domicílios particulares permanentes com responsável do sexo masculino - Existe calçada|
|V395|Domicílios particulares permanentes com responsável do sexo masculino - Não existe calçada|
|V396|Domicílios particulares permanentes com responsável do sexo feminino - Existe calçada|
|V397|Domicílios particulares permanentes com responsável do sexo feminino - Não existe calçada|
|V398|Domicílios particulares permanentes com responsável do sexo masculino - Existe meio-fio/guia|
|V399|Domicílios particulares permanentes com responsável do sexo masculino - Não existe meio-fio/guia|
|V400|Domicílios particulares permanentes com responsável do sexo feminino - Existe meio-fio/guia|
|V401|Domicílios particulares permanentes com responsável do sexo feminino - Não existe meio-fio/guia|
|V402|Domicílios particulares permanentes com responsável do sexo masculino - Existe bueiro/boca-de-lobo|
|V403|Domicílios particulares permanentes com responsável do sexo masculino - Não existe bueiro/boca-de-lobo|
|V404|Domicílios particulares permanentes com responsável do sexo feminino - Existe bueiro/boca-de-lobo|
|V405|Domicílios particulares permanentes com responsável do sexo feminino - Não existe bueiro/boca-de-lobo|
|V406|Domicílios particulares permanentes com responsável do sexo masculino - Existe rampa para cadeirante|
|V407|Domicílios particulares permanentes com responsável do sexo masculino - Não existe rampa para cadeirante|
|V408|Domicílios particulares permanentes com responsável do sexo feminino - Existe rampa para cadeirante|
|V409|Domicílios particulares permanentes com responsável do sexo feminino - Não existe rampa para cadeirante|
|V410|Domicílios particulares permanentes com responsável do sexo masculino - Existe arborização|
|V411|Domicílios particulares permanentes com responsável do sexo masculino - Não existe arborização|
|V412|Domicílios particulares permanentes com responsável do sexo feminino - Existe arborização|
|V413|Domicílios particulares permanentes com responsável do sexo feminino - Não existe arborização|
|V414|Domicílios particulares permanentes com responsável do sexo masculino - Existe esgoto a céu aberto|
|V415|Domicílios particulares permanentes com responsável do sexo masculino - Não existe esgoto a céu aberto|
|V416|Domicílios particulares permanentes com responsável do sexo feminino - Existe esgoto a céu aberto|
|V417|Domicílios particulares permanentes com responsável do sexo feminino - Não existe esgoto a céu aberto|
|V418|Domicílios particulares permanentes com responsável do sexo masculino - Existe lixo acumulado nos logradouros|
|V419|Domicílios particulares permanentes com responsável do sexo masculino - Não existe lixo acumulado nos logradouros|
|V420|Domicílios particulares permanentes com responsável do sexo feminino - Existe lixo acumulado nos logradouros|
|V421|Domicílios particulares permanentes com responsável do sexo feminino - Não existe lixo acumulado nos logradouros|

## 6.24. Arquivo Entorno 03 {#dic_ent03}

### Fonte de dados

- Entorno 03 \_UF.xls ou Entorno 03 \_UF.csv

### Dicionário de dados

|Nome da variável|Descrição da variável|
|-|-|
|Cod\_setor|Código do setor|
|V1005|Código de situação do setor|
|V422|Moradores em domicílios particulares permanentes|
|V423|Moradores em domicílios particulares permanentes próprios - Existe identificação do logradouro|
|V424|Moradores em domicílios particulares permanentes próprios - Não existe identificação do logradouro|
|V425|Moradores em domicílios particulares permanentes alugados - Existe identificação do logradouro|
|V426|Moradores em domicílios particulares permanentes alugados - Não existe identificação do logradouro|
|V427|Moradores em domicílios particulares permanentes cedidos - Existe identificação do logradouro|
|V428|Moradores em domicílios particulares permanentes cedidos - Não existe identificação do logradouro|
|V429|Moradores em domicílios particulares permanentes próprios - Existe iluminação pública|
|V430|Moradores em domicílios particulares permanentes próprios - Não existe iluminação pública|
|V431|Moradores em domicílios particulares permanentes alugados - Existe iluminação pública|
|V432|Moradores em domicílios particulares permanentes alugados - Não existe iluminação pública|
|V433|Moradores em domicílios particulares permanentes cedidos - Existe iluminação pública|
|V434|Moradores em domicílios particulares permanentes cedidos - Não existe iluminação pública|
|V435|Moradores em domicílios particulares permanentes próprios - Existe pavimentação|
|V436|Moradores em domicílios particulares permanentes próprios - Não existe pavimentação|
|V437|Moradores em domicílios particulares permanentes alugados - Existe pavimentação|
|V438|Moradores em domicílios particulares permanentes alugados - Não existe pavimentação|
|V439|Moradores em domicílios particulares permanentes cedidos - Existe pavimentação|
|V440|Moradores em domicílios particulares permanentes cedidos - Não existe pavimentação|
|V441|Moradores em domicílios particulares permanentes próprios - Existe calçada|
|V442|Moradores em domicílios particulares permanentes próprios - Não existe calçada|
|V443|Moradores em domicílios particulares permanentes alugados - Existe calçada|
|V444|Moradores em domicílios particulares permanentes alugados - Não existe calçada|
|V445|Moradores em domicílios particulares permanentes cedidos - Existe calçada|
|V446|Moradores em domicílios particulares permanentes cedidos - Não existe calçada|
|V447|Moradores em domicílios particulares permanentes próprios - Existe meio-fio/guia|
|V448|Moradores em domicílios particulares permanentes próprios - Não existe meio-fio/guia|
|V449|Moradores em domicílios particulares permanentes alugados - Existe meio-fio/guia|
|V450|Moradores em domicílios particulares permanentes alugados - Não existe meio-fio/guia|
|V451|Moradores em domicílios particulares permanentes cedidos - Existe meio-fio/guia|
|V452|Moradores em domicílios particulares permanentes cedidos - Não existe meio-fio/guia|
|V453|Moradores em domicílios particulares permanentes próprios - Existe bueiro/boca-de-lobo|
|V454|Moradores em domicílios particulares permanentes próprios - Não existe bueiro/boca-de-lobo|
|V455|Moradores em domicílios particulares permanentes alugados - Existe bueiro/boca-de-lobo|
|V456|Moradores em domicílios particulares permanentes alugados - Não existe bueiro/boca-de-lobo|
|V457|Moradores em domicílios particulares permanentes cedidos - Existe bueiro/boca-de-lobo|
|V458|Moradores em domicílios particulares permanentes cedidos - Não existe bueiro/boca-de-lobo|
|V459|Moradores em domicílios particulares permanentes próprios - Existe rampa para cadeirante|
|V460|Moradores em domicílios particulares permanentes próprios - Não existe rampa para cadeirante|
|V461|Moradores em domicílios particulares permanentes alugados - Existe rampa para cadeirante|
|V462|Moradores em domicílios particulares permanentes alugados - Não existe rampa para cadeirante|
|V463|Moradores em domicílios particulares permanentes cedidos - Existe rampa para cadeirante|
|V464|Moradores em domicílios particulares permanentes cedidos - Não existe rampa para cadeirante|
|V465|Moradores em domicílios particulares permanentes próprios - Existe arborização|
|V466|Moradores em domicílios particulares permanentes próprios - Não existe arborização|
|V467|Moradores em domicílios particulares permanentes alugados - Existe arborização|
|V468|Moradores em domicílios particulares permanentes alugados - Não existe arborização|
|V469|Moradores em domicílios particulares permanentes cedidos - Existe arborização|
|V470|Moradores em domicílios particulares permanentes cedidos - Não existe arborização|
|V471|Moradores em domicílios particulares permanentes próprios - Existe esgoto a céu aberto|
|V472|Moradores em domicílios particulares permanentes próprios - Não existe esgoto a céu aberto|
|V473|Moradores em domicílios particulares permanentes alugados - Existe esgoto a céu aberto|
|V474|Moradores em domicílios particulares permanentes alugados - Não existe esgoto a céu aberto|
|V475|Moradores em domicílios particulares permanentes cedidos - Existe esgoto a céu aberto|
|V476|Moradores em domicílios particulares permanentes cedidos - Não existe esgoto a céu aberto|
|V477|Moradores em domicílios particulares permanentes próprios - Existe lixo acumulado nos logradouros|
|V478|Moradores em domicílios particulares permanentes próprios - Não existe lixo acumulado nos logradouros|
|V479|Moradores em domicílios particulares permanentes alugados - Existe lixo acumulado nos logradouros|
|V480|Moradores em domicílios particulares permanentes alugados - Não existe lixo acumulado nos logradouros|
|V481|Moradores em domicílios particulares permanentes cedidos - Existe lixo acumulado nos logradouros|
|V482|Moradores em domicílios particulares permanentes cedidos - Não existe lixo acumulado nos logradouros|
|V483|Moradores em domicílios particulares permanentes com rede geral de distribuição de água - Existe identificação do logradouro|
|V484|Moradores em domicílios particulares permanentes com rede geral de distribuição de água - Não existe identificação do logradouro|
|V485|Moradores em domicílios particulares permanentes com poço ou nascente na propriedade - Existe identificação do logradouro|
|V486|Moradores em domicílios particulares permanentes com poço ou nascente na propriedade - Não existe identificação do logradouro|
|V487|Moradores em domicílios particulares permanentes com rede geral de distribuição de água - Existe iluminação pública|
|V488|Moradores em domicílios particulares permanentes com rede geral de distribuição de água - Não existe iluminação pública|
|V489|Moradores em domicílios particulares permanentes com poço ou nascente na propriedade - Existe iluminação pública|
|V490|Moradores em domicílios particulares permanentes com poço ou nascente na propriedade - Não existe iluminação pública|
|V491|Moradores em domicílios particulares permanentes com rede geral de distribuição de água - Existe pavimentação|
|V492|Moradores em domicílios particulares permanentes com rede geral de distribuição de água - Não existe pavimentação|
|V493|Moradores em domicílios particulares permanentes com poço ou nascente na propriedade - Existe pavimentação|
|V494|Moradores em domicílios particulares permanentes com poço ou nascente na propriedade - Não existe pavimentação|
|V495|Moradores em domicílios particulares permanentes com rede geral de distribuição de água - Existe calçada|
|V496|Moradores em domicílios particulares permanentes com rede geral de distribuição de água - Não existe calçada|
|V497|Moradores em domicílios particulares permanentes com poço ou nascente na propriedade - Existe calçada|
|V498|Moradores em domicílios particulares permanentes com poço ou nascente na propriedade - Não existe calçada|
|V499|Moradores em domicílios particulares permanentes com rede geral de distribuição de água - Existe meio-fio/guia|
|V500|Moradores em domicílios particulares permanentes com rede geral de distribuição de água - Não existe meio-fio/guia|
|V501|Moradores em domicílios particulares permanentes com poço ou nascente na propriedade - Existe meio-fio/guia|
|V502|Moradores em domicílios particulares permanentes com poço ou nascente na propriedade - Não existe meio-fio/guia|
|V503|Moradores em domicílios particulares permanentes com rede geral de distribuição de água - Existe bueiro/boca-de-lobo|
|V504|Moradores em domicílios particulares permanentes com rede geral de distribuição de água - Não existe bueiro/boca-de-lobo|
|V505|Moradores em domicílios particulares permanentes com poço ou nascente na propriedade - Existe bueiro/boca-de-lobo|
|V506|Moradores em domicílios particulares permanentes com poço ou nascente na propriedade - Não existe bueiro/boca-de-lobo|
|V507|Moradores em domicílios particulares permanentes com rede geral de distribuição de água - Existe rampa para cadeirante|
|V508|Moradores em domicílios particulares permanentes com rede geral de distribuição de água - Não existe rampa para cadeirante|
|V509|Moradores em domicílios particulares permanentes com poço ou nascente na propriedade - Existe rampa para cadeirante|
|V510|Moradores em domicílios particulares permanentes com poço ou nascente na propriedade - Não existe rampa para cadeirante|
|V511|Moradores em domicílios particulares permanentes com rede geral de distribuição de água - Existe arborização|
|V512|Moradores em domicílios particulares permanentes com rede geral de distribuição de água - Não existe arborização|
|V513|Moradores em domicílios particulares permanentes com poço ou nascente na propriedade - Existe arborização|
|V514|Moradores em domicílios particulares permanentes com poço ou nascente na propriedade - Não existe arborização|
|V515|Moradores em domicílios particulares permanentes com rede geral de distribuição de água - Existe esgoto a céu aberto|
|V516|Moradores em domicílios particulares permanentes com rede geral de distribuição de água - Não existe esgoto a céu aberto|
|V517|Moradores em domicílios particulares permanentes com poço ou nascente na propriedade - Existe esgoto a céu aberto|
|V518|Moradores em domicílios particulares permanentes com poço ou nascente na propriedade - Não existe esgoto a céu aberto|
|V519|Moradores em domicílios particulares permanentes com rede geral de distribuição de água - Existe lixo acumulado nos logradouros|
|V520|Moradores em domicílios particulares permanentes com rede geral de distribuição de água - Não existe lixo acumulado nos logradouros|
|V521|Moradores em domicílios particulares permanentes com poço ou nascente na propriedade - Existe lixo acumulado nos logradouros|
|V522|Moradores em domicílios particulares permanentes com poço ou nascente na propriedade - Não existe lixo acumulado nos logradouros|
|V523|Moradores em domicílios particulares permanentes que tinham banheiro ou sanitário e esgotamento sanitário da rede geral de esgoto ou rede pluvial - Existe identificação do logradouro|
|V524|Moradores em domicílios particulares permanentes que tinham banheiro ou sanitário e esgotamento sanitário da rede geral de esgoto ou rede pluvial - Não existe identificação do logradouro|
|V525|Moradores em domicílios particulares permanentes que tinham banheiro ou sanitário e esgotamento sanitário de fossa séptica - Existe identificação do logradouro|
|V526|Moradores em domicílios particulares permanentes que tinham banheiro ou sanitário e esgotamento sanitário de fossa séptica - Não existe identificação do logradouro|
|V527|Moradores em domicílios particulares permanentes que não tinham banheiro ou sanitário - Existe identificação do logradouro|
|V528|Moradores em domicílios particulares permanentes que não tinham banheiro ou sanitário - Não existe identificação do logradouro|
|V529|Moradores em domicílios particulares permanentes que tinham banheiro ou sanitário e esgotamento sanitário da rede geral de esgoto ou rede pluvial - Existe iluminação pública|
|V530|Moradores em domicílios particulares permanentes que tinham banheiro ou sanitário e esgotamento sanitário da rede geral de esgoto ou rede pluvial - Não existe iluminação pública|
|V531|Moradores em domicílios particulares permanentes que tinham banheiro ou sanitário e esgotamento sanitário de fossa séptica - Existe iluminação pública|
|V532|Moradores em domicílios particulares permanentes que tinham banheiro ou sanitário e esgotamento sanitário de fossa séptica - Não existe iluminação pública|
|V533|Moradores em domicílios particulares permanentes que não tinham banheiro ou sanitário - Existe iluminação pública|
|V534|Moradores em domicílios particulares permanentes que não tinham banheiro ou sanitário - Não existe iluminação pública|
|V535|Moradores em domicílios particulares permanentes que tinham banheiro ou sanitário e esgotamento sanitário da rede geral de esgoto ou rede pluvial - Existe pavimentação|
|V536|Moradores em domicílios particulares permanentes que tinham banheiro ou sanitário e esgotamento sanitário da rede geral de esgoto ou rede pluvial - Não existe pavimentação|
|V537|Moradores em domicílios particulares permanentes que tinham banheiro ou sanitário e esgotamento sanitário de fossa séptica - Existe pavimentação|
|V538|Moradores em domicílios particulares permanentes que tinham banheiro ou sanitário e esgotamento sanitário de fossa séptica - Não existe pavimentação|
|V539|Moradores em domicílios particulares permanentes que não tinham banheiro ou sanitário - Existe pavimentação|
|V540|Moradores em domicílios particulares permanentes que não tinham banheiro ou sanitário - Não existe pavimentação|
|V541|Moradores em domicílios particulares permanentes que tinham banheiro ou sanitário e esgotamento sanitário da rede geral de esgoto ou rede pluvial - Existe calçada|
|V542|Moradores em domicílios particulares permanentes que tinham banheiro ou sanitário e esgotamento sanitário da rede geral de esgoto ou rede pluvial - Não existe calçada|
|V543|Moradores em domicílios particulares permanentes que tinham banheiro ou sanitário e esgotamento sanitário de fossa séptica - Existe calçada|
|V544|Moradores em domicílios particulares permanentes que tinham banheiro ou sanitário e esgotamento sanitário de fossa séptica - Não existe calçada|
|V545|Moradores em domicílios particulares permanentes que não tinham banheiro ou sanitário - Existe calçada|
|V546|Moradores em domicílios particulares permanentes que não tinham banheiro ou sanitário - Não existe calçada|
|V547|Moradores em domicílios particulares permanentes que tinham banheiro ou sanitário e esgotamento sanitário da rede geral de esgoto ou rede pluvial - Existe meio-fio/guia|
|V548|Moradores em domicílios particulares permanentes que tinham banheiro ou sanitário e esgotamento sanitário da rede geral de esgoto ou rede pluvial - Não existe meio-fio/guia|
|V549|Moradores em domicílios particulares permanentes que tinham banheiro ou sanitário e esgotamento sanitário de fossa séptica - Existe meio-fio/guia|
|V550|Moradores em domicílios particulares permanentes que tinham banheiro ou sanitário e esgotamento sanitário de fossa séptica - Não existe meio-fio/guia|
|V551|Moradores em domicílios particulares permanentes que não tinham banheiro ou sanitário - Existe meio-fio/guia|
|V552|Moradores em domicílios particulares permanentes que não tinham banheiro ou sanitário - Não existe meio-fio/guia|
|V553|Moradores em domicílios particulares permanentes que tinham banheiro ou sanitário e esgotamento sanitário da rede geral de esgoto ou rede pluvial - Existe bueiro/boca-de-lobo|
|V554|Moradores em domicílios particulares permanentes que tinham banheiro ou sanitário e esgotamento sanitário da rede geral de esgoto ou rede pluvial - Não existe bueiro/boca-de-lobo|
|V555|Moradores em domicílios particulares permanentes que tinham banheiro ou sanitário e esgotamento sanitário de fossa séptica - Existe bueiro/boca-de-lobo|
|V556|Moradores em domicílios particulares permanentes que tinham banheiro ou sanitário e esgotamento sanitário de fossa séptica - Não existe bueiro/boca-de-lobo|
|V557|Moradores em domicílios particulares permanentes que não tinham banheiro ou sanitário - Existe bueiro/boca-de-lobo|
|V558|Moradores em domicílios particulares permanentes que não tinham banheiro ou sanitário - Não existe bueiro/boca-de-lobo|
|V559|Moradores em domicílios particulares permanentes que tinham banheiro ou sanitário e esgotamento sanitário da rede geral de esgoto ou rede pluvial - Existe rampa para cadeirante|
|V560|Moradores em domicílios particulares permanentes que tinham banheiro ou sanitário e esgotamento sanitário da rede geral de esgoto ou rede pluvial - Não existe rampa para cadeirante|
|V561|Moradores em domicílios particulares permanentes que tinham banheiro ou sanitário e esgotamento sanitário de fossa séptica - Existe rampa para cadeirante|
|V562|Moradores em domicílios particulares permanentes que tinham banheiro ou sanitário e esgotamento sanitário de fossa séptica - Não existe rampa para cadeirante|
|V563|Moradores em domicílios particulares permanentes que não tinham banheiro ou sanitário - Existe rampa para cadeirante|
|V564|Moradores em domicílios particulares permanentes que não tinham banheiro ou sanitário - Não existe rampa para cadeirante|
|V565|Moradores em domicílios particulares permanentes que tinham banheiro ou sanitário e esgotamento sanitário da rede geral de esgoto ou rede pluvial - Existe arborização|
|V566|Moradores em domicílios particulares permanentes que tinham banheiro ou sanitário e esgotamento sanitário da rede geral de esgoto ou rede pluvial - Não existe arborização|
|V567|Moradores em domicílios particulares permanentes que tinham banheiro ou sanitário e esgotamento sanitário de fossa séptica - Existe arborização|
|V568|Moradores em domicílios particulares permanentes que tinham banheiro ou sanitário e esgotamento sanitário de fossa séptica - Não existe arborização|
|V569|Moradores em domicílios particulares permanentes que não tinham banheiro ou sanitário - Existe arborização|
|V570|Moradores em domicílios particulares permanentes que não tinham banheiro ou sanitário - Não existe arborização|
|V571|Moradores em domicílios particulares permanentes que tinham banheiro ou sanitário e esgotamento sanitário da rede geral de esgoto ou rede pluvial - Existe esgoto a céu aberto|
|V572|Moradores em domicílios particulares permanentes que tinham banheiro ou sanitário e esgotamento sanitário da rede geral de esgoto ou rede pluvial - Não existe esgoto a céu aberto|
|V573|Moradores em domicílios particulares permanentes que tinham banheiro ou sanitário e esgotamento sanitário de fossa séptica - Existe esgoto a céu aberto|
|V574|Moradores em domicílios particulares permanentes que tinham banheiro ou sanitário e esgotamento sanitário de fossa séptica - Não existe esgoto a céu aberto|
|V575|Moradores em domicílios particulares permanentes que não tinham banheiro ou sanitário - Existe esgoto a céu aberto|
|V576|Moradores em domicílios particulares permanentes que não tinham banheiro ou sanitário - Não existe esgoto a céu aberto|
|V577|Moradores em domicílios particulares permanentes que tinham banheiro ou sanitário e esgotamento sanitário da rede geral de esgoto ou rede pluvial - Existe lixo acumulado nos logradouros|
|V578|Moradores em domicílios particulares permanentes que tinham banheiro ou sanitário e esgotamento sanitário da rede geral de esgoto ou rede pluvial - Não existe lixo acumulado nos logradouros|
|V579|Moradores em domicílios particulares permanentes que tinham banheiro ou sanitário e esgotamento sanitário de fossa séptica - Existe lixo acumulado nos logradouros|
|V580|Moradores em domicílios particulares permanentes que tinham banheiro ou sanitário e esgotamento sanitário de fossa séptica - Não existe lixo acumulado nos logradouros|
|V581|Moradores em domicílios particulares permanentes que não tinham banheiro ou sanitário - Existe lixo acumulado nos logradouros|
|V582|Moradores em domicílios particulares permanentes que não tinham banheiro ou sanitário - Não existe lixo acumulado nos logradouros|
|V583|Moradores em domicílios particulares permanentes com lixo coletado diretamente por serviço de limpeza - Existe identificação do logradouro|
|V584|Moradores em domicílios particulares permanentes com lixo coletado diretamente por serviço de limpeza - Não existe identificação do logradouro|
|V585|Moradores em domicílios particulares permanentes com lixo depositado em caçamba de serviço de limpeza - Existe identificação do logradouro|
|V586|Moradores em domicílios particulares permanentes com lixo depositado em caçamba de serviço de limpeza - Não existe identificação do logradouro|
|V587|Moradores em domicílios particulares permanentes com lixo coletado diretamente por serviço de limpeza - Existe iluminação pública|
|V588|Moradores em domicílios particulares permanentes com lixo coletado diretamente por serviço de limpeza - Não existe iluminação pública|
|V589|Moradores em domicílios particulares permanentes com lixo depositado em caçamba de serviço de limpeza - Existe iluminação pública|
|V590|Moradores em domicílios particulares permanentes com lixo depositado em caçamba de serviço de limpeza - Não existe iluminação pública|
|V591|Moradores em domicílios particulares permanentes com lixo coletado diretamente por serviço de limpeza - Existe pavimentação|
|V592|Moradores em domicílios particulares permanentes com lixo coletado diretamente por serviço de limpeza - Não existe pavimentação|
|V593|Moradores em domicílios particulares permanentes com lixo depositado em caçamba de serviço de limpeza - Existe pavimentação|
|V594|Moradores em domicílios particulares permanentes com lixo depositado em caçamba de serviço de limpeza - Não existe pavimentação|
|V595|Moradores em domicílios particulares permanentes com lixo coletado diretamente por serviço de limpeza - Existe calçada|
|V596|Moradores em domicílios particulares permanentes com lixo coletado diretamente por serviço de limpeza - Não existe calçada|
|V597|Moradores em domicílios particulares permanentes com lixo depositado em caçamba de serviço de limpeza - Existe calçada|
|V598|Moradores em domicílios particulares permanentes com lixo depositado em caçamba de serviço de limpeza - Não existe calçada|
|V599|Moradores em domicílios particulares permanentes com lixo coletado diretamente por serviço de limpeza - Existe meio-fio/guia|
|V600|Moradores em domicílios particulares permanentes com lixo coletado diretamente por serviço de limpeza - Não existe meio-fio/guia|
|V601|Moradores em domicílios particulares permanentes com lixo depositado em caçamba de serviço de limpeza - Existe meio-fio/guia|
|V602|Moradores em domicílios particulares permanentes com lixo depositado em caçamba de serviço de limpeza - Não existe meio-fio/guia|
|V603|Moradores em domicílios particulares permanentes com lixo coletado diretamente por serviço de limpeza - Existe bueiro/boca-de-lobo|
|V604|Moradores em domicílios particulares permanentes com lixo coletado diretamente por serviço de limpeza - Não existe bueiro/boca-de-lobo|
|V605|Moradores em domicílios particulares permanentes com lixo depositado em caçamba de serviço de limpeza - Existe bueiro/boca-de-lobo|
|V606|Moradores em domicílios particulares permanentes com lixo depositado em caçamba de serviço de limpeza - Não existe bueiro/boca-de-lobo|
|V607|Moradores em domicílios particulares permanentes com lixo coletado diretamente por serviço de limpeza - Existe rampa para cadeirante|
|V608|Moradores em domicílios particulares permanentes com lixo coletado diretamente por serviço de limpeza - Não existe rampa para cadeirante|
|V609|Moradores em domicílios particulares permanentes com lixo depositado em caçamba de serviço de limpeza - Existe rampa para cadeirante|
|V610|Moradores em domicílios particulares permanentes com lixo depositado em caçamba de serviço de limpeza - Não existe rampa para cadeirante|
|V611|Moradores em domicílios particulares permanentes com lixo coletado diretamente por serviço de limpeza - Existe arborização|
|V612|Moradores em domicílios particulares permanentes com lixo coletado diretamente por serviço de limpeza - Não existe arborização|
|V613|Moradores em domicílios particulares permanentes com lixo depositado em caçamba de serviço de limpeza - Existe arborização|
|V614|Moradores em domicílios particulares permanentes com lixo depositado em caçamba de serviço de limpeza - Não existe arborização|
|V615|Moradores em domicílios particulares permanentes com lixo coletado diretamente por serviço de limpeza - Existe esgoto a céu aberto|
|V616|Moradores em domicílios particulares permanentes com lixo coletado diretamente por serviço de limpeza - Não existe esgoto a céu aberto|
|V617|Moradores em domicílios particulares permanentes com lixo depositado em caçamba de serviço de limpeza - Existe esgoto a céu aberto|
|V618|Moradores em domicílios particulares permanentes com lixo depositado em caçamba de serviço de limpeza - Não existe esgoto a céu aberto|
|V619|Moradores em domicílios particulares permanentes com lixo coletado diretamente por serviço de limpeza - Existe lixo acumulado nos logradouros|
|V620|Moradores em domicílios particulares permanentes com lixo coletado diretamente por serviço de limpeza - Não existe lixo acumulado nos logradouros|
|V621|Moradores em domicílios particulares permanentes com lixo depositado em caçamba de serviço de limpeza - Existe lixo acumulado nos logradouros|
|V622|Moradores em domicílios particulares permanentes com lixo depositado em caçamba de serviço de limpeza - Não existe lixo acumulado nos logradouros|

## 6.25. Arquivo Entorno 04 {#dic_ent04}

### Fonte de dados

- Entorno 04 \_UF.xls ou Entorno 04 \_UF.csv

### Dicionário de dados

|Nome da variável|Descrição da variável|
|-|-|
|Cod\_setor|Código do setor|
|V1005|Código de situação do setor|
|V623|Moradores em domicílios particulares permanentes com moradia adequada - Existe identificação do logradouro|
|V624|Moradores em domicílios particulares permanentes com moradia adequada - Não existe identificação do logradouro|
|V625|Moradores em domicílios particulares permanentes com moradia semi-adequada - Existe identificação do logradouro|
|V626|Moradores em domicílios particulares permanentes com moradia semi-adequada - Não existe identificação do logradouro|
|V627|Moradores em domicílios particulares permanentes com moradia inadequada - Existe identificação do logradouro|
|V628|Moradores em domicílios particulares permanentes com moradia inadequada - Não existe identificação do logradouro|
|V629|Moradores em domicílios particulares permanentes com moradia adequada - Existe iluminação pública|
|V630|Moradores em domicílios particulares permanentes com moradia adequada - Não existe iluminação pública|
|V631|Moradores em domicílios particulares permanentes com moradia semi-adequada - Existe iluminação pública|
|V632|Moradores em domicílios particulares permanentes com moradia semi-adequada - Não existe iluminação pública|
|V633|Moradores em domicílios particulares permanentes com moradia inadequada - Existe iluminação pública|
|V634|Moradores em domicílios particulares permanentes com moradia inadequada - Não existe iluminação pública|
|V635|Moradores em domicílios particulares permanentes com moradia adequada - Existe pavimentação|
|V636|Moradores em domicílios particulares permanentes com moradia adequada - Não existe pavimentação|
|V637|Moradores em domicílios particulares permanentes com moradia semi-adequada - Existe pavimentação|
|V638|Moradores em domicílios particulares permanentes com moradia semi-adequada - Não existe pavimentação|
|V639|Moradores em domicílios particulares permanentes com moradia inadequada - Existe pavimentação|
|V640|Moradores em domicílios particulares permanentes com moradia inadequada - Não existe pavimentação|
|V641|Moradores em domicílios particulares permanentes com moradia adequada - Existe calçada|
|V642|Moradores em domicílios particulares permanentes com moradia adequada - Não existe calçada|
|V643|Moradores em domicílios particulares permanentes com moradia semi-adequada - Existe calçada|
|V644|Moradores em domicílios particulares permanentes com moradia semi-adequada - Não existe calçada|
|V645|Moradores em domicílios particulares permanentes com moradia inadequada - Existe calçada|
|V646|Moradores em domicílios particulares permanentes com moradia inadequada - Não existe calçada|
|V647|Moradores em domicílios particulares permanentes com moradia adequada - Existe meio-fio/guia|
|V648|Moradores em domicílios particulares permanentes com moradia adequada - Não existe meio-fio/guia|
|V649|Moradores em domicílios particulares permanentes com moradia semi-adequada - Existe meio-fio/guia|
|V650|Moradores em domicílios particulares permanentes com moradia semi-adequada - Não existe meio-fio/guia|
|V651|Moradores em domicílios particulares permanentes com moradia inadequada - Existe meio-fio/guia|
|V652|Moradores em domicílios particulares permanentes com moradia inadequada - Não existe meio-fio/guia|
|V653|Moradores em domicílios particulares permanentes com moradia adequada - Existe bueiro/boca-de-lobo|
|V654|Moradores em domicílios particulares permanentes com moradia adequada - Não existe bueiro/boca-de-lobo|
|V655|Moradores em domicílios particulares permanentes com moradia semi-adequada - Existe bueiro/boca-de-lobo|
|V656|Moradores em domicílios particulares permanentes com moradia semi-adequada - Não existe bueiro/boca-de-lobo|
|V657|Moradores em domicílios particulares permanentes com moradia inadequada - Existe bueiro/boca-de-lobo|
|V658|Moradores em domicílios particulares permanentes com moradia inadequada - Não existe bueiro/boca-de-lobo|
|V659|Moradores em domicílios particulares permanentes com moradia adequada - Existe rampa para cadeirante|
|V660|Moradores em domicílios particulares permanentes com moradia adequada - Não existe rampa para cadeirante|
|V661|Moradores em domicílios particulares permanentes com moradia semi-adequada - Existe rampa para cadeirante|
|V662|Moradores em domicílios particulares permanentes com moradia semi-adequada - Não existe rampa para cadeirante|
|V663|Moradores em domicílios particulares permanentes com moradia inadequada - Existe rampa para cadeirante|
|V664|Moradores em domicílios particulares permanentes com moradia inadequada - Não existe rampa para cadeirante|
|V665|Moradores em domicílios particulares permanentes com moradia adequada - Existe arborização|
|V666|Moradores em domicílios particulares permanentes com moradia adequada - Não existe arborização|
|V667|Moradores em domicílios particulares permanentes com moradia semi-adequada - Existe arborização|
|V668|Moradores em domicílios particulares permanentes com moradia semi-adequada - Não existe arborização|
|V669|Moradores em domicílios particulares permanentes com moradia inadequada - Existe arborização|
|V670|Moradores em domicílios particulares permanentes com moradia inadequada - Não existe arborização|
|V671|Moradores em domicílios particulares permanentes com moradia adequada - Existe esgoto a céu aberto|
|V672|Moradores em domicílios particulares permanentes com moradia adequada - Não existe esgoto a céu aberto|
|V673|Moradores em domicílios particulares permanentes com moradia semi-adequada - Existe esgoto a céu aberto|
|V674|Moradores em domicílios particulares permanentes com moradia semi-adequada - Não existe esgoto a céu aberto|
|V675|Moradores em domicílios particulares permanentes com moradia inadequada - Existe esgoto a céu aberto|
|V676|Moradores em domicílios particulares permanentes com moradia inadequada - Não existe esgoto a céu aberto|
|V677|Moradores em domicílios particulares permanentes com moradia adequada - Existe lixo acumulado nos logradouros|
|V678|Moradores em domicílios particulares permanentes com moradia adequada - Não existe lixo acumulado nos logradouros|
|V679|Moradores em domicílios particulares permanentes com moradia semi-adequada - Existe lixo acumulado nos logradouros|
|V680|Moradores em domicílios particulares permanentes com moradia semi-adequada - Não existe lixo acumulado nos logradouros|
|V681|Moradores em domicílios particulares permanentes com moradia inadequada - Existe lixo acumulado nos logradouros|
|V682|Moradores em domicílios particulares permanentes com moradia inadequada - Não existe lixo acumulado nos logradouros|
|V683|Moradores em domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita até 1/4 do SM - Existe identificação do logradouro|
|V684|Moradores em domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita até 1/4 do SM - Não existe identificação do logradouro|
|V685|Moradores em domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1/4 a 1/2 SM - Existe identificação do logradouro|
|V686|Moradores em domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1/4 a 1/2 SM - Não existe identificação do logradouro|
|V687|Moradores em domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1/2 a 1 SM - Existe identificação do logradouro|
|V688|Moradores em domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1/2 a 1 SM - Não existe identificação do logradouro|
|V689|Moradores em domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1 a 2 SM - Existe identificação do logradouro|
|V690|Moradores em domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1 a 2 SM - Não existe identificação do logradouro|
|V691|Moradores em domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 2 SM - Existe identificação do logradouro|
|V692|Moradores em domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 2 SM - Não existe identificação do logradouro|
|V693|Moradores em domicílios particulares permanentes sem rendimento nominal mensal domiciliar per capita - Existe identificação do logradouro|
|V694|Moradores em domicílios particulares permanentes sem rendimento nominal mensal domiciliar per capita - Não existe identificação do logradouro|
|V695|Moradores em domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita até 1/4 do SM - Existe iluminação pública|
|V696|Moradores em domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita até 1/4 do SM - Não existe iluminação pública|
|V697|Moradores em domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1/4 a 1/2 SM - Existe iluminação pública|
|V698|Moradores em domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1/4 a 1/2 SM - Não existe iluminação pública|
|V699|Moradores em domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1/2 a 1 SM - Existe iluminação pública|
|V700|Moradores em domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1/2 a 1 SM - Não existe iluminação pública|
|V701|Moradores em domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1 a 2 SM - Existe iluminação pública|
|V702|Moradores em domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1 a 2 SM - Não existe iluminação pública|
|V703|Moradores em domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 2 SM - Existe iluminação pública|
|V704|Moradores em domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 2 SM - Não existe iluminação pública|
|V705|Moradores em domicílios particulares permanentes sem rendimento nominal mensal domiciliar per capita - Existe iluminação pública|
|V706|Moradores em domicílios particulares permanentes sem rendimento nominal mensal domiciliar per capita - Não existe iluminação pública|
|V707|Moradores em domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita até 1/4 do SM - Existe pavimentação|
|V708|Moradores em domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita até 1/4 do SM - Não existe pavimentação|
|V709|Moradores em domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1/4 a 1/2 SM - Existe pavimentação|
|V710|Moradores em domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1/4 a 1/2 SM - Não existe pavimentação|
|V711|Moradores em domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1/2 a 1 SM - Existe pavimentação|
|V712|Moradores em domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1/2 a 1 SM - Não existe pavimentação|
|V713|Moradores em domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1 a 2 SM - Existe pavimentação|
|V714|Moradores em domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1 a 2 SM - Não existe pavimentação|
|V715|Moradores em domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 2 SM - Existe pavimentação|
|V716|Moradores em domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 2 SM - Não existe pavimentação|
|V717|Moradores em domicílios particulares permanentes sem rendimento nominal mensal domiciliar per capita - Existe pavimentação|
|V718|Moradores em domicílios particulares permanentes sem rendimento nominal mensal domiciliar per capita - Não existe pavimentação|
|V719|Moradores em domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita até 1/4 do SM - Existe calçada|
|V720|Moradores em domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita até 1/4 do SM - Não existe calçada|
|V721|Moradores em domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1/4 a 1/2 SM - Existe calçada|
|V722|Moradores em domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1/4 a 1/2 SM - Não existe calçada|
|V723|Moradores em domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1/2 a 1 SM - Existe calçada|
|V724|Moradores em domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1/2 a 1 SM - Não existe calçada|
|V725|Moradores em domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1 a 2 SM - Existe calçada|
|V726|Moradores em domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1 a 2 SM - Não existe calçada|
|V727|Moradores em domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 2 SM - Existe calçada|
|V728|Moradores em domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 2 SM - Não existe calçada|
|V729|Moradores em domicílios particulares permanentes sem rendimento nominal mensal domiciliar per capita - Existe calçada|
|V730|Moradores em domicílios particulares permanentes sem rendimento nominal mensal domiciliar per capita - Não existe calçada|
|V731|Moradores em domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita até 1/4 do SM - Existe meio-fio/guia|
|V732|Moradores em domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita até 1/4 do SM - Não existe meio-fio/guia|
|V733|Moradores em domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1/4 a 1/2 SM - Existe meio-fio/guia|
|V734|Moradores em domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1/4 a 1/2 SM - Não existe meio-fio/guia|
|V735|Moradores em domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1/2 a 1 SM - Existe meio-fio/guia|
|V736|Moradores em domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1/2 a 1 SM - Não existe meio-fio/guia|
|V737|Moradores em domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1 a 2 SM - Existe meio-fio/guia|
|V738|Moradores em domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1 a 2 SM - Não existe meio-fio/guia|
|V739|Moradores em domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 2 SM - Existe meio-fio/guia|
|V740|Moradores em domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 2 SM - Não existe meio-fio/guia|
|V741|Moradores em domicílios particulares permanentes sem rendimento nominal mensal domiciliar per capita - Existe meio-fio/guia|
|V742|Moradores em domicílios particulares permanentes sem rendimento nominal mensal domiciliar per capita - Não existe meio-fio/guia|
|V743|Moradores em domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita até 1/4 do SM - Existe bueiro/boca-de-lobo|
|V744|Moradores em domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita até 1/4 do SM - Não existe bueiro/boca-de-lobo|
|V745|Moradores em domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1/4 a 1/2 SM - Existe bueiro/boca-de-lobo|
|V746|Moradores em domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1/4 a 1/2 SM - Não existe bueiro/boca-de-lobo|
|V747|Moradores em domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1/2 a 1 SM - Existe bueiro/boca-de-lobo|
|V748|Moradores em domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1/2 a 1 SM - Não existe bueiro/boca-de-lobo|
|V749|Moradores em domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1 a 2 SM - Existe bueiro/boca-de-lobo|
|V750|Moradores em domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1 a 2 SM - Não existe bueiro/boca-de-lobo|
|V751|Moradores em domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 2 SM - Existe bueiro/boca-de-lobo|
|V752|Moradores em domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 2 SM - Não existe bueiro/boca-de-lobo|
|V753|Moradores em domicílios particulares permanentes sem rendimento nominal mensal domiciliar per capita - Existe bueiro/boca-de-lobo|
|V754|Moradores em domicílios particulares permanentes sem rendimento nominal mensal domiciliar per capita - Não existe bueiro/boca-de-lobo|
|V755|Moradores em domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita até 1/4 do SM - Existe rampa para cadeirante|
|V756|Moradores em domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita até 1/4 do SM - Não existe rampa para cadeirante|
|V757|Moradores em domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1/4 a 1/2 SM - Existe rampa para cadeirante|
|V758|Moradores em domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1/4 a 1/2 SM - Não existe rampa para cadeirante|
|V759|Moradores em domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1/2 a 1 SM - Existe rampa para cadeirante|
|V760|Moradores em domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1/2 a 1 SM - Não existe rampa para cadeirante|
|V761|Moradores em domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1 a 2 SM - Existe rampa para cadeirante|
|V762|Moradores em domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1 a 2 SM - Não existe rampa para cadeirante|
|V763|Moradores em domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 2 SM - Existe rampa para cadeirante|
|V764|Moradores em domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 2 SM - Não existe rampa para cadeirante|
|V765|Moradores em domicílios particulares permanentes sem rendimento nominal mensal domiciliar per capita - Existe rampa para cadeirante|
|V766|Moradores em domicílios particulares permanentes sem rendimento nominal mensal domiciliar per capita - Não existe rampa para cadeirante|
|V767|Moradores em domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita até 1/4 do SM - Existe arborização|
|V768|Moradores em domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita até 1/4 do SM - Não existe arborização|
|V769|Moradores em domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1/4 a 1/2 SM - Existe arborização|
|V770|Moradores em domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1/4 a 1/2 SM - Não existe arborização|
|V771|Moradores em domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1/2 a 1 SM - Existe arborização|
|V772|Moradores em domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1/2 a 1 SM - Não existe arborização|
|V773|Moradores em domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1 a 2 SM - Existe arborização|
|V774|Moradores em domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1 a 2 SM - Não existe arborização|
|V775|Moradores em domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 2 SM - Existe arborização|
|V776|Moradores em domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 2 SM - Não existe arborização|
|V777|Moradores em domicílios particulares permanentes sem rendimento nominal mensal domiciliar per capita - Existe arborização|
|V778|Moradores em domicílios particulares permanentes sem rendimento nominal mensal domiciliar per capita - Não existe arborização|
|V779|Moradores em domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita até 1/4 do SM - Existe esgoto a céu aberto|
|V780|Moradores em domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita até 1/4 do SM - Não existe esgoto a céu aberto|
|V781|Moradores em domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1/4 a 1/2 SM - Existe esgoto a céu aberto|
|V782|Moradores em domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1/4 a 1/2 SM - Não existe esgoto a céu aberto|
|V783|Moradores em domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1/2 a 1 SM - Existe esgoto a céu aberto|
|V784|Moradores em domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1/2 a 1 SM - Não existe esgoto a céu aberto|
|V785|Moradores em domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1 a 2 SM - Existe esgoto a céu aberto|
|V786|Moradores em domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1 a 2 SM - Não existe esgoto a céu aberto|
|V787|Moradores em domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 2 SM - Existe esgoto a céu aberto|
|V788|Moradores em domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 2 SM - Não existe esgoto a céu aberto|
|V789|Moradores em domicílios particulares permanentes sem rendimento nominal mensal domiciliar per capita - Existe esgoto a céu aberto|
|V790|Moradores em domicílios particulares permanentes sem rendimento nominal mensal domiciliar per capita - Não existe esgoto a céu aberto|
|V791|Moradores em domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita até 1/4 do SM - Existe lixo acumulado nos logradouros|
|V792|Moradores em domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita até 1/4 do SM - Não existe lixo acumulado nos logradouros|
|V793|Moradores em domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1/4 a 1/2 SM - Existe lixo acumulado nos logradouros|
|V794|Moradores em domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1/4 a 1/2 SM - Não existe lixo acumulado nos logradouros|
|V795|Moradores em domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1/2 a 1 SM - Existe lixo acumulado nos logradouros|
|V796|Moradores em domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1/2 a 1 SM - Não existe lixo acumulado nos logradouros|
|V797|Moradores em domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1 a 2 SM - Existe lixo acumulado nos logradouros|
|V798|Moradores em domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 1 a 2 SM - Não existe lixo acumulado nos logradouros|
|V799|Moradores em domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 2 SM - Existe lixo acumulado nos logradouros|
|V800|Moradores em domicílios particulares permanentes com rendimento nominal mensal domiciliar per capita de mais de 2 SM - Não existe lixo acumulado nos logradouros|
|V801|Moradores em domicílios particulares permanentes sem rendimento nominal mensal domiciliar per capita - Existe lixo acumulado nos logradouros|
|V802|Moradores em domicílios particulares permanentes sem rendimento nominal mensal domiciliar per capita - Não existe lixo acumulado nos logradouros|
|V803|Moradores em domicílios particulares permanentes com responsável do sexo masculino - Existe identificação do logradouro|
|V804|Moradores em domicílios particulares permanentes com responsável do sexo masculino - Não existe identificação do logradouro|
|V805|Moradores em domicílios particulares permanentes com responsável do sexo feminino - Existe identificação do logradouro|
|V806|Moradores em domicílios particulares permanentes com responsável do sexo feminino - Não existe identificação do logradouro|
|V807|Moradores em domicílios particulares permanentes com responsável do sexo masculino - Existe iluminação pública|
|V808|Moradores em domicílios particulares permanentes com responsável do sexo masculino - Não existe iluminação pública|
|V809|Moradores em domicílios particulares permanentes com responsável do sexo feminino - Existe iluminação pública|
|V810|Moradores em domicílios particulares permanentes com responsável do sexo feminino - Não existe iluminação pública|
|V811|Moradores em domicílios particulares permanentes com responsável do sexo masculino - Existe pavimentação|
|V812|Moradores em domicílios particulares permanentes com responsável do sexo masculino - Não existe pavimentação|
|V813|Moradores em domicílios particulares permanentes com responsável do sexo feminino - Existe pavimentação|
|V814|Moradores em domicílios particulares permanentes com responsável do sexo feminino - Não existe pavimentação|
|V815|Moradores em domicílios particulares permanentes com responsável do sexo masculino - Existe calçada|
|V816|Moradores em domicílios particulares permanentes com responsável do sexo masculino - Não existe calçada|
|V817|Moradores em domicílios particulares permanentes com responsável do sexo feminino - Existe calçada|
|V818|Moradores em domicílios particulares permanentes com responsável do sexo feminino - Não existe calçada|
|V819|Moradores em domicílios particulares permanentes com responsável do sexo masculino - Existe meio-fio/guia|
|V820|Moradores em domicílios particulares permanentes com responsável do sexo masculino - Não existe meio-fio/guia|
|V821|Moradores em domicílios particulares permanentes com responsável do sexo feminino - Existe meio-fio/guia|
|V822|Moradores em domicílios particulares permanentes com responsável do sexo feminino - Não existe meio-fio/guia|
|V823|Moradores em domicílios particulares permanentes com responsável do sexo masculino - Existe bueiro/boca-de-lobo|
|V824|Moradores em domicílios particulares permanentes com responsável do sexo masculino - Não existe bueiro/boca-de-lobo|
|V825|Moradores em domicílios particulares permanentes com responsável do sexo feminino - Existe bueiro/boca-de-lobo|
|V826|Moradores em domicílios particulares permanentes com responsável do sexo feminino - Não existe bueiro/boca-de-lobo|
|V827|Moradores em domicílios particulares permanentes com responsável do sexo masculino - Existe rampa para cadeirante|
|V828|Moradores em domicílios particulares permanentes com responsável do sexo masculino - Não existe rampa para cadeirante|
|V829|Moradores em domicílios particulares permanentes com responsável do sexo feminino - Existe rampa para cadeirante|
|V830|Moradores em domicílios particulares permanentes com responsável do sexo feminino - Não existe rampa para cadeirante|
|V831|Moradores em domicílios particulares permanentes com responsável do sexo masculino - Existe arborização|
|V832|Moradores em domicílios particulares permanentes com responsável do sexo masculino - Não existe arborização|
|V833|Moradores em domicílios particulares permanentes com responsável do sexo feminino - Existe arborização|
|V834|Moradores em domicílios particulares permanentes com responsável do sexo feminino - Não existe arborização|
|V835|Moradores em domicílios particulares permanentes com responsável do sexo masculino - Existe esgoto a céu aberto|
|V836|Moradores em domicílios particulares permanentes com responsável do sexo masculino - Não existe esgoto a céu aberto|
|V837|Moradores em domicílios particulares permanentes com responsável do sexo feminino - Existe esgoto a céu aberto|
|V838|Moradores em domicílios particulares permanentes com responsável do sexo feminino - Não existe esgoto a céu aberto|
|V839|Moradores em domicílios particulares permanentes com responsável do sexo masculino - Existe lixo acumulado nos logradouros|
|V840|Moradores em domicílios particulares permanentes com responsável do sexo masculino - Não existe lixo acumulado nos logradouros|
|V841|Moradores em domicílios particulares permanentes com responsável do sexo feminino - Existe lixo acumulado nos logradouros|
|V842|Moradores em domicílios particulares permanentes com responsável do sexo feminino - Não existe lixo acumulado nos logradouros|

## 6.26. Arquivo Entorno 05 {#dic_ent05}

### Fonte de dados

- Entorno 05\_UF.xls ou Entorno 05\_UF.csv

### Dicionário de dados

|Nome da variável|Descrição da variável|
|-|-|
|Cod\_setor|Código do setor|
|V1005|Código de situação do setor|
|V843|Moradores em domicílios particulares permanentes com menos de 1 ano de idade - Existe identificação do logradouro|
|V844|Moradores em domicílios particulares permanentes com menos de 1 ano de idade - Não existe identificação do logradouro|
|V845|Moradores em domicílios particulares permanentes de 1 a 4 anos de idade - Existe identificação do logradouro|
|V846|Moradores em domicílios particulares permanentes de 1 a 4 anos de idade - Não existe identificação do logradouro|
|V847|Moradores em domicílios particulares permanentes de 5 a 9 anos de idade - Existe identificação do logradouro|
|V848|Moradores em domicílios particulares permanentes de 5 a 9 anos de idade - Não existe identificação do logradouro|
|V849|Moradores em domicílios particulares permanentes de 10 a 14 anos de idade - Existe identificação do logradouro|
|V850|Moradores em domicílios particulares permanentes de 10 a 14 anos de idade - Não existe identificação do logradouro|
|V851|Moradores em domicílios particulares permanentes de 15 a 59 anos de idade - Existe identificação do logradouro|
|V852|Moradores em domicílios particulares permanentes de 15 a 59 anos de idade - Não existe identificação do logradouro|
|V853|Moradores em domicílios particulares permanentes de 60 anos ou mais de idade - Existe identificação do logradouro|
|V854|Moradores em domicílios particulares permanentes de 60 anos ou mais de idade - Não existe identificação do logradouro|
|V855|Moradores em domicílios particulares permanentes com menos de 1 ano de idade - Existe iluminação pública|
|V856|Moradores em domicílios particulares permanentes com menos de 1 ano de idade - Não existe iluminação pública|
|V857|Moradores em domicílios particulares permanentes de 1 a 4 anos de idade - Existe iluminação pública|
|V858|Moradores em domicílios particulares permanentes de 1 a 4 anos de idade - Não existe iluminação pública|
|V859|Moradores em domicílios particulares permanentes de 5 a 9 anos de idade - Existe iluminação pública|
|V860|Moradores em domicílios particulares permanentes de 5 a 9 anos de idade - Não existe iluminação pública|
|V861|Moradores em domicílios particulares permanentes de 10 a 14 anos de idade - Existe iluminação pública|
|V862|Moradores em domicílios particulares permanentes de 10 a 14 anos de idade - Não existe iluminação pública|
|V863|Moradores em domicílios particulares permanentes de 15 a 59 anos de idade - Existe iluminação pública|
|V864|Moradores em domicílios particulares permanentes de 15 a 59 anos de idade - Não existe iluminação pública|
|V865|Moradores em domicílios particulares permanentes de 60 anos ou mais de idade - Existe iluminação pública|
|V866|Moradores em domicílios particulares permanentes de 60 anos ou mais de idade - Não existe iluminação pública|
|V867|Moradores em domicílios particulares permanentes com menos de 1 ano de idade - Existe pavimentação|
|V868|Moradores em domicílios particulares permanentes com menos de 1 ano de idade - Não existe pavimentação|
|V869|Moradores em domicílios particulares permanentes de 1 a 4 anos de idade - Existe pavimentação|
|V870|Moradores em domicílios particulares permanentes de 1 a 4 anos de idade - Não existe pavimentação|
|V871|Moradores em domicílios particulares permanentes de 5 a 9 anos de idade - Existe pavimentação|
|V872|Moradores em domicílios particulares permanentes de 5 a 9 anos de idade - Não existe pavimentação|
|V873|Moradores em domicílios particulares permanentes de 10 a 14 anos de idade - Existe pavimentação|
|V874|Moradores em domicílios particulares permanentes de 10 a 14 anos de idade - Não existe pavimentação|
|V875|Moradores em domicílios particulares permanentes de 15 a 59 anos de idade - Existe pavimentação|
|V876|Moradores em domicílios particulares permanentes de 15 a 59 anos de idade - Não existe pavimentação|
|V877|Moradores em domicílios particulares permanentes de 60 anos ou mais de idade - Existe pavimentação|
|V878|Moradores em domicílios particulares permanentes de 60 anos ou mais de idade - Não existe pavimentação|
|V879|Moradores em domicílios particulares permanentes com menos de 1 ano de idade - Existe calçada|
|V880|Moradores em domicílios particulares permanentes com menos de 1 ano de idade - Não existe calçada|
|V881|Moradores em domicílios particulares permanentes de 1 a 4 anos de idade - Existe calçada|
|V882|Moradores em domicílios particulares permanentes de 1 a 4 anos de idade - Não existe calçada|
|V883|Moradores em domicílios particulares permanentes de 5 a 9 anos de idade - Existe calçada|
|V884|Moradores em domicílios particulares permanentes de 5 a 9 anos de idade - Não existe calçada|
|V885|Moradores em domicílios particulares permanentes de 10 a 14 anos de idade - Existe calçada|
|V886|Moradores em domicílios particulares permanentes de 10 a 14 anos de idade - Não existe calçada|
|V887|Moradores em domicílios particulares permanentes de 15 a 59 anos de idade - Existe calçada|
|V888|Moradores em domicílios particulares permanentes de 15 a 59 anos de idade - Não existe calçada|
|V889|Moradores em domicílios particulares permanentes de 60 anos ou mais de idade - Existe calçada|
|V890|Moradores em domicílios particulares permanentes de 60 anos ou mais de idade - Não existe calçada|
|V891|Moradores em domicílios particulares permanentes com menos de 1 ano de idade - Existe meio-fio/guia|
|V892|Moradores em domicílios particulares permanentes com menos de 1 ano de idade - Não existe meio-fio/guia|
|V893|Moradores em domicílios particulares permanentes de 1 a 4 anos de idade - Existe meio-fio/guia|
|V894|Moradores em domicílios particulares permanentes de 1 a 4 anos de idade - Não existe meio-fio/guia|
|V895|Moradores em domicílios particulares permanentes de 5 a 9 anos de idade - Existe meio-fio/guia|
|V896|Moradores em domicílios particulares permanentes de 5 a 9 anos de idade - Não existe meio-fio/guia|
|V897|Moradores em domicílios particulares permanentes de 10 a 14 anos de idade - Existe meio-fio/guia|
|V898|Moradores em domicílios particulares permanentes de 10 a 14 anos de idade - Não existe meio-fio/guia|
|V899|Moradores em domicílios particulares permanentes de 15 a 59 anos de idade - Existe meio-fio/guia|
|V900|Moradores em domicílios particulares permanentes de 15 a 59 anos de idade - Não existe meio-fio/guia|
|V901|Moradores em domicílios particulares permanentes de 60 anos ou mais de idade - Existe meio-fio/guia|
|V902|Moradores em domicílios particulares permanentes de 60 anos ou mais de idade - Não existe meio-fio/guia|
|V903|Moradores em domicílios particulares permanentes com menos de 1 ano de idade - Existe bueiro/boca-de-lobo|
|V904|Moradores em domicílios particulares permanentes com menos de 1 ano de idade - Não existe bueiro/boca-de-lobo|
|V905|Moradores em domicílios particulares permanentes de 1 a 4 anos de idade - Existe bueiro/boca-de-lobo|
|V906|Moradores em domicílios particulares permanentes de 1 a 4 anos de idade - Não existe bueiro/boca-de-lobo|
|V907|Moradores em domicílios particulares permanentes de 5 a 9 anos de idade - Existe bueiro/boca-de-lobo|
|V908|Moradores em domicílios particulares permanentes de 5 a 9 anos de idade - Não existe bueiro/boca-de-lobo|
|V909|Moradores em domicílios particulares permanentes de 10 a 14 anos de idade - Existe bueiro/boca-de-lobo|
|V910|Moradores em domicílios particulares permanentes de 10 a 14 anos de idade - Não existe bueiro/boca-de-lobo|
|V911|Moradores em domicílios particulares permanentes de 15 a 59 anos de idade - Existe bueiro/boca-de-lobo|
|V912|Moradores em domicílios particulares permanentes de 15 a 59 anos de idade - Não existe bueiro/boca-de-lobo|
|V913|Moradores em domicílios particulares permanentes de 60 anos ou mais de idade - Existe bueiro/boca-de-lobo|
|V914|Moradores em domicílios particulares permanentes de 60 anos ou mais de idade - Não existe bueiro/boca-de-lobo|
|V915|Moradores em domicílios particulares permanentes com menos de 1 ano de idade - Existe rampa para cadeirante|
|V916|Moradores em domicílios particulares permanentes com menos de 1 ano de idade - Não existe rampa para cadeirante|
|V917|Moradores em domicílios particulares permanentes de 1 a 4 anos de idade - Existe rampa para cadeirante|
|V918|Moradores em domicílios particulares permanentes de 1 a 4 anos de idade - Não existe rampa para cadeirante|
|V919|Moradores em domicílios particulares permanentes de 5 a 9 anos de idade - Existe rampa para cadeirante|
|V920|Moradores em domicílios particulares permanentes de 5 a 9 anos de idade - Não existe rampa para cadeirante|
|V921|Moradores em domicílios particulares permanentes de 10 a 14 anos de idade - Existe rampa para cadeirante|
|V922|Moradores em domicílios particulares permanentes de 10 a 14 anos de idade - Não existe rampa para cadeirante|
|V923|Moradores em domicílios particulares permanentes de 15 a 59 anos de idade - Existe rampa para cadeirante|
|V924|Moradores em domicílios particulares permanentes de 15 a 59 anos de idade - Não existe rampa para cadeirante|
|V925|Moradores em domicílios particulares permanentes de 60 anos ou mais de idade - Existe rampa para cadeirante|
|V926|Moradores em domicílios particulares permanentes de 60 anos ou mais de idade - Não existe rampa para cadeirante|
|V927|Moradores em domicílios particulares permanentes com menos de 1 ano de idade - Existe arborização|
|V928|Moradores em domicílios particulares permanentes com menos de 1 ano de idade - Não existe arborização|
|V929|Moradores em domicílios particulares permanentes de 1 a 4 anos de idade - Existe arborização|
|V930|Moradores em domicílios particulares permanentes de 1 a 4 anos de idade - Não existe arborização|
|V931|Moradores em domicílios particulares permanentes de 5 a 9 anos de idade - Existe arborização|
|V932|Moradores em domicílios particulares permanentes de 5 a 9 anos de idade - Não existe arborização|
|V933|Moradores em domicílios particulares permanentes de 10 a 14 anos de idade - Existe arborização|
|V934|Moradores em domicílios particulares permanentes de 10 a 14 anos de idade - Não existe arborização|
|V935|Moradores em domicílios particulares permanentes de 15 a 59 anos de idade - Existe arborização|
|V936|Moradores em domicílios particulares permanentes de 15 a 59 anos de idade - Não existe arborização|
|V937|Moradores em domicílios particulares permanentes de 60 anos ou mais de idade - Existe arborização|
|V938|Moradores em domicílios particulares permanentes de 60 anos ou mais de idade - Não existe arborização|
|V939|Moradores em domicílios particulares permanentes com menos de 1 ano de idade - Existe esgoto a céu aberto|
|V940|Moradores em domicílios particulares permanentes com menos de 1 ano de idade - Não existe esgoto a céu aberto|
|V941|Moradores em domicílios particulares permanentes de 1 a 4 anos de idade - Existe esgoto a céu aberto|
|V942|Moradores em domicílios particulares permanentes de 1 a 4 anos de idade - Não existe esgoto a céu aberto|
|V943|Moradores em domicílios particulares permanentes de 5 a 9 anos de idade - Existe esgoto a céu aberto|
|V944|Moradores em domicílios particulares permanentes de 5 a 9 anos de idade - Não existe esgoto a céu aberto|
|V945|Moradores em domicílios particulares permanentes de 10 a 14 anos de idade - Existe esgoto a céu aberto|
|V946|Moradores em domicílios particulares permanentes de 10 a 14 anos de idade - Não existe esgoto a céu aberto|
|V947|Moradores em domicílios particulares permanentes de 15 a 59 anos de idade - Existe esgoto a céu aberto|
|V948|Moradores em domicílios particulares permanentes de 15 a 59 anos de idade - Não existe esgoto a céu aberto|
|V949|Moradores em domicílios particulares permanentes de 60 anos ou mais de idade - Existe esgoto a céu aberto|
|V950|Moradores em domicílios particulares permanentes de 60 anos ou mais de idade - Não existe esgoto a céu aberto|
|V951|Moradores em domicílios particulares permanentes com menos de 1 ano de idade - Existe lixo acumulado nos logradouros|
|V952|Moradores em domicílios particulares permanentes com menos de 1 ano de idade - Não existe lixo acumulado nos logradouros|
|V953|Moradores em domicílios particulares permanentes de 1 a 4 anos de idade - Existe lixo acumulado nos logradouros|
|V954|Moradores em domicílios particulares permanentes de 1 a 4 anos de idade - Não existe lixo acumulado nos logradouros|
|V955|Moradores em domicílios particulares permanentes de 5 a 9 anos de idade - Existe lixo acumulado nos logradouros|
|V956|Moradores em domicílios particulares permanentes de 5 a 9 anos de idade - Não existe lixo acumulado nos logradouros|
|V957|Moradores em domicílios particulares permanentes de 10 a 14 anos de idade - Existe lixo acumulado nos logradouros|
|V958|Moradores em domicílios particulares permanentes de 10 a 14 anos de idade - Não existe lixo acumulado nos logradouros|
|V959|Moradores em domicílios particulares permanentes de 15 a 59 anos de idade - Existe lixo acumulado nos logradouros|
|V960|Moradores em domicílios particulares permanentes de 15 a 59 anos de idade - Não existe lixo acumulado nos logradouros|
|V961|Moradores em domicílios particulares permanentes de 60 anos ou mais de idade - Existe lixo acumulado nos logradouros|
|V962|Moradores em domicílios particulares permanentes de 60 anos ou mais de idade - Não existe lixo acumulado nos logradouros|
|V963|Moradores em domicílios particulares permanentes de cor ou raça branca - Existe identificação do logradouro|
|V964|Moradores em domicílios particulares permanentes de cor ou raça branca - Não existe identificação do logradouro|
|V965|Moradores em domicílios particulares permanentes de cor ou raça preta - Existe identificação do logradouro|
|V966|Moradores em domicílios particulares permanentes de cor ou raça preta - Não existe identificação do logradouro|
|V967|Moradores em domicílios particulares permanentes de cor ou raça amarela - Existe identificação do logradouro|
|V968|Moradores em domicílios particulares permanentes de cor ou raça amarela - Não existe identificação do logradouro|
|V969|Moradores em domicílios particulares permanentes de cor ou raça parda - Existe identificação do logradouro|
|V970|Moradores em domicílios particulares permanentes de cor ou raça parda -Não existe identificação do logradouro|
|V971|Moradores em domicílios particulares permanentes de cor ou raça indígena - Existe identificação do logradouro|
|V972|Moradores em domicílios particulares permanentes de cor ou raça indígena - Não existe identificação do logradouro|
|V973|Moradores em domicílios particulares permanentes de cor ou raça branca - Existe iluminação pública|
|V974|Moradores em domicílios particulares permanentes de cor ou raça branca - Não existe iluminação pública|
|V975|Moradores em domicílios particulares permanentes de cor ou raça preta - Existe iluminação pública|
|V976|Moradores em domicílios particulares permanentes de cor ou raça preta - Não existe iluminação pública|
|V977|Moradores em domicílios particulares permanentes de cor ou raça amarela - Existe iluminação pública|
|V978|Moradores em domicílios particulares permanentes de cor ou raça amarela - Não existe iluminação pública|
|V979|Moradores em domicílios particulares permanentes de cor ou raça parda - Existe iluminação pública|
|V980|Moradores em domicílios particulares permanentes de cor ou raça parda - Não existe iluminação pública|
|V981|Moradores em domicílios particulares permanentes de cor ou raça indígena - Existe iluminação pública|
|V982|Moradores em domicílios particulares permanentes de cor ou raça indígena - Não existe iluminação pública|
|V983|Moradores em domicílios particulares permanentes de cor ou raça branca - Existe pavimentação|
|V984|Moradores em domicílios particulares permanentes de cor ou raça branca - Não existe pavimentação|
|V985|Moradores em domicílios particulares permanentes de cor ou raça preta - Existe pavimentação|
|V986|Moradores em domicílios particulares permanentes de cor ou raça preta - Não existe pavimentação|
|V987|Moradores em domicílios particulares permanentes de cor ou raça amarela - Existe pavimentação|
|V988|Moradores em domicílios particulares permanentes de cor ou raça amarela - Não existe pavimentação|
|V989|Moradores em domicílios particulares permanentes de cor ou raça parda - Existe pavimentação|
|V990|Moradores em domicílios particulares permanentes de cor ou raça parda - Não existe pavimentação|
|V991|Moradores em domicílios particulares permanentes de cor ou raça indígena - Existe pavimentação|
|V992|Moradores em domicílios particulares permanentes de cor ou raça indígena - Não existe pavimentação|
|V993|Moradores em domicílios particulares permanentes de cor ou raça branca - Existe calçada|
|V994|Moradores em domicílios particulares permanentes de cor ou raça branca - Não existe calçada|
|V995|Moradores em domicílios particulares permanentes de cor ou raça preta - Existe calçada|
|V996|Moradores em domicílios particulares permanentes de cor ou raça preta - Não existe calçada|
|V997|Moradores em domicílios particulares permanentes de cor ou raça amarela - Existe calçada|
|V998|Moradores em domicílios particulares permanentes de cor ou raça amarela - Não existe calçada|
|V999|Moradores em domicílios particulares permanentes de cor ou raça parda - Existe calçada|
|V1000|Moradores em domicílios particulares permanentes de cor ou raça parda - Não existe calçada|
|V1001|Moradores em domicílios particulares permanentes de cor ou raça indígena - Existe calçada|
|V1002|Moradores em domicílios particulares permanentes de cor ou raça indígena - Não existe calçada|
|V1003|Moradores em domicílios particulares permanentes de cor ou raça branca - Existe meio-fio/guia|
|V1004|Moradores em domicílios particulares permanentes de cor ou raça branca - Não existe meio-fio/guia|
|V1005|Moradores em domicílios particulares permanentes de cor ou raça preta - Existe meio-fio/guia|
|V1006|Moradores em domicílios particulares permanentes de cor ou raça preta - Não existe meio-fio/guia|
|V1007|Moradores em domicílios particulares permanentes de cor ou raça amarela - Existe meio-fio/guia|
|V1008|Moradores em domicílios particulares permanentes de cor ou raça amarela - Não existe meio-fio/guia|
|V1009|Moradores em domicílios particulares permanentes de cor ou raça parda - Existe meio-fio/guia|
|V1010|Moradores em domicílios particulares permanentes de cor ou raça parda - Não existe meio-fio/guia|
|V1011|Moradores em domicílios particulares permanentes de cor ou raça indígena - Existe meio-fio/guia|
|V1012|Moradores em domicílios particulares permanentes de cor ou raça indígena - Não existe meio-fio/guia|
|V1013|Moradores em domicílios particulares permanentes de cor ou raça branca - Existe bueiro/boca-de-lobo|
|V1014|Moradores em domicílios particulares permanentes de cor ou raça branca - Não existe bueiro/boca-de-lobo|
|V1015|Moradores em domicílios particulares permanentes de cor ou raça preta - Existe bueiro/boca-de-lobo|
|V1016|Moradores em domicílios particulares permanentes de cor ou raça preta - Não existe bueiro/boca-de-lobo|
|V1017|Moradores em domicílios particulares permanentes de cor ou raça amarela - Existe bueiro/boca-de-lobo|
|V1018|Moradores em domicílios particulares permanentes de cor ou raça amarela - Não existe bueiro/boca-de-lobo|
|V1019|Moradores em domicílios particulares permanentes de cor ou raça parda - Existe bueiro/boca-de-lobo|
|V1020|Moradores em domicílios particulares permanentes de cor ou raça parda - Não existe bueiro/boca-de-lobo|
|V1021|Moradores em domicílios particulares permanentes de cor ou raça indígena - Existe bueiro/boca-de-lobo|
|V1022|Moradores em domicílios particulares permanentes de cor ou raça indígena - Não existe bueiro/boca-de-lobo|
|V1023|Moradores em domicílios particulares permanentes de cor ou raça branca - Existe rampa para cadeirante|
|V1024|Moradores em domicílios particulares permanentes de cor ou raça branca - Não existe rampa para cadeirante|
|V1025|Moradores em domicílios particulares permanentes de cor ou raça preta - Existe rampa para cadeirante|
|V1026|Moradores em domicílios particulares permanentes de cor ou raça preta - Não existe rampa para cadeirante|
|V1027|Moradores em domicílios particulares permanentes de cor ou raça amarela - Existe rampa para cadeirante|
|V1028|Moradores em domicílios particulares permanentes de cor ou raça amarela - Não existe rampa para cadeirante|
|V1029|Moradores em domicílios particulares permanentes de cor ou raça parda - Existe rampa para cadeirante|
|V1030|Moradores em domicílios particulares permanentes de cor ou raça parda - Não existe rampa para cadeirante|
|V1031|Moradores em domicílios particulares permanentes de cor ou raça indígena - Existe rampa para cadeirante|
|V1032|Moradores em domicílios particulares permanentes de cor ou raça indígena - Não existe rampa para cadeirante|
|V1033|Moradores em domicílios particulares permanentes de cor ou raça branca - Existe arborização|
|V1034|Moradores em domicílios particulares permanentes de cor ou raça branca - Não existe arborização|
|V1035|Moradores em domicílios particulares permanentes de cor ou raça preta - Existe arborização|
|V1036|Moradores em domicílios particulares permanentes de cor ou raça preta - Não existe arborização|
|V1037|Moradores em domicílios particulares permanentes de cor ou raça amarela - Existe arborização|
|V1038|Moradores em domicílios particulares permanentes de cor ou raça amarela - Não existe arborização|
|V1039|Moradores em domicílios particulares permanentes de cor ou raça parda - Existe arborização|
|V1040|Moradores em domicílios particulares permanentes de cor ou raça parda - Não existe arborização|
|V1041|Moradores em domicílios particulares permanentes de cor ou raça indígena - Existe arborização|
|V1042|Moradores em domicílios particulares permanentes de cor ou raça indígena - Não existe arborização|
|V1043|Moradores em domicílios particulares permanentes de cor ou raça branca - Existe esgoto a céu aberto|
|V1044|Moradores em domicílios particulares permanentes de cor ou raça branca - Não existe esgoto a céu aberto|
|V1045|Moradores em domicílios particulares permanentes de cor ou raça preta - Existe esgoto a céu aberto|
|V1046|Moradores em domicílios particulares permanentes de cor ou raça preta - Não existe esgoto a céu aberto|
|V1047|Moradores em domicílios particulares permanentes de cor ou raça amarela - Existe esgoto a céu aberto|
|V1048|Moradores em domicílios particulares permanentes de cor ou raça amarela - Não existe esgoto a céu aberto|
|V1049|Moradores em domicílios particulares permanentes de cor ou raça parda - Existe esgoto a céu aberto|
|V1050|Moradores em domicílios particulares permanentes de cor ou raça parda - Não existe esgoto a céu aberto|
|V1051|Moradores em domicílios particulares permanentes de cor ou raça indígena - Existe esgoto a céu aberto|
|V1052|Moradores em domicílios particulares permanentes de cor ou raça indígena - Não existe esgoto a céu aberto|
|V1053|Moradores em domicílios particulares permanentes de cor ou raça branca - Existe lixo acumulado nos logradouros|
|V1054|Moradores em domicílios particulares permanentes de cor ou raça branca - Não existe lixo acumulado nos logradouros|
|V1055|Moradores em domicílios particulares permanentes de cor ou raça preta - Existe lixo acumulado nos logradouros|
|V1056|Moradores em domicílios particulares permanentes de cor ou raça preta - Não existe lixo acumulado nos logradouros|
|V1057|Moradores em domicílios particulares permanentes de cor ou raça amarela - Existe lixo acumulado nos logradouros|
|V1058|Moradores em domicílios particulares permanentes de cor ou raça amarela - Não existe lixo acumulado nos logradouros|
|V1059|Moradores em domicílios particulares permanentes de cor ou raça parda - Existe lixo acumulado nos logradouros|
|V1060|Moradores em domicílios particulares permanentes de cor ou raça parda - Não existe lixo acumulado nos logradouros|
|V1061|Moradores em domicílios particulares permanentes de cor ou raça indígena - Existe lixo acumulado nos logradouros|
|V1062|Moradores em domicílios particulares permanentes de cor ou raça indígena - Não existe lixo acumulado nos logradouros|

## 7. Representação tabular das variáveis {#tabular}

A título de exemplo, as 2 tabelas apresentadas a seguir fornecem uma visão geral do conjunto de variáveis que compõem o arquivo com dados por setores censitários do Censo Demográfico 2010, ora divulgados.

Nas tabelas, no lugar dos valores numéricos, foram colocados os nomes das variáveis e, em algumas células, uma expressão que mostra como uma tabela pode ser completada, com a adição de variáveis não incluídas no arquivo agregado, mas que podem ser criadas a partir das variáveis existentes.

**Tabela 1 — Domicílios particulares permanentes, segundo a condição de ocupação**

|Condição de ocupação|Domicílios particulares permanentes|
|-|-|
|**Total**|**V002**|
|***Condição de ocupação***|***V006 +  V007 +  V008  +  V009  +  V010  +  V011***|
|Próprio|V006  +  V007|
|*Já quitado*|*V006*|
|*Em aquisição*|*V007*|
|Alugado|V008|
|Cedido|V009  +  V010|
|*Por empregador*|*V009*|
|*De outra forma*|*V010*|
|Outra|V011|

*Nota*: As variáveis referem-se a planilha Unidade II - Domicílios.

**Tabela 2 — População residente por sexo, segundo os grupos de idade**

|Grupos de idade|Total (1)|Homens (2)|Mulheres (3)|
|-|-|-|-|
|Total|V001|V001|V001|
|Menos de 1 ano|V022|V022|V022|
|1 ano|V035|V035|V035|
|2 anos|V036|V036|V036|
|3 anos|V037|V037|V037|
|4 anos|V038|V038|V038|
|5 anos|V039|V039|V039|
|6 anos|V040|V040|V040|
|7 anos|V041|V041|V041|
|8 anos|V042|V042|V042|
|9 anos|V043|V043|V043|
|10 anos|V044|V044|V044|
|11 anos|V045|V045|V045|
|12 anos|V046|V046|V046|
|13 anos|V047|V047|V047|
|14 anos|V048|V048|V048|
|15 anos|V049|V049|V049|
|16 anos|V050|V050|V050|
|17 anos|V051|V051|V051|
|18 anos|V052|V052|V052|
|19 anos|V053|V053|V053|
|20 anos|V054|V054|V054|
|21 anos|V055|V055|V055|
|22 anos|V056|V056|V056|
|23 anos|V057|V057|V057|
|24 anos|V058|V058|V058|
|25 a 29 anos|V059  + V060 + V061 + V062 + V063|V059 + V060 + V061 + V062 + V063|V059 + V060 + V061 + V062 + V063|
|30 a 34 anos|V064  + V065 + V066 + V067 + V068|V064 + V065 + V066 + V067 + V068|V064 + V065 + V066 + V067 + V068|
|35 a 39 anos|V069  + V070 + V071 + V072 + V073|V069 + V070 + V071 + V072 + V073|V069 + V070 + V071 + V072 + V073|
|40 a 44 anos|V074  + V075 + V076 + V077 + V078|V074 + V075 + V076 + V077 + V078|V074 + V075 + V076 + V077 + V078|
|45 a 49 anos|V079  + V080 + V081 + V082 + V083|V079 + V080 + V081 + V082 + V083|V079 + V080 + V081 + V082 + V083|
|50 a 54 anos|V084  + V085 + V086 + V087 + V088|V084 + V085 + V086 + V087 + V088|V084 + V085 + V086 + V087 + V088|
|55 a 59 anos|V089  + V090 + V091 + V092 + V093|V089 + V090 + V091 + V092 + V093|V089 + V090 + V091 + V092 + V093|
|60 a 64 anos|V094 + V095 + V096 + V097 + V098|V094 + V095 + V096 + V097 + V098|V094 + V095 + V096 + V097 + V098|
|65 a 69 anos|V099 + V100 + V101 + V102 + V103|V099 + V100 + V101 + V102 + V103|V099 + V100 + V101 + V102 + V103|
|70 a 74 anos|V104 + V105 + V106 + V107 + V108|V104 + V105 + V106 + V107 + V108|V104 + V105 + V106 + V107 + V108|
|75 a 79 anos|V109 + V110 + V111 + V112 + V113|V109 + V110 + V111 + V112 + V113|V109 + V110 + V111 + V112 + V113|
|80 a 84 anos|V114 + V115 + V116 + V117 + V118|V114 + V115 + V116 + V117 + V118|V114 + V115 + V116 + V117 + V118|
|85 a 89 anos|V119 + V120 + V121 + V122 + V123|V119 + V120 + V121 + V122 + V123|V119 + V120 + V121 + V122 + V123|
|90 a 94 anos|V124 + V125 + V126 + V127 + V128|V124 + V125 + V126 + V127 + V128|V124 + V125 + V126 + V127 + V128|
|95 a 99 anos|V129 + V130 + V131 + V132 + V133|V129 + V130 + V131 + V132 + V133|V129 + V130 + V131 + V132 + V133|
|100 anos ou mais|V134|V134|V134|

*Notas:*

* (1) As variáveis referem-se a planilha Unidade V - Pessoas por idade.
* (2) As variáveis referem-se a planilha Unidade V.I - Pessoas por idade (HOMENS).
* (3) As variáveis referem-se a planilha Unidade V.II - Pessoas por idade (MULHERES).



## 8\. Referências {#referencias}

ALBIERI, S. A ausência de resposta em pesquisas: uma aplicação de métodos de imputação. Rio de Janeiro: Instituto Nacional de Matemática Pura e Aplicada - IMPA, 1992. 138 p. (Informes de matemática. Série D, 48). Disponível em: [ftp://ftp.dpe.ibge.gov.br/Dissertacao-tese/Dissertacao\_Sonia\_Albieri.pdf](ftp://ftp.dpe.ibge.gov.br/Dissertacao-tese/Dissertacao_Sonia_Albieri.pdf). Acesso em: out. 2011.

ALBIERI, S.; FREITAS, M. P. S. de. Censo demográfico de 2010: plano amostral para a coleta de dados. Rio de Janeiro: IBGE, 2010. 34 p. Disponível em: [file://chi00535526/Publico\_IBGE/SISTDOC/N0276.pdf](file://chi00535526/Publico_IBGE/SISTDOC/N0276.pdf). Acesso em: out. 2011.

ASÍ hicimos el II Conteo de Población y Vivienda 2005. Aguascalientes: Instituto Nacional de Estadística y Geografia - INEGI, 2005. Disponível em: [http://www.inegi.org.mx/est/contenidos/proyectos/ccpv/cpv2005/default.aspx?\&\_s=est\&\_c=10390.](http://www.inegi.org.mx/est/contenidos/proyectos/ccpv/cpv2005/default.aspx?&_s=est&_c=10390.). Acesso em: out. 2011.

CENSOS 2007: inovações e impactos nos sistemas de informações estatísticas e geográficas do Brasil. Rio de Janeiro: IBGE, 2008. 72 p. Disponível em: [http://censos2007.ibge.gov.br/Censos2007\_Inovacoes\_web.pdf](http://censos2007.ibge.gov.br/Censos2007_Inovacoes_web.pdf). Acesso em: out. 2011.

CONFERENCE of European Statisticians Recommendations for the 2010 Censuses of Population and Housing. Geneva: United Nations, 2006. 200 p. Trabalho elaborado pela Conference of European Statistics - CES, da United Nations Economic Commission For Europe - UNECE, com participação da Statistical Office of the European Communities - Eurostat. Disponível em: [http://webrzs.stat.gov.rs/axd/POPIS2011/preporukeE.pdf](http://webrzs.stat.gov.rs/axd/POPIS2011/preporukeE.pdf). Acesso em: out. 2011.

DICK, P. The census of Canada: the dwelling classification study. In: JOINT STATISTICAL MEETINGS, 3., 2002, New York. Proceedings... Alexandria \[Estados Unidos]: American Statistical Association - ASA, 2002. p. 782-787. Disponível em: [http://www.amstat.org/sections/srms/proceedings/y2002/Files/JSM2002-001010.pdf](http://www.amstat.org/sections/srms/proceedings/y2002/Files/JSM2002-001010.pdf). Acesso em: abr. 2011.

METODOLOGIA de Estimação do Número de Moradores em domicílios Fechados. Rio de Janeiro: IBGE, 2007. 3 p. Disponível em: [http://www.ibge.gov.br/home/estatistica/populacao/contagem2007/estimacao\_fechados.pdf](http://www.ibge.gov.br/home/estatistica/populacao/contagem2007/estimacao_fechados.pdf). Acesso em: out. 2011.

METODOLOGIA do Censo Demográfico 2000. Rio de Janeiro: IBGE, 2003. 574 p. (Série relatórios metodológicos, 25). Acompanha 1 CD-ROM. Disponível em: [http://www.ibge.gov.br/home/estatistica/populacao/censo2000/metodologia/default.shtm](http://www.ibge.gov.br/home/estatistica/populacao/censo2000/metodologia/default.shtm). Acesso em: out. 2011.

PRINCIPLES and recommendations for population and housing censuses: revision 2. New York: United Nations, Department of Economic and Social Affairs, 2008. 420 p. (Statistical papers. Series M, n. 67/rev.2). Disponível em: [http://unstats.un.org/unsd/demographic/sources/census/docs/P\&R\_Rev2.pdf](http://unstats.un.org/unsd/demographic/sources/census/docs/P&R_Rev2.pdf). Acesso em: out. 2011.

RAHMAN, N.; GOLDRING, S. Modelling census household non-response. In: ISI Satellite Meeting, 56., 2007, Lisboa. Papers... The Hague: International Statistical Institute - ISI, 2007. Disponível em: [http://www.s3ri.soton.ac.uk/isi2007/papers/Paper13.pdf](http://www.s3ri.soton.ac.uk/isi2007/papers/Paper13.pdf). Acesso em: out. 2011.

TREWIN, D. Census dictionary: Australia 2006 (reissue). Canberra: Australian Bureau of Statistics, 2006. 254 p. Disponível em: [http://www.ausstats.abs.gov.au/ausstats/subscriber.nsf/0/BF9BEC7E072FDE1ECA257230001C24D8/$File/29010\_2006%20(reissue).pdf](http://www.ausstats.abs.gov.au/ausstats/subscriber.nsf/0/BF9BEC7E072FDE1ECA257230001C24D8/$File/29010_2006%20(reissue).pdf). Acesso em: out. 2011.

