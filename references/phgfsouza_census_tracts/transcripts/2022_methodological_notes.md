# Censo Demográfico 2022 - Agregados por Setores Censitários - Nota metodológica n. 06

## Descrição

Este arquivo é uma versão em Markdown da Nota metodológica n. 06 dos Agregados por Setores Censitários do Censo Demográfico 2022. Como o arquivo original está em formato PDF, o objetivo da conversão é disponibilizar os dados em formato mais facilmente *machine-readable* para facilitar o uso por humanos e agentes de IA.

Arquivo gerado em: 2026-04-28.

## Fonte de dados

A fonte principal desta transcrição é:

- Ministério do Planejamento e Orçamento. Instituto Brasileiro de Geografia e Estatística - IBGE. Censo Demográfico 2022. Agregados por Setores Censitários: Resultados do universo. Nota metodológica n. 06. Rio de Janeiro, 2024.
- O arquivo original está disponível neste repositório em `docs/original/2022_methodological_notes.pdf`.

## Processamento

Esta transcrição usa o PDF como *ground truth* para o conteúdo substantivo da nota metodológica, reorganizando seu conteúdo para torná-lo mais facilmente *machine-readable*.

As principais adaptações em relação ao PDF original incluem:

- conversão de listas e tabelas para estruturas em Markdown;
- remoção de capas, páginas de expediente, imagens e elementos meramente gráficos;
- remoção de cabeçalhos repetidos de página;
- correção de quebras de linha artificiais, hifenizações e espaçamentos resultantes da extração do PDF;
- padronização da hierarquia de seções e criação de âncoras internas;
- pequenas intervenções editoriais para melhorar a legibilidade do conteúdo em formato linear.

Sempre que possível, o conteúdo textual e o sentido substantivo do documento original foram preservados. Alguns quadros e tabelas foram adaptados para manter a coerência da leitura em Markdown.

## Sumário

1. [Introdução](#intro)
2. [Notas técnicas](#notas)
   - [Fundamento legal](#fundamento)
   - [Sigilo das informações](#sigilo)
   - [Metodologia de coleta](#coleta)
   - [Acompanhamento e controle](#controle)
   - [Geografia censitária](#geografia)
   - [Divisão territorial](#divisao-territorial)
   - [Conceitos e definições](#conceitos)
   - [Tratamento dos dados](#tratamento)
   - [Aspectos específicos da Pesquisa Urbanística do Entorno dos Domicílios](#entorno)
   - [Sigilo e confidencialidade dos dados](#confidencialidade)
3. [Organização dos arquivos](#organizacao)
   - [Relação de arquivos para download](#arquivos-download)
   - [Relação de variáveis divulgadas](#variaveis-divulgadas)
   - [Geocódigo de Setor Censitário (CD_SETOR)](#cd-setor)
4. [Potenciais usos e aplicações do produto divulgado](#usos)
5. [Referências](#referencias)

# 1. Introdução {#intro}

O Censo Demográfico é a mais complexa operação estatística realizada no Brasil, produzindo um detalhado retrato da população residente no Território Nacional, de seu perfil demográfico e de suas condições de vida. Por pesquisar todos os domicílios do país, a operação constitui a única fonte de referência para o conhecimento das condições de vida da população em todos os municípios e em seus recortes territoriais internos, como Distritos e Subdistritos.

A divulgação **"Censo Demográfico 2022: Agregados por Setores Censitários - Resultados do Universo"** disponibiliza para a sociedade arquivos para download com informações, por Setor Censitário, de domicílios e pessoas investigados em todo o Território Nacional e que são denominados, por convenção, resultados do universo. Estes dados foram obtidos reunindo elementos coletados diretamente pelos recenseadores em seu trabalho de campo – registro de espécie dos endereços visitados – e informações captadas a partir da realização de entrevistas com os informantes em cada um dos domicílios, a partir dos dois tipos de questionários utilizados para o levantamento do Censo Demográfico 2022, que são:

- **Questionário Básico** - aplicado em todas as unidades domiciliares, exceto naquelas selecionadas para a amostra, e que contém a investigação das características do domicílio e dos moradores; e

- **Questionário da Amostra** - aplicado em todas as unidades domiciliares selecionadas para a amostra. Além da investigação contida no Questionário Básico, abrange outras características do domicílio e pesquisa importantes informações sociais, econômicas e demográficas dos seus moradores.

O Setor Censitário é a menor unidade territorial, formada por área contínua, integralmente contida em área urbana ou rural, com dimensão adequada à operação de pesquisas e cujo conjunto esgota a totalidade do Território Nacional, o que permite assegurar a plena cobertura do País.

Historicamente, os arquivos com dados agregados por Setor Censitário foram originalmente concebidos para constituir cadastros básicos de áreas para a seleção de amostras em outras pesquisas domiciliares do Instituto. A fim de viabilizar a estratificação dos Setores Censitários e a seleção de amostras com probabilidades desiguais (amostras com probabilidade proporcional a uma medida de tamanho do Setor), esses produtos apresentavam, portanto, variáveis descritivas da divisão territorial brasileira e outras informações a respeito do porte ou tamanho dos Setores, bem como variâncias de algumas das variáveis para facilitar a determinação do tamanho das amostras.

A partir do Censo Demográfico 1991, estes arquivos passaram a incorporar mais variáveis em nível de Setor como forma de produzir resultados para subdivisões geográficas não atendidas pelas publicações do censo.

No Censo Demográfico 2000, a fim de garantir celeridade à informação divulgada, o IBGE disponibilizou um primeiro arquivo agregado com base nos dados da Sinopse Preliminar. Posteriormente, com a conclusão do tratamento dos dados do universo, o IBGE divulgou a primeira edição dos Agregados por Setores Censitários dos Resultados do Universo, com 527 variáveis sobre características dos domicílios, dos seus responsáveis e das pessoas residentes, sem cruzamento dos quesitos do questionário básico do Censo Demográfico 2000, com exceção do sexo. A segunda edição do arquivo foi gerada a partir dos microdados do universo do Censo Demográfico 2000 e foi composta por planilhas para cada Unidade da Federação, abrangendo mais de 3 200 variáveis.

Para o Censo Demográfico 2010, o primeiro arquivo com dados agregados em nível de Setor Censitário disponibilizou os resultados para as mesmas variáveis divulgadas na Sinopse. Posteriormente, foram produzidos arquivos de agregados com resultados definitivos do conjunto Universo com as mesmas variáveis divulgadas na publicação "Censo Demográfico 2010 - Características da população e dos domicílios - Resultados do Universo", em nível de Grandes Regiões, Unidades da Federação, Municípios, Distritos, Subdistritos, Bairros e Regiões Metropolitanas. Em seguida, foram publicadas outras edições dos arquivos para incorporar as variáveis sobre rendimentos das pessoas e dos domicílios, tipologia do Setor Censitário e características do entorno dos domicílios urbanos, após o término das etapas de apuração desses resultados. As informações em nível de Setor Censitário foram distribuídas em planilhas, contendo as variáveis de identificação geográfica (Grandes Regiões, Unidades da Federação, Mesorregião, Microrregião, Região Metropolitana ou RIDE, Município, Distrito, Subdistrito, Bairro, código do Setor Censitário, situação do Setor e tipo do Setor) e cerca de outras 3 000 variáveis com informações sobre as características da população residente.

Na presente divulgação de "Agregados por Setores Censitários: Resultados do Universo", o IBGE disponibiliza planilhas, em formatos csv e xlsx, com diversas informações de resultados do universo, totalizando mais de 3 mil variáveis, resultantes do cruzamento de dados nos temas de características de domicílios, demografia, alfabetização, cor ou raça, mortalidade, relações de parentesco, indígenas e quilombolas. O material procura abranger todos os temas divulgados até o presente momento, relativo a dados do universo. Além das planilhas, o IBGE disponibiliza também o dicionário de dados completo em xlsx.

Adicionalmente às informações agregadas por Setores Censitários, estão incluídas nessa divulgação planilhas com agregações nos níveis de Distritos, Subdistritos e Bairros, permitindo que sejam feitas consultas mais diretas a esses níveis territoriais de variáveis.

Cabe ressaltar que, para a construção desse produto, utilizou-se a malha de Setores Censitários, divulgada na mesma data pelo IBGE.

Complementando a publicação, a presente nota metodológica traz informações gerais sobre o Censo Demográfico 2022, sobre a organização dos arquivos, sobre as técnicas de supressão de dados aplicadas para proteção dos dados dos informantes, bem como a relação das variáveis.

# 2. Notas técnicas {#notas}

## 2.1. Fundamento legal {#fundamento}

O Censo Demográfico 2022 foi desenhado e realizado com respaldo na legislação geral que regula os levantamentos das estatísticas nacionais, dispõe sobre a obrigatoriedade da prestação de informações, protege o caráter confidencial das informações coletadas e prevê a divulgação e a entrega de resultados à sociedade.

A execução do Censo 2022 obedeceu, ainda, a legislação que disciplina, no setor público, as ações de caráter administrativo, quais sejam: a contratação de pessoal temporário, a aquisição de bens e serviços e as dotações orçamentárias.

## 2.2. Sigilo das informações {#sigilo}

A Lei nº 5.534, de 14 de novembro de 1968, dispõe sobre a obrigatoriedade de prestação de informações estatísticas e assegura o caráter sigiloso das informações prestadas ao IBGE. O texto do Artigo 1º estabelece que toda pessoa natural ou jurídica de direito público ou de direito privado que esteja sob a jurisdição da lei brasileira é obrigada a prestar as informações solicitadas pelo IBGE, visando a execução do Plano Nacional de Estatística (previsto no Decreto-Lei nº 161, de 13 de fevereiro de 1967, Art. 2º, § 2º).

Além disso, o Parágrafo Único deste mesmo artigo oferece garantias de que as informações prestadas terão caráter sigiloso e serão usadas exclusivamente para fins estatísticos.

Observando ainda a Declaração de Princípios Orientadores Compartilhados para a Gestão de Informações Geoespaciais (ONU-GGIM), o IBGE adota procedimentos que visam proteger a confidencialidade da informação geoespacial que possa afetar negativamente um indivíduo, uma comunidade e/ou um Estado.

## 2.3. Metodologia de coleta {#coleta}

O Censo 2022 permitiu ao cidadão a possibilidade de participar por meio de três formas diferentes: entrevista presencial, por telefone ou autopreenchimento pela internet. A entrevista presencial foi realizada pelo recenseador com o registro das respostas no Dispositivo Móvel de Coleta - DMC; as entrevistas por telefone foram realizadas pelo recenseador ou por um agente da Central de Apoio do Censo - CAC; já a coleta pela internet foi feita por autopreenchimento do questionário ou utilizando auxílio de agentes do CAC.

A entrevista presencial correspondeu a maior parte (98,9%) das respostas do Censo 2022 com 72 433 841 questionários aplicados. Inserida no IBGE durante o Censo 2007, a entrevista pessoal assistida por computador – CAPI é realizada desde então com dispositivos móveis de coleta. Os DMCs receberam a lista prévia de endereços e

tiveram uma intensa utilização de sistemas georreferenciados. Por estarem carregados com _chips_ 3G e 4G, foi possível, pela primeira vez, a realização de transmissões diretamente dos DMCs para os _data centers_ do Rio de Janeiro e de São Paulo. Caso não houvesse sinal das redes móveis, o recenseador tinha a possibilidade de transmitir os dados de qualquer lugar com conexão Wi-Fi. Os DMCs receberam configurações de forma remota por meio do software de gerenciamento MDM ( _Mobile Device Management_ , ou gerenciamento de dispositivos móveis), que dava alta produtividade à operação censitária. Associado ao MDM foi introduzida mais uma inovação, o módulo Kiosk, um espaço reservado na memória do dispositivo onde foram instalados os aplicativos e bloqueada a inclusão de qualquer outra aplicação ou uso que não estivessem relacionados à operação censitária (música, jogos, _streaming_ ).

O DMC disponibilizava o aplicativo de coleta para registrar e armazenar as informações coletadas e nele estavam contidos:

- Mapa do Setor - representação gráfica do Setor Censitário;

- Lista de Endereços - listagem com todas as informações referentes aos endereços das unidades levantadas previamente e utilizada para atualização dos registros dos endereços;

- Questionário Básico - questionário com 26 quesitos, no qual foram registradas as características do domicílio e de seus moradores na data de referência. Aplicado em todas as unidades domiciliares que não foram selecionadas para a amostra;

- Questionário Ampliado (ou da Amostra) - questionário com 77 quesitos, no qual foram registradas as características do domicílio e de seus moradores na data de referência. Inclui os quesitos do Questionário Básico somados a outros de investigação mais detalhada e foi aplicado em todas as unidades domiciliares que foram aleatoriamente selecionadas para a amostra;

- Formulário de domicílio coletivo - utilizado para registrar os dados de identificação do domicílio coletivo e listar as suas unidades com morador; e

- Relatórios de acompanhamento - resumo de informações da coleta e de questionários com pendências para facilitar o acompanhamento do trabalho do recenseador.

A autoentrevista assistida por computador - CASI foi uma inovação introduzida na operação censitária de 2010 e foi mantida para o Censo 2022. A possibilidade do preenchimento do questionário pela Internet procurou alcançar o informante que, embora disposto a participar do censo, optou por não fornecer as informações no momento da visita do recenseador. A opção de preenchimento do questionário pela Internet era registrada no DMC do recenseador com um código de identificação do domicílio e um tíquete eletrônico era gerado exclusivamente para aquele domicílio. O total de questionários realizados pela modalidade de autopreenchimento pela Internet foi de 410 598, o que correspondeu a 0,6% do total.

Pela primeira vez foi oferecida ao informante a possibilidade de responder o Censo por telefone. A entrevista por telefone assistida por computador – CATI foi utilizada pelos recenseadores com seus próprios dispositivos móveis de coleta. Também foi utilizada como modalidade de coleta oferecida pelos agentes da Central de Apoio ao Censo (CAC), tendo funcionado por meio do número 0800 721 8181, diariamente, das 8h às 21h30. No decorrer da operação censitária, o IBGE, com apoio da Agência Nacional de Telecomunicações – Anatel, disponibilizou um serviço de atendimento telefônico via tridígito 137 (denominado "Disque Censo"), considerado um serviço de utilidade pública para todos os cidadãos que ainda não haviam respondido o Censo 2022. O total de questionários aplicados pela modalidade de entrevista por telefone foi de 412 598, equivalente a 0,6% do total de questionários.

O quantitativo total de Questionários Básicos foi de 65 463 616 equivalente a 89,4% do total de questionários aplicados e com tempo médio de preenchimento de seis (6) minutos. O Questionário da Amostra foi realizado 7 793 421 vezes, o equivaleu a 10,6% do total de questionários e tempo médio de 16 minutos.

## 2.4. Acompanhamento e controle {#controle}

O Censo Demográfico 2022 contou com um amplo procedimento de supervisão, que teve como objetivo garantir a cobertura e controlar a qualidade dos dados da coleta ao longo de todo o período da operação. Com esse propósito, o IBGE criou procedimentos e funcionalidades capazes de avaliar, com precisão, as atividades realizadas pelos recenseadores nos diversos níveis geográficos, especialmente nos Setores Censitários, de forma a:

- Avaliar a qualidade do percurso realizado pelo recenseador durante seu trabalho de coleta, de modo a evitar problemas relacionados a falhas de cobertura de endereços no Setor Censitário;

- Avaliar a qualidade da cobertura dos endereços, a fim de que o Cadastro Nacional de Endereços para Fins Estatísticos – CNEFE seja atualizado da maneira mais correta possível;

- Avaliar a qualidade de registro das espécies dos endereços, ou seja, verificar se a finalidade de uso dos endereços – domicílios e/ou estabelecimentos – foi corretamente definida pelo recenseador;

- Avaliar a qualidade de registro das informações dos domicílios (com ou sem moradores), respeitando a sua condição na data de referência (31 de julho de 2022), de modo a confirmar se havia moradores (nos Domicílios Ocupados) ou não (nos Domicílios Vagos ou nos Domicílios de Uso Ocasional);

- Avaliar a qualidade de registro dos moradores dentro dos Domicílios Ocupados, para a correta cobertura de pessoas nos Setores Censitários;

- Avaliar o entendimento dos conceitos da pesquisa pelos recenseadores, por meio da confirmação de resposta de algumas perguntas dos questionários.

A verificação de campo executada pelo supervisor foi realizada a partir de revisitas a amostras de endereços para verificação de espécies e qualidade de cobertura, revisitas a domicílios ocupados para a conferência de informações de moradores (tanto na contagem, quanto nas respostas dos questionários), além de verificação da qualidade das coordenadas dos endereços registrados. Para tais procedimentos, foram criadas ferramentas carregadas no aplicativo de supervisão – pedidos de supervisão, relatórios e indicadores gerenciais – para a análise da coleta, de modo a tornar as tomadas de decisão mais ágeis e eficientes.

Todos os postos de coleta foram informatizados com laptops para o gerenciamento da coleta de dados. Foram construídos, para o Censo Demográfico 2022, diversos sistemas de controle que permitiam um acompanhamento do andamento da coleta em todo o território nacional, fornecendo às equipes de supervisão, nas Superintendências Estaduais e na Sede, no Rio de Janeiro, insumos para avaliar o conteúdo e eventualmente solicitar uma correção. O gerenciamento da coleta passou a ser em tempo real, inclusive do deslocamento do recenseador pelo monitoramento das coordenadas.

O Sistema Integrado de Gerenciamento e Controle - SIGC foi responsável tanto pelo gerenciamento administrativo e operacional da coleta quanto pelo acompanhamento da qualidade e da cobertura. Além disso, possibilitou aos servidores do IBGE o acompanhamento do andamento da coleta em níveis nacional, estadual e municipal, por posto de coleta e por Setor Censitário. Serviu, também, como veículo para disseminar informações: nele eram divulgadas as notas técnicas, as orientações das Coordenações e procedimentos especiais que deveriam ser executados pelas equipes de campo.

Foi desenvolvido também um painel de informações, denominado Dashboard do Censo 2022, voltado para o monitoramento centralizado da coleta (sede, coordenações estaduais e de área), com recortes geográficos quilombolas. Além dos principais indicadores relacionados ao andamento da coleta, o Dashboard forneceu informações comparativas de outros censos e diversos indicadores elaborados por especialistas temáticos que serviam de insumo para uma análise mais detalhada.

Outro avanço no que diz respeito a ferramentas de controle foi o monitoramento geoespacial da coleta, especialmente por meio da Plataforma Geográfica Interativa – PGI, que buscou apresentar diversas informações e indicadores relacionados à coleta em mapas interativos, também voltada para o monitoramento centralizado. Além das informações do Censo, a plataforma conta também com registros administrativos, como a base de dados da Agência Nacional de Energia Elétrica – ANEEL, e imagens orbitais de alta resolução, permitindo um acompanhamento e análise visual muito acurada da cobertura do Censo em todo o país.

Além de novos recursos tecnológicos, o Censo 2022 contou, pela primeira vez, com um comitê de avaliação para o encerramento da pesquisa. Criado em outubro de

2022, o Comitê de Fechamento do Censo - CFC teve como principal atribuição garantir que todos os 5 568 municípios, o Distrito Federal e o Distrito Estadual de Fernando de Noronha, tenham sido recenseados, validando ou questionando a cobertura realizada.

## 2.5. Geografia censitária {#geografia}

Dada a dimensão e a heterogeneidade do território brasileiro, o preparo da operação censitária exigiu a identificação de questões relevantes de ordem técnica e operacional, com vistas a assegurar o adequado encadeamento das diversas etapas da operação. A Base Territorial foi atualizada de forma contínua desde o Censo 2010 com o objetivo de fornecer uma base gráfica de informações georreferenciadas com representações das estruturas territoriais (da divisão político-administrativa, cidades, povoados, agrupamentos indígenas e de muitos outros elementos espaciais) e integrada a um conjunto de cadastros alfanuméricos. Por meio dos bancos cadastrais e gráficos da Base Territorial, constitui-se a malha de Setores Censitários do IBGE. Para garantir que a coleta e divulgação dos dados estivessem coerentes com a divisão políticoadministrativa vigente, o IBGE atualizou na Base Territorial os limites territoriais dos Estados e Municípios que foram comunicados oficialmente pelos órgãos estaduais e por Decisão Judicial.

Antes da operação censitária, e para apoiá-la, o Cadastro Nacional de Endereços para Fins Estatísticos – CNEFE foi atualizado de duas formas distintas: uma baseada na incorporação de registros administrativos como, por exemplo, os endereços do Cadastro de Pessoas Físicas - CPF e outra mais focalizada, apoiada em operações de atualização em campo. Segundo este procedimento, as unidades são visitadas pelo atualizador, que confirma aquelas já existentes no cadastro e inclui aquelas ainda não cadastradas que forem encontradas. Além do registro dos dados que localizam o endereço, seu trabalho também consiste em caracterizá-lo segundo a espécie, em categorias de domicílios ou estabelecimentos, e o tipo de edificação.

Além da Base Territorial e do CNEFE, o IBGE estruturou uma Base de Informações Operacionais de Setores Censitários – BIOS que levantou um conjunto de 140 mil registros de informação de relevância operacional para contribuir com o planejamento da operação censitária e facilitar o acesso dos agentes censitários aos domicílios. A BIOS reuniu informações que só podem ser captadas a partir de levantamentos realizados localmente, por meio de fontes diversificadas – órgãos estaduais e municipais, organizações da sociedade civil, lideranças comunitárias, jornais, mídias diversas e a partir do próprio conhecimento dos servidores do IBGE que acompanham o cotidiano das agências. Os temas observados e coletados abrangeram questões variadas como: terras indígenas e territórios quilombolas, domicílios coletivos, improvisados, cortiços e condomínios de difícil acesso; além de situações de restrição de segurança e necessidade de logística especial de acesso ao Setor.

Na etapa de reconhecimento do Setor, fase anterior a coleta domiciliar, foi realizada a Pesquisa Urbanística do Entorno dos Domicílios constituída pelo

levantamento sobre a infraestrutura urbana dos municípios. Na maioria dos Setores Censitários a Pesquisa do Entorno foi realizada diretamente pelos supervisores, entre 20 de junho a 12 de julho de 2022, período anterior à coleta do questionário domiciliar. Esta etapa objetivou também uma avaliação das recentes atualizações do mapa do Setor e, para isso, fez a identificação de logradouros (avenidas e ruas) com objetivo de apoiar na cobertura na coleta do questionário domiciliar, conhecendo-se melhor a realidade e os desafios de cada Setor Censitário. Nos Setores Censitários relacionados aos povos indígenas e comunidades quilombolas a coleta da Pesquisa Urbanística do Entorno dos Domicílios foi realizada apenas após a coleta domiciliar do Censo, garantindo-se que o primeiro procedimento realizado pelo IBGE junto às lideranças fosse a reunião de abordagem pelo recenseador.

Cabe destacar o papel fundamental da utilização das imagens orbitais como instrumento de apoio ao planejamento, monitoramento e controle da operação da coleta, bem como na atualização da malha de Setores Censitários e do cadastro de endereços. O uso de imagens de alta resolução com datas de aquisição recentes, permitiu a identificação de novas áreas de ocupação domiciliar, seja em áreas urbanas, rurais, favelas ou comunidades urbanas ou em áreas ocupadas por populações de conhecida mobilidade espacial, melhorando expressivamente a cobertura da coleta e reduzindo ao mínimo a necessidade de verificação em campo. As imagens também possibilitaram os ajustes nos posicionamentos das faces de logradouros e o delineamento das linhas divisórias estaduais e municipais. O uso das imagens nos Dispositivos Móveis de Coleta, aliado ao Sistema Global de Navegação por Satélite – GNSS, facilitou e agilizou o trabalho dos recenseadores, permitindo visualizar sua posição, trajetos, linhas de face e outras informações sobrepostas as imagens.

## 2.6. Divisão territorial {#divisao-territorial}

### 2.6.1. Adequação da coleta à Divisão Territorial Brasileira 2022 {#adequacao-coleta}

Com o objetivo de compatibilizar a coleta censitária à Divisão Territorial Brasileira vigente na data de referência do Censo Demográfico foi realizado procedimento de geoprocessamento para atualização da subordinação municipal e setorial dos endereços em áreas afetadas por limites atualizados e comunicados ao IBGE pelos Órgãos Estaduais competentes entre 01/05/2021 e 31/07/2022. O procedimento de adequação considerou a relação topológica existente entre as representações geoespaciais de acordo com a classificação de Situação territorial de cada Setor Censitário envolvido e com o padrão de registro dos endereços no CNEFE.

### 2.6.2. Divisão político-administrativa {#divisao-politico-administrativa}

A organização político-administrativa da República Federativa do Brasil compreende a União, o Distrito Federal, os Estados e os Municípios, todos autônomos nos termos da Constituição Federal de 05 de outubro de 1988.

As Grandes Regiões figuram em legislações, portarias e planos nacionais com nomes diversos – Regiões, Macrorregiões, Complexo ou Sistema Macrorregional –, demonstrando, portanto, a importância de sua incorporação para a organização políticoadministrativa nacional. Cabe ressaltar que não se trata de um ente federativo autônomo, como o Distrito Federal, os Estados e os Municípios.

Nas tabulações e apresentações de dados do IBGE, os Estados e o Distrito Federal são chamados, em seu conjunto, de Unidades da Federação (UF).

#### 2.6.2.1. Distrito Federal {#distrito-federal}

É a unidade autônoma onde tem sede o Governo Federal com seus poderes Executivo, Legislativo e Judiciário. Tem as mesmas competências legislativas reservadas aos estados e municípios, e é regido por Lei Orgânica, sendo vedada sua divisão em municípios.

Em 2022, Brasília era a Capital Federal.

#### 2.6.2.2. Estados {#estados}

Os Estados são unidades federativas autônomas de maior abrangência territorial na organização político-administrativa do Brasil, compartilhando seu espaço geográfico com os municípios. Organizam-se e regem-se por constituições e leis próprias, observados os princípios da Constituição Federal.

Em 2022, o Brasil era constituído de 26 estados. A localidade que abriga a sede do governo denomina-se Capital.

#### 2.6.2.3. Municípios {#municipios}

Os Municípios constituem unidades federativas autônomas de caráter local cuja criação, incorporação, fusão ou desmembramento se faz por lei estadual. A criação de novo município depende de consulta prévia às populações diretamente interessadas, através de plebiscito. O município pode se subdividir territorialmente para fins administrativos podendo criar, organizar e suprimir distritos e outras estruturas territoriais legais, observados os princípios estabelecidos na Constituição Federal e na Constituição do Estado.

A Malha Municipal que representa cartograficamente os territórios municipais para fins de pesquisas geográficas e estatísticas do IBGE é constantemente aprimorada diante da evolução das geotecnologias e da incorporação das atualizações de limites promovidas pelos Órgãos Estaduais competentes. Cabe destacar que não compete ao IBGE a definição e representação legal de limites territoriais, para outros fins que não a

seus próprios relacionados a Geografia e a Estatística, conforme preceito constitucional contido no Artigo 18 § 4º da Constituição Federal de 1988, que atribui a Estados e Municípios a responsabilidade nas questões referentes a divisão político-administrativa dos territórios sob sua jurisdição.

Os limites utilizados pelo IBGE durante a coleta do Censo Demográfico 2022, constantes nos insumos carregados nos Dispositivos Móveis de Coleta (DMC), tiveram como referência a versão da Malha Municipal de 2021 que incorpora os ajustes comunicados pelos órgãos estaduais ao IBGE até 30/04/2021. As alterações de limites municipais comunicadas ao IBGE entre 01/05/2021 e 31/07/2022 pelos Órgãos Estaduais competentes estão publicadas na versão da Malha Municipal de 2022 e foram consideradas para os devidos ajustes nos resultados da divulgação da publicação dos Primeiro Resultados. A relação dos 174 municípios alterados na Malha Municipal 2022 foi disponibilizada no Portal do IBGE junto aos primeiros resultados.

Para fins de divulgação dos agregados por Setores Censitários, considerando-se a necessidade de aderência à malha municipal 2022, foi executada uma etapa de correção da vinculação de endereços que se encontravam em áreas com alterações de subordinação político administravas entre 2021 e 2022. Essa etapa de tratamento foi realizada em ambiente de sistema de informação geográfica, considerando-se, conforme melhor aplicação, as coordenadas geográficas dos endereços e a sua vinculação aos Setores Censitários e às faces de logradouros, buscando-se a maior fidelidade possível às áreas de jurisdição de cada município.

Em 2022, o Brasil era constituído de 5 568 municípios, 5 deles criados após o Censo 2010. Para fins de divulgação estatística, os registros dos bancos de dados do IBGE incluem o Distrito Federal e o Distrito Estadual de Fernando de Noronha, totalizando, assim, 5 570 unidades. **Distritos** São unidades administrativas internas dos Municípios. Sua criação, organização ou supressão se faz por leis municipais, observada a legislação estadual. Podem ser subdivididos em unidades administrativas denominadas subdistritos, regiões administrativas, zonas ou outra denominação específica.

Para fins de cadastramento na Base Territorial, são considerados os Distritos cujos atos de criação ou regulamentação contenham delimitação geográfica que permitam a sua representação espacial na malha de Setores Censitários.

#### 2.6.2.4. Subdistritos {#subdistritos}

Os Subdistritos são unidades internas dos Municípios, que dividem integralmente o território do Distrito ou do Município. Constituem normalmente o segundo nível de divisão municipal, geralmente adotados em grandes cidades, para as quais apenas a divisão distrital não é suficiente, de acordo com as necessidades da administração.

Para fins de representação na Base Territorial, os recortes geográficos ou administrativos cadastrados como Subdistritos devem ter perspectiva de estabilidade temporal por parte da administração municipal.

#### 2.6.2.5. Setor Censitário {#setor-censitario}

O Setor Censitário é principal unidade territorial de coleta e divulgação de dados estatísticos do IBGE. Cada Setor Censitário corresponde a uma porção em que o território nacional é fragmentado, considerando-se as estruturas territoriais, para permitir o levantamento de estatísticas nos prazos estabelecidos para a coleta. São identificados por um geocódigo único em nível nacional, composto a partir dos geocódigos do Subdistrito, do Distrito, do Município, do Estado e da Grande Região em que cada Setor está inserido. É a unidade territorial de coleta dos Censos Demográficos.

### 2.6.3. Divisão regional {#divisao-regional}

#### 2.6.3.1. Grandes Regiões {#grandes-regioes}

As cinco Grandes Regiões, ou simplesmente Regiões, que constituem a Divisão Regional do Brasil são formadas por extensos blocos territoriais caracterizados pela dominância de certo número de traços comuns – físicos, humanos, econômicos e sociais – que as tornam distintas umas das outras. Oficializada por meio do Decreto nº 67.647, de 23/11/1970, a Divisão Regional em Grandes Regiões manteve a estrutura regional identificada na transição da década de 1960 para a década 1970 quase inalterada, modificando-se apenas com as alterações ocorridas no mapa político-administrativo brasileiro nas décadas posteriores.

As Grandes Regiões contêm os Estados e o Distrito Federal com a seguinte distribuição:

   - Região Norte – Rondônia, Acre, Amazonas, Roraima, Pará, Amapá e Tocantins;

- Região Nordeste – Maranhão, Piauí, Ceará, Rio Grande do Norte, Paraíba,

- Pernambuco, Alagoas, Sergipe e Bahia;

   - Região Sudeste – Minas Gerais, Espírito Santo, Rio de Janeiro e São Paulo;

   - Região Sul – Paraná, Santa Catarina e Rio Grande do Sul; e

- Região Centro-Oeste – Mato Grosso do Sul, Mato Grosso, Goiás e Distrito

- Federal.

#### 2.6.3.2. Região Geográfica {#regiao-geografica}

As Regiões Geográficas são áreas representativas da rede urbana brasileira na organização do Território Nacional em duas escalas intraestaduais, identificadas pelos centros próximos que são buscados pela população para o atendimento de suas necessidades, quando estas não são encontradas, de forma satisfatória, no próprio

Município. Podem ser classificadas, quanto a escala de referência da composição da rede urbana em Regiões Geográficas Imediatas e Regiões Geográficas Intermediárias.

#### 2.6.3.3. Região Geográfica Imediata {#regiao-geografica-imediata}

Têm, na rede urbana, o seu principal elemento de referência. Essas regiões são estruturadas a partir de Centros Urbanos próximos para a satisfação das necessidades imediatas das populações, tais como: compra de bens de consumo duráveis e não duráveis; busca de trabalho; procura por serviços de saúde e educação; e prestação de serviços públicos, como postos de atendimento do Instituto Nacional do Seguro Social - INSS, do Ministério do Trabalho e Previdência Social e de serviços judiciários, entre outros.

#### 2.6.3.4. Região Geográfica Intermediária {#regiao-geografica-intermediaria}

Correspondem a uma escala intermediária entre os Estados e as Regiões Geográficas Imediatas. Preferencialmente, buscou-se a delimitação das Regiões Geográficas Intermediárias com a inclusão das Metrópoles ou Capitais Regionais do estudo Regiões de Influência das Cidades 2007, também conhecido como Regic 2007, publicado pelo IBGE em 2008, sobre redes e Hierarquia Urbana. Em alguns casos, principalmente onde não existiam Metrópoles ou Capitais Regionais, foram utilizados Centros Urbanos de menor dimensão que fossem representativos para o conjunto das Regiões Geográficas Imediatas que compuseram as suas respectivas Regiões Geográficas Intermediárias. As Regiões Geográficas Intermediárias organizam o território, articulando as Regiões Geográficas Imediatas por meio de um polo de hierarquia superior diferenciado a partir dos fluxos de gestão privado e público e da existência de funções urbanas de maior complexidade.

#### 2.6.3.5. Concentração Urbana {#concentracao-urbana}

As Concentrações Urbanas são Arranjos Populacionais acima de 100 000 habitantes ou Municípios isolados (que não formam Arranjos Populacionais) de mesmo porte populacional. Arranjo Populacional é o agrupamento de dois ou mais Municípios onde há uma forte integração populacional. Os critérios utilizados na identificação dos Arranjos Populacionais empregam a noção de integração, medida pelos movimentos pendulares para trabalho e estudo, ou a contiguidade das manchas urbanizadas, sintetizando os vários processos envolvidos.  As Concentrações Urbanas formadas por conjuntos de Municípios são grafadas com barra comum "/" (ex: "São Paulo/SP") para diferenciá-las dos Municípios ou Concentrações Urbanas formadas por apenas um Município, estes grafados com parêntesis "( )" (ex: "São Paulo (SP)").

#### 2.6.3.6. Quadro Geográfico de Referência para Produção, Análise e Disseminação de Estatísticas {#quadro-geografico}

Quadro Geográfico de Referência para Produção, Análise e Disseminação de Estatísticas O Quadro Geográfico de Referência para Produção, Análise e Disseminação de Estatísticas, estruturado pelo IBGE, é a compilação do conjunto dos diferentes

recortes territoriais, e constitui uma referência única e nacional para relacionar as informações estatísticas dos censos e de suas demais pesquisas a esses recortes territoriais. Recorte geográfico, ou recorte territorial, é um conjunto de parcelas do território, contíguas ou não, delimitadas segundo critérios técnicos, científicos e/ou legais. O Quadro Geográfico de Referência é composto por dois grandes grupos: Recortes legais publicados pelo IBGE e Recortes institucionais do IBGE, ou seja, aqueles produzidos pelo próprio Instituto.

## 2.7. Conceitos e definições {#conceitos}

### 2.7.1. Data de referência {#data-referencia}

O censo brasileiro adota o conceito de população residente ou "de direito", ou seja, a população é enumerada no seu local de residência habitual, considerando todos os moradores dos domicílios particulares – permanentes e improvisados – e coletivos, na data de referência.

A investigação das características dos domicílios e das pessoas neles residentes teve como data de referência a meia-noite do dia 31 de julho para 1º de agosto de 2022. Portanto, de acordo com este critério, as pessoas nascidas após esta data não foram incluídas no Censo 2022, pois não faziam parte do conjunto de moradores do domicílio na data de referência. Já as pessoas falecidas após esta data foram incluídas, pois eram moradoras do domicílio na data de referência.

### 2.7.2. População residente {#populacao-residente}

A população residente é constituída pelos moradores dos domicílios na data de referência.

### 2.7.3. Morador {#morador}

É a pessoa que tem o domicílio como local habitual de residência e nele se encontrava na data de referência, ou que, embora ausente na data de referência, tem o domicílio como residência habitual, desde que essa ausência não seja superior a 12 meses em relação àquela data, em decorrência dos seguintes motivos:

- Viagens: a passeio, a serviço, a negócio, de estudos etc.;

- Afastamento de sua comunidade tradicional por motivo de caça, pesca, extração vegetal, trabalho na roça, participação em festas ou rituais;

- Internação em estabelecimento de ensino ou hospedagem em outro domicílio, pensionato, república de estudantes, visando facilitar a frequência à escola durante o ano letivo;

- Detenção sem sentença definitiva declarada;

- Internação temporária em hospital ou estabelecimento similar; e

- Embarque a serviço (militares, petroleiros).

Independentemente do período de afastamento do domicílio de origem, a pessoa é considerada como moradora no local onde se encontrava na data de referência, em decorrência das seguintes situações:

- Internada permanentemente em sanatórios, asilos, conventos ou estabelecimentos similares;

- Moradora em pensionatos e que não tinham outro local habitual de residência;

- Condenada com sentença definitiva declarada; e

- Migrou para outras regiões em busca de trabalho e lá fixou residência.

### 2.7.4. Domicílio {#domicilio}

É o local estruturalmente separado e independente que se destina a servir de habitação a uma ou mais pessoas, ou que esteja sendo utilizado como tal. Os critérios essenciais para definir a existência de mais de um domicílio em uma mesma propriedade ou terreno são os de separação e independência, que devem ser atendidos simultaneamente.

Entende-se por separação quando o local de habitação for limitado por paredes, muros ou cercas e coberto por um teto, permitindo a uma ou mais pessoas, que nele habitam, isolar-se das demais, com a finalidade de dormir, preparar e/ou consumir seus alimentos e proteger-se do meio ambiente, arcando, total ou parcialmente, com suas despesas de alimentação ou moradia. Por independência, entende-se quando o local de habitação tem acesso direto, permitindo a seus moradores entrarem e saírem sem necessidade de passar por locais de moradia de outras pessoas. Nas áreas indígenas, no entanto, esse conceito foi adaptado para abranger a diversidade de domicílios de grupos variados.

Para a organização do trabalho de campo, o IBGE classifica os domicílios em dois grupos: particulares e coletivos. Existem ainda classificações em cada um desses domicílios, como pode ser observado no esquema a seguir:

**Domicílio**

- Particular
  - Permanente
    - Ocupado
    - De uso ocasional
    - Vago
  - Improvisado ocupado
- Coletivo
  - Com morador
  - Sem morador

#### 2.7.4.1. Domicílio particular {#domicilio-particular}

É a moradia onde o relacionamento entre seus ocupantes é ditado por laços de parentesco, de dependência doméstica ou por normas de convivência.

#### 2.7.4.2. Domicílio particular permanente {#domicilio-particular-permanente}

É o domicílio que foi construído a fim de servir exclusivamente para habitação e, na data de referência, tinha a finalidade de servir de moradia a uma ou mais pessoas.

#### 2.7.4.3. Domicílio particular permanente ocupado {#domicilio-particular-permanente-ocupado}

É o domicílio particular permanente que, na data de referência, estava ocupado por moradores e no qual foi realizada a entrevista.

#### 2.7.4.4. Domicílio particular permanente ocupado sem entrevista {#domicilio-sem-entrevista}

É o domicílio particular permanente que estava ocupado na data de referência, porém não foi possível realizar a entrevista no momento da visita do Recenseador, já que seus moradores estavam ausentes ou se recusaram a responder. Para estes domicílios, o IBGE utilizou uma metodologia de imputação, que se encontra descrita, adiante, no item Tratamento dos Dados.

#### 2.7.4.5. Domicílio particular permanente de uso ocasional {#domicilio-uso-ocasional}

É o domicílio particular permanente que servia ocasionalmente de moradia na data de referência, ou seja, era o domicílio usado para descanso de fins de semana, férias ou outro fim, mesmo que, na data de referência, seus ocupantes ocasionais estivessem presentes.

#### 2.7.4.6. Domicílio particular permanente vago {#domicilio-vago}

É o domicílio particular permanente que não tinha morador na data de referência, mesmo que, posteriormente, durante o período da coleta, tivesse sido ocupado.

#### 2.7.4.7. Domicílio particular improvisado ocupado {#domicilio-improvisado}

É aquele domicílio que pode estar localizado em uma edificação que não tenha dependências destinadas exclusivamente à moradia (por exemplo, dentro de um bar), ou em calçadas, praças ou viadutos, como também estruturas móveis ou abrigos naturais (como grutas ou cavernas) e que, na data de referência, estavam ocupados por moradores.

#### 2.7.4.8. Domicílio coletivo {#domicilio-coletivo}

É uma instituição ou estabelecimento onde a relação entre as pessoas que nele se encontravam, moradoras ou não, na data de referência, era restrita a normas de subordinação administrativa.

Classifica-se em duas espécies: Domicílio Coletivo com Morador e Domicílio Coletivo sem Morador. São exemplos de domicílio coletivo:

- asilos, orfanatos, conventos e similares;

- hotéis, motéis, campings, pensões e similares;

- alojamento de trabalhadores ou estudantes, república de estudantes (instituição);

- penitenciária, presídio ou casa de detenção; e

- outros (quartéis, postos militares, hospitais e clínicas com internação), etc.

## 2.8. Tratamento dos dados {#tratamento}

### 2.8.1. Pré-crítica {#pre-critica}

Com o objetivo de garantir a consistência dos dados a serem divulgados, foi executada uma rotina de programação para a validação dos registros e correções nos dados, visando identificar quaisquer inconsistências entre bases de dados da coleta do Censo Demográfico 2022.

Esta etapa se faz importante já que, mesmo com o advento da tecnologia presente no Dispositivo Móvel de Coleta (DMC) e os mecanismos de controle utilizados durante as fases de transmissão e consolidação das informações, há sempre a possibilidade da ocorrência de eventos inesperados, mesmo que em uma magnitude reduzida.

Os principais aspectos verificados neste procedimento foram:

- Questionários com pelo menos a lista de moradores preenchida corretamente, ou seja, com informações válidas de sexo e idade;

- Questionários com registros tanto no banco de dados de domicílios quanto no de pessoas;

- Verificação de domicílios e/ou pessoas duplicadas nos bancos de dados;

- Verificação da convergência dos dados oriundos da Amostra presentes no Universo com os armazenados nos bancos específicos da Amostra;

- Comparação entre os registros do Cadastro de Endereços para Fins Estatísticos (CNEFE), sobretudo logradouros, faces, endereços e espécies, com os de questionários, com o intuito de verificar se os questionários estão associados a endereços efetivamente trabalhados.

- Verificação de coexistência de espécies fora do esperado dentro de um mesmo endereço, como por exemplo, endereço com 1 Domicílio Particular Permanente Ocupado e 1 Domicílio Particular Permanente Vago, simultaneamente.

- Verificação da inexistência de questionário associado a espécies domiciliares com morador, as quais foram encaminhadas para o posterior procedimento denominado Imputação de Domicílios Sem Entrevista Realizada.

### 2.8.2. Tratamento de não-resposta (domicílios ocupados sem entrevista) {#nao-resposta}

#### 2.8.2.1. Motivação {#motivacao}

No Censo Demográfico 2022, as unidades domiciliares foram classificadas em categorias de acordo com sua espécie, levando em consideração a situação de seus moradores na data de referência da operação censitária, a saber: domicílios particulares permanentes ocupados (1), domicílios de uso ocasional (3), domicílios vagos (4), domicílios particulares improvisados ocupados (5), e domicílios coletivos com moradores (6) e sem moradores (7). A operação censitária visa obter informações das pessoas moradoras nos domicílios classificados nas categorias (1), (5) e (6); entretanto, nem sempre é possível realizar as respectivas entrevistas no momento das visitas dos recenseadores durante todo o período da coleta, em alguns domicílios ocupados na data de referência do censo, já que seus moradores podem se recusar a dar a entrevista ou estar ausentes. Os domicílios nessas situações são denominados de "sem entrevista realizada".

A partir da Contagem Populacional 2007, o IBGE instituiu a imputação de moradores para os domicílios ocupados sem entrevista realizada, baseando-se nos domicílios semelhantes onde foram obtidos os dados, como ocorre em outros países, tais como: Austrália, Canadá, Estados Unidos, México e Reino Unido. Esta nota descreve brevemente a imputação de moradores em domicílios sem entrevista realizada no Censo Demográfico brasileiro de 2022, que leva em consideração a localização de domicílios dentro e fora de recortes territoriais de Povos e Comunidades Tradicionais.

Nesta metodologia, admitiu-se que o padrão dos domicílios sem entrevista realizada é diferente do padrão dos domicílios ocupados que foram efetivamente investigados, no que se refere ao número de moradores do domicílio em que houve dificuldade do recenseador para realizar a entrevista.

Para avaliar essa hipótese, os domicílios particulares permanentes ocupados (DPPOs) foram estratificados dentro de cada Unidade da Federação e, utilizando a técnica de árvores de regressão[^1] , foram definidos os seguintes estratos: situação do Setor Censitário (urbano/rural), classe de tamanho populacional do município ao qual pertence (menos de 70 000 habitantes, de 70 000 a menos de 500 000 habitantes e 500 000 habitantes ou mais) e tipo de espécie do domicílio (casa/outros). Os domicílios em municípios com 500 000 habitantes ou mais também foram estratificados de acordo com o tipo de Setor (aglomerado subnormal/demais tipos de Setor), não se aplicando a estratificação por situação do Setor.

[^1]: Método de estratificação, que utiliza os valores de uma ou mais variáveis, para classificar os registros em grupos homogêneos, a partir de um grupo de variáveis explicativas.

Considerando que os resultados do Censo Demográfico 2010 demonstram comportamentos demográficos diferenciados dos domicílios indígenas de acordo com sua localização dentro ou fora de Terra Indígena oficialmente delimitada, em situação de agrupamento domiciliar ou dispersão e por etnia, buscou-se no desenho metodológico da imputação criar estratos de doação que permitam aproximar ao máximo as características de doador e receptor. Ademais, analisando os resultados preliminares da coleta em Territórios Quilombolas oficialmente delimitados, em situação de agrupamento domiciliar ou dispersão, verificou-se um padrão demográfico diferenciado dos domicílios quilombolas, pelo que a estratificação da imputação considerou também esses recortes.



#### 2.8.2.2. Metodologia {#metodologia}

O tratamento adotado foi um procedimento de imputação por meio de seleção aleatória de um domicílio doador entre um conjunto de possíveis doadores, formado pelos domicílios particulares permanentes ocupados, com até 10 moradores, inicialmente classificados como "sem entrevista realizada" ou "vagos", mas que posteriormente tiveram entrevista coletada.

Com o objetivo de buscar doadores com nível socioeconômico semelhante ao do receptor, foram acrescentadas à estratificação quatro classes socioeconômicas baseadas no escore médio de adequação do Setor. Tal escore foi calculado a partir de pontuações de acordo com a existência de certas condições presentes nos domicílios do Setor Censitário. Seis variáveis participaram da construção do escore: número de banheiros, tipo de escoadouro, forma de abastecimento de água, destino do lixo, número de moradores e alfabetização do responsável pelo domicílio. Para cada variável, foi atribuído um ponto se o domicílio atendesse às seguintes condições: se tinha mais de um banheiro; se o esgoto era ligado à rede ou fossa séptica ligada à rede; se o abastecimento de água era realizado por rede geral, para domicílio de situação urbana e rede geral ou poço profundo ou artesiano, para domicílio de situação rural; se o lixo era coletado no domicílio, para domicílio urbano, e se era coletado no domicílio ou depositado em caçamba, para domicílio rural; se o número de moradores era menor ou igual a quatro; se o responsável pelo domicílio sabia ler e escrever.

Para cada domicílio, são somadas as pontuações das variáveis, obtendo-se o escore do domicílio. Dessa forma, a pontuação mínima de um domicílio é zero e a máxima 6. O escore médio do Setor Censitário será a média dos escores dos domicílios pertencentes ao Setor. Se o escore médio era inferior a 3, o Setor pertencia à classe 1. Se estava entre 3 e 5 (exclusive), o Setor pertencia à classe 2. Se estava entre 5 e 6 (exclusive), o Setor pertencia à classe 3. Se o escore era 6, o Setor pertencia à classe 4. Adicionalmente, em São Paulo, separou-se a capital dos demais municípios com mais de 500.000 habitantes. Em alguns estratos, houve menos doadores do que domicílios a imputar. Nesses casos, sempre se buscou preservar as estratificações geográficas e socioeconômicas, preferindo-se não buscar doadores entre os domicílios que tiveram sua espécie alterada de "sem entrevista" ou "vago" para "entrevista realizada". Quando ainda assim havia número insuficiente de doadores, procurou-se preservar a estratificação geográfica e agrupar as classes socioeconômicas mais próximas.

A estratégia adotada para os domicílios particulares improvisados (DPIOs) consistiu na seleção aleatória de um doador dentre os domicílios particulares improvisados com entrevista realizada com até 10 moradores pertencentes à mesma Grande Região do domicílio sem entrevista e do mesmo tipo de espécie. As categorias de tipo de espécie dos domicílios improvisados foram recodificadas de acordo com o indicado pelas árvores de regressão da seguinte forma: "dentro de estabelecimento em funcionamento", "estrutura não residencial permanente degradada ou inacabada", "veículos (carros, caminhões, trailers, barcos etc)" e "outros".

Para os domicílios coletivos com morador e sem entrevista realizada, o doador foi selecionado aleatoriamente dentre os domicílios coletivos de mesmo tipo de espécie e dentro da mesma Grande Região do domicílio sem entrevista, porém sem restrição de tamanho.

Apesar de o Censo Demográfico 2022 contar com dois tipos de questionário domiciliar, as informações imputadas nos domicílios sem entrevista realizada foram as do Questionário Básico. Dessa maneira, todas as variáveis do questionário foram obtidas de um mesmo doador.

O procedimento de imputação foi aplicado para todo o território nacional, em cerca de 3 milhões de domicílios, representando 4,21% do total de domicílios ocupados pesquisados pelo Censo Demográfico 2022 A população total imputada foi de aproximadamente 8 milhões de pessoas, correspondendo a 3,93% do total de população.

## 2.9. Aspectos específicos da Pesquisa Urbanística do Entorno dos Domicílios {#entorno}

### 2.9.1. Universo da pesquisa {#universo-entorno}

A Pesquisa Urbanística do Entorno dos Domicílios foi aplicada em setores classificados como urbanos na Base Territorial bem como em setores que, ainda que não estivessem classificados como urbanos, possuíssem áreas urbanizadas mapeadas ou que apresentassem concentração de estruturas, edificações, domicílios e equipamentos urbanos, sistema viário consolidado ou onde predominavam superfícies artificiais não agropecuárias, incluindo loteamentos, conjuntos habitacionais e condomínios.

Cerca de 340 mil setores censitários foram selecionados para a Pesquisa Urbanística do Entorno dos Domicílios, em um total de 468 mil setores censitários que compunham o território brasileiro.

### 2.9.2. Unidade de investigação {#unidade-investigacao}

A unidade de investigação da pesquisa foi a Face de Quadra. De forma sucinta, a Face de Quadra é a linha que representa graficamente os alinhamentos das fachadas do parcelamento dos lotes distribuídos nas Quadras. Assim, as faces consistem em cada um dos lados de uma quadra, contendo ou não edificações, enquanto as quadras são, geralmente, um trecho retangular bem definido, limitado por ruas e/ou estradas. Contudo, podem apresentar-se de forma irregular e ser limitadas por elementos como estradas de ferro, cursos d'água ou encostas.

### 2.9.3. Método de captação {#metodo-captacao}

As informações da Pesquisa Urbanística do Entorno dos Domicílios foram coletadas em questionário específico, preenchido em dispositivo eletrônico pelos Agentes Censitários Supervisores – ACS, ou eventualmente ao Agente Censitário Municipal – ACM, com informações coletadas por meio de observação direta – isto é, sem contato ou interlocução com informantes.

A observação centrou-se em elementos que se encontravam em áreas de uso comum, mesmo em condomínios e loteamentos, desconsiderando elementos internos aos lotes e edificações, especialmente em quesitos como arborização e iluminação pública.

### 2.9.4. Data de referência da Pesquisa Urbanística do Entorno {#data-entorno}

Diferente da coleta domiciliar, que teve como data de referência a meia-noite do dia 31 de julho para 1º de agosto de 2022, a coleta das características urbanísticas do

entorno dos domicílios considerou a data de referência aquela em que o questionário foi preenchido pelo agente de coleta.

A data de coleta das informações do entorno, em geral, está inserida entre os dias 20 de junho e 31 de julho de 2022, período este que antecedeu a coleta domiciliar e ficou reservado para a coleta do entorno e reconhecimento do setor censitário. Em alguns casos, porém, quando faces foram incluídas, a coleta do entorno foi realizada depois da coleta domiciliar. Assim, o período a que se referem as informações levantadas na pesquisa sobre as características urbanística do entorno dos domicílios se estende de 20 de junho de 2022 a 28 de maio de 2023.

## 2.10. Sigilo e confidencialidade dos dados {#confidencialidade}

### 2.10.1. Regras para proteção dos dados dos informantes no arquivo de agregado de setores do Censo Demográfico 2022 {#regras-protecao}

A legislação estatística brasileira torna compulsório o fornecimento de informações ao IBGE para pesquisas constantes do Plano Geral de Informações Estatísticas e Geográficas e, em contrapartida, assegura a proteção destes dados, que só podem ser usados para fins estatísticos e disseminados de forma a não identificar os informantes das pesquisas.

Considerando que a identificação de um informante ocorre quando ele é diretamente identificado em um arquivo liberado (identificação direta), quando uma informação sensível sobre o informante é revelada por meio de um arquivo liberado (identificação por atributo), ou ainda quando um dado liberado torna possível determinar o valor de uma característica de um informante de modo mais preciso do que seria possível obter por qualquer outro meio (identificação por inferência), não basta disseminar arquivos com registros anônimos.

As formas de proteção dos informantes podem ser efetivadas por restrição de dados (a redução do volume de informação liberado em tabelas ou arquivos); restrição de acesso (introdução de condições para uso dos dados) ou alguma combinação desses procedimentos.

No arquivo agregado por setores, o IBGE optou pela restrição de dados como forma de proteção dos dados dos informantes do Censo Demográfico 2022. Assim, para os setores com menos de cinco domicílios particulares permanentes omitiram-se os valores da maioria das variáveis de dados. Foram mantidas apenas as variáveis estruturais tais como: a identificação das subdivisões geográficas, o número de domicílios e a população. Para indicar a omissão dos dados, os valores das variáveis foram preenchidos com "x". Esta medida, já estava em vigor no Censo Demográfico 2010.

Para os demais setores, tendo em vista que se trata de um recorte geográfico muito desagregado, deve ser evitada a divulgação de células com frequências iguais a 1 ou 2. O objetivo é evitar uma possível reconstrução do questionário individual dos domicílios ao combinar as respostas dessas frequências baixas. Desta forma, para aumentar os valores das frequências nas células utilizou-se a técnica de recodificação global, que agrupa valores das variáveis utilizadas nas tabelas. Mais especificamente, a variável de idade da pessoa, é apresentada em grupos quinquenais. Após este procedimento, restando células com frequências iguais a 1 ou 2, estes valores também são substituídos por "x".

Nos agregados por setores da pesquisa do entorno, para os arquivos de pessoas e domicílios foram omitidos apenas variáveis de setores com menos de cinco domicílios particulares permanentes. Para os arquivos de faces não foi aplicado sigilo

# 3. Organização dos arquivos {#organizacao}

## 3.1. Relação de arquivos para download {#arquivos-download}

Esta divulgação compreende a disponibilização de arquivos para download no portal do IBGE, na área de divulgações de resultados do Censo 2022. Os arquivos com os dados são disponíveis nos seguintes formatos:

- **CSV** (_Comma Separated Values_), arquivo de formato texto, em codificação UTF-8, com delimitador entre os campos (ponto-e-vírgula), valores de todos os campos entre aspas duplas ("), valores decimais com separador ponto.

- **XLSX**, arquivo de planilha do Microsoft Excel.

- **SHP** (_Shapefile_): formato de armazenamento de dados de vetor. É armazenado como um conjunto de arquivos relacionados e contém uma classe de feição. Nesses arquivos, as variáveis básicas são disponibilizadas como atributos do arquivo vetorial da Malha de Setores Censitários – 2022.

Os seguintes arquivos são disponibilizados:

|**Agregados por Setores Censitários / Municípios / Distritos / Subdistritos / Bairros**|**Quantidade**<br>**de Variáveis**|**Variáveis**|
|---|---|---|
|**Arquivo Básico**|7|V00001 - V00007|
|Agregados_por_setores_basico_BR.[csv\|xlsx]|||
|Agregados_por_municipios_basico_BR.[csv\|xlsx]|||
|Agregados_por_distritos_basico_BR.[csv\|xlsx]|||
|Agregados_por_subdistritos_basico_BR.[csv\|xlsx]|||
|Agregados_por_bairros_basico_BR.[csv\|xlsx]|||
|**Arquivo Domicílios - Características de Domicílios - Parte 1**|89|V00001 - V00089|
|Agregados_por_setores_caracteristicas_domicilio1_BR.[csv\|xlsx]|||
|Agregados_por_municipios_caracteristicas_domicilio1_BR.[csv\|xlsx]|||
|Agregados_por_distritos_caracteristicas_domicilio1_BR.[csv\|xlsx]|||
|Agregados_por_subdistritos_caracteristicas_domicilio1_BR.[csv\|xlsx]|||
|Agregados_por_bairros_caracteristicas_domicilio1_BR.[csv\|xlsx]|||
|**Arquivo Domicílios - Características de Domicílios - Parte 2**|406|V00090 - V00495|
|Agregados_por_setores_caracteristicas_domicilio2_BR.[csv\|xlsx]|||
|Agregados_por_municipios_caracteristicas_domicilio2_BR.[csv\|xlsx]|||
|Agregados_por_distritos_caracteristicas_domicilio2_BR.[csv\|xlsx]|||
|Agregados_por_subdistritos_caracteristicas_domicilio2_BR.[csv\|xlsx]|||
|Agregados_por_bairros_caracteristicas_domicilio2_BR.[csv\|xlsx]|||
|**Arquivo Domicílios - Características de Domicílios - Parte 3**|148|V00496 - V00643|
|Agregados_por_setores_caracteristicas_domicilio3_BR.[csv\|xlsx]|||
|Agregados_por_municipios_caracteristicas_domicilio3_BR.[csv\|xlsx]|||

|Agregados_por_distritos_caracteristicas_domicilio3_BR.[csv\|xlsx]|||
|---|---|---|
|Agregados_por_subdistritos_caracteristicas_domicilio3_BR.[csv\|xlsx]|||
|Agregados_por_bairros_caracteristicas_domicilio3_BR.[csv\|xlsx]|||
|**Arquivo Pessoas - Alfabetização**|362|V00644 - V01005|
|Agregados_por_setores_alfabetizacao_BR.[csv\|xlsx]|||
|Agregados_por_municipios_alfabetizacao_BR.[csv\|xlsx]|||
|Agregados_por_distritos_alfabetizacao_BR.[csv\|xlsx]|||
|Agregados_por_subdistritos_alfabetizacao_BR.[csv\|xlsx]|||
|Agregados_por_bairros_alfabetizacao_BR.[csv\|xlsx]|||
|**Arquivo Pessoas - Demografia**|36|V01006 - V01041|
|Agregados_por_setores_demografia_BR.[csv\|xlsx]|||
|Agregados_por_municipios_demografia_BR.[csv\|xlsx]|||
|Agregados_por_distritos_demografia_BR.[csv\|xlsx]|||
|Agregados_por_subdistritos_demografia_BR.[csv\|xlsx]|||
|Agregados_por_bairros_demografia_BR.[csv\|xlsx]|||
|**Arquivo Pessoas - Parentesco**|182|V01042 - V01223|
|Agregados_por_setores_parentesco_BR.[csv\|xlsx]|||
|Agregados_por_municipios_parentesco_BR.[csv\|xlsx]|||
|Agregados_por_distritos_parentesco_BR.[csv\|xlsx]|||
|Agregados_por_subdistritos_parentesco_BR.[csv\|xlsx]|||
|Agregados_por_bairros_parentesco_BR.[csv\|xlsx]|||
|**Arquivo Mortalidade - Óbitos**|93|V01224 - V01316|
|Agregados_por_setores_obitos_BR.[csv\|xlsx]|||
|Agregados_por_municipios_obitos_BR.[csv\|xlsx]|||
|Agregados_por_distritos_obitos_BR.[csv\|xlsx]|||
|Agregados_por_subdistritos_obitos_BR.[csv\|xlsx]|||
|Agregados_por_bairros_obitos_BR.[csv\|xlsx]|||
|**Arquivo Pessoas - Cor ou Raça **|95|V01317 - V01411|
|Agregados_por_setores_cor_ou_raca_BR.[csv\|xlsx]|||
|Agregados_por_municipios_cor_ou_raca_BR.[csv\|xlsx]|||
|Agregados_por_distritos_cor_ou_raca_BR.[csv\|xlsx]|||
|Agregados_por_subdistritos_cor_ou_raca_BR.[csv\|xlsx]|||
|Agregados_por_bairros_cor_ou_raca_BR.[csv\|xlsx]|||
|**Arquivo Domicílios - Indígenas**|190|V01500 - V01689|
|Agregados_por_setores_domicilios_indigenas_BR.[csv\|xlsx]|||
|Agregados_por_municipios_domicilios_indigenas_BR.[csv\|xlsx]|||
|Agregados_por_distritos_domicilios_indigenas_BR.[csv\|xlsx]|||
|Agregados_por_subdistritos_domicilios_indigenas_BR.[csv\|xlsx]|||
|Agregados_por_bairros_domicilios_indigenas_BR.[csv\|xlsx]|||
|**Arquivo Pessoas - Indígenas**|839|V01690 - V02528|
|Agregados_por_setores_pessoas_indigenas_BR.[csv\|xlsx]|||
|Agregados_por_municipios_pessoas_indigenas_BR.[csv\|xlsx]|||
|Agregados_por_distritos_pessoas_indigenas_BR.[csv\|xlsx]|||
|Agregados_por_subdistritos_pessoas_indigenas_BR.[csv\|xlsx]|||
|Agregados_por_bairros_pessoas_indigenas_BR.[csv\|xlsx]|||
|**Arquivo Domicílios - Quilombolas**|196|V03000 - V03195|
|Agregados_por_setores_domicilios_quilombolas_BR.[csv\|xlsx]|||
|Agregados_por_municipios_domicilios_quilombolas_BR.[csv\|xlsx]|||
|Agregados_por_distritos_domicilios_quilombolas_BR.[csv\|xlsx]|||
|Agregados_por_subdistritos_domicilios_quilombolas_BR.[csv\|xlsx]|||
|Agregados_por_bairros_domicilios_quilombolas_BR.[csv\|xlsx]|||
|**Arquivo Pessoas - Quilombolas**|755|V03196 - V03950|
|Agregados_por_setores_pessoas_quilombolas_BR.[csv\|xlsx]|||
|Agregados_por_municipios_pessoas_quilombolas_BR.[csv\|xlsx]|||
|Agregados_por_distritos_pessoas_quilombolas_BR.[csv\|xlsx]|||
|Agregados_por_subdistritos_pessoas_quilombolas_BR.[csv\|xlsx]|||
|Agregados_por_bairros_pessoas_quilombolas_BR.[csv\|xlsx]|||
|**Arquivo Domicílios – Entorno**|35|V05000 – V05034|
|Agregados_por_setores_entorno_domicilios_BR.[csv\|xlsx]|||
|Agregados_por_municipios_entorno_domicilios_BR.[csv\|xlsx]|||
|Agregados_por_distritos_entorno_domicilios_BR.[csv\|xlsx]|||
|Agregados_por_subdistritos_entorno_domicilios_BR.[csv\|xlsx]|||
|Agregados_por_bairros_entorno_domicilios_BR.[csv\|xlsx]|||
|**Arquivo Moradores - Entorno**|35|V05200 - V05234|
|Agregados_por_setores_entorno_moradores_BR.[csv\|xlsx]|||
|Agregados_por_municipios_entorno_moradores_BR.[csv\|xlsx]|||
|Agregados_por_distritos_entorno_moradores _BR. [csv\|xlsx]|||
|Agregados_por_subdistritos_entorno_moradores _BR.[csv\|xlsx]|||
|Agregados_por_bairros_entorno_moradores_BR.[csv\|xlsx]|||
|**Arquivo Faces - Entorno**|35|V05400 - V05434|
|Agregados_por_setores_entorno_faces_BR.[csv\|xlsx]<br>Agregados_por_municipios_entorno_faces _BR.[csv\|xlsx]<br>Agregados_por_distritos_entorno_faces _BR.[csv\|xlsx]<br>Agregados_por_subdistritos_entorno_faces _BR.[csv\|xlsx]<br>Agregados_por_bairros_entorno_faces_BR.[csv\|xlsx]|||
|**Arquivo Renda Responsável**|5|V06001-V06005|
|Agregados_por_setores_renda_responsavel_BR.[csv\|xlsx] |||
|Agregados_por_municipios_renda_responsavel_BR.[csv\|xlsx] |||
|Agregados_por_distritos_renda_responsavel_BR.[csv\|xlsx] |||
|Agregados_por_subdistritos_renda_responsavel_BR.[csv\|xlsx] |||
|Agregados_por_bairros_renda_responsavel_BR.[csv\|xlsx] |||

|**Dicionário de Dados**|**Quantidade de Variáveis**|
|---|---|
|Dicionário_de_dados.xlsx|1411 Não PCT|
||1029 Indígenas|
||951 Quilombolas|
||105 Entorno|
||5 Renda Responsável|
||**3501 Total**|

## 3.2. Relação de variáveis divulgadas {#variaveis-divulgadas}

### 3.2.1. Arquivo Básico {#arquivo-basico}

Para cada arquivo de dados, disponibilizado em formato de planilha csv ou xlsx, serão divulgadas um conjunto de variáveis cujo dicionário de dados poderá ser encontrado em planilha à parte, conforme a relação de arquivos descrita no tópico anterior.

No entanto, para os arquivos do conjunto básico apenas ( **Agregados_por_[nível]_basico_BR.[csv\|xlsx]** ) existem informações adicionais referentes a códigos e nomenclaturas de níveis territoriais, além das respectivas variáveis. A seguir listamos as colunas de informações existentes nestes arquivos:

#### 3.2.1.1. Agregados_por_setores_basico_BR.[csv|xlsx] {#agregados-setores-basico}

|**VARIÁVEL**|**DESCRIÇÃO**|
|---|---|
|CD_SETOR|_Geocódigo de Setor Censitário_|
|SITUACAO|_Situação do Setor Censitário_|
||Urbana|
||Rural|
|CD_SIT|_Situação detalhada do Setor Censitário_|
||1 - Área urbana de alta densidade de edificações de cidade ou vila|
||2 - Área urbana de baixa densidade de edificações de cidade ou vila|
||3 - Núcleo urbano|
||5 - Aglomerado rural - Povoado|
||6 - Aglomerado rural - Núcleo rural|
||7 - Aglomerado rural - Lugarejo|
||8 - Área rural(exclusive aglomerados)|
||9 - Massas de água|
|CD_TIPO|_Tipo do Setor Censitário_|
||0 - Não especial|
||1 - Favela e Comunidade Urbana|
||2 -Quartel e base militar|
||3 - Alojamento / acampamento|
||4 - Setor com baixopatamar domiciliar|
||5 - Agrupamento indígena|
||6 - Unidadeprisional|
||7 - Convento / hospital / ILPI / IACA|
||8 - Agrovila do PA|
||9 - Agrupamentoquilombola|
|AREA_KM2|_Área do Setor Censitário emquilômetrosquadrados_|
|CD_REGIAO|_Código das Grandes Regiões(Regiões Geográficas)_|
|NM_REGIAO|_Nome das Grandes Regiões(Regiões Geográficas)_|
|CD_UF|_Código da Unidade da Federação_|
|NM_UF|_Nome da Unidade da Federação_|
|CD_MUN|_Código do Município_|
|NM_MUN|_Nome do Município_|
|CD_DIST|_Código do Distrito_|
|NM_DIST|_Nome do Distrito_|
|CD_SUBDIST|_Código do Subdistrito_|
|NM_SUBDIST|_Nome do Subdistrito_|
|CD_BAIRRO|_Código do Bairro_|
|NM_BAIRRO|_Nome do Bairro_|
|CD_NU|_Código do Núcleo Urbano_|
|NM_NU|_Nome do Núcleo Urbano_|
|CD_FCU|_Código da Favela ou Comunidade Urbana_|
|NM_FCU|_Nome da Favela ou Comunidade Urbana_|
|CD_AGLOM|_Código do Aglomerado_|
|NM_AGLOM|_Nome do Aglomerado_|
|CD_RGINT|_Código da Região Geográfica Intermediária_|
|NM_RGINT|_Nome da Região Geográfica Intermediária_|
|CD_RGI|_Código da Região Geográfica Imediata_|
|NM_RGI|_Nome da Região Geográfica Imediata_|
|CD_CONCURB|_Código da Concentração Urbana_|
|NM_CONCURB|_Nome da Concentração Urbana_|
|V0001|_Total de pessoas_|
|V0002|_Total de Domicílios (DPPO + DPPV + DPPUO + DPIO + DCCM + DCSM)_|
|V0003|_Total de Domicílios Particulares (DPPO + DPPV + DPPUO + DPIO)_|
|V0004|_Total de Domicílios Coletivos (DCCM + DCSM)_|
|V0005|_Média de moradores em Domicílios Particulares Ocupados (Total pessoas em Domicílios Particulares Ocupados / DPPO + DPIO)_|
|V0006|_Percentual de Domicílios Particulares Ocupados Imputados (Total DPO imputados / Total DPO)_|
|V0007|_Total de Domicílios Particulares Ocupados (DPPO + DPIO)_|

_Notas:_

_DPPO: Domicílio Particular Permanente Ocupado DPIO: Domicílio Particular Improvisado Ocupado DPPV: Domicílio Particular Permanente Vago DPPUO: Domicílio Particular Permanente de Uso Ocasional DCCM: Domicílio Coletivo Com Morador DCSM: Domicílio Coletivo Sem Morador DPO: Domicílio Particular Ocupado (DPPO + DPIO)_

#### 3.2.1.2. Agregados_por_municipios_basico_BR.[csv|xlsx] {#agregados-municipios-basico}

|**VARIÁVEL**|**DESCRIÇÃO**|
|---|---|
|CD_REGIAO|_Código das Grandes Regiões(Regiões Geográficas)_|
|NM_REGIAO|_Nome das Grandes Regiões(Regiões Geográficas)_|
|CD_UF|_Código da Unidade da Federação_|
|NM_UF|_Nome da Unidade da Federação_|
|CD_MUN|_Código do Município_|
|NM_MUN|_Nome do Município_|
|AREA_KM2|_Área em quilômetros quadrados_|
|V0001|_Total de pessoas_|
|V0002|_Total de Domicílios (DPPO + DPPV + DPPUO + DPIO + DCCM + DCSM)_|
|V0003|_Total de Domicílios Particulares (DPPO + DPPV + DPPUO + DPIO)_|
|V0004|_Total de Domicílios Coletivos (DCCM + DCSM)_|
|V0005|_Média de moradores em Domicílios Particulares Ocupados (Total pessoas em Domicílios Particulares Ocupados / DPPO + DPIO)_|
|V0006|_Percentual de Domicílios Particulares Ocupados Imputados (Total DPO imputados / Total DPO)_|
|V0007|_Total de Domicílios Particulares Ocupados (DPPO + DPIO)_|

#### 3.2.1.3. Agregados_por_distritos_basico_BR.[csv|xlsx] {#agregados-distritos-basico}

|**VARIÁVEL**|**DESCRIÇÃO**|
|---|---|
|CD_REGIAO|_Código das Grandes Regiões(Regiões Geográficas)_|
|NM_REGIAO|_Nome das Grandes Regiões(Regiões Geográficas)_|
|CD_UF|_Código da Unidade da Federação_|
|NM_UF|_Nome da Unidade da Federação_|
|CD_MUN|_Código do Município_|
|NM_MUN|_Nome do Município_|
|CD_DIST|_Código do Distrito_|
|NM_DIST|_Nome do Distrito_|
|CD_RGINT|_Código da Região Geográfica Intermediária_|
|NM_RGINT|_Nome da Região Geográfica Intermediária_|
|CD_RGI|_Código da Região Geográfica Imediata_|
|NM_RGI|_Nome da Região Geográfica Imediata_|
|CD_CONCURB|_Código da Concentração Urbana_|
|NM_CONCURB|_Nome da Concentração Urbana_|
|AREA_KM2|_Área em quilômetros quadrados_|
|V0001|_Total de pessoas_|
|V0002|_Total de Domicílios (DPPO + DPPV + DPPUO + DPIO + DCCM + DCSM)_|
|V0003|_Total de Domicílios Particulares (DPPO + DPPV + DPPUO + DPIO)_|
|V0004|_Total de Domicílios Coletivos (DCCM + DCSM)_|
|V0005|_Média de moradores em Domicílios Particulares Ocupados (Total pessoas em Domicílios Particulares Ocupados / DPPO + DPIO)_|
|V0006|_Percentual de Domicílios Particulares Ocupados Imputados (Total DPO imputados / Total DPO)_|
|V0007|_Total de Domicílios Particulares Ocupados (DPPO + DPIO)_|

#### 3.2.1.4. Agregados_por_subdistritos_basico_BR.[csv|xlsx] {#agregados-subdistritos-basico}

|**VARIÁVEL**|**DESCRIÇÃO**|
|---|---|
|CD_REGIAO|_Código das Grandes Regiões(Regiões Geográficas)_|
|NM_REGIAO|_Nome das Grandes Regiões(Regiões Geográficas)_|
|CD_UF|_Código da Unidade da Federação_|
|NM_UF|_Nome da Unidade da Federação_|
|CD_MUN|_Código do Município_|
|NM_MUN|_Nome do Município_|
|CD_DIST|_Código do Distrito_|
|NM_DIST|_Nome do Distrito_|
|CD_SUBDIST|_Código do Subdistrito_|
|NM_SUBDIST|_Nome do Subdistrito_|
|CD_RGINT|_Código da Região Geográfica Intermediária_|
|NM_RGINT|_Nome da Região Geográfica Intermediária_|
|CD_RGI|_Código da Região Geográfica Imediata_|
|NM_RGI|_Nome da Região Geográfica Imediata_|
|CD_CONCURB|_Código da Concentração Urbana_|
|NM_CONCURB|_Nome da Concentração Urbana_|
|AREA_KM2|_Área em quilômetros quadrados_|
|V0001|_Total de pessoas_|
|V0002|_Total de Domicílios (DPPO + DPPV + DPPUO + DPIO + DCCM + DCSM)_|
|V0003|_Total de Domicílios Particulares (DPPO + DPPV + DPPUO + DPIO)_|
|V0004|_Total de Domicílios Coletivos (DCCM + DCSM)_|
|V0005|_Média de moradores em Domicílios Particulares Ocupados (Total pessoas em Domicílios Particulares Ocupados / DPPO + DPIO)_|
|V0006|_Percentual de Domicílios Particulares Ocupados Imputados (Total DPO imputados / Total DPO)_|
|V0007|_Total de Domicílios Particulares Ocupados (DPPO + DPIO)_|

#### 3.2.1.5. Agregados_por_bairros_basico_BR.[csv|xlsx] {#agregados-bairros-basico}

|**VARIÁVEL**|**DESCRIÇÃO**|
|---|---|
|CD_REGIAO|_Código das Grandes Regiões(Regiões Geográficas)_|
|NM_REGIAO|_Nome das Grandes Regiões(Regiões Geográficas)_|
|CD_UF|_Código da Unidade da Federação_|
|NM_UF|_Nome da Unidade da Federação_|
|CD_MUN|_Código do Município_|
|NM_MUN|_Nome do Município_|
|CD_DIST|_Código do Distrito_|
|NM_DIST|_Nome do Distrito_|
|CD_SUBDIST|_Código do Subdistrito_|
|NM_SUBDIST|_Nome do Subdistrito_|
|CD_BAIRRO|_Código do Bairro_|
|NM_BAIRRO|_Nome do Bairro_|
|CD_RGINT|_Código da Região Geográfica Intermediária_|
|NM_RGINT|_Nome da Região Geográfica Intermediária_|
|CD_RGI|_Código da Região Geográfica Imediata_|
|NM_RGI|_Nome da Região Geográfica Imediata_|
|CD_CONCURB|_Código da Concentração Urbana_|
|NM_CONCURB|_Nome da Concentração Urbana_|
|AREA_KM2|_Área em quilômetros quadrados_|
|V0001|_Total de pessoas_|
|V0002|_Total de Domicílios (DPPO + DPPV + DPPUO + DPIO + DCCM + DCSM)_|
|V0003|_Total de Domicílios Particulares (DPPO + DPPV + DPPUO + DPIO)_|
|V0004|_Total de Domicílios Coletivos(DCCM + DCSM)_|
|V0005|_Média de moradores em Domicílios Particulares Ocupados (Total pessoas em Domicílios Particulares Ocupados / DPPO + DPIO)_|
|V0006|_Percentual de Domicílios Particulares Ocupados Imputados (Total DPO imputados / Total DPO)_|
|V0007|_Total de Domicílios Particulares Ocupados (DPPO + DPIO)_|

### 3.2.2. Arquivos por tema {#arquivos-tema}

Para consultar detalhes das variáveis, consultar o arquivo em anexo relativo ao dicionário de dados. A seguir, são listadas as quantidades totais de variáveis por tema, assim com os respectivos intervalos de códigos das variáveis:

|**Tema**|**Quantidade de Variáveis**|**Variáveis**|
|---|---|---|
|**Arquivo Domicílios - Características de Domicílios - Parte 1**|89|V00001 - V00089|
|**Arquivo Domicílios - Características de Domicílios - Parte 2**|406|V00090 - V00495|
|**Arquivo Domicílios - Características de Domicílios - Parte 3**|148|V00496 - V00643|
|**Arquivo Pessoas - Alfabetização**|362|V00644 - V01005|
|**Arquivo Pessoas - Demografia**|36|V01006 - V01041|
|**Arquivo Pessoas - Parentesco**|182|V01042 - V01223|
|**Arquivo Mortalidade - Óbitos**|93|V01224 - V01316|
|**Arquivo Pessoas - Cor ou Raça **|95|V01317 - V01411|
|**Arquivo Domicílios - Indígenas**|190|V01500 - V01689|
|**Arquivo Pessoas - Indígenas**|839|V01690 - V02528|
|**Arquivo Domicílios -Quilombolas**|196|V03000 - V03195|
|**Arquivo Pessoas -Quilombolas**|755|V03196 - V03950|
|**Arquivo Domicílios - Entorno**|35|V05000 - V05034|
|**Arquivo Pessoas – Entorno**|35|V05200 - V05234|
|**Arquivo Faces- Entorno**|35|V05400 - V05434|
|**Arquivo Renda Responsável**|5|V06001 – V06005|
|**Total**|**3501 variáveis**||

## 3.3. Geocódigo de Setor Censitário (CD_SETOR) {#cd-setor}

O geocódigo do Setor Censitário é composto por 15 algarismos que remontam à organização político-administrativa a que o setor pertence e são representados pelos dois algarismos iniciais. Os cinco dígitos que os seguem correspondem ao Município, os dois seguintes indicam o Distrito, os dois posteriores o Subdistrito e, finalmente, os quatro finais são específicos do Setor Censitário, conforme ilustrado abaixo.

|UF|UF||Município|Município|Município||Distrito|Distrito|Subdistrito|Subdistrito||Setor|Setor||
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
|**2**|**1**|**0**|**0**|**8**|**7**|**3**|**0**|**5**|**0**|**0**|**0**|**0**|**2**|**6**|

# 4. Potenciais usos e aplicações do produto divulgado {#usos}

Ao longo da última década, desde o Censo Demográfico 2010, foi possível notar a grande demanda da sociedade por dados mais desagregados, permitindo que sejam construídos recortes territoriais diferentes daqueles que são usualmente publicados ou ainda que não compunham delimitações territoriais formais previamente estabelecidas.

Visto isso, os dados divulgados de "Agregados por Setores Censitários: Resultados do Universo" trazem uma gama de aplicações práticas com vistas à solução de questionamentos a respeito do total de população ou domicílios existentes em uma determinada área de interesse do usuário. Também permite análises de recortes territoriais envolvidos em um determinado fenômeno que esteja sendo observado, tais como áreas de risco de deslizamentos, enchentes, queimadas e demais impactos socioambientais. A publicação permite trabalhar de forma integrada à malha territorial, em plataformas de GIS e, dali, extraindo os dados e informações que deseja.

Dessa forma, as informações agregadas por Setores Censitários são um grande passo para a disponibilização de ferramentas que entregam à sociedade a possibilidade de se construir análises de forma mais detalhada em áreas menores do território.

# 5. Referências {#referencias}

CENSO Demográfico 2010. Rio de Janeiro, IBGE, 2011.

Censo Demográfico 2010: Agregados por Setores Censitários: Resultados do Universo. Rio de Janeiro: IBGE, 2011. Disponível em: https://www.ibge.gov.br/estatisticas/sociais/populacao/9662-censo-demografico2010.html?edicao=10410

Censo Demográfico 2000. Rio de Janeiro, IBGE, 2003. Agregados por Setores Censitários. Disponível em: <https://www.ibge.gov.br/estatisticas/sociais/populacao/9663-censo-demografico2000.html?edicao=10192>. Acesso em: mar 2024.

Censo Demográfico 2000: Agregados por Setores Censitários dos Resultados do Universo. Rio de Janeiro: IBGE, 2002. Disponível em: https://biblioteca.ibge.gov.br/index.php/biblioteca-catalogo?view=detalhes&id=21901

Censo Demográfico 1991: Agregado por Setores: Resultados do Universo. Rio de Janeiro: IBGE, 1991. Disponível em: https://biblioteca.ibge.gov.br/index.php/bibliotecacatalogo?view=detalhes&id=293715

IBGE. _Código de Boas Práticas das Estatísticas do IBGE_ . Rio de Janeiro: IBGE, 2013. Disponível em:

https://ftp.ibge.gov.br/Informacoes_Gerais_e_Referencia/Codigo_de_Boas_Praticas_das _Estatisticas_do_IBGE.pdf. Acesso em: jun. 2023.

IBGE. _Divisão territorial brasileira 2022_ . Rio de Janeiro, 202. Disponível em: https://www.ibge.gov.br/geociencias/organizacao-do-territorio/estrutura-territorial/23701divisao-territorial-brasileira.html?=&t=o-que-e. Acesso em: jun. 2023.

IBGE. _Quadro geográfico de referência para produção, análise e disseminação de estatísticas_ . 2. ed. Rio de Janeiro, 2022. 174 p. Disponível em: https://www.ibge.gov.br/geociencias/organizacao-do-territorio/divisao-regional/24233quadro-geografico-de-referencia-para-producao-analise-e-disseminacao-deestatisticas.html?=&t=publicacoes. Acesso em: jun. 2023.

IBGE. _Política de revisão de dados divulgados das operações estatísticas do IBGE_ . Rio de Janeiro: IBGE, 2015. Disponível em: https://biblioteca.ibge.gov.br/visualizacao/livros/liv95286.pdf. Acesso em:  jun. 2023.

IBGE. _Princípios fundamentais das estatísticas oficiais_ : orientações para divulgações de resultados pelo IBGE. Rio de Janeiro, [2014]. 5 p. Disponível em: http://www.ibge.gov.br/home/disseminacao/eventos/missao/codigos_principios.shtm. Acesso em: jun. 2023.

NAÇÕES UNIDAS. Comissão de Estatística. _Princípios fundamentais das estatísticas oficiais_ . Rio de Janeiro: IBGE, [2017]. 3 p. Adotados na sessão espacial da Comissão de Estatística das Nações Unidas, em 11-15 de abril de 1994, e endossados pela Assembleia Geral das Nações Unidas, realizada em Nova Iorque, em 29 de janeiro de 2014. Disponível em: https://www.ibge.gov.br/institucional/codigos-e-principios.html. Acesso em: jun. 2023.

NAÇÕES UNIDAS. Divisão de Estatística. _Principles and recommendations for population and housing censuses_ . Rev. 3. New York: UNSD, 2017. 299 p. (ST/ESA/STAT/SER.M/67/Rev.3). Disponível em: https://unstats.un.org/unsd/demographic-social/Standards-andMethods/files/Principles_and_Recommendations/Population-and-HousingCensuses/Series_M67rev3-E.pdf. Acesso em: jun. 2023.
