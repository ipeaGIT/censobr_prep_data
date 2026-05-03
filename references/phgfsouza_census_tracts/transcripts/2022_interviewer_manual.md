# Censo Demográfico 2022 - Manual do Recenseador - CD-1.09



## Descrição

Este arquivo é uma versão em Markdown do Manual do Recenseador do Censo de 2022. Como o arquivo original está em formato PDF, o objetivo da conversão é disponibilizar os dados em formato mais facilmente *machine-readable* para facilitar o uso por humanos e agentes de IA.

Arquivo gerado em: 2026-04-24.



## Fonte de dados

A fonte principal desta transcrição é:

- Ministério da Economia. Instituto Brasileiro de Geografia e Estatística - IBGE. Censo Demográfico 2022. Manual do Recenseador. CD-1.09. Rio de Janeiro, 2022. 
- O arquivo em PDF pode ser obtido a partir do [site do IBGE](https://censo2022.ibge.gov.br/component/rsfiles/download-file/files.html?path=censo2021%252Fmanuais%252FManual_Recenseador_CD_1_09.pdf&Itemid=7959) ou da função `interview_manual()` do pacote [censobr](https://ipeagit.github.io/censobr/), disponível para R.



## Processamento

As principais adaptações em relação ao PDF original incluem:

- conversão de quadros, listas e tabelas para estruturas em Markdown;
- remoção ou substituição de imagens, figuras e diagramas por marcadores textuais quando necessário;
- correção de erros evidentes no texto, formatação e digitação;
- padronização de referências internas, numeração e nomes de seções;
- pequenas intervenções editoriais para melhorar a legibilidade e a interpretação do conteúdo em formato linear, inclusive com a supressão de pequenos trechos (em especial, frases redundantes após a eliminação das imagens)

Sempre que possível, o conteúdo textual e o sentido substantivo do documento original foram preservados. No entanto, como esta versão deriva de um PDF com elementos visuais e diagramação complexa, alguns trechos podem ter sido adaptados para manter a coerência do texto em formato Markdown.



## Sumário

- [Unidade I - Aprendendo os Conceitos Fundamentais para o Censo Demográfico](#unidade1)
  - 1. Conhecendo o IBGE
  - 2. O Censo Demográfico 2022
  - 3. Estrutura Organizacional
  - 4. Ética e Integridade
  - 5. O Recenseador
  - 6. Posto de Coleta e Equipe
  - 7. Setor Censitário e Endereço
  - 8. Endereço: Conceito e Componentes
  - 9. Morador
  - 10. Espécie da Unidade Visitada
  - 11. Domicílio
  - 12. Estabelecimento
  - 13. Edificação em Construção ou em Reforma - ECR
  - 14. Pendente de Espécie da Unidade Visitada - PEUV
- [Unidade II - Executando a Coleta de Dados](#unidade2)
  - 15. Reconhecimento, Acesso, Percurso e Cobertura do Setor
  - 16. A Conduta do Recenseador
- [Glossário](#glossario)
- [Anexo 1 - Procedimentos no DMC](#anexo1)
- [Anexo 2 - Povos e Comunidades Tradicionais](#anexo2)
- [Errata](#errata)



# Unidade I - Aprendendo os Conceitos Fundamentais para o Censo Demográfico {#unidade1}



## 1. Conhecendo o IBGE



Por mais de 80 anos, o IBGE vem contribuindo para o Brasil com as suas pesquisas e mapeamentos. É um instituto de significado ímpar, dada a importância da sua atuação e dos reflexos que oferece para a sociedade, especialmente para o fortalecimento de políticas públicas. Esperamos que você queira saber mais e sinta-se motivado a colaborar com essa apaixonante instituição.

> **Saiba mais**
>
> Se tiver interesse em ampliar seu conhecimento sobre a história do IBGE, visite o portal do Núcleo Virtual da Rede de Memória do IBGE. Disponível no link: https://memoria.ibge.gov.br/ 

Em seus fundamentos, o IBGE é o órgão coordenador e produtor de informações estatísticas e geográficas do país. Para que suas atividades possam cobrir todo o território nacional, a instituição conta com uma rede nacional de pesquisa e disseminação, composta por:

- 27 Unidades Estaduais (26 nas capitais dos estados e 1 no Distrito Federal);

- 570 Agências de Coleta de Dados nos principais municípios.

> **Atenção**
>
> A missão do IBGE é “retratar o Brasil com informações necessárias ao conhecimento de sua realidade e ao exercício da cidadania”. 

O IBGE oferece um panorama objetivo e atual do país, com a produção e a disseminação de informações de natureza estatística, geográfica e ambiental. Essa missão se concretiza quando o IBGE:

- identifica, mapeia e analisa o território;
- realiza a contagem da população;
- informa como a população vive;
- apresenta a evolução da economia a partir de estatísticas do trabalho e da produção. Tais informações, relevantes e confiáveis, são essenciais para a consolidação de uma sociedade democrática e para o planejamento de políticas públicas.



## 2. O Censo Demográfico 2022

O Censo é a principal fonte de dados sobre a situação de vida da população nos municípios e localidades. Estes dados podem ser utilizados para a definição de políticas públicas em nível nacional, estadual e municipal. E também como auxílio para a tomada de decisões na área de investimentos, do setor privado. 

Em 2022, o IBGE realizará o XIII Censo Demográfico, que será um “retrato de corpo inteiro” do País com o levantamento do perfil da população e das características de seus domicílios. Ou seja, ele nos dirá como somos, quantos somos e como vivemos. 

No Censo 2022, o IBGE visitará cerca de 70 milhões de domicílios brasileiros, espalhados pelos mais de 8,5 milhões de km² do nosso vasto território, para conhecer a situação de vida da população em cada um dos 5.568 municípios. Um trabalho gigantesco que envolve milhares de pessoas! 

Para chegar a um consenso sobre quais questões serão investigadas no Censo Demográfico 2022, o IBGE promove consultas e debates amplos: com a sociedade brasileira, a comunidade acadêmica e órgãos técnico-governamentais. 

A partir daí, com a conclusão do Censo, o Brasil vai dispor de informações necessárias para conhecer as características das pessoas – onde residem, por exemplo –, a fim de planejar políticas e investimentos públicos. 

O conjunto de dados coletados trará resultados relacionados a questões fundamentais, como:

- o total da população do País por sexo e faixa etária e como está distribuída no Território Nacional;
- a expectativa de vida da população do País;
- o número médio de filhos que uma mulher teria ao final do seu período fértil;
- o tipo de habitação em que vive a população do País;
- a proporção da população que tem acesso ao saneamento básico;
- o nível de instrução da população;
- as condições de trabalho e o rendimento da população; e
- distribuição por pertencimento étnico-racial da população brasileira, incluindo povos indígenas e população quilombola.

O Censo Demográfico, assim como qualquer censo, tem como uma das etapas primordiais a coleta de dados. A partir de entrevistas com moradores, o IBGE registra informações sobre os seus modos de vida. 

Os dados coletados são relativos ao estado de coisas em uma data específica, isto é, a um retrato da situação naquele momento. É preciso adotar uma data específica como referência para evitar divergências entre quantitativos e características da população, que se alteram com o tempo: entre o início e o fim do período da coleta.

> **Atenção**
>
> É importante que você não se esqueça da data de referência para o Censo Demográfico 2022 que é meia-noite do dia 31 de julho para 1 de agosto de 2022. Isto significa que os Recenseadores deverão considerar a realidade desse instante do tempo como referência para a coleta de dados.



## 3. Estrutura Organizacional

O Censo Demográfico 2022 constitui uma grande operação estatística, mobilizando milhares de pessoas desde a fase de planejamento até a divulgação dos resultados. 

Para atingir os objetivos da operação, a estrutura organizacional do Censo Demográfico 2022 tem como ponto de partida a estrutura que o IBGE já mantém em cada estado: a estrutura da “Unidade Estadual”. A Unidade Estadual representa o Instituto em seu respectivo território. 

O esquema a seguir apresenta, para cada estado, os tipos de agentes que atuam na operação, bem como os locais a que se vinculam: Estrutura censitária simplificada – Censo Demográfico 2022.



## 4. Ética e Integridade

“*Não começamos éticos, a ética não é ponto de partida, mas ponto de chegada. Por não começarmos éticos, vivemos crises, dificuldades e impasses. É preciso que, enquanto coletividade, lutemos para minimizá-los, pondo nossos ideais em prática*”.[^1]

[^1]: Adaptação de excerto de MARCONDES, Danilo. Crise da Ética e Sociedade Brasileira. Estadão.com.br. São Paulo, 03 de maio de 2017. Disponível em: https://politica.estadao.com.br/blogs/fausto-macedo/crise-da-etica-sociedade-brasileira/. Acesso em: 30/07/2019.

É lugar-comum ouvirmos frases como: a ética é muito importante ou precisamos ser mais éticos. 

Mas o que é exatamente “ética”? 

Todos os dias somos envolvidos em situações que nos exigem tomar decisões: devolver o troco extra ou não; denunciar uma infração ou fazer “vista grossa”; usar canudos plásticos ou não; namorar esta ou aquela pessoa. Elas surgem quando estamos a caminho do trabalho, no mercado, no transporte público, na convivência familiar, nas redes sociais... 

As ações que praticamos em nossas vidas têm consequências: boas ou más – não é verdade? Dependendo da forma com que lidamos com cada situação, obtemos, no final das contas, resultados positivos ou negativos. 

Segundo o filósofo Paul Ricoeur, a ética tem como busca original: “A vida boa, com o outro e para o outro, dentro de instituições justas”.[^2]

[^2]: RICOEUR, Paul. Soi-même comme un autre. Paris: Seuil, 1990 apud. PEREIRA, Luís. Paul Ricoeur, o Caminho da Sabedoria Prática. Diacrítica, Braga, v. 26, n. 2, p. 470-489, 2012. Disponível em <http://www.scielo.mec.pt/scielo.php?script=sci_arttext&pid=S0807-89672012000200027&lng=pt&nrm=iso>. Acesso em: 30 de julho de 2019.
Pensar sobre nossas ações é uma tarefa cotidiana. Ela envolve refletir sobre o que pode ser melhor para o outro e para o coletivo, por vezes acima de interesses individuais. Pensar dessa maneira constitui uma regra de pensamento e um agir ético, em busca de uma sociedade mais justa. 

A reflexão ética propõe que bons princípios podem nos ajudar a prever melhor as nossas ações. Eles nos deixariam sempre preparados para lidar com situações adversas que extrapolam “receitas de bolo” ou orientações de um manual. 

Por exemplo, no seu dia a dia de trabalho, você poderá se deparar com situações difíceis no trato com as pessoas. Principalmente em temas tão sensíveis como os que são tratados no Censo. Tanto na interação com a equipe de trabalho, quanto na interação com os informantes. 

Durante toda a entrevista, por exemplo, o juízo particular do recenseador não deve prevalecer sobre os princípios de aplicação do questionário, estabelecidos em diversas instâncias de especialistas, em prol da confiança dos dados coletados, utilizados por políticas públicas. 

No IBGE, cada agente que o compõe tem a oportunidade de contribuir para um serviço de grandes proporções em favor do interesse social. Para desempenhar uma boa contribuição por meio de seu agir, os agentes públicos têm à disposição um outro princípio essencial além da ética: a integridade. Esse princípio rege relações e procedimentos dentro de um órgão público para preservá-lo especificamente da corrupção.



### 4.1. Ética profissional

O IBGE oferece a seus agentes públicos um código de ética profissional, para orientá-los a agir eticamente em seu dia a dia. O agente ibgeano deve:

- Zelar pela qualidade dos processos de produção das informações oficiais, adotando critérios de boas práticas tanto nas atividades finalísticas quanto nas atividades de apoio.
- agir com dignidade, decoro, zelo, eficácia, eficiência e consciência dos princípios morais, seja no exercício do cargo ou função, seja fora de seu âmbito.

Por exemplo, constitui falta de zelo com a Instituição causar dano a qualquer bem pertencente ao patrimônio público, deteriorando-o, por descuido ou má vontade. 

Entende-se por agente público: 

> Todo aquele que por força de lei, contrato ou qualquer ato jurídico preste serviços de natureza permanente, temporária, excepcional ou eventual, ainda que sem retribuição financeira, a órgão ou entidade da Administração Pública Federal direta e indireta. (art. 19, parágrafo único, da Resolução R.PR nº 06/2013, que institui e aprova o Regimento Interno da Comissão de Ética do IBGE). 

O agente público deve trabalhar em harmonia com a estrutura organizacional, respeitando seus colegas e cada concidadão, colaborando para o cumprimento das atividades da Instituição. A cortesia, a boa vontade, o cuidado e o tempo dedicados contribuem para a boa prática profissional. Tratar mal uma pessoa significa causar-lhe dano moral.

> **Atenção**
>
> Ter ética profissional é ponderar sobre as ações realizadas no exercício de uma profissão. Esta reflexão deve anteceder a prática profissional, ou seja, ela deve orientar o que devemos fazer e como devemos fazer. 

O Censo, como qualquer operação, para ser bem executado, não depende apenas das boas orientações que o Instituto fornece a seus colaboradores; mas também do empenho e da conduta que estes demonstram e “transferem” para o seu trabalho. 

A forma como você se relaciona com as pessoas nas diversas circunstâncias de trabalho da operação exercerá grande influência na qualidade dos resultados obtidos. Um tratamento profissional, seguro, respeitoso – enfim, ético – com sua equipe de trabalho e com os cidadãos, que fornecerão as informações, é muito importante. 

O Código de Ética Profissional do IBGE funciona como um documento de referência para todos os agentes públicos a serviço da instituição. A partir de sua leitura e análise, será possível uma melhor reflexão sobre a conduta a ser adotada em cada situação.



### 4.2. Integridade

A busca pela promoção de uma cultura ética e íntegra nas organizações públicas e privadas tem sido uma preocupação, não só no Brasil, como no mundo... Mas o que é integridade?

A Organização para a Cooperação e Desenvolvimento Econômico (OCDE) esclarece que a integridade pública tem por objetivo “proteger o interesse público sobre interesses privados e dar-lhe prioridade sobre estes no âmbito do setor público”, por meio da “conformidade e adesão coerente a valores éticos, princípios e normas comuns”. [^3]

[^3]: OCDE – Organisation de coopération et de développement économiques. Recommandation Integrité Publique. Disponível em: http://www.oecd.org/gov/ethics/Recommandation-integrite-publique.pdf. Acesso em: 27 de janeiro de 2020. Tradução livre.
De maneira complementar, o Ministério da Economia caracteriza a integridade como o princípio da governança pública que previne e remedia práticas de corrupção nas instituições públicas. Isto é, fraudes, irregularidades e desvios éticos e de conduta – das quais são exemplos a manipulação de dados/informações e o extravio de recursos materiais.[^4]

[^4]: Cf. Portaria Nº 239, de 23 de maio de 2019.



As quebras de integridade afetam o governo, as empresas, e as pessoas.[^5] De que maneira? 

Os governos:

[^5]:  Cf. Escola Superior do Tribunal de Contas da União. Fundamentos da Integridade Pública: Prevenindo a corrupção, 2020. Disponível em: https://contas.tcu.gov.br/ead/course/search.php?search=2020%2FPIAPUW01. Acesso em: jul./2020. 
- minando a democracia e o Estado de Direito;
- prejudicando o desenvolvimento em geral;
- provocando a desmoralização e a perda de confiança no governo e nas instituições públicas; e
- aumentando os custos e reduzindo a qualidade dos serviços públicos. 

As empresas:
- distorcendo o mercado e desestimulando os investimentos;
- aumentando os custos das empresas;
- reduzindo a produtividade; e
- empurrando empresas para a informalidade. 

As pessoas:
- piorando a qualidade de vida e perpetuando a pobreza;
- arruinando carreiras e reputações;
- negando acesso a serviços básicos; e
- gerando sentimento de desilusão. 

Como agentes públicos, é fundamental que saibamos como as ações gerenciais de controle norteiam as nossas atividades. Ações que primam pela ética, integridade pública e transparência. 

O IBGE, conhecedor do papel relevante que exerce para a sociedade, vem elaborando uma série de medidas para o fortalecimento da integridade institucional, visando ao alcance de seus objetivos e de sua missão: “Retratar o Brasil com informações necessárias ao conhecimento de sua realidade e ao exercício da cidadania.” 

Uma quebra de integridade muito delicada para o IBGE é o uso indevido ou manipulação de dados/informações na operação censitária. 

São exemplos de uso indevido ou manipulação de dados/informações:

- acesso ou concessão de acesso indevido aos dados e informações, inclusive com uso de persuasão e aproveitando-se de eventual ingenuidade dos usuários;
- acesso ou concessão de acesso a dados ou informações restritas para uso ou divulgação indevida; e
- manipulação e alteração de dados e informações em benefício próprio ou de terceiros.

> **Atenção**
>
> A Lei Federal nº 5.534/1968, modificada pela Lei Federal nº 5.878/1973 e regulamentada pelo Decreto nº 73.177/1973, assegura aos informantes das pesquisas realizadas pelo IBGE o sigilo das informações prestadas.



#### 4.2.1. Atos Ilícitos e Desvios de Conduta - Quebra de Integridade

Na perspectiva do indivíduo, podemos podemos conceituar integridade como “a qualidade daquele que se comporta da maneira correta, honesta e contrária à corrupção”. [^6] Quando algum ilícito é cometido, há uma quebra de integridade. É dever de todo agente público, ao presenciar alguma irregularidade, denunciar. 

Vejamos, a seguir, alguns conceitos relacionados à quebra de integridade.

[^6]: SEBRAE. Integridade para pequenos negócios: construa o país que desejamos a partir da sua empresa, 2017. Disponível em https://m.sebrae.com.br/Sebrae/Portal%20Sebrae/Anexos/Integridade%20para%20pequenos%20neg%C3%B3cios.pdf>. Acesso em: jul./2020.


##### 4.2.1.1. Corrupção

Segundo a organização Transparência Internacional, a corrupção é definida como o abuso do poder confiado para ganhos privados.[^7] Este abuso de poder envolve a prática de atos ilícitos ou ilegítimos de forma deliberada ou intencional, e é caracterizado pela quebra de confiança por parte do agente que comete o ato. Pode envolver agentes públicos ou privados. 

[^7]: Transparência Internacional. Perguntas frequentes, 2019. Disponível em: <https://transparenciainternacional.org.br/quem-somos/perguntas-frequentes/>. Acesso em: jul./2020. 
O ganho privado, ainda que seja, geralmente, de ordem econômica, pode ser de qualquer natureza, inclusive a fuga de uma obrigação; e pode ser destinada ao agente que comete o abuso de poder ou a um terceiro.[^8] A corrupção é um grave problema no país e no mundo, pois dificulta a boa aplicação dos recursos financeiros e o progresso, sendo necessários todos os esforços para combatê-la. A Integridade pública é uma resposta estratégica neste combate.

[^8]: Brasil. Tribunal de Contas da União. Referencial de combate a fraude e corrupção: aplicável a órgãos e entidades da Administração Pública / Tribunal de Contas da União. – Brasília : TCU, 2a Edição, Disponível em https://portal.tcu.gov.br/biblioteca-digital/referencial-de-combate-a-fraude-e-corrupcao.htm. Acesso em: jul./ 2020.


##### 4.2.1.2. Fraude

Pela norma ISA 240 da International Auditing and Assurance Standards Board (IAASB)[^9], fraude é um “ato intencional praticado por um ou mais indivíduos, entre gestores, responsáveis pela governança, empregados ou terceiros, envolvendo o uso de falsidade para obter uma vantagem injusta ou ilegal”. 

[^9]:  *International Auditing and Assurance Standards Board* é um órgão normalizador independente, definindo padrões internacionais para auditoria, controle da qualidade, avaliação e serviços relacionados, facilitando a convergência das normas nacionais e internacionais.
A fraude pressupõe a intenção de praticar o ato ilícito. Distinguindo-se da fraude, o erro é um ato não intencional resultante de omissão, desatenção, má interpretação, fruto de descuidos ou engano. 

Comete fraude até o agente que não se beneficia dela. 

“*A intenção é um elemento importante para diferenciar a fraude do erro.*”



##### 4.2.1.3. Detecção

Ainda que o IBGE adote práticas de prevenção em seus processos de trabalho, alguns agentes podem decidir cometer fraude e corrupção, porque julgariam os riscos baixos, ora porque obteriam benefícios altos. 

A fim de combater a fraude ou corrupção ocasionais, o IBGE vem aprimorando vários mecanismos de detecção, por meio de atividades e técnicas, capazes de apontá-las.



##### 4.2.1.4. Pressão ilegal para influenciar agente público

Caso ocorram, no decorrer do trabalho, pressões explícitas ou implícitas que influenciem indevidamente a atuação do agente público, fique atento e denuncie. 

Essas pressões podem provir de superiores hierárquicos (ordem interna), de colegas de trabalho (ordem organizacional), ou de agentes políticos e sociais (ordem externa). Exemplos de pressões são: pretender convencer funcionários subordinados a violar a sua conduta devida; utilizar indevidamente ou manipular dados/informações, quebrar o sigilo da informação.[^10]

[^10]: Escola Superior do Tribunal de Contas da União. Fundamentos da Integridade Pública: Prevenindo a corrupção, 2020. Disponível em: https://contas.tcu.gov.br/ead/course/search.php?search=2020%2FPIAPUW01. Acesso em: jul./2020.

> **Atenção**
>
> Ocasionais irregularidades serão apuradas com rigor, de acordo com as legislações vigentes. 



**Outros exemplos de violações de integridade:** 

O IBGE tem uma Comissão de Ética, e qualquer cidadão pode recorrer a ela para denunciar casos de conduta antiética do agente público do IBGE, para instauração de procedimento formal, através do e-mail: etica@ibge.gov.br.

**(I)** **Desvio Ético ou de Conduta**

- Atraso no andamento dos trabalhos, por conduta profissional dissonante dos interesses institucionais;
- execução de atividades alheias ao serviço, durante o expediente;
- uso do cargo ou função para favorecimento pessoal ou de terceiros;
- não realização das atribuições com zelo, dedicação, presteza, responsabilidade e qualidade;
- não cumprimento da carga horária, ou ausência do trabalho, sem prévio aviso ou autorização da chefia;
- omissão do servidor em denunciar ou representar ocorrência de irregularidade;
- assédio moral ou sexual; e
- discriminação de raça, gênero, religião, origem e orientação sexual.

**(II)** **Uso Indevido ou Manipulação de Dados e Informações**
- Acesso ou concessão de acesso indevido aos dados e informações, inclusive com uso de persuasão e eventual ingenuidade dos usuários;
- acesso ou concessão de acesso a dados ou informações restritas para uso ou divulgação indevida; e
- manipulação e alteração de dados e informações em benefício próprio ou de terceiros. 

**(III)** **Desvio de Pessoal ou de Recursos Materiais**

- Desvio de função de contratados;
- utilização de recursos logísticos e materiais em finalidade estranha às necessidades do serviço. 

Os exemplos de quebra de integridade não se esgotam nesta lista. Cabe ao agente público atentar que os atos ilícitos e desvios de condutas estão sujeitos a penalidades e sanções previstas em leis ou normativos internos.



### 4.2.2. Ações disciplinares

A Administração Pública tem o dever legal de apurar todas as irregularidades de que tiver conhecimento. No caso dos servidores temporários, as apurações disciplinares devem ser feitas em sindicâncias administrativas que estão reguladas pela Lei 8.745/93 e, subsidiariamente, pela Lei 8.112/90. As penalidades podem chegar a extinção do contrato ou mesmo a proibição de fazer concurso público por até cinco anos. 

Devem-se observar, também, situações de acumulações ilegais, conforme previsto no Art. 6° da Lei nº 8.745/93.

>  **Atenção**
>
> O canal apropriado para apresentar denúncia, sugestão, elogio, reclamação ou solicitação de providência ou de simplificação de serviços é o site Fala.BR (plataforma integrada de Ouvidoria e Acesso a Informação do Governo Federal).



## 5. O Recenseador

O Recenseador é o responsável por fazer o trabalho da coleta de dados por meio de entrevistas com os moradores. Estando em contato direto com o público, ele representa o IBGE para a sociedade. 

A qualidade dos resultados que serão entregues para o país ao final da operação depende diretamente da qualidade do seu trabalho e do modo como se dedica às atividades em seu dia a dia. 

O trabalho do Recenseador dentro de sua área de trabalho consiste em:

- obter as informações junto aos moradores;
- atualizar os endereços dos domicílios e dos estabelecimentos. 

O Recenseador contará com a supervisão de um Agente Censitário Supervisor (ACS). O ACS lhe fornecerá as informações, o material necessário e seus instrumentos de trabalho, assim como lhe prestará orientação técnica e assistência permanente durante o período de realização da coleta de dados. É a ele que o Recenseador deve se reportar sempre que encontrar alguma dificuldade. Nos municípios onde não houver ACS contratado, o Recenseador se reportará ao Agente Censitário Municipal (ACM). 

O bom desempenho do trabalho de coleta de dados está associado à maneira como o Recenseador se dedicou ao treinamento e, consequentemente, ao domínio dos conceitos e dos procedimentos que serão utilizados no Censo Demográfico 2022.

> **Atenção**
>
> Antes de iniciar a coleta de dados, o candidato a Recenseador faz um bom treinamento, no qual se dedica à realização de todas as atividades propostas, procurando rever e exercitar os conteúdos e procedimentos. Assim, você deve utilizar todos os recursos instrucionais disponíveis, esclarecendo suas dúvidas sempre que necessário. 

Por isso, é importante que o Recenseador tenha um bom aproveitamento no momento de formação, uma vez que a escolha da área em que deseja trabalhar dependerá da sua classificação final na avaliação do treinamento. Essa área, chamada pelo IBGE de Setor Censitário, será o local de trabalho do Recenseador, onde realizará a coleta de dados. 

Durante o trabalho de coleta de dados, o Recenseador ficará lotado em um local físico sob responsabilidade do IBGE, chamado de “**Posto de Coleta**”.



## 6. Posto de Coleta e Equipe



O Posto de Coleta é o local de trabalho criado temporariamente pelo IBGE para dar suporte à operação censitária. Nele, reúne-se a equipe encarregada do gerenciamento, da supervisão e da coleta de dados de uma determinada porção do território. 

Sempre que requisitado, o Recenseador deverá comparecer ao Posto de Coleta para que o Supervisor possa avaliar seu trabalho e corrigir possíveis falhas. Caso a supervisão indique a necessidade de corrigir algum dado coletado, o Recenseador deverá retornar a campo. 

Resumidamente, o trabalho do Recenseador consiste em percorrer o Setor Censitário sob sua responsabilidade, registrando todos os endereços de forma correta e realizando as entrevistas com os moradores. Nos setores onde há lista prévia, o Recenseador também deve atualizar os endereços. 

Após a conclusão do trabalho, o Recenseador deve, no menor tempo possível, dirigir-se ao Posto de Coleta e devolver o material de trabalho ao Instituto.



### 6.1. Quem é o Agente Censitário Supervisor (ACS)

O **Agente Censitário Supervisor** (ACS) será a pessoa que supervisionará o trabalho de uma equipe de Recenseadores, orientando e corrigindo falhas, assegurando, assim, a qualidade dos trabalhos. Em linhas gerais, buscará garantir que o Censo Demográfico 2022 se concretize com sucesso. 

O ACS exercerá as tarefas de supervisão da operação censitária, com atenção às questões técnicas e de informática, exercendo, quando necessário, tarefas administrativas, como renovação de contratos, avaliação de Recenseadores etc. Estará subordinado ao Agente Censitário Municipal (ACM). 

A função de **Supervisão** serve de elo entre aqueles que coletam as informações (os Recenseadores) e aqueles que gerenciam o Posto de Coleta (responsabilidade do ACM). Sua principal função é acompanhar, avaliar e, sobretudo, orientar os Recenseadores durante a execução dos trabalhos de campo. Assim, evitam-se erros no preenchimento dos questionários e falhas na cobertura do Setor Censitário (como a omissão de pessoas e domicílios). 

O ACM é quem irá orientá-lo na correta execução de seu trabalho. O ACS deve se reportar ao ACM sempre que houver qualquer dúvida ou problema que comprometa a realização de suas tarefas. 

Para que os ACS cumpram com tranquilidade suas funções, estas foram divididas em duas grandes frentes:

- o treinamento e a contratação dos Recenseadores;
- o apoio ao Recenseador e a supervisão do seu trabalho de coleta.



### 6.2. Quem é o Agente Censitário Municipal (ACM)

O Agente Censitário Municipal (ACM) desempenhará a função de gerente do Posto de Coleta. Isso envolve as seguintes funções: gerenciar um grupo de Supervisores (ACS), distribuir tarefas e equipamentos de coleta, repassar treinamento sempre que necessário, assim como acompanhar o desenvolvimento dos trabalhos e cobrar o cumprimento das normas estabelecidas pelo IBGE. 

O Posto de Coleta serve de base para a equipe da coleta de dados e da supervisão, ou seja, é ponto de encontro dos Supervisores e Recenseadores durante as operações do Censo 2022. Para gerenciar o Posto de Coleta, o ACM utiliza o Sistema Integrado de Gerenciamento e Controle – SIGC. 

Durante todo o trabalho do Censo 2022, o ACM estará à frente de dois grupos de ações:

- Gerenciais – gestão da equipe de Supervisores e Recenseadores, de materiais e dos equipamentos do Posto de Coleta;
- Técnicas – acompanhamento e orientação técnica da coleta de dados.

> **Atenção**
>
> O ACM responde técnica e administrativamente ao Coordenador Censitário de Subárea (CCS), como visto na estrutura censitária simplificada.



## 7. Setor Censitário e Endereço

Para entender adequadamente a operação do Censo Demográfico, é necessário que você conheça a geografia que serve de referência aos levantamentos estatísticos, ou seja, as divisões (de caráter legal ou geográfico) do país, como descritas a seguir. 

O Brasil está dividido, em seu aspecto político-administrativo, nas seguintes unidades territoriais: 

- **Unidades da Federação**: São os estados, criados por lei federal, o Distrito Federal e os municípios. 
- **Estados**: São as unidades federativas autônomas de maior abrangência territorial na organização político-administrativa do Brasil, enquanto o Distrito Federal é a UF brasileira onde se localiza a sede do Governo Federal. 
- **Municípios**: São unidades federativas autônomas de caráter local que dividem integralmente os estados em áreas menores. A sua criação, incorporação, fusão ou desmembramento se dá por lei estadual (no caso do Distrito Federal, a divisão em municípios é vedada por Lei Orgânica), observada a continuidade territorial. A sede do Município é chamada de “cidade”. 
- **Distritos**: Dividem o território municipal em áreas administrativas menores para fins de planejamento e sem autonomia em relação à administração municipal. São criados, organizados, suprimidos, desmembrados ou fundidos por legislação municipal, desde que observada a legislação estadual. A sede do Distrito é chamada de “vila”. 
- **Subdistritos**: Dividem os distritos ou municípios em unidades menores, criados também por legislação municipal. A maior parte dos municípios não possui subdistritos, pois estes são adotados, geralmente, em grandes cidades, onde apenas a divisão distrital não é suficiente para as necessidades da administração. A sua divisão é adotada pelo IBGE apenas quando os critérios que este estabelece são atendidos. 

Nas operações estatísticas, as unidades territoriais brasileiras são respeitadas.

Para estudos estatísticos e geográficos, o IBGE subdivide as áreas em unidades ainda menores, sendo cada uma delas chamada de “**Setor Censitário**”.

> **Atenção**
>
> O Setor Censitário é uma unidade territorial de coleta e divulgação de dados estatísticos do IBGE. 

A extensão territorial do Setor Censitário é planejada para que você levante com qualidade as informações exigidas pelo Censo. Com a mesma finalidade, é calculada a quantidade de domicílios e estabelecimentos que você deve visitar dentro da área do Setor Censitário. 

Os setores censitários são dimensionados conforme a previsão do trabalho de pesquisa em campo e respeitando integralmente a divisão político administrativa: Subdistrito, Distrito, Município e Unidade da Federação. 

Compete ao Recenseador a coleta das informações referentes ao seu setor censitário, sempre considerando com rigor a área de coleta. Isto é, **não devem ser realizados registros de endereços e entrevistas fora da área do seu setor censitário**. Não se esqueça de registrar e atualizar todos os endereços e realizar as entrevistas em todos os domicílios de seu setor.



### 7.1. Classificação dos setores censitários

Realizar a coleta do Censo em áreas urbanas envolve determinadas estratégias que diferem das utilizadas nas áreas rurais. Em virtude disso, cada setor censitário recebe uma classificação de acordo com suas características geográficas. 

Essa classificação dos setores censitários em urbanos e rurais também serve de base para a divulgação dos dados estatísticos. 

A tabela a seguir indica resumidamente as classificações dos setores censitários em situações urbanas e rurais: 

- **Área urbana de alta densidade de edificações**: Área urbana com alta densidade de edificações.
- **Área urbana de baixa densidade de edificações**: Área urbana com baixa densidade de edificações, processos de expansão urbana, áreas verdes desabitadas, entre outras. 
- **Núcleo urbano**: Aglomerações urbanas separadas das cidades e vilas por menos de 1km ou que, superando essa distância, apresentem características urbanas (loteamentos, conjuntos habitacionais e condomínios). 
- **Aglomerado rural**: Caracteriza-se pelo caráter aglomerado de domicílios, normalmente distantes entre si não mais que 50m, e separados da franja das cidades e vilas por mais de 1km, com exceção dos núcleos urbanos. 
- **Área rural (exclusive aglomerado)**: Áreas de uso rural caracterizadas pela dispersão de domicílios e pela presença usual de estabelecimentos agropecuários.

> **Atenção**
>
> Cada uma dessas “situações” requer procedimentos de coleta específicos do Recenseador. 

Além da distinção entre urbano e rural, o IBGE identifica outras formas de organização territorial, às quais dá o nome de “tipos”. Os “tipos” encaixam-se dentro da classificação que o IBGE faz dos setores censitários, quando divide o território para fins de coleta de dados. 

**Tipos**:

- **Não Especial**: Setor censitário que não se enquadra em nenhuma outra classificação em tipo. 
- **Aglomerado Subnormal**: Forma de ocupação irregular de terrenos de propriedade alheia (públicos ou privados) para fins de habitação em áreas urbanas e, em geral, caracterizados por um padrão urbanístico irregular, carência de serviços públicos essenciais e localização em áreas restritas à ocupação. 
- **Quartel e Base Militar**: Setor censitário de instalação administrada por um comando das forças armadas, assim considerado caso a instalação possua pelo menos 50 habitantes permanentes residindo há mais de um ano no local. 
- **Alojamento / Acampamento**: O alojamento é um domicílio coletivo geralmente vinculado a alguma instituição, como universidades ou empresas, destinado a oferecer moradia por período temporário. O acampamento é entendido como instalação improvisada composta normalmente por barracas, tendas ou outras estruturas rústicas. O alojamento ou o acampamento devem possuir no mínimo 50 habitantes residindo há mais de um ano. 
- **Setor com Baixo Patamar Domiciliar**: Setor censitário que abrange baixa quantidade de domicílios, ou onde não foi identificada a presença de domicílios. 
- **Agrupamento Indígena**: Setor censitário em que existam 15 ou mais indivíduos indígenas residentes em uma ou mais moradias contíguas espacialmente e por vínculos familiares ou comunitários. 
- **Unidade Prisional**: Setor censitário relacionado às unidades prisionais que abrigam mais de 50 presos permanentes. 
- **Convento / Hospital / ILPI / IACA**[^11]: É o setor censitário dos domicílios coletivos relacionados ao acolhimento de crianças ou idosos, aos conventos e aos hospitais que contenham, cada um, mais de 50 habitantes permanentes residindo há mais de um ano no local. 
- **Agrovila do PA (Projeto de Assentamento)**: Setor censitário com mais de 50 domicílios que se encontram associados a Projetos de Assentamento. São localidades de habitação e produção agrícola, caracterizadas pelo adensamento e pela concentração de domicílios de famílias de determinado assentamento rural. 
- **Agrupamento Quilombola**: Setor censitário em que existem 15 ou mais indivíduos autodeclarados quilombolas residentes em uma ou mais moradias contíguas espacialmente e por vínculos familiares ou comunitários. 



[^11]: Os termos “asilo” e “orfanatos”, embora de uso popular, deixaram de ser adotados pelas instituições e políticas públicas. Foram substituídos por: ILPI = Instituições de Longa Permanência para Idosos e IACA = Instituições de Acolhimento a Crianças e Adolescentes.

Em resumo, os setores censitários podem ser classificados quanto à sua “situação” ou “tipo”. Isto é, em 5 situações e 10 tipos. Por exemplo, um setor censitário, que se localiza em área urbana e não rural, pode ter como situação “Área urbana de baixa densidade de edificações” e ter como tipo “Quartel/ Base Militar”. Isto é, ele é um quartel localizado numa área urbana mais abrangente, que inclui outros setores censitários e outras formas de organização. 

Tipos e situações representam justamente “estruturas territoriais”. “Estruturas territoriais” são as formas pelas quais os agrupamentos humanos se organizam. No caso do exemplo acima, um grupo menor se organiza sob a forma de um quartel, dentro de uma área maior, que é urbana e com pouca aglomeração de edificações. 

Entretanto, em alguns casos as estruturas territoriais podem não atingir o quantitativo mínimo de domicílios ou habitantes para serem isoladas em setores censitários. Imagine, por exemplo, um quartel que abriga apenas 30 moradores, localizado em área urbana densa. Este quartel, portanto, não formará sozinho um setor censitário classificado como “Quartel e Base Militar”. Ele estará em um setor censitário mais abrangente e classificado como “Não especial”.



### 7.2. Áreas de Interesse Operacional (AIOs)

Além das áreas listadas até aqui, que configurarão setores censitários, o Censo Demográfico 2022 contará com áreas diferenciadas, independentes dos setores censitários, chamadas áreas de interesse operacional indígena ou quilombola, apenas para fins da operação censitária. Essas áreas não compõem setores censitários, mas permitem assinalar áreas em que podem existir domicílios ou agrupamentos domiciliares ocupados por população indígena e/ou quilombola.

 Caso seja verificada, antes ou durante a coleta, a presença de agrupamento indígena ou quilombola, devem ser aplicados os mesmos procedimentos operacionais e metodológicos aplicados às áreas setorizadas como indígenas ou quilombolas, dispostos no Manual do Recenseador - PCT. 

Caso seu setor censitário em azul (foto) pertença total ou parcialmente a uma área de interesse operacional indígena ou quilombola, o mapa do setor no seu DMC mostrará as AIO (retângulo mais claro na foto). 

Essas áreas são carregadas automaticamente no seu Dispositivo Móvel de Coleta (DMC), e as entrevistas realizadas nessas áreas contarão com perguntas específicas que serão automaticamente apresentadas no DMC. 



### 7.3. Identificando a área de coleta

Quando for iniciar o seu trabalho como Recenseador, você receberá um mapa e uma descrição textual do perímetro do seu setor censitário, que fornecem informações para você se orientar dentro de sua área de trabalho. 

O mapa do setor censitário é fundamental para a localização do Recenseador em campo e para o trabalho de coleta.

> **Atenção**
>
> O **mapa do setor censitário** é a representação gráfica da área geográfica em que o Recenseador realizará o trabalho do Censo.



### 7.4. Mapa do setor censitário

É a representação gráfica do setor censitário. Por fins práticos, costuma retratar alguns outros elementos adicionais para facilitar o reconhecimento do setor em campo. O DMC exibe o Mapa por meio de uma imagem, obtida por satélites, da área do setor e das áreas que o rodeiam. E destaca com uma cor adequada os limites do setor, para diferenciá-lo das áreas restantes. O Mapa do setor censitário é fundamental para a localização do Recenseador em campo e para o trabalho de coleta. 

Analisar esse mapa com cuidado e atenção é o primeiro passo para garantir a qualidade do trabalho. 

É importante, antes de analisar o mapa, compreender alguns conceitos e elementos essenciais para a sua utilização.

- A **legenda** apresenta símbolos ou referências a elementos que serão encontrados no mapa por meio de cores e estilos de representação gráfica;
- A escala é a relação de proporção entre o tamanho de um objeto no mundo real e seu tamanho no mapa. Uma escala de 1:50.000 significa que 1 cm no mapa corresponde a 50.000 cm na realidade (500 m), por exemplo;
- A **imagem de satélite** serve para identificação dos elementos do terreno, tais como ruas, quadras, grandes construções etc. 

As informações adicionais sobre o setor censitário descrevem as estruturas territoriais, conforme consta nas páginas 25 e 26, que o caracterizam (núcleo urbano, aglomerado rural, terra indígena, etc). 

Para interpretar adequadamente os mapas utilizados em seu trabalho, você precisa saber também o que são **coordenadas geográficas**. Para que cada ponto da superfície da Terra possa ser localizado em um mapa, foi criado um sistema de linhas imaginárias chamado de “Sistema de Coordenadas Geográficas”. 

As coordenadas geográficas consistem em um dos métodos mais eficientes de localização, pois permitem identificar qualquer ponto na superfície da Terra por meio de dois valores – **Latitude** e **Longitude**. Elas serão obtidas através de um receptor de sinais de satélites, como o GPS **integrado** ao seu **DMC**, e serão importante recurso para o trabalho no setor. 

Veja abaixo os conceitos:

> **Saiba mais**
>
> **Latitude**: É o afastamento, medido em graus, da linha do Equador até um ponto qualquer da superfície terrestre. Ela vai de 0° a 90° e pode ser Norte ou Sul. O Brasil é um país cortado pela linha do Equador e, portanto, também possui latitudes Norte, obtidas na região Norte do país. 
>
> **Longitude**: É o afastamento, medido em graus, do meridiano de Greenwich até um ponto qualquer da superfície terrestre. Ela vai de 0° a 180° e pode ser Leste ou Oeste.
>
> Todas as longitudes no Brasil estão à Oeste de Greenwich.


> **Atenção**
>
> As coordenadas capturadas pelo DMC podem conter imprecisões em relação à sua posição real de até 10 metros, em média.



#### 7.4.1. Mapa Municipal Estatístico

Além do mapa de setor censitário que você receberá em mãos, no posto de coleta será afixado um exemplar do Mapa Municipal Estatístico. Você deve consultá-lo para saber onde o seu setor censitário se localiza no município. A partir disso, você poderá planejar os meios de acessar o setor censitário.



#### 7.4.2. Utilizando o mapa de setor censitário

O mapa do setor censitário, sendo uma representação simplificada da realidade, nem sempre representa todos os elementos visíveis em campo. Se todas as informações sobre um dado território estivessem representadas no mapa, certamente não conseguiríamos fazer sua leitura. Em virtude disso, os especialistas do IBGE selecionaram para constar no mapa somente os aspectos necessários para orientar seu trabalho de entrevistas no Censo. 

Para realizar o trabalho, é essencial que você identifique sua posição no mapa e certifique-se de que está localizado dentro do perímetro do setor censitário. Para isso, é necessário que você interprete corretamente o mapa, seguindo estas etapas:

- **confirme** a numeração do setor bem como os demais itens do seu documento de descrição;
- **identifique** o ponto inicial e o perímetro do setor;
- **identifique** os acidentes topográficos (rios, serras, lagos, etc.), caso existam, além de outros **elementos visíveis no terreno que sirvam como referências**;
- **reconheça** tanto as **vias de circulação** que fazem parte do setor quanto as que não fazem parte. Estas devem ser reconhecidas desde que: estejam próximas aos limites do setor censitário ou sejam vias de acesso a ele. 

O mapa de setor censitário, portanto, serve para que você consiga localizar os domicílios e estabelecimentos que pertencem a sua área de coleta. Em muitos casos, o Recenseador não terá em sua lista prévia o registro de todas aquelas unidades que existem no local e que devem ser recenseadas. Nesse caso, o mapa de setor oferece indícios de onde elas estão. Cada mapa de setor censitário possui o número do **geocódigo** do setor censitário alvo. Esse número serve para identificar e diferenciar os setores censitários. 

Além disso, seus limites serão destacados na cor indicada pela legenda e a sua área aparecerá sem preenchimento, enquanto as áreas dos setores vizinhos aparecerão colorizadas. Você também verá as indicações de faces em linhas destacadas dentro da área do setor, conforme a cor indicada pela legenda. 

Você receberá o mapa de setor censitário em dois formatos: digital (no DMC) e em duas vias em papel (uma com imagem de satélite e outra apenas com os limites e demais informações). 

Embora tenham formatos diferentes, ambos são igualmente importantes e possuem praticamente as mesmas informações do setor:

- identificação do geocódigo;
- perímetro;
- organização interna. 

E o aplicativo do DMC possui, particularmente, a função de exibir a posição em tempo real do Recenseador no terreno. 

Em algumas situações, a realidade do setor pode ter sido modificada depois da geração do mapa, como troca de nomes de vias, aparecimento ou desaparecimento de faces ou de quadras inteiras. Se, durante o seu trabalho de campo, você encontrar alguma modificação entre as informações no mapa em papel e aquelas encontradas no terreno, sinalize-as no mapa e atualize as informações da face no aplicativo do dispositivo móvel de coleta. Essas alterações são essenciais, pois vão ajudar na atualização dos mapas a serem utilizados em atividades e pesquisas posteriores.

> **Atenção**
>
> Procure registar nos mapas as divergências encontradas e comunicar ao seu Supervisor, ou ao ACM, para que ele avalie e tome conhecimento das mudanças encontradas no setor. Guarde o mapa em papel com cuidado e zele por sua integridade, porque, ao término da coleta, os mapas deverão ser devolvidos ao IBGE e enviados para as Supervisões de Base Territorial, que vão promover as devidas atualizações. 

Em alguns casos, o desenho dos limites de um setor censitário pode estar desatualizado em relação às imagens de satélite. Isso acontece em decorrência do material que foi utilizado para fazer o mapeamento e não representa, necessariamente, erro na delimitação do setor censitário.

Por isso, é recomendável conferir a área a ser coletada, comparando a descrição que o IBGE oferece dos contornos do setor com a análise de seu respectivo mapa.



#### 7.4.3. Descritivo de Setor Censitário

O mapa do setor virá acompanhado da **Descrição do Perímetro do Setor**, isto é, de um texto que define todo o contorno do setor em que você trabalhará. Os limites do perímetro demarcam a sua área de trabalho. 

Caso você verifique qualquer inconsistência entre o texto descritivo do perímetro e o desenho do perímetro no mapa, comunique imediatamente o seu supervisor.

> **Atenção**
>
> A Descrição do Perímetro do Setor Censitário é a relação de acidentes topográficos naturais ou artificiais (rios, vias, ruas etc.) que definem o contorno da área do setor censitário. 

Veja um modelo de Descrição do Perímetro do Setor: 

A descrição do perímetro do setor censitário é composta de cinco partes:

- Ponto Inicial e Ponto Final;
- Descrição do Perímetro;
- Setores a serem excluídos;
- Estruturas Territoriais não setorizadas;
- Acessibilidade e Observações. 

A Descrição do Perímetro do Setor Censitário é um dos principais documentos de orientação para a coleta. Esse documento, junto com o mapa do setor censitário, é uma garantia para que o Recenseador não invada a área de coleta de outro Recenseador ou omita parte das unidades do setor censitário sob sua responsabilidade. Esse documento possui informações extremamente importantes sobre o setor censitário.



#### 7.4.4. Geocódigo do Setor Censitário

Para que sejam identificados e diferenciados, todos os setores recebem um geocódigo. O geocódigo do setor é a designação utilizada para identificá-lo em relação a outros. Tem como objetivo permitir a referência de diversas informações por setor, como: unidade da federação, município, distrito, subdistrito e o número do setor. A tabela a seguir mostra um exemplo de geocódigo do setor número 51 04104 05 00 0016: 

**Geocódigo do setor 51 04104 05 00 0016** 

| Estado | Município | Distrito | Subdistrito | Setor |
| ------ | --------- | -------- | ----------- | ----- |
| 51     | 04104     | 05       | 00          | 0016  |

Além de constar no rodapé dos mapas, essa numeração também aparece no canto superior direito da Descrição do Perímetro do Setor.



#### 7.4.5. Ponto inicial e Ponto final

O Ponto inicial e o Ponto final indicam, de forma sucinta, a referência a partir da qual a descrição do perímetro do setor é documentada. O ponto inicial geralmente possui fácil acesso. Quando as circunstâncias tornarem inviável adotar o Ponto Inicial como origem do percurso, o Recenseador pode adotar um outro ponto, de mais fácil acesso, para iniciar o trabalho. É recomendável comunicar o Supervisor esse tipo de ocorrência, para que ele tome conhecimento da situação, avalie as mudanças encontradas no setor e oriente a respeito.



#### 7.4.6. Descrição do perímetro

Texto que descreve todo o limite do setor censitário definido a partir das linhas que limitam suas bordas. Essa descrição busca ao máximo utilizar pontos de referência estáveis e de fácil identificação no local, mas pode, por motivos diversos, possuir, em alguns casos, referências de difícil identificação associadas com acidentes geográficos, elementos construídos e questões legais. 

É possível, também, que você identifique inconsistências, que devem ser imediatamente comunicadas à supervisão. A correta observação do perímetro do setor passa a ser a garantia de que você não invada a área de coleta de outro setor ou omita parte do setor com área sob sua responsabilidade.

> **Atenção**
>
> O perímetro do setor não pode ser alterado, em hipótese alguma, por você, Recenseador. Portanto, esteja sempre atento ao perímetro do seu setor.



#### 7.4.7. Setores a serem excluídos

Alguns setores censitários podem estar dentro de outros. O item “Setores a serem excluídos” da Descrição do Perímetro do Setor indica se há setores que estão contidos dentro do perímetro do setor descrito e que devem ser excluídos do seu trabalho. Nesse caso, o Recenseador não deve coletar informações dos setores excluídos, pois outro Recenseador será o responsável por isso. 

1. Download de mapa e descritivo de setor no DMC: Para realizar o download do mapa e do descritivo do setor, você deverá acessar o menu “Configuração” e, em seguida, a opção “Mapas”. Na tela “gerenciar mapas”, basta clicar nas setas ao lado de cada arquivo. Os arquivos que começam com a letra “d” referem-se aos descritivos. 
2. Acesso ao descritivo de setor no DMC: Para acessar o descritivo do setor, você deverá acessar a tela “setores” e, ao lado do número do setor, clicar no ícone de opções para acessar o item “Descrição do Setor”.



#### 7.4.8. Estruturas Territoriais não setorizadas

Por vezes, há agrupamentos humanos, como aglomerados rurais e territórios indígenas, dentro do setor censitário do Recenseador, que não foram separados especificamente em um setor censitário destacado – como outros são. Nesse caso, esses aglomerados devem ser coletados normalmente no setor, mas exigindo uma atenção especial do Recenseador. 

Esses aglomerados são chamados de “**Estruturas Territoriais não setorizadas**” e também podem corresponder a agrupamentos quilombolas e aglomerados subnormais, entre outros. 

“Tipos” e “situações”, que vimos mais acima, representam justamente “estruturas territoriais”. Lá, em sua seção respectiva, damos o seguinte exemplo: 

> Há um setor censitário, que se localiza em área urbana (e não rural), que tem como situação “Área urbana de baixa densidade de edificações” e tem simultaneamente como tipo “Quartel/Base Militar”. Isto é, o setor é um quartel localizado numa área urbana mais abrangente. Área que inclui também, por sua vez, outros setores censitários e outras formas de organização. Em resumo, há um grupo menor que se organiza sob a forma de um quartel, dentro de uma área maior, que é urbana e com pouca aglomeração de edificações. 

No entanto, é possível também que exista, por exemplo, em uma área urbana, de setor urbano de alta intensidade de edificações, um quartel que conte com menos de 50 domicílios. Logo, esse quartel não é setorizado, nem recebe a classificação de “tipo”. Nesse caso, indicaremos a ocorrência desse quartel, no descritivo do setor, como não setorizado. 

Para setores que possuírem aglomerados subnormais não setorizados em seu perímetro, o Recenseador deverá obedecer todas as condutas de acessibilidade e observações especiais de abordagem, de acordo com as indicações no descritivo. Contate o Supervisor previamente e busque identificar a localização no setor deste aglomerado antes de realizar a coleta em campo.



#### 7.4.9. Acessibilidade e observações

Este item indica o registro de informações sobre o acesso e o percurso dos setores. Por exemplo: 

**Acessibilidade e Observações:** 

- RESTRIÇÃO DE ACESSO 
- ACESSO FLUVIAL A PARTIR DO POLO BASE DO “BAIXO CATRIMANI” 

O texto indica que o acesso ao setor é feito através de um rio. Isso implica uma infraestrutura diferenciada em termos logísticos (aluguel de barco etc.) e de tempo de realização do trabalho. Portanto, situações como essa requerem análise por parte dos Agentes Censitários Municipais (ACMs), dos Agentes Censitários Supervisores (ACSs) e do Recenseador responsável.



### 7.5. Logradouro, Quadra e Face

Para que você seja capaz de realizar seu trabalho corretamente, é necessário identificar logradouros, quadras e faces nos mapas e em campo. 

Logradouro é uma **área pública de circulação** de pessoas, veículos e mercadorias reconhecida pela comunidade e que, na maioria das vezes, está associada a um nome de conhecimento geral (rua, travessa, avenida, beco, estrada etc.). A principal referência para a identificação de quadras e faces é o logradouro, por se tratar **da via de circulação** que dá acesso a elas. 

**Quadra** é, geralmente, um trecho retangular bem definido de uma área urbana ou aglomerado rural limitado por vias. A via corresponde comumente a ruas e/ou estradas, mas não somente isso. Pode também corresponder a formas irregulares, como estradas de ferro, cursos d’água e encostas, entre outros.

> **Atenção**
>
> A quadra é formada por faces. Em alguns locais, a quadra pode ser chamada de “quarteirão”. 

**Face** é definida como sendo cada um dos lados da quadra, compreendida pela interseção de logradouros, contendo ou não endereço. Em outras situações menos frequentes, a face pode ser delimitada pelo setor censitário em que se encontra, caso não exista interseção de logradouros.



#### 7.5.1. Quadras fechadas e abertas

As quadras podem ser classificadas em “fechadas” e “abertas”, segundo sua estrutura. A quadra será considerada **fechada** quando suas faces constituírem um perímetro fechado, ou seja, quando todas as faces forem adjacentes umas às outras sem que faltem faces para fechar o perímetro. 

Veja, a seguir, o exemplo de uma quadra com quatro faces. Aqui, temos um exemplo de quadra fechada. 

Por outro lado, uma quadra será considerada **aberta** quando faltar uma ou mais faces para fechamento do seu perímetro. 

A seguir, temos um exemplo onde as quadras de número 1 e 2 (quatro faces) são fechadas, enquanto as quadras de número 3 (3 faces) e de número 4 (duas faces) são abertas. 

Observe o exemplo de um setor censitário real que possui quadras fechadas (F) e abertas (A) e seu croqui. 

Observe que, na figura abaixo, temos quadras de área urbana. A **Face A** destacada, à esquerda, está localizada num trecho da **Rua Jequitibás**, entre duas ruas: **Rua Um** e **Rua Dois**. A Face B, destacada à direita em formato curvo, está localizada em um trecho da **Rua Cedros** entre a **Rua Um** e **Rua Três**. Isso mostra que a face não precisa seguir rigorosamente uma forma retilínea. 

`[FIGURA OMITIDA]`

A face de uma quadra pode abrigar várias unidades edificadas. O Recenseador acessa essas unidades a partir do logradouro, isto é, da via. 

O Recenseador deve registrar os endereços das unidades dessas faces, percorrendo a quadra em que se encontram. Entretanto, existem faces que não abrigam unidades para registro de endereço, chamadas de **Faces Nada a Registrar** (NAR), como aquelas de um terreno sem edificação. São, por exemplo, os terrenos baldios ou utilizados como depósito de lixo, que podem ou não estar delimitados por muros. 

São também do tipo **Nada a Registrar** (NAR) as faces de uma praça ou as faces com muros em toda a sua extensão, sem acesso ao logradouro. Os exemplos a seguir são enquadrados na categoria NAR: 

Há ainda o caso particular dos logradouros que terminam sem interseção com outro logradouro, ainda dentro do mesmo setor censitário. A figura a seguir mostra uma travessa sem saída que tem duas faces (linhas maiores em tons de cinza mais claro e mais escuro). Contudo, o mapa do DMC não indicava a existência de endereços na lista prévia do pequeno trecho final (pequena linha representando o final do logradouro). Esse trecho final da travessa será uma nova face se forem identificados endereços ao final do logradouro.

`[FIGURA OMITIDA]`



## 8. Endereço: Conceito e Componentes

O endereço reúne informações que permitem identificar de forma adequada uma unidade construída ou em construção dentro de um município, tal como uma casa, um prédio, um apartamento, um estabelecimento etc. 

O endereço é registrado pelo IBGE segundo um Padrão de Registro de Endereços, que contém os seguintes componentes:

- Localidade;

- Logradouro;

- CEP;

- Número e modificador;

- Complemento;

- Ponto de referência;

- Existência de identificação; e

- Coordenadas geográficas. 

A seguir, veremos detalhadamente cada um deles.



### 8.1. Localidade

É o nome pelo qual é conhecido o local ou a região onde está situado o endereço. Nas áreas rurais, indica o nome da região (povoados, lugarejos, assentamentos, comunidades etc.), enquanto nas áreas urbanas assemelha-se ao bairro. Recomenda-se evitar expressões genéricas que não permitam identificar, de fato, a localidade, tais como “Zona Rural” ou o nome do próprio município, pois isto tende a ser insuficiente para o registro e localização de um endereço. Por exemplo, em um determinado município, são encontrados os bairros “Centro”, “Bela Vista” e “Santo Antônio”, além das localidades rurais “Brejo Fundo” e “Matão”. Registre as localidades conforme essa indicação, sem a necessidade de menção ao tipo de localidade (bairro ou povoado). 

Nos municípios onde não há delimitação oficial de bairros e localidades, você deve estar atento ao nome reconhecido pela própria população local, que deverá ser registrado. 

Sempre que possível, pergunte aos moradores qual é o nome da Localidade, pois eles poderão indicar o nome mais bem conhecido e a grafia correta. 

De forma mais específica, em áreas habitadas por Povos e Comunidades Tradicionais, este registro merece atenção especial. 

Nos casos de endereços localizados em áreas indígenas, o prefixo do campo Tradicionalidade nos itens Editar ou Incluir Localidade deve mencionar “Aldeia Indígena...” ou “Terra Indígena...” quando o endereço estiver localizado na aldeia ou fora dela, respectivamente (“Aldeia Indígena Água Bonita” ou “Terra Indígena Arariboia”, por exemplo). 

Para os endereços de povos ou comunidades tradicionais, deve constar no campo ‘Localidade’ o registro do tipo de tradicionalidade com a qual a comunidade ou o povo se identifica. O tipo de tradicionalidade deve vir antes do nome da localidade propriamente dito (por exemplo: “Comunidade Quilombola de Rocinha”, “Comunidade Ribeirinha São Marcos” ou “Faxinal Boa Vista”).

> **Atenção**
>
> Para esse registro você precisa editar o campo “Localidade” ou inserir uma nova localidade. Verifique, no anexo 2, a lista de povos e comunidades tradicionais, bem como as estruturas territoriais a elas relacionadas. 

Caso não tenha na lista de prefixos a tradicionalidade informada, inclua na lista de tradicionalidade da localidade o prefixo em falta. Caso a localidade esteja registrada sem prefixo, pressione “edição” para selecionar a opção dita pelo informante. 

Selecione o prefixo correspondente à tradicionalidade com a qual a comunidade ou o povo se identifica no combo de localidade, conforme imagens a seguir:

> **Atenção**
>
> Há, no ANEXO 1, ao final do manual, orientações sobre o “Procedimentos no DMC” envolvendo a temática “Localidade, Logradouro e CEP”. Nele você encontra o passo a passo para acessar a inclusão e edição de localidades, e também para inserir os prefixos do combo de tradicionalidades. 

Esta prática de registro de tradicionalidades no campo de Localidade é fundamental para o IBGE. Isso favorece a produção de informações oficiais para esses povos ou comunidades tradicionais. Caso sua área de trabalho inclua áreas indígenas ou quilombolas, procure por orientações específicas de registro da localidade no Manual do Recenseador Povos e Comunidades Tradicionais (PCT). Estas orientações são importantes tanto para trabalhar em áreas conhecidas quanto para o caso de encontrar áreas ocupadas por Povos e Comunidades Tradicionais ainda não registradas pelo IBGE.



### 8.2. Logradouro

O Logradouro, conforme visto anteriormente (área pública de circulação), possui uma denominação própria, que faz parte do registro do endereço de uma unidade. Portanto, o adequado preenchimento deste endereço deve refletir corretamente o logradouro, que pode ter seu registro formado por até três componentes:

- **Tipo** – indica a natureza do logradouro (sua construção ou forma natural). Exemplos: Rua, Avenida, Travessa, Estrada, Praça, Viela, Acesso, Rio etc.
- **Título** – indica a patente, a profissão ou o título de nobreza do homenageado. Somente será registrado quando houver de fato um título, pois do contrário não será preenchido, como ocorre em grande parte dos logradouros. Exemplos: Santa, São, Doutor, Coronel, Professor, Presidente, Dom, Senhora etc.
- **Nome** – denomina propriamente o logradouro, incluindo a preposição, caso exista. Exemplo: Em um logradouro denominado “Avenida Duque de Caxias”, o Nome deverá ser registrado como “de Caxias”. 

| Logradouro        | Tipo | Título | Nome |
| ----------------- | ---- | ------ | ---- |
| Rua Madre Paulina | Rua     | Madre       | Paulina      |
| Avenida Tocantins | Avenida | | Tocantins |
| Travessa Santa Inês | Travessa | Santa | Inês |
| Beco Ana Neri | Beco | | Ana Neri |
| Rua Imperador | Rua | | Imperador |

Em determinadas situações, é possível que um logradouro não possua um nome oficial em uma placa ou que não seja possível identificar este nome. Nestes casos, busque formas complementares de especificar o endereço (como Coordenadas Geográficas e Ponto de Referência) e registre o nome do logradouro adotando a seguinte estratégia:

- prioritariamente, utilize nomes localmente reconhecidos pelos moradores;
- caso não seja possível, utilize um ponto de referência para identificar o logradouro; e
- como último recurso, o registro deve ser realizado no campo ‘Nome’ como “Sem Denominação”.
- Quando a única referência de endereçamento é o rio, é importante que este seja registrado no campo “logradouro”. 

Quando a única referência de endereçamento é o rio, é importante que este seja registrado no campo “logradouro”. 

Os exemplos abaixo especificam essas estratégias para uso excepcional. 

| Logradouro | Tipo | Título | Nome |
| ---------- | ---- | ------ | ---- |
| Estrada para Represa de Gericinó | Estrada | | para Represa de Gericinó |
| Acesso para Fazenda Santa Cruz | Acesso | | para Fazenda Santa Cruz |
| Beco da Associação de Moradores | Beco | |  da Associação de Moradores |
| Vicinal da RJ-116 para São Martinho | Vicinal | | da RJ-116 para São Martinho |
| Caminho do Igarapé da Prainha para Aldeia Indígena Iterap | Caminho | | do Igarapé da Prainha para Aldeia Indígena Iterap |
| Rua Sem Denominação | Rua | | Sem Denominação |

No caso dos Logradouros sem nome, há uma orientação adicional. O uso do termo “Sem denominação” no campo “Nome do Logradouro” deve vir acompanhado de um número, caso o setor censitário possua mais de um logradouro nestas condições. Deste modo, o primeiro logradouro sem nome será registrado como “Sem denominação” e os demais serão registrados com uma numeração sequencial (“Sem denominação”, “Sem denominação 1”, “Sem denominação 2” etc.). Esta ordenação deve obedecer à ordem de percurso do setor realizada. Por exemplo:

- Registro do 1º logradouro sem denominação encontrado no setor: Sem denominação;
- Registro do 2º logradouro sem denominação encontrado no setor: Sem denominação 1;
- Registro do 3º logradouro sem denominação encontrado no setor: Sem denominação 2.

> **Atenção**
> Para as pesquisas do IBGE, deve prevalecer sempre o nome oficial do logradouro, reconhecido pela prefeitura do município, caso exista.



### 8.3. CEP

Em todo endereço, haverá ainda um Código de Endereçamento Postal (CEP) associado. O CEP é um cadastro de áreas de endereçamento mantido pela Empresa Brasileira de Correios e Telégrafos – ECT. Ele é um conjunto numérico constituído de oito algarismos que é atribuído a uma área de endereçamento. Em áreas de alta demanda postal, um CEP pode estar associado somente a um bairro, um logradouro, um trecho do logradouro ou, em casos muito particulares, a um único prédio. O

 CEP pode se referir a áreas de dimensões bastante variadas. Aproximadamente 83% dos municípios brasileiros possuem apenas um CEP. Entretanto, 98% dos CEPs estão associados diretamente a logradouros, concentrados no pequeno número de municípios com mais de um CEP (normalmente aqueles com maior população). Vale destacar que há municípios em que a área rural, em sua totalidade, possui somente um CEP, enquanto a área urbana possui CEPs variados. Alguns exemplos podem ser vistos na tabela a seguir: 

| CEP | TIPO DE CEP | REFERENTE A: | TOTAL DE CEPS NO MUNICÍPIO |
|-------|--------------------|---------------------|-----------------------------------------------|
| 57130000 | Localidade: Município | Santa Luzia do Norte – AL |1|
| 88169899 | Localidade: Área Rural | Biguaçu – SC | 797 |
| 88164210 | Logradouro: Avenida Beira-Rio | Biguaçu – SC | 797 |
| 39334200 | Localidade: Vila de Fátima | Brasília de Minas – MG | 8 |
| 20271203 | Logradouro: Rua General Canabarro, até 318 lado par|Rio de Janeiro – RJ | 27.913 |
| 20271900 | Usuário: Petrobras – Rua General Canabarro, 500 | Rio de Janeiro – RJ | 27.913 |

> **Atenção**
>
> Nos setores urbanos, cada mudança de quadra, de face ou de logradouro durante o percurso pode representar um CEP diferente a ser registrado. 

Ao registrar um endereço, você precisará atribuir um CEP válido, corretamente associado a ele. O DMC é carregado com uma lista de CEPs válidos para o município onde se localiza o setor em coleta. O CEP indicado deve ser válido e correto. Válido, pois deve existir no banco de dados dos Correios; e correto, pois deve corresponder adequadamente ao local visitado. 

Portanto, **lembre-se de pesquisar previamente os CEPs válidos existentes para a área do setor**, pois isso evitará eventuais dúvidas e erros no momento da coleta. 

Caso você identifique em campo ou com algum informante um CEP estabelecido pelos correios muito recentemente, ele pode não constar em sua lista de CEPs no DMC. Nestas situações, procure identificar se o CEP antigo está registrado na sua lista para seleção no DMC ou registre o CEP do logradouro ou localidade mais próximo. 

A identificação dos CEPs existentes no setor deve se iniciar ainda no planejamento do trabalho. O Recenseador poderá consultar o site dos Correios ou solicitar o auxílio de seu supervisor nessa tarefa.

> **Atenção**
>
> Há no anexo 1, ao final do manual, orientações sobre o “Procedimento do DMC” envolvendo a temática “**Localidade, Logradouro e CEP**”.



### 8.4. Número e modificador

**Número** é o valor numérico propriamente dito que indica a posição da edificação no logradouro. 

O **Modificador** está associado à informação do número, quando necessário. Ele especifica o número quando é preciso **diferenciar mais de uma posição no logradouro com a mesma numeração ou adicionar informação a ela**. É sempre alfanumérico. 

Veja o exemplo de endereço a seguir: 

**Avenida Brasil, 1367 B:**

- Logradouro: Avenida Brasil
- Número: 1367
- Modificador: B

Nesse exemplo, temos a informação do número **1367 B**. O **número** é utilizado para indicar a posição relativa de uma unidade no logradouro Avenida Brasil. Nesse caso, a letra (B) será denominada **modificador** e serve para diferenciar essa unidade da 1367 A e da 1367 C, por exemplo. 

Além de diferenciar o número, o modificador pode também assumir a função de agregar informações a ele. Isso ocorre quando o endereço é numerado por um sistema que não foi oficialmente instituído pela Prefeitura, mas por outros órgãos e instituições. Nessas numerações, o modificador é utilizado para identificar qual é o sistema utilizado na numeração, como por exemplo:

- Fundação Nacional de Saúde (Funasa);
- SMS (Secretaria Municipal de Saúde);
- Companhias de Energia e Água (Celg, Coelba, Cedae etc.);
- Quilometragem em uma rodovia (km). 

Por exemplo, é o caso de uma região, sem numeração, que receba a visita da Fundação Nacional de Saúde para vacinar a população. Logo, a Funasa numerará as casas para estabelecer algum roteiro para a visita que fará em cada casa. 

É comum também a utilização do **modificador “SN” (sem número)** para indicar que não há numeração atribuída a um endereço em nenhum dos sistemas conhecidos: nem no oficial, nem em um sistema determinado por alguma instituição reconhecida.

> **Atenção**
>
> A ocorrência de um endereço sem numeração obriga o registro de **complemento (s) e/ou ponto de referência**, valendo-se também das Coordenadas Geográficas como um importante recurso de identificação do endereço.

Veja a seguir alguns exemplos com seu contexto de utilização do modificador: 



| Endereço | Número | Modificador | Contexto de utilização |
| -------- | ------ | ----------- | ---------------------- |
| Rua Sete de Setembro, 155 | 155 | | Quando há numeração e esta é suficiente para identificar a unidade de interesse. |
| Travessa Padre Mendonça, 14 FNS |14 | FNS | Quando a única numeração disponível é definida pelo sistema organizado por uma instituição reconhecida: FNS, SMS, Funasa, Celg, Coelba, CIST - para programa de cisternas, quando a mesma estiver ligada a apenas um domicílio. |
| Alameda Boa Vista, 182 A |182 | A | Utilizado diante da necessidade de diferenciar unidades com o mesmo número, mas com acessos distintos no mesmo logradouro (A, B, 1, 2 etc.). |
| Avenida Capitão Manoel Rudge, 777 Fundos | 777 | Fundos | Outros valores alfanuméricos podem ser utilizados com a mesma finalidade: diferenciar unidades com o mesmo número, mas com acessos distintos no mesmo logradouro (Fundos, Frente, Térreo, Quadra, Lote, etc.). |
| Rodovia MS-352, km 2 | 2 | km | Pode ser utilizado nos casos de unidades sem numeração, situadas em rodovias ou estradas, para uma referência aproximada. Como a mesma quilometragem pode abrigar mais de uma unidade, pode ser necessário usar complemento(s) e/ou ponto de referência para individualizar o endereço.|
| Rua Gonçalves Dias, Sem Número | | SN | Indica a inexistência de numeração após a verificação de todas as outras possibilidades de identificação. Neste caso, é obrigatório utilizar outros recursos (complemento(s) e/ou ponto de referência) para identificar a unidade. |



> **Atenção**
> Para as pesquisas do IBGE, deve prevalecer, sempre, o número oficial do endereço, reconhecido pela prefeitura do município. Caso um endereço possua mais de uma numeração (uma oficial e uma reconhecida por outra instituição, por exemplo), registre a numeração oficial no campo reservado ao número e indique a numeração alternativa no ponto de referência, caso esta seja imprescindível à identificação da unidade. 
> Caso o número da unidade não esteja visível na fachada do terreno ou da edificação, coloque o número no cadastro da unidade e indique que não há identificação visível do número na fachada. Há um campo específico no DMC (existência de identificação) para marcar uma situação como esta.



### 8.5. Complemento: elemento e valor

Vamos rever o primeiro exemplo, anteriormente citado, para demonstrar número e modificador, observando **uma nova informação**. Avenida Brasil, 1367 B, loja 3: 

**Avenida Brasil, 1367 B, Loja 3:**

- Logradouro: Avenida Brasil
- Número: 1367
- Modificador: B
- Complemento 
  - Elemento: Loja
  - Valor 1: 3


Uma situação frequente em edificações com múltiplas unidades, tais como prédios ou condomínios residenciais, é a atribuição de um mesmo número no Logradouro, que corresponde ao acesso comum para várias unidades. O **complemento** é utilizado para identificar cada unidade nesse número. 

Em campo, a existência de várias unidades na mesma numeração pode estar evidente por elementos como duas ou mais caixas de correspondência numeradas, além de mais de um relógio medidor de energia ou medidor de água. 

São exemplos de complemento: bloco, apartamento, casa, fundos, sobrado etc. De modo geral, a informação de complemento é formada por **elemento** e **valor**. Observe o exemplo a seguir: 

**Rua Castro Pimentel, 374, casa 3 fundos:**

- Logradouro: Rua Castro Pimental
- Número: 374
- Complemento 
  - Elemento 1: Casa
  - Valor 1: 3
  - Elemento 2: Fundos

O **elemento** é o tipo de complemento, indicando se ele se refere a casa, entrada principal, quadra, apartamento, bloco, rua interna, sala, cômodo etc.; 

O **valor** é representado por números ou letras, que especificam o elemento, quando necessário. Na tabela a seguir, observe mais exemplos de complementos e de como eles estão distribuídos, por elemento e valor: 

Observe que, nos exemplos mencionados, os complementos foram registrados seguindo a hierarquia **do mais abrangente para o mais detalhado**, de modo a individualizar a unidade. Esta orientação visa facilitar o trabalho de localização do endereço registrado, uma vez que partimos sempre das informações mais gerais para as mais específicas. 

O esquema a seguir ilustra esta orientação a respeito da hierarquia entre os complementos, utilizando como exemplo a unidade referente à Rua João Lanhoso, 241, Conjunto A, Bloco 2, Apartamento 43. 

Outro cuidado fundamental a ser tomado é relacionado à **diferença conceitual entre modificador e complemento**. Isso implica a forma de registro dos endereços utilizando estes dois componentes do endereço. Observe que os exemplos anteriores possuem o termo “fundos” tanto para modificador quanto para complemento em endereços distintos. O uso desse termo como **modificador** indica que a unidade “fundos” possui um acesso distinto de outra unidade com o mesmo número - o modificador “frente” nem sempre está indicado. No primeiro, é retratada a situação em que o termo “Fundos” é utilizado como Modificador, indicando a existência de acessos distintos.

Por outro lado, nas imagens a seguir, o uso como **complemento** indica que, através do mesmo número de acesso a partir do Logradouro, unidades distintas podem ser individualizadas. Nesse caso, uma delas localiza-se nos “fundos”.

O dispositivo de coleta, bem como os sistemas do IBGE, considera a possibilidade de registro de até cinco complementos (cinco elementos com seus eventuais cinco valores). Assim, é necessário ser cuidadoso com o uso dos complementos tanto para **não confundir com o modificador quanto para garantir que seu registro individualizará a unidade sem conter informações desnecessárias**.

> **Atenção**
>
> É muito importante que estes campos só sejam utilizados quando forem estritamente necessários, evitando informações exageradas que podem dificultar uma operação futura e tomar tempo da atual.



### 8.6. Ponto de Referência

O ponto de referência é uma informação descritiva muito utilizada para identificar uma unidade visitada por meio de elementos dos seus arredores, principalmente nos casos em que o modelo de endereçamento oficial é insuficiente para localizá-la. Normalmente, é precedido de expressões que indicam a posição ou a direção, como “ao lado do...”, “em frente a...”, “atrás da...”, “próximo a...” etc. É utilizada, principalmente, na área rural, podendo também ser necessária em áreas urbanas, principalmente nos aglomerados subnormais. 

Quando um endereço não possuir numeração – ou seja, quando o modificador for “SN” (sem número) – e não houver informação de complemento disponível para esse endereço que permita sua individualização, o preenchimento do ponto de referência será obrigatório. Exemplos:

- **a)** próximo à caixa-d’água;
- **b)** primeira casa após a ponte do Rio Pedra Linda, indo no sentido sul-norte;
- **c)** ao lado da Padaria Bom Gosto;
- **d)** antes do Cemitério São João Batista, no sentido da zona rural para a zona urbana do município;
- **e)** em frente à Igreja de Santo Antônio; e
- **f)** esquina da Rua XV de Novembro com Rua do Riachuelo. 

O uso de pontos de referência é sempre recomendável. E mais ainda q**uando se tratar de um endereço com fragilidades no registro e/ou na identificação**. Portanto, tenha especial atenção ao ponto de referência nas unidades “SN” (sem número), sem identificação, com identificação precária e nas áreas com grande dinâmica de transformação do território. 

Em áreas rurais, para domicílios com fragilidades no endereço, o número das cisternas ou dos relógios de luz, quando individualizados em relação ao domicílio, podem ser indicados como pontos de referência. 

> **Importante** 
>
> A descrição do ponto de referência de um domicílio deve ser feita de forma que qualquer outra pessoa consiga localizar a unidade corretamente.

> **Atenção**
>
> Ao registrar um ponto de referência, esteja especialmente atento à **preservação do sigilo das informações prestadas**. O componente do ponto de referência dos endereços **deve conter apenas informações observáveis e não sigilosas**. Não **é permitido identificar moradores, responsáveis ou proprietários** de domicílios e estabelecimentos por meio do ponto de referência. Expressões como “após a casa do Senhor João” não podem ser utilizadas, pois o **IBGE tem compromisso legal e institucional assumido com a preservação do sigilo de seus informantes**. 

Excepcionalmente, pode ser necessário fazer referência aos estabelecimentos que possuem nomes próprios em sua identificação para o público, pois trata-se do nome regular do estabelecimento (um bar cuja placa diz “Bar do Silva” ou um estabelecimento agropecuário cuja placa identifica “Fazenda da Maria”).

### 8.7. Existência de Identificação

O número no logradouro poderá estar identificado através de placa ou outro recurso visual para informação pública. A identificação deve estar localizada em um muro, portão ou em uma parede interna da construção, desde que possa ser vista pelo lado de fora. Além disso, nas unidades com complementos, como é frequente no caso de apartamentos, condomínios e casas localizadas nos fundos, é necessário considerar a identificação dos complementos que individualizam essas unidades. Essa informação é o que chamamos de **existência de identificação**. 

Esse atributo dos endereços requer atenção especial e algumas orientações específicas. É fundamental estar atento ao fato de que a existência de identificação está associada à identificação da unidade registrada. Assim, ao localizar uma identificação, você deve avaliar se esta é suficiente para individualizar uma unidade a ser registrada. Por exemplo:

- Em um edifício residencial cujo número é claramente identificado no logradouro, a existência de identificação será **Sim** para os apartamentos que possuem identificação e será **Não** para eventuais apartamentos que não a possuam.

- Em uma propriedade rural, sem numeração no logradouro, as unidades internas desta propriedade podem ter alguma identificação visível de seus complementos (Casa 1, Casa A etc.) devem ser marcadas como **Sim** para a existência de identificação, enquanto as que não possuírem e devem ser marcadas como **Não**.

- Em uma unidade cujo acesso se dá pelo Km 10 de uma rodovia, a placa de quilometragem serve apenas como marco de distância no logradouro, mas não deve ser considerada como identificação do endereço.


>  **Atenção**
>
> Mesmo as identificações precárias feitas com tinta, giz ou carvão devem ser consideradas na operação censitária.

Embora rara, é possível a ocorrência de um endereço sem numeração com identificação visível de seus complementos, que permitem a identificação das unidades, como nos exemplos acima. Do mesmo modo, uma unidade não identificada pode possuir numeração, ou seja, não há relação direta entre o atributo número e o atributo existência de identificação. Assim, ao localizar uma unidade que não possui identificação visível, certifique-se com o informante da existência de numeração para o endereço. 

Em uma operação futura, a localização de uma unidade devidamente identificada tenderá a ser mais fácil, enquanto a localização daquela não identificada exigirá cuidados complementares (como a verificação de pontos de referência, a busca de informação com vizinhos etc.). Nesse último caso, procure utilizar um ponto de referência para esse endereço.

> **Atenção**
>
> Há no anexo 1, ao final do manual, orientações sobre o “Procedimento do DMC” envolvendo a temática “**Confirmação, Inclusão e Exclusão de Endereços**”.



### 8.8. Coordenadas Geográficas

Anteriormente, definimos as Coordenadas Geográficas e sinalizamos sua importância para a localização no setor censitário. As coordenadas atuam também como um componente do endereço, sendo que o dispositivo de coleta, a cada registro realizado, fará a captura dos pontos de coordenadas. 

Além de permitir a visualização dos endereços pelos pontos correspondentes no mapa digital do DMC, essa informação é armazenada nos bancos de dados e sistemas do IBGE para o Censo 2022. Dessa forma, esses dados vão subsidiar diversas análises e procedimentos nos quais é imprescindível localizar com precisão os endereços na superfície terrestre.

> **Atenção**
>
> Como componente do endereço, as coordenadas geográficas capturadas devem refletir o acesso à unidade. Assim, o **ponto ideal de captura de coordenadas é na edificação da própria unidade**, ou seja, você deve estar parado com o DMC nesse ponto no momento da captura de coordenadas. 

Por dificuldades técnicas relacionadas à disponibilidade de sinal, principalmente em ambientes fechados, e também pela dificuldade de acesso à edificação da unidade, a captura das coordenadas geográficas pelo DMC pode ser inviável. Nesses casos, é necessário localizar um ponto alternativo para realizar a captura. 

Veja a seguir tabela com indicação de ponto alternativo para cada tipo de local com restrição de acesso ou indisponibilidade de sinal: 

- Unidades situadas em edifícios verticais, onde a captura de coordenadas nos corredores do prédio é muito dificultada → No ponto mais próximo à entrada do prédio ou do bloco, por exemplo. Ver mais detalhes, a seguir, sobre o uso da função Herdar coordenadas. 
- Ausência do informante pode dificultar o acesso à unidade → No acesso ao endereço pelo logradouro.
- Em propriedades rurais de grande extensão, em que o acesso não é possível devido a uma porteira fechada, por exemplo. → O ponto ideal deve ser capturado junto à edificação; caso contrário, capture o ponto na própria porteira. 

Os endereços registrados na lista prévia de seu DMC são unidades que foram coletadas pelo IBGE em operações anteriores (no Censo 2010 ou em pesquisas que aconteceram entre 2010 e este Censo). Nessas operações, as Coordenadas Geográficas foram coletadas para parte dos endereços, principalmente em áreas rurais em 2010 e em todos os setores censitários nas operações mais recentes. Essas coordenadas anteriores são um importante recurso para o seu trabalho, pois ajudam a localizar unidades em relação à sua posição no terreno e, principalmente, unidades cujo endereço está registrado de forma que é difícil identificá-lo.

>  **Atenção**
>
> Entretanto, é importante lembrar que você deve visitar e listar TODAS as unidades do seu setor, isto é, todos os domicílios e estabelecimentos, inclusive aqueles que porventura não constem da lista prévia apresentada no DMC.

>  **Atenção**
>
> Há no anexo 1, ao final do manual, orientações sobre o “Procedimento do DMC” envolvendo a temática “**Capturas de Coordenadas dos Endereços**”.



## 9. Morador

Para o IBGE, o **Morador** é a pessoa que: “tem o domicílio como local habitual de residência na data de referência”. Logo, a presença ou ausência da pessoa no domicílio na data de referência **não define se ela é ou não moradora do domicílio**.

> **Atenção**
>
> A data de referência é o parâmetro que indica **quem** deverá ser recenseado. 
>
> Devem ser recenseadas todas as pessoas que **moravam** no domicílio na data de referência: **a meia-noite do dia 31 de julho para 1º de agosto de 2022**. 

A pessoa pode estar presente e não ser moradora, mas também, pode estar ausente e ser moradora. 

Parece confuso, mas é fácil de explicar. 

**Morador** é a pessoa que:

- **a)** tem o domicílio como local habitual de residência e nele se encontrava na data de referência; ou
- **b)** embora ausente na data de referência, tem o domicílio como local habitual de residência, desde que a ausência **não seja superior a 12 meses** pelos motivos que veremos a seguir: 
  - b.1) viagem a passeio, a serviço, a negócios, de estudos etc.; 
  - b.2) afastamento de sua comunidade tradicional por motivo de caça, pesca, extração vegetal, trabalho na roça, participação em festas ou rituais; 
  - b.3) internação em estabelecimento de ensino ou hospedagem em outro domicílio, pensionato, república de estudantes, visando facilitar a frequência à escola durante o ano letivo; 
  - b.4) detenção sem sentença definitiva declarada; 
  - b.5) internação temporária em hospital ou estabelecimento similar; e 
  - b.6) embarque a serviço (militares, petroleiros).

> **Atenção**
>
> Em todas essas situações, é importante certificar-se de que a ausência **não tenha ultrapassado 12 meses, período considerado até a data de referência – a meia-noite do dia 31 de julho para 1º de agosto de 2022**. 

É importante ter atenção em alguns casos especiais, a fim de evitar que uma mesma pessoa seja contada em dois domicílios ou que não seja contada em nenhum dos dois. Vejamos: 

Se, na data de referência, a pessoa se encontrava afastada do domicílio de origem (domicílio onde o recenseador está fazendo a entrevista) nas seguintes situações:

- internada permanentemente em sanatórios, asilos, conventos ou estabelecimentos similares;
- morando em pensionatos sem ter outro local habitual de residência;
- condenada com sentença definitiva declarada (em qualquer instância); e
- migrou para outras regiões em busca de trabalho e lá fixou residência. 

Ela não será considerada moradora no domicílio de origem, mas sim no local onde se encontrava, **ainda que a ausência seja inferior a 12 meses**.

 Qualquer pessoa que permanecer na data de referência no seu **local de trabalho** apenas por conveniência ou obrigação **deverá ser recenseada no local de residência habitual**.

> **Atenção**
>
> No caso de imigrantes que se encontravam em algum tipo de abrigo de passagem ou triagem (como se verifica em Manaus/AM e Boa Vista/RR), a inclusão dessas pessoas no Censo Demográfico deve ser realizada pelo registro do abrigo na data de referência.



### 9.1. Quem deve ser recenseado

Devem ser recenseadas todas as pessoas (inclusive crianças e idosos) que moravam no domicílio na data de referência: **à meia-noite do dia 31 de maio para 1º de junho de 2022**. 

Logo, de acordo com esse critério, extraímos duas orientações:

- Não recensear as pessoas que nasceram após essa data.
- recensear as pessoas que faleceram após essa data, pois faziam parte do domicílio na data de referência.



### 9.2. Pessoas que ocupam duas ou mais residências

Será necessário que você pergunte à pessoa entrevistada qual era sua residência principal **na data de referência**, pois ela **não pode ser considerada moradora em duas residências ao mesmo tempo**. 

O critério para determinar a residência principal deve respeitar a seguinte ordem:

- Peça ao entrevistado que indique qual a sua residência habitual (residência principal).
- Se o entrevistado não puder indicar, deverá ser considerado morador na residência em que passa a maior parte do ano.
- Caso a pessoa ocupe duas residências em períodos iguais durante o ano, deverá ser considerada moradora na residência que possui há mais tempo. 

A residência que não foi considerada principal por nenhum ocupante será registrada como **Domicílio de Uso Ocasional**, conceito que será descrito mais adiante.



## 10. Espécie da Unidade Visitada

Ao longo do trabalho visitando unidades, você poderá encontrar edificações que são utilizadas de diferentes formas. Elas podem ser constituídas:

- exclusivamente por **unidades domiciliares**, que são as unidades residenciais;
- exclusivamente por **estabelecimentos**, que são as unidades não residenciais; e
- simultaneamente por unidades domiciliares e estabelecimentos. 

**Domicílio**: Edificação destinada a servir de moradia

**Edificação**: Edificação  não destinada à moradia 

A espécie é caracterizada pela finalidade do uso que se faz da unidade associada ao endereço. 

Note que domicílios e estabelecimentos podem coexistir em uma mesma unidade.

> **Atenção**
>
> Espécie = finalidade de uso.

 Você pode encontrar também edificações que não são domicílios, nem estabelecimentos. Elas estão ainda em construção ou em reforma e serão classificadas como tal. Mas preste atenção: para marcar como Edificação em Construção ou Reforma, não pode haver ninguém morando na unidade. Veremos todas essas classificações adiante.

>  **Atenção**
>
> A correta identificação da espécie é fundamental para o sucesso da coleta. A partir dessa identificação, os questionários do Censo serão aplicados nas unidades corretamente.



## 11. Domicílio

**Domicílio** é o local construído ou utilizado com a finalidade de residência ou moradia. 

Em geral, não há dificuldade para identificar um domicílio. A maior parte das pessoas reside em um apartamento ou uma casa. Entretanto, você poderá encontrar um domicílio em um lugar inesperado ou fora do comum, como, por exemplo, um cômodo que serve de moradia em um prédio exclusivamente comercial ou nos fundos de uma borracharia. Assim como é possível encontrar pessoas residindo em tendas, barracas ou trailers, em habitações indígenas sem paredes ou malocas, residências flutuantes, e essas formas de residência também são consideradas domicílios.

> **Atenção**
>
> **Domicílio** é o local estruturalmente **separado** e **independente** que se destina a servir de habitação a uma ou mais pessoas ou que seja utilizado como tal.

 Em setores de aglomerados subnormais, é muito importante que o Recenseador verifique, antes de realizar a entrevista com o morador, se a edificação serve ou está dividida entre mais de uma família de forma separada e independente. Por exemplo, uma entrada de uma edificação que dá acesso a mais de um domicílio com acessos independentes, embora ligados por um acesso comum como uma servidão, escada ou beco de passagem. Muitas vezes estes acessos ficam ocultos quando observados às vistas do logradouro. 

Além disso, muitas construções sofrem alterações ao longo do tempo, seja por reforma seja por mudança na sua finalidade. Por exemplo, uma casa pode ter sido convertida em sede de uma empresa imobiliária. Um apartamento duplex pode ter sido transformado em dois menores. Portanto, a identificação de um domicílio vai depender da aplicação correta do seu conceito. 

Um domicílio pode ser composto de u**ma ou mais edificações localizadas no mesmo terreno ou por cômodos com entradas independentes em uma mesma edificação.**

> **Atenção**
>
> Se necessário, consulte as exceções sobre domicílios em áreas indígenas no Manual do Recenseador PCT (seção 7.3.).



### 11.1. Critérios de Separação e Independência

Os critérios essenciais para definir a existência de um ou mais de um domicílio em um mesmo terreno são a **separação** e a **independência**. Estes critérios devem ser atendidos **simultaneamente** para caracterizar corretamente a existência de mais de um domicílio. 

Veja as características de cada um: 

- **Separação física**: Este critério é atendido quando os cômodos do domicílio são **limitados por paredes, muros ou cercas e cobertos por um teto. Isso permite que as pessoas que nele habitam se isolem das demais** para dormir, preparar e/ou consumir seus alimentos e proteger-se do ambiente exterior. 
- **Separação financeira**: Este critério é atendido quando **moradores arcam total ou parcialmente com suas despesas de alimentação ou moradia**. 
- **Independência**: Este critério é atendido **quando o local de habitação tem acesso direto** que permite aos seus moradores **entrar e sair sem necessidade de passar por locais de moradia de outras pessoas**. 

Quartos com entradas independentes, assim como outras construções anexas à principal, são considerados como partes integrantes do domicílio, desde que sejam utilizados pelos moradores do domicílio, inclusive por empregados domésticos. 

A utilização de cozinhas ou instalações sanitárias por moradores de mais de um domicílio localizado no mesmo terreno, desde que instaladas do lado externo dos domicílios, **não descaracteriza a condição de separação**. 

Em aglomerados subnormais, uma forma de assegurar que esse conceito seja aplicado é perguntando para os moradores e seus vizinhos antes de cadastrar cada domicílio. Uma mesma edificação pode conter mais de um domicílio muitas vezes conectado por um corredor (servidão), becos, escadarias ou acessos precários que não são visíveis de fora da edificação. 

No caso de habitações indígenas sem paredes ou de malocas, esses critérios serão adaptados às condições locais. Para mais informações, consulte o Manual do Recenseador PCT.

> **Atenção**
>
> Um domicílio só será caracterizado corretamente quando forem atendidas simultaneamente as condições de separação e independência. 

> **Exemplos**:
>
> - Em um prédio de dois andares, residem duas famílias, uma em cada andar. Contudo, os moradores do segundo andar precisam passar pela sala do primeiro andar para chegar ao seu local de habitação. Conta-se, portanto, **um único domicílio, pois não atende ao critério da independência**. 
> - Em uma propriedade (terreno), existem duas edificações onde residem duas famílias, uma em cada edificação. Essas famílias compartilham instalações sanitárias (banheiro) e de cozinha, mas os acessos aos locais de habitação das famílias são independentes. Contam-se, portanto, **dois domicílios**, pois o uso de instalações sanitárias e cozinha comuns a mais de um domicílio, na parte externa deles, atende aos **critérios de separação e independência**.

> **Atenção**
>
> Verifique sempre a existência de outros domicílios no mesmo terreno:
>
> - nos fundos do mesmo terreno;
> - residência de porteiro ou zelador em subsolo de edifícios;
> - casas de caseiros; e
> - em cima ou nos fundos de estabelecimentos comerciais.



### 11.2. Classificação dos Domicílios

Os domicílios são classificados em dois grupos: particulares e coletivos. Existem, ainda, classificações em cada um desses domicílios. Verifique-as no esquema a seguir: 

- Domicílio
  - Particular
    - Permanente
      - Ocupado
      - De Uso Ocasional
      - Vago
    - Improvisado Ocupado
  - Coletivo
    - Com Morador
    - Sem Morador

Durante seu trabalho, você deverá investigar a espécie dos domicílios considerando a data de referência da operação.



#### 11.2.1. Domicílio Particular

É a moradia onde o relacionamento entre os ocupantes é **ditado por laços de parentesco, de dependência doméstica ou por normas de convivência**. O Domicílio Particular classifica-se em **permanente** ou improvisado ocupado.

>**Saiba mais**
>
>**Dependência doméstica** é a relação estabelecida entre o responsável pelo domicílio e os empregados e agregados. 
>
>**Normas de convivência** são regras de convívio de pessoas que moram juntas sem laços de parentesco ou de dependência doméstica.



##### **(I)** **Domicílio Particular Permanente** 

É o domicílio cuja edificação foi construída para habitação, com a finalidade de servir de moradia a uma ou mais pessoas. 

As casas, os apartamentos em edifícios ou apart-hotéis e as habitações em cortiço, cabeças de porco, casas de cômodos, habitações indígenas sem paredes ou malocas, etc. devem ser considerados como **Domicílios Particulares Permanentes**. 

Em estabelecimentos institucionais – hospitais, asilos, mosteiros, quartéis, escolas, prisões e similares –, são considerados **Domicílios Particulares Permanentes** aqueles localizados em edificações independentes da edificação principal do estabelecimento. 

Assim, caso o empregado de um hotel (que é um estabelecimento e um domicílio coletivo, como veremos adiante) resida nele com sua família em edificação independente da edificação principal, temos caracterizado um domicílio particular permanente. Assim, o domicílio do empregado deve ser registrado como um endereço único e diferente do endereço do hotel, que não deve deixar de ser registrado e caracterizado. 

Para o **Domicílio Particular Permanente**, temos as seguintes espécies:

- ocupado;
- de uso ocasional;
- vago. 

Veja cada espécie em detalhes e esteja atento às diferenças entre elas. 



###### (I.a) Domicílio Particular Permanente Ocupado – DPPO

É o domicílio particular permanente ocupado, na data de referência, por moradores cujo relacionamento é ditado por laços de parentesco, dependência doméstica ou por normas de convivência. 

***(I.a.1) Categorias dos Domicílios Particulares Permanentes Ocupados – DPPO***

A correta classificação das espécies de domicílios e estabelecimentos, juntamente com a adequada realização do percurso, são fundamentais para a garantia da cobertura do setor e para identificar em quais domicílios serão aplicados os questionários do censo. 

O dia a dia de trabalho do Recenseador consiste em percorrer o seu setor trabalhando todos os endereços encontrados e visitando todos os domicílios com o objetivo de fazer o preenchimento dos questionários (realizar a entrevista) de forma presencial com os moradores. 

Quando o morador não puder responder ao questionário no momento da abordagem, o Recenseador deverá assinalar em seu DMC a opção “**Agendamento**” e agendar uma data e hora para realizar a **entrevista presencial ou por telefone**. 

Caso não seja possível fazer o agendamento, deve-se **oferecer a possibilidade do auto preenchimento via Internet** assinalando a opção “**Internet**” em seu DMC. Para os casos de domicílio em que não foi possível realizar a entrevista no momento da abordagem, solicite sempre que possível o número de moradores e registre em seu DMC. 

É possível que o Recenseador chegue a um domicílio e não encontre os moradores. Neste caso deverá assinalar em seu DMC a opção “**AUSÊNCIA**” e retornar em outro momento para tentar realizar a entrevista. 

Quando o Recenseador não encontrar morador para prestar as informações, deve **deixar a folha de recado na caixa dos correios ou por debaixo da porta** não se esquecendo de preencher corretamente todas as informações e anotar o número do telefone do chip de voz fornecido pelo IBGE, pois somente desta forma o morador terá condições de entrar em contato com você. Para sua segurança e também dos informantes, evite fornecer seu número de telefone pessoal, preferindo sempre o número oficial fornecido pelo IBGE. 

Você também deve deixar essa folha de recado logo na primeira visita em prédios/condomínios de alta renda (cujo acesso pode ser dificultado pela administração), áreas com risco de violência urbana (como em alguns aglomerados subnormais), e mesmo em setores rurais que tenham cobertura de telefonia celular. 

Após terminar o registro de cada domicílio, para aqueles em que não foi possível um contato com o informante poderá ser disponibilizado no DMC um número de telefone vinculado àquele domicílio (este número pode vir de pesquisas anteriores realizadas pelo IBGE ou de algum registro administrativo que o IBGE teve acesso). Você então **deve tentar contato por telefone com os moradores** utilizando o chip de voz fornecido pelo IBGE, lembrando sempre de conferir se o informante realmente residia no endereço cadastrado em seu DMC na data de referência. 

Sempre que se dirigir ao informante por telefone você deve falar de forma clara e dizer que está ligando de um telefone institucional. Diga que é possível verificar a autenticidade da ligação por meio do (0800) do IBGE (**0800 721 8181**) ou por meio do site **respondendo.ibge.gov.br**, informando a **matrícula**, o **RG** ou o **CPF** do Recenseador. No site é possível também **verificar a foto do recenseador** (a mesma que está impressa no crachá). Caso o recenseador seja contatado ou consiga contato com os moradores por telefone ele deverá tentar adotar os procedimentos abaixo na seguinte ordem de prioridade:

1. Realizar a entrevista por telefone;
2. Agendar uma entrevista presencial ou por telefone;
3. Oferecer o autopreenchimento via Internet.

***(I.a.1.1) Detalhes da coleta***

Com o objetivo de organizar o trabalho de cobertura do setor e garantir a realização de todas as entrevistas, o IBGE criou categorias que devem ser aplicadas aos Domicílios Particulares Permanentes Ocupados, classificando-os da forma mais adequada. 

Assim, após a seleção de uma espécie que tenha questionário na tela de **Confirmação de endereço/Espécie**, ao pressionar o botão **CONFIRMAR**, o DMC abrirá uma janela para que se faça a seleção. As opções apresentadas nessa tela são: 

**Aplicar Questionário Presencial** - Deve ser utilizada quando existir um informante disponível para a realização da entrevista. Ao selecionar esta opção e pressionar botão “seguir”, o questionário será aberto automaticamente. 

**Aplicar Questionário por Telefone -** Essa opção estará disponível somente para alguns domicílios, nos casos em que o endereço tenha um ou mais telefones associados a ele. Ao selecionar esta opção, serão mostrados na mesma janela os telefones existentes para o endereço. 

> **Importante** 
>
> A opção “Aplicar questionário por telefone” só deve ser assinalada quando o Recenseador receber ligação de um morador ou tentar contato com um morador ausente por telefone. Ela não deve ser assinalada se o contato com o morador for de forma presencial.

> **Atenção**
>
> É importante lembrar que, ao fazer contato com um informante por telefone, deve-se sempre confirmar se ele realmente era morador daquele domicílio na data de referência. 

Após a seleção da opção “Aplicar Questionário Presencial” ou “Aplicar Questionário por Telefone” será exibida a tela para a confirmação da modalidade de coleta. Nesta tela o Recenseador deve selecionar a modalidade de coleta para que o questionário seja aberto para preenchimento. A tela de confirmação foi criada para que o Recenseador possa ao fazer contato com o morador ou receber um telefonema do morador, registrar que o preenchimento do questionário foi realizado por telefone, mesmo que não exista um telefone associado ao endereço.

**Agendar Coleta** – Você deve selecionar essa opção quando tiver feito contato com algum morador que tenha indicado um dia e horário específicos para retornar ao domicílio para o preenchimento presencial do questionário, ou mesmo para ligar para o morador para realizar a entrevista por telefone. Nesse caso, será aberto um calendário para a seleção da data e depois da hora da entrevista. Após a seleção dessa opção, será habilitado um campo para o preenchimento do número de moradores do domicílio e um campo para o registro de um telefone para contato. 

Tente sempre agendar as entrevistas que não puderem ser realizadas no momento da abordagem, pois, agindo assim, você garante a cobertura e agiliza a conclusão da coleta do setor. 

**Como localizar um agendamento no DMC?** 

Na parte superior do DMC, você poderá encontrar as entrevistas agendadas clicando no sininho. 

Ao clicar neste sino, será exibida a tela com o total de endereços pendentes. 

Ao clicar em “abrir endereços”, serão exibidos os endereços de todas as pendências existentes no setor. 

**Coleta por Internet** - Esta opção deverá ser assinalada quando o morador optar pelo autopreenchimento do questionário pela internet. Nesse caso, o sistema exibirá uma tela para o preenchimento do cadastro do morador. Preencha o n**ome do morador, o e-mail, o telefone (fixo ou móvel), o total de moradores do domicílio e o melhor período para contato.** 

Essas informações são obrigatórias, pois o morador receberá no e-mail indicado a senha para a realização do autopreenchimento pela internet. Se essa for a opção do morador, informe também que o questionário deverá ser completado dentro do prazo informado no e-mail. Caso não complete no prazo, ele deve estar ciente de que você, Recenseador, retornará ao domicílio para a realização da entrevista. 

Caso o morador opte por responder o questionário pela internet depois de aberto o questionário no DMC, você deve clicar nos três pontinhos na parte superior da tela à direita e assinalar a opção **Coleta por Internet**. Neste caso, as informações deste questionário serão deletadas do DMC. Não será possível aproveitar as informações registradas no DMC para o preenchimento do questionário pela internet. 

**Não é possível iniciar a entrevista** – Essa opção deverá ser assinalada sempre que você encontrar um domicílio ocupado, mas não conseguir realizar a entrevista por conta da ausência dos moradores, ou quando houver recusa explícita por parte de algum dos moradores. Ao assinalar esta opção, você precisará indicar qual dos casos se aplica. 

**Morador Ausente** – No caso em que não foi possível estabelecer contato com os moradores, deve-se assinalar a opção: Não é possível iniciar entrevista e, no campo Justificativa, assinalar a opção Ausência. Após a seleção dessa opção, será habilitado um campo para observações e a quantidade de moradores do domicílio. Procure obter esta informação com porteiros ou vizinhos. 

Como já vimos anteriormente, todos os recenseadores receberão um bloco de recados para que possam preencher e viabilizar o contato com o morador **no caso de ausência** deste no momento em que ele chega ao domicílio. Na folha de recado, o Recenseador deverá preencher o seu **nome e telefone (do chip fornecido pelo IBGE)**. Deverá preencher também nesta folha o “código do seu endereço”, que é a **“identificação da unidade” que aparecerá no DMC.** 

Caso o Recenseador receba qualquer ligação em resposta à folha de recado entregue, deverá solicitar ao informante o **código do seu endereço** para que possa localizá-la no DMC. De posse da identificação, você deverá ir até o menu inicial do seu DMC e acessar a tela de **Pendências**, que exibe todos os endereços pendentes. Há a opção de abrir uma subopção que lista todos os “Endereços DPPO marcados como Ausente”, e assim você poderá selecionar a unidade indicada. 

**Recusa** - O objetivo desta opção é tratar os casos explícitos de recusa por parte dos moradores. Nesses casos, deve-se assinalar a opção: **Não é possível iniciar entrevista** e, no campo **Justificativa**, assinalar a opção **Recusa**. Note que, em alguns casos, o Recenseador pode ter impedimentos de acesso a prédios e/ou condomínios, o que não deve ser caracterizado como recusa. Nestes casos, após esgotadas todas as tentativas de convencimento quanto à importância de se realizar a pesquisa no local, junto ao responsável ou administrador, o ideal é informar o caso ao supervisor para que ele, junto com seus superiores, tente reverter a situação. Sempre que essa opção for assinalada, será habilitado um campo para o preenchimento do número de moradores do domicílio, que pode ser obtido com vizinhos, porteiros ou zeladores. Além disso, registre no campo de observações o motivo da recusa.

***(I.a.2) Retorno a domicílios*** 

O retorno ao domicílio deve acontecer obrigatoriamente nos seguintes casos:

- **Retorno da Internet** – Nos domicílios em que inicialmente os moradores optaram pelo preenchimento do questionário pela internet, mas não o fizeram no prazo. Para saber o endereço destes domicílios, basta consultar na aba “relatórios” do seu DMC a “Listagem de questionários”, utilizar o filtro “Coleta pela internet” e procurar pelos questionários não realizados.
- **Questionário Pendente** - Para os domicílios com questionários coletados no DMC, mas que não concluíram o preenchimento, o sistema irá colocar marcação de pendente no questionário. Para saber quais são esses questionários, o Recenseador deverá consultar na aba “relatórios” do seu DMC a “Listagem de questionários”, utilizar o filtro “Status Questionário” e procurar o status “Pendente”.
- **Agendamento** - Nos domicílios em que os moradores indicaram o retorno do recenseador. A princípio, o retorno deve ser feito em data e horário solicitado pelo morador.
- **Não é possível realizar a entrevista (ausência)** - Para os domicílios em que não foi possível o contato com os moradores.

> **Atenção**
>
> O retorno aos domicílios com morador ausente, agendamentos e retorno de internet deve ser repetido até que se consiga fazer a entrevista, sendo obrigatórias, no mínimo, 4 tentativas de retorno, em dias e horários alternativos, como fora do horário comercial ou nos finais de semana, a fim de ter maiores chances de sucesso. 

> **Importante** 
>
> A cada retorno ao domicílio, o aplicativo irá registrar a data e a hora do retorno, além da coordenada geográfica do local onde está o Recenseador. Essa coordenada não poderá ser superior a uma distância pré-determinada da coordenada capturada no momento da confirmação do endereço.



###### (I.b) Domicílio Particular Permanente de Uso Ocasional – DPPUO 

É o domicílio particular permanente que serve ocasionalmente de moradia, ou seja, aquele que é utilizado para descanso de fins de semana, férias, conveniência do trabalho ou outro fim. Mesmo que seus ocupantes estejam presentes durante a realização da coleta ou que estivessem na data de referência, o domicílio não se constitui como residência principal de nenhum morador. 

É muito comum em casas de veraneio, praia ou montanha, mas também é muito utilizado por pessoas que estudam ou trabalham em outro município. Será considerado também como Uso Ocasional o domicílio que não for considerado como principal, quando o morador declarar que reside em duas unidades habitacionais. Washington Luiz R Silva. Fotos dos Municípios do Brasil (IBGE). 

Em regiões de intenso turismo ou de grande número de casas de veraneio ou de fim de semana (segunda residência), você deve estar atento para evitar os seguintes erros:

- **Classificação do domicílio que é de uso ocasional como domicílio particular permanente ocupado**, que acarretaria uma caracterização indevida do domicílio. Sempre que possível, investigue se há alguém na condição de morador deste domicílio.
- **Omissão de domicílio particular permanente ocupado de visualização mais difícil.** Por exemplo, residência de caseiro que, em geral, é localizada no fundo do terreno.
- **Omissão de domicílio particular permanente ocupado** em apartamentos/casas com moradores situados em prédios/condomínios **quase totalmente ocupados por residências de uso ocasional ou por salas comerciais**.

> **Atenção**
>
> Classifique como **DPPUO** o domicílio que estava sendo exclusivamente ocupado por estudantes que ali permaneciam com o único objetivo de frequentar estabelecimentos de ensino, retornando à casa de sua família nos fins de semana ou nas férias. 
>
> Considere também como **DPPUO** o domicílio que estava sendo ocupado por pessoas que ali permaneciam por conveniência de trabalho, mas que retornavam às suas casas nos finais de semana ou nas férias.



###### (I.c) Domicílio Particular Permanente Vago – DPPV 

É o domicílio particular permanente que se encontrava vago, ou seja, sem moradores, na data de referência do Censo. 

Os imóveis que estão à **venda** ou para **alugar** e estão **sem moradores** são os exemplos mais fáceis de identificar. Entretanto, é necessário tomar o cuidado de verificar se existem moradores, mesmo que existam placas de “Vende-se” ou “Aluga-se”. 

Também podem ser encontrados domicílios vagos sem placa de venda ou aluguel, ou seja, sem nada que indique que está vago. Esta situação deve ser verificada com a informação de porteiros ou vizinhos. Podem ser casas recém-construídas ou domicílios sem nenhuma indicação de que há pessoas neles habitando. 

É possível também que você encontre um morador residindo no domicílio na data de coleta, mas que ocupa há pouco tempo aquela unidade. Caso você seja informado que não havia moradores na data de referência do Censo, classifique este domicílio como **Vago**. A situação contrária também pode ocorrer, como indicado no quadro a seguir:

> **Atenção**
>
> Não confundir Domicílio Particular Permanente Ocupado (DPPO) com Morador Ausente, com Domicílio Particular Permanente Vago (DPPV). No primeiro, os moradores apenas não estavam presentes no momento da visita, mas residiam no domicílio na data de referência. Já no segundo, não havia moradores residindo no domicílio na data de referência. 
>
> Caso o Recenseador descubra que um domicílio vago na data da coleta estava ocupado por uma família na data de referência, deve registrá-lo como **Domicílio Particular Permanente Ocupado com Morador Ausente**. 



###### (I.d) Tipo de Edificação do Domicílio Particular Permanente 

Sempre que for identificada uma das espécies de **domicílio particular permanente** (ocupado, uso ocasional ou vago), você deverá indicar o tipo de edificação do domicílio. 

Conheça os diversos tipos de edificação existentes para os **Domicílios Particulares Permanentes**.

- **Casa**: É toda edificação contendo um ou mais pavimentos, **com acesso direto a um logradouro** (arruamento, avenida, caminho etc.), legalizado ou não, independente do material utilizado em sua construção. Considere a edificação com um ou mais pavimentos que esteja ocupada integral-
  mente por um único domicílio, como uma casa.
- **Casa de vila ou em condomínio**: Casa de vila é a unidade habitacional **integrante de um grupo de casas com acesso único a um logradouro**. Na vila, as casas es-tão agrupadas umas junto às outras, constituindo-se, às vezes, de casas geminadas. Cada uma delas possui uma identificação de porta ou designação própria. Por exemplo: Rua das Acácias, 34 – Vila Helena – Casa 2. Casa em condomínio é aquela que faz parte de um conjunto residencial (condomínio) constituído de dependências de uso comum (tais como áreas de lazer, praças interiores, quadras de esporte etc.). As 
  casas de condomínio geralmente são separadas umas das outras, cada uma delas tendo uma identificação de porta ou designação própria. **Por exemplo:** Avenida das Américas, 7000, Rua Interna dos Sabiás, lote 5, casa 21.
- **Apartamento**: É o domicílio particular localizado em edifício de um ou mais andares com mais de um domicílio servido por espaços comuns (hall de entrada, escadas, corredores, portaria ou outras dependências). Considere também como apartamento o domicílio que se localiza em prédio de dois ou mais andares em que as demais unidades não são residenciais e, ainda, aquele localizado em edifícios de dois ou mais pavimentos com entrada independente para os andares.
- **Habitação em casa de cômodos ou cortiço**: É a unidade localizada dentro de uma estrutura residencial multifamiliar, isto é, com moradia de várias famílias diferentes, apresentando as seguintes características:

  - Uso comum de instalações hidráulica e sanitária (banheiro, cozinha, tanque etc.) na mesma edificação;
  - Utilização do mesmo ambiente para diversas funções (dormir, cozinhar, fazer refeições, trabalhar etc.); e
  - Várias habitações (domicílios particulares) construídas em lotes urbanos ou com subdivisões de habitações em uma mesma edificação, geralmente alugadas, subalugadas ou cedidas e sem contrato formal de locação. 
  - Não deixe de considerar os critérios de separação e independência para individualizar os domicílios corretamente.
- **Estrutura residencial permanente degradada ou inacabada**: Essa categoria abarca estruturas permanentes concebidas com fins residenciais, que contam com a presença de moradores, mas que tiveram elementos estruturais ou serviços domiciliares comprometidos em função da degradação ou construção interrompida enquanto os seus elementos estruturais ainda se encontravam incompletos. Em ambos os casos, a estrutura pode ter sido completada, de forma improvisada, pelos moradores. Porém, quando não há existência de moradores, a edificação: será classificada como “em Construção ou Reforma” (se estiver inacabada); ou não será registrada (se estiver em ruínas ou demolida).
- **Habitação Indígena sem paredes ou Maloca**: As habitações indígenas apresentam tamanhos diversos e podem ser simples e sem paredes,  com um ou mais cômodos, ou mais complexas, abrigando uma ou várias construções (com uma cozinha no fundo, por exemplo). As habitações menores podem ser feitas com galhos de árvores e cobertas de palha, folhas ou outros materiais (madeira, lona plástica, zinco etc.). As malocas maiores (podem ser localmente denominadas palhoça, choupana, cabana, casebre ou outra denominação) podem usar taquaras e troncos, cobertas de palmas secas ou palha e outros materiais. E ainda ser utilizadas como habitação por várias famílias nucleares, que dividem o espaço   internamente com a ajuda de galhos, pequenos troncos ou pelas redes. Assim, pode-se muitas vezes definir o número dos núcleos familiares pela quantidade de pontos de fogo no interior da maloca. Caso a habitação indígena não seja uma maloca e tenha paredes, selecione uma das opções   apresentadas acima (casa, apartamento, etc), de acordo com suas características.

>  **Atenção**
>
> Não confunda Estrutura residencial permanente degradada ou inacabada com domicílios envelhecidos ou em construção continuada, ou mesmo com domicílios que estejam passando por ampliação ou reforma. Também não confundir com habitações indígenas sem paredes, que são construídas de acordo com os hábitos habitacionais de alguns povos indígenas. 
>
> A situação deve ser caracterizada pela ausência ou pelo desabamento de parte da cobertura ou das paredes externas, ainda que tenham sido substituídas por material improvisado (lonas, tapumes etc.), ou ainda pela inexistência de janelas e portas em paredes com vãos destinados a elas em cômodos que estejam sendo utilizados para fins residenciais. Em edifícios com 5 ou mais andares, a situação pode ser identificada também pela ausência de elevador.

> **Atenção**
>
> No registro de endereços em terras e agrupamentos indígenas, pode ser necessário registrar domicílios coexistentes em malocas ou divididos em múltiplas edificações. Para mais informações sobre como identificar os domicílios em habitações indígenas consulte o Manual do Recenseador PCT. 
>
> O tipo “**habitação indígena sem paredes ou maloca**” pode estar presente tanto em setores de terras e agrupamentos indígenas quanto em outros setores com possível presença indígena pré-identificados pelo IBGE e é **considerado como uma edificação de Domicilio Particular Permanente**. 
>
> Regionalmente, o termo “maloca” pode significar habitação precária. Entretanto, nas pesquisas domiciliares do IBGE, ele reflete exclusivamente habitação indígena. Portanto, **nenhuma habitação indígena sem paredes ou maloca deve ser considerada como Domicílio Particular Improvisado Ocupado**. 

Acabamos de ver todas as espécies de Domicílio Particular Permanente e conhecemos também os seus diversos Tipos de Edificação. 

Agora vamos ver as espécies **Domicílio Particular Improvisado Ocupado e Domicílio Coletivo (com e sem morador)**. 



##### II. Domicílio Particular Improvisado Ocupado – DPIO 

É aquele domicílio que pode estar localizado em:

- edificação que não tenha dependências destinadas exclusivamente à moradia (por exemplo, dentro de um bar, uma loja, um depósito, um escritório, etc.);
- uma estrutura móvel;
- em calçadas, praças ou viadutos; ou
- em abrigos naturais (como grutas ou cavernas).

> **Atenção**
>
> Vale lembrar que os domicílios improvisados só serão registrados se, **na data de referência, estiverem ocupados por moradores (estando ou não presentes no momento da visita)**, caso contrário, eles não devem ser registrados. 

> **Importante** 
>
> Estruturas como barracas, tendas etc., em locais de trabalhos temporários, como em garimpos, onde as pessoas possuam outro local de residência habitual, não devem ser registrados como Domicílios Improvisados. 



###### (II.a) Categorias dos Domicílios Particulares Improvisados Ocupados – DPIO 

**As mesmas categorias** utilizadas para os Domicílios Particulares Permanentes Ocupados com o objetivo de organizar o trabalho de cobertura do setor e garantir a realização de todas as entrevistas serão utilizadas para os **Domicílios Particulares Improvisados**. 

Dessa forma, após a classificação de um domicílio como DPIO, o Recenseador deverá selecionar uma das seguintes opções:

Também será aberta a tela de confirmação da modalidade de coleta no DPIO.

> **Atenção**
>
> Caso não seja possível realizar a entrevista, faça o registro do DPIO no cadastro de endereços, selecionando a opção **agendamento** ou **não foi possível realizar a entrevista** com a justificativa **Ausência** ou **Recusa**, conforme a situação, para que possa retornar a este domicílio até que consiga realizá-la. Se este domicílio improvisado for dentro de um estabelecimento, faça também o registro dessa espécie encontrada. Exemplos: Estabelecimento de Outras Finalidades (EOF), Estabelecimento Religioso (ERELIG), Estabelecimento Agropecuário (EAGRO) etc. 

> **Importante** 
>
> Para os casos de domicílios improvisados ocupados em que não foi possível realizar a entrevista, **solicite sempre que possível, o número de moradores.** 



###### (II.b) Retorno aos Domicílios Improvisados Ocupados 

O retorno aos domicílios Improvisados ocupados deve acontecer da mesma forma que no DPPO, obrigatoriamente nos seguintes casos:

- Questionário web solicitado pelo morador, mas não finalizado;
- Questionário pendente;
- Agendamento;
- Morador ausente. 

Após selecionada a espécie Domicílio Particular Improvisado Ocupado, você também deverá selecionar o **tipo de edificação do domicílio improvisado.** 



###### (II.c) Tipos de edificação do Domicílio Particular Improvisado Ocupado

- **tenda ou barraca de lona, plástico ou tecido** – abrigo feito de lona, náilon ou materiais similares de construção leve e facilmente removível, como, por exemplo, os utilizados em acampamentos de sem-terras, ciganos, etc. Não deve ser confundida com “barracos” de madeira aproveitada ou outro material sólido precário em terrenos particulares, que devem ser classificadas como domicílio particular permanente. Apesar das tendas ciganas serem culturalmente adequadas à habitação, para o censo elas serão consideradas DPIO pela sua mobilidade;

- **estrutura improvisada em logradouro público, exceto tenda ou barraca de lona ou tecido** – essa categoria abarca construções de tapume, lata, zinco, tijolos ou outros materiais, em calçadas, praças, viadutos etc.

- **dentro do estabelecimento em funcionamento** – espaço não destinado à moradia ou simplesmente uma acomodação (cama, colchão ou saco de dormir) dentro de um estabelecimento;

- **estrutura não residencial permanente degradada ou inacabada** – aplicada às estruturas industriais ou comerciais abandonadas ou inacabadas que estejam servindo como moradia sem a devida adaptação. Inclui fábricas, galpões, prédios de escritório etc.;

- **veículos** (carros, caminhões, ônibus, trailers, barcos, etc.);

- **outros (abrigos naturais e outras estruturas improvisadas)** – qualquer dependência que não tenha finalidade de moradia mas que esteja servindo como tal. Exemplo: gruta, cocheira, ruínas de construções não residenciais, paiol etc.

  

> **Atenção**
>
> Não confundir **estrutura não residencial permanente degradada ou inacabada**, que é considerada (**DPIO**), com **estrutura residencial permanente degradada ou inacabada**, que é considerada (**DPP**).

>  **Atenção**
>
> Quando os moradores residirem em cômodos exclusivamente destinados a moradia, localizados aos fundos ou acima de estabelecimentos comerciais em funcionamento, deve-se classificar como um domicílio particular permanente ocupado – DPPO.
>
> A classificação de **domicílio improvisado dentro de estabelecimento comercial** deve ser aplicada apenas quando os moradores residirem em cômodos utilizados pelo próprio estabelecimento, como por exemplo nos casos de pessoas residindo em depósitos de lojas, cozinhas de bares, etc.



#### 11.2.2. Domicílio Coletivo

É uma instituição ou estabelecimento onde a relação entre as pessoas que nele se encontravam, moradoras ou não, na data de referência era restrita a **normas de subordinação administrativa**. Pode ser classificado como com ou sem morador. 

Os Domicílios Coletivos podem, portanto, ser classificados em duas espécies distintas:

- **Domicílio Coletivo com Morador – DCCM;**
- **Domicílio Coletivo sem Morador – DCSM.** 

Tipos de edificação para os Domicílios Coletivos:
- abrigo, albergue ou casa de passagem para população em situação de rua;
- abrigo, casas de passagem ou república assistencial para outros grupos vulneráveis (migrantes, refugiados etc.);
- clínica psiquiátrica, comunidade terapêutica e similar – instituição de internação por motivos psiquiátricos ou de dependência química;
- asilo ou outra instituição de longa permanência para idosos;
- orfanato e similar;
- unidade de internação de menores;
- hotel ou pensão;
- penitenciária, centro de detenção e similar;
- alojamento de trabalhadores;
- quartel ou outra organização militar;
- outro.

> **Atenção**
>
> Acampamentos serão considerados domicílios coletivos, desde que estejam sujeitos a normas de subordinação administrativa, como por exemplo, acampamento de refugiados administrado por ONGs. 

Para ser considerado Domicílio Coletivo com Morador – DCCM, tem que existir pelo menos um grupo familiar ou um indivíduo nele residindo. 

Para isso, serão considerados:

- **Grupo familiar** em domicílio coletivo – é o conjunto de pessoas que se relacionam por laços de parentesco, residindo em uma ou mais unidades do Domicílio Coletivo. Neste caso, será coletado um questionário para o grupo familiar.
- **Morador Individual** em domicílio coletivo – é a pessoa que reside em Domicílio Coletivo, ainda que compartilhando a unidade com outra(s) pessoa(s) com a(s) qual(is) não tenha laços de parentesco. Neste caso, será coletado um questionário para cada indivíduo.

>  **Atenção**
>
> Só considere a espécie Domicílio Coletivo com Morador se houver a realização da entrevista. Caso não seja possível realizar a entrevista, registre o domicílio como Domicílio Coletivo Sem Morador até que consiga fazê-la. 

Considerando que os domicílios coletivos são estabelecimentos com normas administrativas de convivência, eles podem atender também à caracterização de outra(s) espécie(s). 

Sobre a classificação das espécies de estabelecimentos, devemos considerar que é possível que um endereço possua mais de uma espécie. Assim, veremos que os domicílios coletivos requerem atenção especial na caracterização de uma ou mais espécies para o mesmo endereço. 

Para o preenchimento do formulário de domicílio coletivo consulte o capítulo 5 “Entendendo o Formulário de Domicílio Coletivo” no Manual da Entrevista.



## 12. Estabelecimento

Observe as ilustrações a seguir e pense em como você classificaria as unidades representadas. 

Essas unidades são classificadas como **estabelecimentos**, ou seja, **edificações utilizadas para fins não domiciliares**. Por exemplo: escolas, prédios e lojas comerciais, postos de saúde, igrejas etc. 

Observe o esquema a seguir e veja como são classificados os estabelecimentos: 

- Estabelecimento 
  - Religioso 
  - Ensino 
  - Saúde
  - Agropecuário 
  - Outras Finalidades 



### 12.1. Estabelecimento Agropecuário – EAGRO

É toda unidade de produção, independentemente de tamanho, situação jurídica ou localização (em área urbana ou rural) dedicada, total ou parcialmente, a atividades agrícolas, pecuárias, florestais ou aquícolas. 

Para que a unidade de produção seja classificada como estabelecimento agropecuário, é necessário que, além da atividade agrícola, florestal, aquícola ou de pecuária, essa unidade tenha uma edificação localizada no terreno, como sede, casa de morador, armazém, galpão, curral etc. 

Ao identificar um estabelecimento agropecuário, é importante se certificar de que ele faz parte do setor censitário em coleta. Esta observação é particularmente importante para os estabelecimentos agropecuários porque, não raro, há unidades que ocupam grandes áreas que podem ir além dos limites do setor censitário e até mesmo do município em trabalho. Nestes casos, será necessário avaliar a qual setor censitário o estabelecimento pertence, pois:

- quando existir uma sede na área do estabelecimento (local destinado à administração dos trabalhos, sendo, frequentemente, a própria casa do produtor), o **endereço pertencerá ao setor no qual a sede está localizada**;
- quando existirem outras construções, mas não uma sede (galpão, curral, armazém etc.), o estabelecimento pertencerá ao setor censitário onde a maior parte de sua área está localizada. 

Lembrando que a captura de coordenadas geográficas – ação que faz parte do registro dos endereços – dos estabelecimentos agropecuários também exige orientações específicas. A captura deve ser feita preferencialmente na edificação que assume a função de sede do estabelecimento agropecuário, que, por sua vez, pode ter diversas edificações em sua área. Esta orientação é importante, pois há estabelecimentos com grandes áreas onde a captura de coordenadas em um ponto bem definido é especialmente importante para a localização da sede e para verificar o pertencimento do estabelecimento ao setor.

> **Atenção**
>
> Não são classificados como agropecuários os estabelecimentos **sem qualquer edificação**, como os de cultivo em várzeas intermitentes, de criação de abelhas, de extração de frutas e de lenha de matas nativas etc. Por outro lado, devem ser registrados separadamente como endereços de estabelecimentos agropecuários aqueles com áreas descontínuas e com edificações, mesmo que estejam sob responsabilidade da mesma pessoa e que as áreas estejam localizadas no mesmo setor censitário. Além disso, endereços que possuem a finalidade de desenvolver atividades produtivas agropecuárias, florestais ou aquícolas devem ser registrados como estabelecimentos agropecuários independentemente de serem produtivos ou não na data de referência e independente e do destino da produção (venda ou subsistência).

**São** consideradas atividades **agropecuárias**, **florestais** ou **aquícolas**:

- o cultivo do solo com culturas permanentes ou temporárias, hortaliças, flores, plantas medicinais e ornamentais;
- o cultivo de vegetais em água (hidroponia) e em outros meios;
- a criação, recriação ou engorda de animais de grande, médio e pequeno porte;
- a criação de peixes (os “pesque-pague” só serão considerados quando houver criação de peixes), crustáceos e moluscos;
- a criação de animais silvestres em cativeiro (jacaré, ema, perdiz, capivara, cateto, queixada e outros);
- a criação de animais exóticos (avestruz, faisão, pavão, javali e outros); e
- a exploração de matas e florestas nativas ou plantadas. 

**Não são** consideradas atividades agropecuárias, florestais ou aquícolas:

- a criação de animais domésticos, como pássaros, cães, gatos;
- a criação de animais destinados a experiências de laboratórios, produção de soros, vacinas etc.;
- o confinamento de gado de terceiros, pois é serviço prestado aos produtores rurais (caracteriza estabelecimento, mas não agropecuário); e
- a pesca.

> **Atenção**
>
> Os quintais de residências com pequenos animais domésticos e as hortas domésticas **não são considerados estabelecimentos agropecuários.** 

É importante ter o cuidado de diferenciar esta situação onde a produção do quintal é destinada ao **passatempo** e **satisfação** dos moradores daquela de **subsistência**. A produção de subsistência é aquela na qual a produção é voltada a atender às necessidades vitais do produtor e sua família, ou seja, aquela que serve como a base de sua alimentação. Eventualmente, parte desta produção pode ser comercializada por venda ou troca. Nesse caso, a satisfação das necessidades do núcleo familiar depende totalmente ou em maior parte desta atividade.

> **Atenção**
>
> Nos setores rurais, é comum encontrar endereços que são, ao mesmo tempo, Estabelecimento Agropecuário e Domicílio, que serve de residência ao produtor. Nesses casos, o domicílio é a sede do estabelecimentos que: Além disso, é possível também encontrar estabelecimentos agropecuários associados a outras atividades econômicas, como estabelecimentos que:
>
> - Pertencem a indústrias;
> - prestam outros serviços (tal como o de confinamento); e
> - desempenham outras atividades produtivas (como agroindústria rural). 

No registro de um estabelecimento agropecuário, seja ele associado a um domicílio ou não, o **nome do responsável pelo estabelecimento** será necessário. O responsável pelo estabelecimento não precisa ser necessariamente seu proprietário ou responsável financeiro, mas qualquer produtor ou administrador capaz de prestar informações sobre o estabelecimento. 

Cada estabelecimento deve ser identificado também com o nome específico pelo qual é conhecido o sítio, a chácara, a fazenda ou o empreendimento. Esse nome tem que ser preciso. Não utilize expressões genéricas como “criação de bois”, “cultura de laranja”, “horta” etc.

> **Atenção**
>
> É preciso estar atento para a diferença entre propriedade rural e estabelecimento agropecuário. Por um lado, uma propriedade rural pode não se caracterizar como um estabelecimento agropecuário, já que, para tal, precisaria ter ao menos uma edificação e, como objetivo, a produção comercial e/ou de subsistência. Por outro lado, uma propriedade rural pode conter em sua área mais de um estabelecimento agropecuário. Isto é, pode conter mais de uma unidade produtiva.



#### 12.1.1. Como registrar estabelecimentos agropecuários de exploração comunitária

Para realizar o registro de endereços que possuem estabelecimentos agropecuários cuja exploração é comunitária (uma mesma área explorada em conjunto por diferentes produtores), considere dois critérios:

- Quando as famílias trabalharem em conjunto numa mesma área e dividirem a produção, deve ser registrado apenas um estabelecimento agropecuário; ou
- Quando as famílias ocuparem uma mesma área e cada uma tomar a decisão sobre o que plantar e sobre o destino dado à sua produção individualmente, deve ser registrado um estabelecimento agropecuário para cada família. 

Essas situações ocorrem com alguma frequência em áreas ocupadas por Povos e Comunidades Tradicionais e em reservas, dentre as quais destacam-se as indígenas e as extrativistas. Portanto, como orientação geral, sempre que você identificar um estabelecimento agropecuário associado a um povo ou comunidade tradicional, investigue a sua forma de organização quanto à exploração comunitária e procure registrar no nome do estabelecimento (visto adiante) que ele está associado a uma forma de tradicionalidade.

### 12.2. Estabelecimento de Ensino – EENSINO

É uma edificação utilizada com a finalidade de ensino/educação para cursos regulares, independentemente de pertencer ao setor público, ao privado ou a fundações educacionais, como, por exemplo, escolas de educação infantil (em pré-escolas), ensino fundamental e médio (inclusive formação profissional técnica de nível médio), universidades, escolas técnicas e academias militares. No caso de aldeias ou comunidades indígenas, mesmo que uma edificação com atividade de ensino regular não possua paredes, ela deve ser registrada como Estabelecimento de Ensino. 

Procure identificar com clareza que tipo de estabelecimento de ensino você está registrando na espécie. Para o IBGE, é importante que seja possível diferenciar as universidades das unidades da educação técnica ou básica (de nível médio, fundamental ou infantil), bem como os estabelecimentos de ensino associados aos Povos e Comunidades Tradicionais indígenas e quilombolas. Em geral, o próprio nome oficial da instituição traz a identificação, mas pode ser necessário incluir esta informação. 

Não se caracterizam como estabelecimento de ensino as edificações que estejam sendo utilizadas para a prática informal de aulas de reforço ou para cursos de formação profissional, tais como: inglês, informática, artesanato etc. Neste caso, são estabelecimentos que atendem a outras finalidades.

>  **Atenção**
>
> As creches só serão consideradas como estabelecimento de ensino quando forem oferecidas em um estabelecimento formalizado, ou seja, a atividade de cuidar de crianças em casa ou organizada informalmente em outros ambientes por famílias para oferecer cuidados enquanto responsáveis estão ausentes a trabalho ou por outro motivo não devem ser registradas como estabelecimento de ensino. É o caso de “cuidadoras de crianças”, “mães crecheiras” ou “creches parentais”, por exemplo, que devem ser registradas como estabelecimentos de outras finalidades quando realizadas em local destinado exclusivamente a este fim. 

Estabelecimentos de Ensino podem, ao mesmo tempo, abrigar outras espécies, como a de Domicílio Coletivo nos casos de internatos. É fundamental verificar sempre se o estabelecimento se enquadra na caracterização de outra espécie e registrá-la em caso positivo.



### 12.3. Estabelecimento de Saúde – ESAUDE

É uma edificação utilizada com a finalidade de ações na área de saúde. Abrange todos os estabelecimentos de saúde, independentemente de pertencerem ao setor público ou ao privado, que prestam atendimento a pacientes em regime ambulatorial, clínico, internação, emergência ou serviço de apoio à diagnose e terapia. Deve possuir instalações físicas exclusivas e com profissional de saúde para o atendimento de pacientes. 

São exemplos:

- clínicas médicas;
- consultórios;
- postos de saúde;
- clínicas de radiologia, de exames laboratoriais, psicoterápicas, odontológicas;
- prontos-socorros;
- hospitais;
- casas de saúde indígena;
- polos base de saúde indígena; e
- outros. 

Procure identificar com clareza que tipo de estabelecimento de saúde você está registrando na espécie. Para o IBGE, é importante que seja possível diferenciar os exemplos citados acima, inclusive aqueles associados à saúde de Povos e Comunidades Tradicionais. Em geral, o próprio nome oficial da instituição traz a identificação, mas pode ser necessário incluir esta informação.

> **Atenção**
> Os **estabelecimentos de saúde com internação** são classificados também como Domicílio Coletivo com ou sem morador, conforme o caso.



### 12.4. Estabelecimento Religioso – ERELIG

É um local, edificação ou parte de edificação, utilizado com a finalidade exclusiva de congregar pessoas que comunguem da mesma fé ou crença para a realização de cultos e rituais religiosos. 

Exemplos: igrejas, congregações espíritas, templos budistas, sinagogas, mesquitas, terreiros, casas de reza, etc.

>  **Atenção**
>
> A **prática** eventual de cerimônias religiosas sem local exclusivamente destinado a este fim em domicílio particular **não caracteriza a unidade** como um estabelecimento religioso.



### 12.5. Estabelecimento de Outras Finalidades – EOF

É uma edificação utilizada para outros fins que não se enquadrem nas opções anteriores, como oficinas mecânicas, bancos, farmácias, escritórios, associações, lojas e comércio em geral etc. 

Vale destacar que, na última operação censitária (2010), os estabelecimentos religiosos foram registrados como estabelecimentos de outras finalidades. Portanto, nesta operação, não será raro encontrar estabelecimentos religiosos com a espécie de outras finalidades, que deverá ser alterada para a finalidade atual.

> **Atenção**
>
> A **prática** de atividades econômicas informais em domicílio particular, sem local destinado exclusivamente a esse fim, **não caracteriza a unidade** como um estabelecimento de outras finalidades.



### 12.6. Dados do estabelecimento - Nome

O **Nome do Estabelecimento** identificará se a unidade é, por exemplo, uma escola da rede municipal, uma farmácia ou uma loja de roupas. Observe abaixo os exemplos de como preencher o Nome do Estabelecimento: 

| Estabelecimento | Identificar como: |
| --------------- | ----------------- |
| Agropecuário | Fazenda Bom Pastor; Sítio Ferreira |
| De Ensino | Escola Municipal Barão do Rio Branco; Colégio Indígena Estadual Karai Kuery Renda; Escola Estadual Quilombola Professora Rosa Doralina; Colégio Santo Inácio |
| De Saúde | Hospital Municipal Rio Negro; Casa de Saúde do Índio de Brasília (Casai/DF); Unidade de Saúde da Família de Conceição das Crioulas |
| Religioso | Igreja de Santo Antônio; Casa de Candomblé Ilê Omiojuaro, Centro de Umbanda Caminho de Aruanda, Casa de Reza da Aldeia Taturi |
| De Outras Finalidades | Papelaria Matos; Bar do Zé; Padaria Bom Gosto; Galeria Santa Fé; Prefeitura Municipal de Contagem |

> **Atenção**
>
> Quando um estabelecimento **não estiver sendo utilizado** (vago), será caracterizado como estabelecimento de outras finalidades e terá como nome o termo “**Vago**”. Não confundir com o Domicílio Particular Permanente Vago. 

**Não utilize expressões genéricas** para um estabelecimento em funcionamento, como, por exemplo, “loja”. Identifique-o corretamente como “**Comercial Bela Vista**”. Nos casos de estabelecimentos que não possuem um nome, identifique-o pelo ramo da atividade, como “loja de roupa infantil” por exemplo. 

Quando especificado, o tipo de tradicionalidade deve acompanhar o Nome do Estabelecimento. Isto é frequente nos estabelecimentos (ensino, saúde etc.) localizados em territórios de povos tradicionais.

> **Atenção**
>
> **Ao identificar o nome dos estabelecimentos,** não utilize expressões que possuam informações sigilosas. Os informantes devem ter suas informações pessoais preservadas no nome do estabelecimento, salvo nos casos em que este seja de fato o nome do estabelecimento. Por exemplo, o nome “Marcenaria José Souza” só deve ser registrado caso este seja de fato o nome do estabelecimento indicado oficialmente. Lembre-se de que o IBGE tem compromisso legal e institucional assumido com a preservação do sigilo de seus informantes.



### 12.7. Dados do estabelecimento – Indicador do Endereço

Antes de terminarmos de estudar as formas de estabelecimento, veremos como registramos estabelecimentos que se repetem em um mesmo endereço. 

O indicador de endereço determina se uma mesma espécie ocorre **uma ou mais vezes** em um mesmo endereço. Você utilizará este conceito apenas para **estabelecimentos de ensino, de saúde, religioso e de outras finalidades**. Um bom exemplo é o de um shopping que contenha, além de lojas, alguns consultórios médicos. Assim, a espécie poderá ter um indicador de endereço:

- **Único** - quando a espécie ocorre **uma única vez** no endereço;
- **Múltiplo**:
  - **até dez** estabelecimentos – quando a mesma espécie ocorre de duas a dez vezes no endereço;
  - **mais de dez** estabelecimentos – quando a mesma espécie ocorre mais de dez vezes no endereço; e
  - **quantidade desconhecida** – quando não é possível identificar o número de ocorrências da espécie no endereço. 

Para que você entenda melhor, observe os exemplos de indicadores de endereço:
- **a)** Uma galeria comercial com 15 lojas e um consultório médico:
  - Registro para a **galeria comercial**, que é classificada como estabelecimento de outras finalidades, terá o indicador de endereço assinalado na categoria **mais de dez estabelecimentos**.
  - Consultório médico, classificado como estabelecimento de saúde, terá o indicador de **endereço único**.
- **b)** Um shopping com 60 lojas, oito consultórios médicos e uma faculdade:
  - O registro para o **shopping** será classificado como estabelecimento de outras finalidades e terá o indicador de endereço assinalado na categoria **mais de dez estabelecimentos**.
  - Os consultórios médicos são classificados como estabelecimento de saúde e terão o indicador de endereço assinalado na categoria de **até dez estabelecimentos**.
  - A faculdade, que é classificada como estabelecimento de ensino, terá o indicador de **endereço único**. 

Perceba que, em ambos os exemplos, o da galeria e o do shopping, o correto seria registrar somente um endereço com mais de uma espécie, indicando quantas vezes cada espécie se repete (único ou múltiplo). Ou seja, não é necessário registrar um endereço para cada espécie e nem um endereço para cada repetição da mesma espécie, basta um registro.



## 13. Edificação em Construção ou em Reforma - ECR

Edificação em construção é toda futura edificação, considerada a partir da fundação, com a obra em andamento ou não concluída na data de referência. Edificação em reforma é o imóvel que, apesar de construído, estava passando por uma obra de manutenção na data de referência.

> **Atenção**
>
> A edificação em construção ou reforma só será caracterizada como tal se **não houver morador**. Quando há morador na data de referência e a edificação está em reforma ou construção, considere como Domicílio Particular Permanente Ocupado, de acordo com os critérios desta espécie, já vistos.



### 13.1. Uso Planejado da Edificação

Você deverá se informar sobre qual o uso planejado para a edificação:

- **Residencial** – quando o imóvel estiver destinado a servir unicamente para moradia;
- **Não Residencial** – quando o imóvel estiver destinado unicamente para fins não residenciais. Exemplos: lojas, consultórios etc.;
- **Misto** – quando o imóvel estiver destinado tanto para fins residenciais quanto para fins não residenciais. Exemplo: prédio com lojas e apartamentos residenciais; e
- **Indeterminado** – quando não estiver ainda definido o destino que será dado ao imóvel ou quando não for possível obter a informação.



### 13.2. Indicador de Construção ou de Reforma

O indicador de construção ou de reforma determina **se há uma única unidade ou várias unidades em construção ou em reforma no mesmo endereço**. Assim, a unidade poderá ter um indicador de construção ou de reforma, nas seguintes categorias:

- **Único** – quando a construção ou reforma for de apenas uma unidade no endereço;
- **Múltiplo**:
  - **até dez unidades** – quando a construção ou reforma ocorrer em até dez unidades no endereço;
  - **mais de dez unidades** – quando a construção ou reforma ocorrer em mais de dez unidades no endereço; e
  - quantidade de unidades desconhecida – quando não é possível identificar quantas unidades estão em construção ou reforma.



### 13.3. Endereço com mais de uma espécie

Em um mesmo endereço, poderão existir duas ou mais espécies. Esta situação ocorrerá quando nesse endereço forem verificadas características que se enquadram no conceito de mais de uma espécie. Por exemplo: um colégio religioso e uma igreja no mesmo endereço. 

Nesse caso, se a diferenciação entre as duas unidades distintas através do uso do complemento do endereço (elemento e valor) não se aplicar, individualizando cada uma das espécies em endereços distintos, **você deverá incluí-las no mesmo endereço**, ou seja, o estabelecimento de ensino (colégio religioso) e o estabelecimento religioso (igreja) **farão parte de um mesmo endereço**. 

**Nas unidades domiciliares, só poderá existir um registro de uma única espécie de domicílio para cada endereço**. Assim, caso você identifique duas unidades domiciliares ocupando um mesmo terreno, precisará diferenciá-las utilizando os componentes do endereço para esta distinção (modificador, complemento ou ponto de referência, mais especificamente), o que resultará em **dois registros de endereços distintos**. 

Ao longo deste manual, estudamos o conceito de cada uma das espécies possíveis em um endereço e a possibilidade de espécies diferentes coexistirem em um mesmo endereço. Vejamos com mais clareza alguns exemplos práticos: 

**Domicílios Particulares Permanentes**

- Podem estar associados a espécies de estabelecimentos, desde que exista edificação ou área especificamente destinada a esta função.
- A associação entre Domicílio e Estabelecimento Agropecuário é frequente nas áreas rurais.
- Endereços domiciliares com parte da edificação destinada **permanentemente** a pequenas vendas são também Estabelecimentos de Outras Finalidades.
- Endereços domiciliares com parte da edificação destinada **permanentemente** a atividades religiosas regulares são também Estabelecimentos Religiosos. 

**Domicílios Particulares Improvisados**

- Podem estar associados a quaisquer estabelecimentos quando existir morador residindo de forma improvisada nas dependências do estabelecimento, sem área da edificação especificamente destinada a moradia.
- Exemplos: área não residencial de uma fábrica, galpão, oficina, bar, restaurante etc. 

**Domicílios Coletivos**

- Podem, frequentemente, ser associados a Estabelecimentos.
- Hotéis, Pensões e similares são também Estabelecimentos de Outras Finalidades, pois são instituições que prestam serviços.
- Hospitais, Clínicas e similares que possuam internação são também Estabelecimentos de Saúde;
- É possível que Estabelecimentos de Ensino e Estabelecimentos Religiosos atendam também às características de domicílio coletivo, sendo sempre necessário caracterizar todas as espécies quando seus conceitos estiverem atendidos. 

**Mais de um Estabelecimento no mesmo endereço**

- Além de ser frequentemente associado a domicílio, um Estabelecimento Agropecuário pode frequentemente estar associado a Estabelecimentos de Outras Finalidades, como quando funciona também como agroindústria, quando possui edificação destinada à venda da produção ou quando pertence a uma indústria localizada no mesmo endereço, por exemplo.
- Estabelecimentos de Ensino, Saúde e/ou Religiosos podem, além da já mencionada possível associação com Domicílios Coletivos, prestar outros tipos de serviços, como cursos livres (que caracterizam Estabelecimento de Outras Finalidades), ou estar associados entre si. Por exemplo, um Hospital com internação associado a determinada religião, onde há um templo com atividades permanentes.
- Já observamos também o exemplo de Shoppings Centers, quando foi destacado o uso do Indicador do Endereço no registro da espécie.

> **Atenção**
>
> Há no anexo 1, ao final do manual, orientações sobre o “Procedimento do DMC” envolvendo a temática “**Inclusão de mais de uma Espécie**”.



## 14. Pendente de Espécie da Unidade Visitada – PEUV



É uma edificação **cuja espécie não foi possível identificar** no momento da coleta. É muito importante que todas as unidades encontradas sejam corretamente identificadas. Se forem esgotadas todas as possibilidades de classificação de uma unidade e, ainda assim, você não souber como caracterizá-la, é possível identificá-la como pendente de espécie.

>  **Atenção**
>
> Na impossibilidade de definir a espécie, identifique a unidade como “Pendente de Espécie”, porém **nunca deixe de confirmar um endereço por esse motivo.** 

No entanto, **essa situação é temporária** e deverá ser solucionada até o término da coleta. **O setor não poderá ser concluído enquanto essa unidade estiver pendente de espécie**, sem que uma das outras espécies válidas seja atribuída e sem que o questionário seja devidamente aplicado, caso necessário.

> **Atenção**
>
> Há no anexo 1, ao final do manual, orientações sobre o “Procedimento do DMC” envolvendo a temática “**Registro de Espécies**”.



# Unidade II - Executando a Coleta de Dados {#unidade2}



## 15. Reconhecimento, Acesso, Percurso e Cobertura do Setor

Agora, você aprenderá os procedimentos necessários para realizar o trabalho em campo de forma a garantir a sua qualidade. 

A primeira atividade que você realizará será o Reconhecimento do seu setor censitário. 

O Reconhecimento é um procedimento que visa identificar a sua área de trabalho com o objetivo de sanar possíveis dúvidas e preparar o trabalho em campo. O reconhecimento se inicia no posto de coleta e tem continuidade em campo. Para realizar o reconhecimento do seu setor, você procederá da seguinte forma:

**Passo a passo**

**(I) Antes de ir ao setor**

- Analise cuidadosamente seu mapa do setor em papel, a descrição do perímetro do setor e seu mapa digital no Dispositivo Móvel de Coleta – DMC, bem como a imagem de satélite que o acompanha.
- Localize o ponto inicial da descrição do perímetro do setor e avalie se ele é acessível (ou um bom ponto de acesso ao setor). Caso não seja, verifique se há outro ponto mais adequado para iniciar o percurso do setor.
- Faça o levantamento dos CEPs relativos ao seu setor censitário.
- Analise a inserção do setor no contexto maior do seu município, identifique o meio de transporte mais fácil para acesso ao setor, programe seus horários e deslocamentos, e informe-se sobre características da(s) localidade(s) onde trabalhará.
- Tire as possíveis dúvidas de localização com seu Supervisor.
- Verifique no descritivo do setor as informações sobre acessibilidade, condições de segurança e observações adicionais. Confirme com seu supervisor se todas as informações estão atualizadas. Lembre-se que ele percorreu o setor antes de você e ele pode te auxiliar quanto a possíveis atualizações não representadas no mapa do setor.

**(II) Durante o reconhecimento em campo**
- Identifique a sua área de trabalho: localize o ponto inicial, as quadras (quando houver) e seu perímetro.
- Se for possível, percorra todo o perímetro do setor até retornar ao ponto inicial, para verificar se as informações que estão nos mapas e a descrição do perímetro do setor conferem com as que você encontrou no terreno.
- Avalie se o planejamento realizado em gabinete é de fato adequado ao setor, realizando mudanças necessárias. Alterações no planejamento devem ser informadas ao supervisor para que possam ser implementadas.

> **Atenção**
>
> As eventuais diferenças percebidas entre os mapas e imagens recebidos para o trabalho e a realidade percebida no reconhecimento do terreno devem ser registradas no mapa de papel e comunicadas à supervisão.

> **Atenção**
>
> Nos setores de Povos e Comunidades Tradicionais, os procedimentos de abordagem às lideranças antecedem qualquer atividade ou aproximação ao setor. Nesses casos, o segundo passo do reconhecimento do setor em campo ocorre apenas após a reunião de abordagem com a presença do recenseador, como descrito no Manual do Recenseador PCT.

> **Atenção**
>
> Nos setores com problemas de segurança pública, pode ser necessário procurar por uma liderança da associação de moradores antes de percorrer o setor. Essa abordagem deve ser feita previamente, sempre que possível.



### 15.1. Acesso ao Setor Censitário

Em linhas gerais, os setores censitários não oferecem nenhum tipo de restrição de acesso. Entretanto, em alguns casos, você poderá encontrar dificuldades em acessar a sua área de trabalho. Essas restrições podem ser de três ordens: características físicas (alagamentos, vias de acesso bloqueadas), segurança pública e restrição legal ou administrativa.

> **Atenção**
>
> Seu supervisor lhe indicará, quando houver, as restrições de acesso previamente mapeadas, bem como as orientações para a realização da coleta. Contudo, algum tipo de restrição pode ser verificada no momento de reconhecimento do setor censitário. Nesse caso, você deve relatar ao Supervisor, que vai orientar você sobre os melhores procedimentos de trabalho. Atente às informações do descritivo antes de ir a campo. 

Seguem abaixo algumas classificações de setores censitários que impõem restrições de acesso e instruções para a realização das entrevistas: 

- **Unidades de Conservação**: O Recenseador deve contatar seu Supervisor para verificar se há alguma exigência de autorização do órgão ambiental responsável pela gestão da unidade e se há orientações específicas sobre o acesso e o percurso em seu interior. 
- **Terras Indígenas e Agrupamento Indígena**: O Recenseador deve contatar seu Supervisor para verificar se a autorização de entrada na TI foi dada pela Funai, se foi indicada a necessidade de acessar a área com guia da Funai, marcar reunião com a(s) lideranças(s) indígena(s) para explicar o escopo do trabalho, solicitar autorização de realização das entrevistas, selecionar o guia local e identificar necessidade de guia-intérprete. 
- **Território Quilombola e Agrupamento Quilombola**: O Recenseador deve marcar reunião com a(s) lideranças(s) quilombola(s) para explicar o escopo do trabalho, solicitar autorização de realização das entrevistas e selecionar o guia local. 
- **Alojamento / Acampamento**: Explicar o escopo do trabalho à administração local e solicitar autorização de realização das entrevistas. 
- **Quartel e Base Militar**: Entrar em contato com a administração do local solicitando autorização de entrada. Deve-se ficar atento ao fato de que muitos setores censitários de quartéis são compostos por domicílio coletivo. 
- **Agrovila do PA**: Entrar em contato com as lideranças locais informando o escopo do trabalho de recenseamento e estabelecendo uma agenda de coleta. Unidade Prisional Explicar o escopo do trabalho à administração local e solicitar autorização de realização das entrevistas. 
- **Convento / Hospital / ILPI / IACA**[^11]: Explicar o escopo do trabalho à administração local e solicitar autorização de realização das entrevistas. Neste caso, as entrevistas não são realizadas individualmente. 
- **Aglomerado Subnormal**: Verificar todas as observações listadas no descritivo do setor, como existência de restrição de acesso por motivo de segurança, logística especial de acesso interno (via kombi, mototaxi e outros) e existência de área adensadas (domicílios em acessos irregulares sem existência de faces no mapa). Entrar em contato com as lideranças locais (associações de moradores, órgãos públicos, igrejas ou escolas), por meio de contato prévio com o supervisor, informando o escopo do trabalho de recenseamento e estabelecendo uma agenda de coleta. Em caso de alguma dificuldade encontrada em campo, o Recenseador deverá entrar em contato imediato com o Supervisor. 

>  **Atenção**
>
> Identificadas as restrições causadas por acidentes físicos, deve-se comunicar ao Supervisor para que este providencie a infraestrutura adequada de acesso ao setor censitário. Questões de segurança devem ser também comunicadas ao Supervisor. Nesses casos, a coleta em mutirão pode ser uma alternativa.



### 15.2. Percurso e Cobertura do Setor

O Percurso do Setor é o procedimento utilizado para andar em um determinado setor, de forma disciplinada e cuidadosa. Este procedimento trará ao seu trabalho maior organização, segurança e agilidade. Junto ao correto uso dos conceitos e orientações já tratados, a atenção ao percurso do setor evitará erros, omissões e registros indevidos. Você utilizará este método para realizar corretamente a coleta de dados.

> **Atenção**
>
> Durante esse processo, é fundamental que você registre no mapa em papel onde terminou o trabalho em um dia para dar continuidade posteriormente, agilizando o seu reinício. Outra alternativa é registrar uma foto no DMC para identificar o último ponto trabalhado. 

A Cobertura do Setor Censitário está intimamente ligada ao seu percurso. É o procedimento de realizar o levantamento dos endereços de todos os domicílios, de todos os estabelecimentos e de todas as edificações em construção ou em reforma encontrados na área de trabalho sob sua responsabilidade, incluindo as entrevistas, quando aplicáveis, na ordem do percurso. 

Para evitar falhas na cobertura do setor, é fundamental que as confirmações, inclusões ou exclusões de unidades sejam realizadas na ordem do percurso. Ou seja, à medida que você percorrer o setor, deve realizar as confirmações, inclusões ou exclusões de unidades.

> **Atenção**
>
> Cobrir o Setor Censitário significa verificar e registrar todas as unidades encontradas – Domicílios, Estabelecimentos e Edificações em Construção ou em Reforma – dentro do perímetro do setor, percorrendo-o de forma ordenada e correta e realizando a coleta de dados. 

Considerando as definições de percurso e de cobertura, fica claro que ambas estão interligadas. No trabalho de recenseamento, você realizará simultaneamente o percurso e a cobertura do Setor Censitário, ou seja, ao mesmo tempo que percorrerá um determinado setor de forma disciplinada e cuidadosa, você registrará todos os endereços e coletará todos os questionários sem omissões e sem registros indevidos.

> **Atenção**
>
> **Sempre que localizar um endereço em seu percurso, realize o registro no DMC**, independentemente da presença de um responsável pela unidade, da identificação da espécie ou da coleta do questionário naquele momento. Esta prática é fundamental para garantir o registro dos endereços na ordem do percurso realizado por você. 
>
> **Não “pule” um endereço para realizar seu registro posteriormente**, pois, além de garantir a ordenação da listagem de endereços, é fundamental realizar a cobertura completa do seu setor censitário. 
>
> Lembre-se de que o registro de **“Pendente de Espécie da Unidade Visitada” e os dois registros relacionados a “morador ausente”** (“Domicílio Particular Permanente Ocupado, com Morador Ausente” e “Domicílio Particular Improvisado Ocupado, com Morador Ausente”) colaboram neste sentido. Eles garantem que os endereços foram coletados na ordem necessária, e que você terá a chance de retornar a eles para fazer os ajustes necessários e a coleta do questionário. 

Lembre-se de que, durante o percurso, você poderá encontrar endereços em diferentes situações e que, de acordo com cada caso, realizará:

- uma **confirmação** (endereço que existe em campo e na lista prévia, com ajustes a serem feitos ou não – seja no endereço, seja na espécie);
- uma **inclusão** (endereço que existe em campo e não existe na lista prévia, devendo ser incluído na ordem correta de percurso); ou
- uma **exclusão** (endereço existente na sua lista, mas não existente em seu setor). 

Os Estabelecimentos Agropecuários possuem espaços para o registro de dados do informante (nome, telefone e e-mail). Estas informações são fundamentais para que o IBGE entre em contato com os informantes durante o Censo e também para operações futuras, facilitando a abordagem e o contato com eles. 

No caso dos domicílios, nome, CPF, telefone e e-mail serão coletados na entrevista e, ao final da mesma, automaticamente preenchidos na espécie do domicílio, enquanto nos estabelecimentos em que a coleta destes dados se aplica, você deve realizar o registro no ato da confirmação da espécie. A lista prévia que consta no seu DMC lhe permite visualizar os dados do responsável pelo endereço na operação anterior, o que pode ser um recurso importante no contato com informantes e para encontrar unidades de difícil localização.

> **Atenção**
>
> Em todos os domicílios, esteja atento à possível existência de mais algum domicílio no terreno, que não esteja listado, isto é, casas nos fundos, subsolos e outros espaços da propriedade não identificados à primeira vista. Mas não se esqueça de observar os critérios de separação e independência para confirmar que a edificação se trata, de fato, de um domicílio. Sempre verifique também se existe mais de uma espécie nos endereços. Pode haver edificações que são aparentemente apenas domiciliares, mas que possuem também alguma espécie de estabelecimento. E também edificações que são aparentemente apenas estabelecimentos, mas que possuem morador residindo de forma permanente ou improvisada. 

Durante todo o processo de percurso e cobertura, você deve estar atento à ordem de registro dos endereços no DMC. Ela é fundamental para que, em operação futura, o agente de campo encontre os endereços do setor listados no dispositivo de coleta de forma organizada, agilizando o trabalho e evitando erros. Para você, Recenseador, a ordenação correta dos endereços também é muito importante, pois agiliza seu trabalho e facilita a localização dos endereços já trabalhados nas listagens, caso você precise retornar a algum deles.

> **Atenção**
>
> Comunique ao seu Supervisor todas as divergências encontradas entre o mapa do setor e/ou a descrição do perímetro da sua área de trabalho e a situação observada no Reconhecimento, para que ele tome as providências necessárias à atualização dos dados do setor. Ao realizar a cobertura, você deve respeitar os limites do setor onde estiver realizando a coleta. Seu DMC dispõe do descritivo, da visualização do perímetro do setor e da imagem de fundo, recursos importantes para que você se localize e se mantenha dentro do setor. Entretanto, imprecisões podem existir. Em caso de dúvidas, a referência deve ser sempre o texto que descreve o perímetro do setor. 

Você deve avaliar a realidade encontrada em campo para definir como fará o percurso e cobertura do setor. Para tal, o suporte da sua supervisão e o reconhecimento do setor são instrumentos fundamentais. Assim, o planejamento começa ainda no posto de coleta e é tão importante quanto a realização de um percurso criterioso, ordenado e cuidadoso quanto à realização da cobertura de todos os endereços.

> **Atenção**
>
> Não se esqueça de realizar cópias de segurança (backup) regulares e transmitir as informações do dispositivo de coleta para o posto com regularidade, de modo a minimizar um eventual problema com o equipamento. Em locais com acesso à internet, recomenda-se a realização de uma transmissão após cada entrevista realizada. Em locais onde o acesso à internet é mais restrito, recomenda-se, na medida do possível, pelo menos uma transmissão por dia. 

Na maior parte dos setores censitários do país, o Recenseador encontrará um cenário urbano, com a ocupação do terreno organizada em quadras e faces. Entretanto, há uma parcela expressiva de setores em situação rural, onde a ocupação do terreno se dá de forma diferente, além de uma quantidade menor de setores em condições diferentes, onde a ordenação da ocupação não permite a clara identificação de quadras e faces ou onde serão encontradas formas diversas de ocupar a área do mesmo setor. Esta diversidade de possibilidades exige que os procedimentos de percurso e cobertura se adaptem à realidade encontrada para que o trabalho ganhe em organização e eficiência, garantindo maior agilidade e cobertura do setor. Vejamos como percorrer e cobrir os setores.



#### 15.2.1. Setores urbanos: percurso organizado por quadras e faces

Nas áreas urbanizadas, o percurso se baseia na identificação das quadras e faces que existem na parte interna ao setor e na movimentação por elas de forma ordenada. 

Este é o tipo mais comum dentre os setores coletados regularmente para as pesquisas do IBGE. Portanto, trataremos primeiro do caso mais recorrente para, depois, aprender procedimentos de percurso e cobertura em setores rurais (também bastante recorrentes) e em setores em outras situações que não estas acima. Na maioria dos setores em situação de Núcleo Urbano e Aglomerado Rural, você encontrará situações em que este procedimento se aplica, mas é possível que você precise avaliar outros mecanismos de percurso e cobertura. 

Observe, na figura acima, um exemplo de mapa do setor censitário urbano e repare como ele se distribui de forma regular. Veja também como o terreno tende a estar densamente ocupado, resultando em grande proximidade das unidades. Nesses setores, o endereçamento tende a ser regular e de fácil identificação. Por isso, o principal desafio de cobertura está relacionado com a densidade e concentração das unidades. 

`[FIGURA OMITIDA]`

Soma-se a isso o fato de que o perímetro dos setores urbanos tende a estar associado aos logradouros existentes, o que faz com que ele, em tese, seja mais facilmente identificável. Entretanto, como os setores urbanos tendem a possuir dimensões menores em termos de área, é importante ter o cuidado de não exceder seus limites durante o percurso.

**Passo a passo**

Nestas situações, você deve identificar as quadras e faces do setor para iniciar seu trabalho:

1. Localize no campo e identifique no mapa o perímetro do setor e a quadra onde está indicado o ponto inicial da descrição do perímetro. Identifique também o ponto de melhor acesso para iniciar o percurso e sinalize-o em seu mapa de papel. Fotografar este ponto é um recurso importante, que será tratado de forma mais apropriada adiante.

> **Atenção**
> Lembre-se de em hipótese alguma trabalhar fora do perímetro do setor que está em andamento.

2. Para iniciar a primeira face, confira o nome do Logradouro, o CEP e a Localidade.

3. **Inicie o percurso caminhando pela face com as unidades à sua direita (com o ombro direito junto à face)**, parando a cada endereço encontrado para realizar seu registro, coletar as coordenadas geográficas e registrar a espécie. Nos endereços onde couber, realize a coleta do questionário e não deixe de registrar as Edificações em Construção ou em Reforma. Assim, você terá identificado e registrado todos os domicílios e todos os estabelecimentos pelos procedimentos de confirmação, inclusão e exclusão. Ao terminar o percurso e a cobertura de todas as unidades da face, realize sua conclusão no DMC.

   - As unidades a serem visitadas tendem a ser vizinhas, seja dentro de uma mesma edificação, seja em edificações adjacentes. Portanto, esteja atento à existência de unidades nos fundos, no alto, no subsolo e em outras localizações de difícil identificação para evitar omissões. Em caso de dúvidas, procure sempre por informações com moradores que já o atenderam.

   - Será comum deparar com edificações com muitas unidades (edifícios de apartamentos, condomínios, prédios comerciais etc.) e até mesmo com domicílios coletivos (hotéis, asilos, pensões, alojamentos etc.). Neste caso, entre em contato com o proprietário, gerente, administrador, síndico, porteiro, para obter melhor identificação do local a ser pesquisado.

   - Ao encontrar unidades fechadas, comumente pelo fato de seus moradores estarem ausentes para trabalho, tenha cuidado especial no registro destes endereços e espécies.
   
> **Atenção**
> Nos setores urbanos, os endereços localizados em esquinas estão localizados na interseção de duas faces. Estes casos exigem o cuidado de não registrar o mesmo endereço em duas faces diferentes e de registrar o endereço na face pela qual ele tem acesso. Caso exista um acesso para cada face, o morador deve indicar qual é o principal, que será registrado por você.

4. Ao encerrar o percurso e a cobertura da primeira face e concluí-la no DMC, passe à próxima face, percorrendo-a no mesmo sentido, e realize o mesmo procedimento com todos os endereços de domicílios, estabelecimentos e edificações em construção ou em reforma. Conclua a face e assim sucessivamente até completar a quadra, conforme a sequência a seguir.
5. Ao concluir o percurso e a cobertura da primeira quadra, passe a uma quadra adjacente e repita o procedimento com cada uma de suas faces até completar a quadra e passar à quadra seguinte.
6. Repita este procedimento com todas as quadras do setor, garantindo que todas as faces sejam percorridas de forma ordenada e que todos os endereços e questionários sejam cobertos. 7. 8. 9.

> **Atenção**
>
> Sempre que for útil à coleta e identificação de pontos de referência no setor, de faces ou de endereços, registre fotografias do setor. 

Esta orientação implica em percorrer as faces de uma quadra sequencialmente, sempre indo à face adjacente em um percurso que tende a seguir o **sentido horário**. Este procedimento evidencia uma sequência padronizada de cobertura das faces e dos endereços das faces. Com isso, operações futuras encontrarão as faces e os endereços ordenados de forma organizada e sequencial, o que minimizará as possibilidades de omissão e agilizará o trabalho. Um método recomendável é iniciar a cobertura por uma quadra próxima aos limites do setor censitário e seguir para quadras adjacentes em um sentido ordenado (horário, por exemplo), cobrindo o setor das bordas para o centro em formato espiral. 

Todas as quadras e faces de um setor são numeradas com seus códigos. Assim, apesar de ser frequente que um setor seja composto pelas quadras 1, 2, 3, 4, 5 etc., e que cada uma destas quadras seja composta pelas faces 1, 2, 3, 4 etc., não há obrigação de realizar a cobertura nesta ordem, caso esta não seja a mais conveniente.

> **Atenção**
>
> É necessário ter atenção a estes códigos, sabendo, porém, que eles não determinam a ordenação da cobertura e não precisam ser sequenciais. 

A obrigação é cobrir o setor de forma ordenada e cuidadosa, percorrendo as faces com as unidades à sua direita. Assim, em um setor com **quadras numeradas** sequencialmente de 1 a 5, pode ser mais proveitoso, para um trabalho cuidadoso, organizado e ágil, realizar a cobertura das quadras seguindo a ordem: 2, 1, 4, 3 e 5.

> **Atenção**
>
> Da mesma forma, considerando uma quadra que tem as faces numeradas de 1 a 4, pode ser mais prático iniciar a cobertura pela face 3, seguindo para a 4, depois a face 1 e, por último, a face 2.

> **Atenção**
>
> Não há nenhum erro em proceder à cobertura do setor desta forma. Outra evidência disso é o fato de que há setores que não possuem numeração sequencial de quadras e de que pode haver quadras formadas por faces que não possuem numeração sequencial. Assim, compreender o código das quadras e das faces como uma sequência obrigatória de cobertura é um equívoco de interpretação que pode conduzir a erros na coleta. 

Observe outro exemplo de cobertura do setor por quadras e faces. Note que o caso a seguir possui mais quadras e faces e que os valores marcados indicam os códigos das quadras. A ordem de percurso, no entanto, está indicada pelas setas e não segue a ordem dos códigos das quadras. Da mesma forma, dentro de cada quadra, não há obrigatoriedade em seguir a ordem dos códigos das faces, mas de cobri-las sequencialmente, mantendo as unidades trabalhadas à sua direita. 

Tenha atenção especial aos pontos de coordenadas, pois as dimensões espaciais restritas dos setores urbanos aumentam as possibilidades de os pontos assumirem valores de coordenadas que não pertencem ao setor nas unidades que fazem limite com as unidades do seu setor.

> **Atenção**
>
> Seu DMC emitirá um alerta nesses casos. Verifique se você está, de fato, dentro do Setor Censitário e procure fazer com que as Coordenadas da Unidade sejam registradas de forma apropriada (no seu acesso ou em ponto alternativo, como já trabalhado neste manual). Caso você esteja corretamente posicionado em uma unidade que pertence ao setor em trabalho e, por imprecisão do GPS, o DMC localize o ponto fora do perímetro do setor, não há problemas em prosseguir a cobertura desta forma. 

O trabalho só estará concluído quando todas as quadras e faces estiverem percorridas, com todos os endereços adequadamente trabalhados e questionários devidamente coletados. Esses procedimentos vão ajudá-lo na cobertura total das unidades a serem registradas em um setor urbano. Utilizando-se deles, você fará corretamente o percurso, empregando melhor o tempo de deslocamento dentro do seu setor de trabalho.

> **Atenção**
>
> Há no anexo 1, ao final do manual, orientações sobre o “Procedimento do DMC” envolvendo a temática **“Identificação das Faces e Quadras em Setor Urbano"**.



#### 15.2.2. Setores rurais: percurso organizado por áreas

Nas áreas rurais, as orientações de percurso e cobertura são diferentes, devido às diferenças nas características de ocupação do terreno em relação ao procedimento anteriormente apresentado. Sua ocorrência é ainda bastante comum entre os setores a serem recenseados. Por isso, estas orientações de trabalho de percurso e cobertura são também muito importantes. 

`[FIGURA OMITIDA]`

A figura acima retrata um exemplo de mapa de setor rural. Observe como ele possui diferenças importantes em relação ao visto no tópico anterior. Note como não é clara a identificação de quadras e faces como no caso anterior, assim como a área do setor é muito maior e não há grande densidade de unidades. Por isso, o percurso e a cobertura de setores rurais devem ser feitos de forma diferente, procurando identificar áreas a percorrer e cobrir no setor. 

A observação do croqui do setor também nos permite perceber estas características dos setores rurais. Veja, no exemplo abaixo de outro setor censitário, como também não é simples localizar as Unidades (Domicílios e Estabelecimentos), o que ressalta a importância de contar com a ajuda dos moradores locais para percorrê-lo e localizar corretamente as unidades. 

`[FIGURA OMITIDA]`

Observe o croqui do setor censitário a seguir. Nele, podemos identificar que a linha mais grossa em azul escuro indica o “Limite Municipal” e as linhas mais finas em azul claro representam os limites dos Setores Censitários. 

O perímetro, nos setores rurais, tende a utilizar aspectos visíveis da paisagem como marcos para a sua definição, possibilitando que você consiga distinguir precisamente onde acaba ou começa o seu setor.

> **Atenção**
>
> A localização precisa destes elementos é essencial para que, durante seu trabalho, você não invada o setor vizinho, não colete duas vezes o mesmo domicílio ou deixe de coletar algum, ocasionando inclusões indevidas ou omissões. Para isso, é necessário que você, Recenseador, tome alguns cuidados para garantir a boa qualidade do seu trabalho. 

Observe que no trecho A o perímetro do setor acompanha um rio, nos trechos B e C acompanha vias de circulação e no trecho D trata-se de uma linha seca, sem referência no terreno.

> **Atenção**
>
> Pode ser que seu setor censitário seja delimitado por alguma “Linha Seca”. Estas são linhas imaginárias que delimitam parte de um setor censitário, sem seguir o percurso de elementos reconhecíveis na paisagem. As linhas secas não são tão facilmente identificáveis quanto as linhas marcadas por vias de circulação, rios, serras etc. e podem, inclusive, ser de difícil identificação. Tenha atenção especial quando encontrar linhas secas no descritivo e no mapa do seu setor, para realizar a coleta apenas dentro do perímetro designado a você identificando seu limite em campo com cautela.

**Passo a passo**

Trate o setor como uma única área a ser integralmente percorrida por seus logradouros. Caso seja um setor de grandes dimensões (em área ou número de unidades), você poderá dividi-lo de maneira organizada em áreas menores. Para este planejamento, o reconhecimento do setor é fundamental junto à orientação da supervisão. Faça o seguinte:

1. Localize em campo e no mapa o perímetro do setor e o ponto inicial indicado na descrição do setor, além do ponto de onde iniciará a cobertura. Caso tenha planejado cobrir o setor em áreas menores, localize um ponto de início para cada parte do setor, sinalizando-os no mapa em papel e fotografando-os com seu DMC.

2. Tendo identificado o primeiro logradouro a percorrer a partir do seu ponto de início, confira o nome do logradouro, o CEP e a localidade.

3. Respeitando o perímetro do setor, percorra ambos os lados da via (a não ser que um dos lados esteja fora do setor ou da área designada por você para o trabalho), parando a cada endereço encontrado na ordem do percurso para realizar seu registro, coletar as coordenadas geográficas e registrar a espécie.

   - As unidades a serem visitadas tendem a estar localizadas distantes umas das outras no território e nem sempre visíveis a partir do logradouro que você está percorrendo. Portanto, esteja atento à existência de unidades localizadas atrás de vegetação, elevações ou declives no terreno. Em caso de dúvida, procure sempre por informações com moradores que já o atenderam.

   - Será comum deparar com edificações que compartilham as espécies de domicílio e estabelecimento agropecuário, além de outras possibilidades.

   - Utilize a imagem de satélite disponível em seu DMC para ajudá-lo no percurso. Na imagem, você poderá localizar telhados de edificações dentro do seu setor. Depois de localizá-los, procure por informações com moradores da região para saber como chegar às edificações que estão na imagem.

   - Ao encontrar unidades fechadas, é comum que seus moradores estejam realizando atividades na propriedade ou em área próxima. Tenha cuidado especial no registro destes endereços e espécies. Observe atentamente as unidades para verificar indícios da existência de moradores e busque informações de terceiros (geralmente, os próprios vizinhos à unidade) que embasem a informação coletada e que lhe permitam planejar o retorno em um momento mais propício à abordagem naquela unidade.

   - Ao ter contato com o informante de uma determinada unidade, você pode obter informações relevantes ao seu trabalho e ganhar em agilidade perguntando não apenas sobre seu endereço, mas sobre o(s) próximo(s), contribuindo para uma coleta mais eficiente. O nome (e apelido, quando relevante) do morador ou do responsável pelo domicílio ou estabelecimento é uma forma muito eficiente de chegar ao local. Esta orientação é especialmente importante devido à forma irregular como costumam estar distribuídas as unidades nos setores rurais.

4. Caso existam logradouros transversais (acessos, estradas vizinhas e caminhos), interrompa o levantamento da via principal e trabalhe os endereços de todas as unidades situadas nos dois lados desses logradouros. Reinicie, em seguida, o levantamento do logradouro principal a partir do ponto em que foi interrompido, até percorrer toda a área em trabalho e todo o setor.

5. Ao se deparar com entroncamentos, opte por um dos caminhos. Percorra-o por completo, inclusive os logradouros transversais, e, ao terminar, retorne ao entroncamento para percorrer a próxima via da mesma forma, a fim de percorrer todas as demais alternativas existentes que façam parte do setor.

- Caso tenha dividido o setor esquematicamente em áreas, passe a uma parte mais próxima quando concluir todo o percurso da anterior e assim sucessivamente, até completar o percurso por inteiro.

>  **Atenção**
>
> Nos endereços onde couber, realize a coleta do questionário e não deixe de registrar as Edificações em Construção ou em Reforma. Assim, você terá identificado e registrado todos os domicílios e todos os estabelecimentos pelos procedimentos de confirmação, inclusão e exclusão.

> **Atenção**
>
> É comum a existência de unidades (domiciliares ou não) cujo acesso se dá apenas por meras “trilhas” que não constam dos mapas. Tenha o cuidado de percorrê-las, mas não registre as unidades dependentes, isto é, anexas à unidade (pocilgas, paióis, depósitos de cereais, ordenhas etc.) como novos endereços, pois elas são frequentemente acessadas por trilhas deste tipo mas pertencem a um endereço já registrado. Contudo, observe se a unidade visitada terá dupla espécie - domicílio e estabelecimento agropecuário.

> **Atenção**
>
> Procure analisar a imagem de satélite que está disponível no seu DMC junto com as pessoas da região. Ao recensear um domicílio inserido numa propriedade rural, mostre a imagem de satélite presente em seu DMC ao morador para saber até que marco visível vai a propriedade, ou seja, onde começa a área do vizinho. Nesta análise da imagem, o morador poderá indicar a melhor estrada para chegar ao domicílio vizinho.

 Como os logradouros tendem a ser mais longos e as unidades mais dispersas, a orientação de cobrir os dois lados do logradouro de forma alternada é importante. Além de agilizar o percurso em logradouros longos, ajuda a evitar deslocamentos maiores entre as unidades e favorece o levantamento de informações em endereços vizinhos. 

Outra forma importantíssima de melhorar a qualidade do seu trabalho é procurar preencher adequadamente o Ponto de Referência para os endereços registrados, o que facilita muito o eventual retorno à unidade e a sua identificação em operações futuras. Especialmente nos setores rurais, lembre-se de preservar o Sigilo Estatístico ao preencher Pontos de Referência e Nomes de Estabelecimentos. 

Observe o croqui do setor censitário a seguir. Nele, podemos identificar uma via principal que se bifurca e segmenta o setor em três áreas distintas. 

Temos, aqui, um exemplo em que pode ser interessante utilizar a estrada principal como elemento para organizar seu trabalho em três áreas. Nessas áreas você fará o levantamento de todos os endereços da chamada área 1, de todos os endereços da área 2 e, por fim, de todos os endereços da área 3, coletando todos os questionários em cada uma delas. Identificar bem o perímetro do setor e áreas delimitadas por acidentes geográficos dentro dele é fundamental para tomar a decisão de percorrer e cobrir o setor como uma única área ou através de áreas menores.

> **Atenção**
>
> Ao percorrer setores rurais, diferentemente de setores urbanos, você cobrirá e verificará a existência de edificações nos dois lados da via, não somente à sua direita, **desde que esteja dentro do perímetro do setor**. 

Esta lógica de percurso por áreas tende a ser a mais adequada também aos setores censitários onde o deslocamento por vias fluviais, ou seja, por rios, é fundamental. No deslocamento em embarcação fluvial pelos logradouros, recomenda-se que o percurso cubra sempre as duas margens do rio de forma alternada e que o percurso no rio principal seja interrompido sempre que for encontrado um **afluente**. Nesse caso, o percurso do afluente deverá ser integralmente percorrido, considerando suas duas margens, antes de retomar o percurso na via principal. Nos percursos fluviais, é muito importante avaliar a realidade local para decidir se é melhor cobrir os endereços enquanto “sobe” o rio ou enquanto “desce” o rio, sentido em que o deslocamento é mais facilitado. Lembre-se, porém, de que é muito frequente que os rios sejam os limites dos setores censitários. Portanto, apenas as margens incluídas no setor devem ser percorridas e cobertas. 

Esses procedimentos vão ajudá-lo na cobertura total das unidades a serem registradas em um setor rural. Utilizando-se deles, você fará corretamente o percurso, empregando melhor o tempo de deslocamento dentro do seu setor de trabalho, e melhorará a cobertura do setor.

> **Atenção**
>
> Há no anexo 1, ao final do manual, orientações sobre o “Procedimento do DMC” envolvendo a temática “**Percurso em Setores Rurais**”.

> **Atenção**
>
> Como não existe trabalho ordenado por faces nos percursos organizados por área, você deve tomar cuidado especial na ordenação do trabalho dos endereços. 

É fundamental garantir que, de acordo com as orientações de percurso destes setores, você percorra e cubra corretamente todos os endereços pertencentes ao setor, seguindo pelo logradouro, interrompendo o percurso sempre que existir um logradouro transversal para, posteriormente, retomar o percurso no logradouro principal. Por este mesmo motivo, não é necessário concluir faces. Basta que todos os endereços de todos os logradouros do setor tenham sido trabalhados. Caso exista algum logradouro registrado sem nenhum endereço, você deve excluí-lo.



#### 15.2.3. Setores urbanos: percurso organizado por logradouros

Em algumas situações, a organização comum de quadras e faces para os setores urbanos não é capaz de servir como referência para o percurso e cobertura de um setor. Isso ocorre principalmente em setores com as seguintes características:

- setores urbanos formados por uma única quadra com formato irregular;
- setores que possuem quadras e faces, mas que, entre as quais, há uma ou mais quadras de feição irregular;
- setores de áreas urbanas que não possuem o terreno ordenado em quadras e faces. 

Características como estas são encontradas de forma mais frequente em **setores de Aglomerado Subnormal**, mas também podem ser encontradas em setores urbanos localizados nas bordas das áreas urbanizadas (em situação de Área Urbana de baixa densidade) e em outros contextos mais específicos. Nestes casos, é necessário trabalhar todo o setor ou parte dele (uma ou mais quadras), seguindo um método diferente, guiando-se pela sequência dos logradouros. 

Os setores de aglomerado subnormal constituem, com frequência, área de coleta complexa, devido às suas características específicas: grande densidade de população, arruamento irregular, ausência de endereçamento regular, dificuldades de acesso, além de questões eventuais de segurança para a realização do trabalho. 

O mapa do setor muitas vezes não consegue refletir com fidelidade a realidade destas localidades, seja por dificuldade de produção do mapeamento, seja pela acelerada dinâmica de ocupação destas áreas. Considere sempre que imprecisões no registro dos endereços e na captura das coordenadas são muito frequentes nessas áreas. Portanto, a coleta em setores de aglomerados subnormais representa um desafio a ser superado pelos Recenseadores. Observe a seguir, à esquerda, a imagem de satélite com o perímetro de um setor de aglomerado subnormal e, à direita, o croqui do mesmo setor. 

`[IMAGEM OMITIDA]`

Nos setores de aglomerado subnormal – mas não somente neles –, pode ser muito importante buscar contato com lideranças locais, como associações de moradores. Este contato pode ajudar nas abordagens realizadas na localidade e no próprio deslocamento pelo setor. Investigue também os dias e horários mais adequados à coleta e procure informações sobre os acessos existentes ao setor e ao aglomerado, bem como sobre suas vias internas de circulação.

> **Atenção**
>
> Nos setores de aglomerado subnormal sem arruamento, o trabalho organizado em quadras e faces como em outros setores urbanos é pouco viável. Há, porém, setores subnormais onde a organização por quadras e faces é viável e corrobora um trabalho mais ordenado, o que é sempre desejável. Seu DMC encontra-se preparado para trabalhar com ambos os casos. A captura de coordenadas para cada um dos endereços será sempre exigida pelo aplicativo.

**Passo a passo**

Os procedimentos a seguir determinam, de forma genérica, como percorrer um setor com base em seus logradouros. Posteriormente, veremos dois exemplos esquemáticos: um adequado aos dois primeiros casos acima e outro adequado ao terceiro. Para percorrer um setor por logradouros, faça o seguinte:

1. Localize no campo e identifique no mapa o perímetro do setor e o ponto inicial indicado na descrição do setor, além do ponto de onde iniciará o percurso. Fotografar este ponto é um recurso importante, que será tratado de forma mais apropriada adiante. A forma irregular da ocupação (de parte) do setor pode dificultar a identificação do perímetro, exigindo cuidado para garantir que seu trabalho ocorrerá dentro do perímetro, sem omitir unidades.

   - Dê especial importância aos pontos de referência que ajudam sua localização no setor e fotografe-os, pois as coordenadas geográficas destas fotografias e as próprias fotografias ajudam na localização, no deslocamento no setor e mesmo na identificação de unidades com endereçamento frágil.

   - Nunca fotografe pessoas, somente edificações e pontos importantes. Em determinadas situações, isso pode comprometer a sua permanência no local e a continuidade do seu trabalho.

   - Utilize amplamente seu mapa em papel para registrar informações do andamento de seu trabalho e de pontos de referência, facilitando o reinício de seu trabalho a cada dia e o retorno a qualquer ponto do setor.


2. Confira adequadamente o nome do primeiro logradouro, o CEP e a Localidade. Faça isso toda vez que iniciar um novo logradouro.

   - Procure identificar elementos que permitam dividir o setor em trechos menores. Utilizar as vias de circulação nestes setores tende a ser o mais adequado, já que é muito difícil identificar quadras e faces nestes casos.

   - Apoie-se nas informações dos próprios moradores sobre a existência de nomes locais reconhecidos pela população, especialmente nos registros de localidades e logradouros.

3. Inicie o percurso caminhando pela face com as unidades à sua direita (percorrendo apenas um lado da via com o ombro direito junto à face), parando a cada endereço encontrado para realizar o registro, coletar as coordenadas geográficas e registrar a espécie. Nos endereços onde couber, realize a coleta do questionário e não deixe de registrar as Edificações em Construção ou em Reforma. Assim, você terá identificado e registrado todos os domicílios e todos os estabelecimentos pelos procedimentos de confirmação, inclusão e exclusão.

   - As unidades a serem visitadas tendem a ser vizinhas, mas podem estar construídas no terreno de forma desordenada. Esteja atento à existência de unidades não percebidas inicialmente por você, mas, adicionalmente, procure organizar seu percurso de modo a manter as unidades à sua direita para evitar omissões e registros duplicados. Em caso de dúvida, procure sempre por informações com moradores que já o atenderam.

   - Verificar com atenção as edificações existentes. É comum a existência de várias unidades onde aparentemente só uma entrada (porta ou portão) é visível.

   - Estas áreas costumam passar por grande dinâmica de transformação e podem estar em franco processo de ocupação.
   - Tenha muita atenção ao registrar a espécie “Edificação em Construção ou em Reforma”. Esta espécie exige que não exista morador no endereço. É muito comum que as edificações possuam morador mas não tenham as paredes emboçadas ou pintadas, por exemplo. Portanto, estes casos não obedecem ao conceito da referida espécie (Construção ou Reforma).
   - Tenha os mesmos cuidados já levantados para os setores rurais e demais setores urbanos ao encontrar unidades. Observe atentamente as unidades para verificar indícios da existência de moradores e busque informações de terceiros (geralmente, os próprios vizinhos à unidade) que embasem a informação coletada e que lhe permitam planejar o retorno em um momento mais propício à abordagem naquela unidade.
   - Ao ter contato com o informante de uma determinada unidade, você pode obter informações relevantes ao seu trabalho e ganhar em agilidade, perguntando não apenas sobre seu endereço, mas sobre o(s) próximo(s) em seu percurso, contribuindo para uma coleta mais eficiente. Utilizar o nome da pessoa responsável para buscar essas informações é especialmente importante.
   
> **Atenção**
> Não deixe nunca de considerar a Data de Referência da operação em seu trabalho e esteja preparado para fazer ajustes e inclusões de endereços e espécies em grande quantidade.

> **Atenção**
> Ainda que o uso dos nomes de moradores como mecanismo de localização seja um recurso importante para que você chegue às unidades que procura, não se esqueça de que dados pessoais só podem ser registrados nos campos próprios para tal.

4. Caso existam logradouros transversais (ruas particulares, vielas, becos e caminhos), interrompa o levantamento da via principal e trabalhe os endereços de todas as unidades situadas nesses logradouros, mantendo o método de levantar um lado do logradouro por vez. Reinicie, em seguida, o levantamento do logradouro principal a partir do ponto em que foi interrompido, até percorrer todo o setor. 

Para visualizar os casos de setores urbanos que possuem quadra(s) nestas condições, vamos analisar a figura a seguir, que representa o mapa de um setor. 

`[FIGURA OMITIDA]`

Ainda fazendo referência a este mesmo setor, veja a sequência de percurso através da numeração das faces. Observe que a face 1 está associada à Rua dos Pires. 

Agora, compare o croqui com a tabela, que indica a sequência de logradouros. Observe que as ruas **Ignes Leoni Ramalho** e **Aparecida Panteri** possuem duas faces, uma de cada lado da rua, onde as faces devem ser percorridas de forma consecutiva. Ou seja, deve-se percorrer primeiro uma face inteira e depois a outra na sequência, sem alternar as faces (sem ficar “indo de um lado para o outro”). 

| Face | Tipo | Título | Nome |
|--------|--------|----------|-----------|
| 1 | Rua || dos Pires |
| 2 | Avenida || Mario Carneiro |
| 3 | Rua | Conselheiro | Antônio Prado | 
| 4 | Rua | | Helena Fabri | 
| 5 | Rua | | Vinicio Corsi | 
| 6 | Rua | | Ignes Leoni Ramalho | 
| 7 | Rua | | Ignes Leoni Ramalho | 
| 8 | Rua | | Vinicio Corsi | 
| 9 | Rua | | Aparecida Panteri | 
| 10 | Rua | | Aparecida Panteri | 
| 11 | Rua | | Vinicio Corsi | 
| 12 | Rua || Vinicio Corsi | 
| 13 | Rua | | Helena Fabri |

O percurso descrito acima é uma possibilidade correta. Observe, entretanto, que não haveria prejuízo à cobertura deste setor se ele fosse iniciado por outra face e seguisse a mesma metodologia organizada de percurso pelos logradouros. Há, ainda, uma forma de percorrer setores que se enquadram na outra situação possível: áreas urbanas que não possuem quadras e faces. Veja a seguir como proceder. 

Você poderá trabalhar em um setor onde não seja possível identificar quadras e faces, mas onde a cobertura por logradouros ainda é adequada. Este mecanismo é comum nos setores onde a ocupação urbana é irregular e os acessos internos ocorrem por meio de becos, escadarias ou pontes. 

Observe, na figura a seguir, o sentido das setas, indicando como você deverá proceder nos setores não divididos em quadras, lembrando que nestes casos os procedimentos de reconhecimento do setor são ainda mais importantes. 

> **Atenção**
>
> Há no anexo 1, ao final do manual, orientações sobre o “Procedimento do DMC” envolvendo a temática “**Percurso por Logradouros**”.



#### 15.2.4. Setores em outras situações

Durante o seu trabalho de coleta, os cenários mais recorrentes são os apresentados acima: **Área urbana de alta densidade de edificações**, **Área rural (exclusive aglomerados)** e **Área urbana de tipo Aglomerado Subnormal**. Entretanto, é possível que eventualmente você encontre setores em outras situações e tipos. Dentre eles, **Área urbana de baixa densidade de edificações**, **Núcleo urbano e Aglomerados (Povoados, Núcleos rurais e Lugarejos)**. Nestes casos, o reconhecimento do setor lhe ajudará a decidir como organizar o percurso do setor e a cobertura dos endereços. 

De acordo com o contexto verificado, você encontrará situações similares à de setores em Área urbana de alta densidade de edificações, o que será frequente em setores localizados em um Aglomerado Rural. Nestes casos, tende a ser mais adequado adotar percursos por quadra e face e procedimentos de cobertura de setores urbanos. 

Por outro lado, você encontrará situações que se assemelham àquela de setores em Área Rural, o que será frequente em setores localizados em Área Não Urbanizada em Situação Urbana. Nestes casos, tende a ser mais adequado adotar percursos por área (ou por logradouro, dependendo das dimensões do setor em questão) e procedimentos similares aos de cobertura de setores rurais. 

Note, portanto, que as decisões sobre percurso e cobertura dos setores censitários cuja coleta estiver sob sua responsabilidade dependem muito do reconhecimento feito anteriormente e das condições que a realidade coloca frente ao seu trabalho.

>  **Atenção**
>
> Seu DMC oferecerá condições para que, nos casos menos recorrentes, em que você deverá identificar se os setores a serem percorridos e cobertos se assemelham mais a setores urbanos ou rurais, você decida se deve fazer o percurso e cobertura por quadras e faces ou por outro método. Assim, sempre que estiver diante de uma decisão que requeira alguma orientação ou suporte, recorra à sua supervisão.



#### 15.2.5. Setores com estruturas territoriais não setorizadas

É possível que, no reconhecimento e no percurso de um setor censitário, você identifique porções de um setor que diferem das características da maior parte deste. 

Porções que são “estruturas territoriais”. “Estruturas territoriais” são as formas pelas quais os agrupamentos humanos se organizam. Por exemplo, um grupo menor se organiza sob a forma de um quartel, dentro de uma área maior, que é urbana e com pouca aglomeração de edificações. Tipos e situações representam justamente “estruturas territoriais”.

> **Atenção**
>
> Esta informação está registrada no documento de descrição do perímetro do setor (caso não esteja e você a perceba em campo, você deve registrar a informação em seu material e comunicar à supervisão para que seja incluída no documento). 

Esta possibilidade existe porque tais áreas não atingiram os requisitos mínimos para que fossem isoladas em setores específicos. Assim, você deverá tratar cada porção do setor de acordo com as características de uso e ocupação do terreno encontradas, otimizando seu trabalho. Ou seja, nestes casos é possível que seja mais adequado percorrer e cobrir uma parte do setor por um método; e a estrutura territorial não setorizada, por outro método.

#### 15.2.6. Coleta em Mutirão

Alguns setores podem não estar adequados aos requisitos quantitativos máximos de unidades recenseáveis, ocasionando áreas de coleta mal dimensionadas para o trabalho de um recenseador. Na impossibilidade de se realizar a cobertura de tais setores com apenas um Recenseador no prazo estipulado, é possível realizar um levantamento da necessidade de alocação de mais de um Recenseador em um determinado setor. 

Este processo denomina-se **mutirão** e só deve ser utilizado quando for comprovada a inviabilidade de cobertura do setor por apenas um Recenseador em tempo exequível. Dentre as razões mais comuns para a adoção da coleta em mutirão destacam-se:

- grande número de unidades recenseáveis no setor – muito acima da média de 300 domicílios;
- ganho de eficiência – tempo e deslocamento das equipes de coleta – devido a setores com grande extensão territorial e/ou em áreas remotas e de difícil acesso; e
- problemas de segurança para o percurso no setor.

> **Atenção**
> Lembre-se de que esse procedimento é excepcional e não deve ser realizado de forma indiscriminada! 

Cabe ao seu Coordenador Censitário de Subárea a decisão de implementar a coleta em mutirão após avaliação cuidadosa de acordo com os critérios mencionados acima. O seu Supervisor será o responsável por dividir o setor em partes menores e atribuí-las aos respectivos recenseadores. Você trabalhará na parte que lhe foi designada de modo semelhante aos demais setores que não demandam mutirão.



#### 15.2.7. Fotografias de Pontos Importantes

Você deverá, ao iniciar o setor, **tirar uma fotografia do ponto inicial com seu DMC**, assim como, durante toda a cobertura do setor, fotografar elementos que possam servir de referência. As fotografias registradas possuirão associação com Coordenadas Geográficas, podendo ser localizadas dentro do setor censitário.

> **Atenção**
>
> Fique atento à conduta ao fotografar em aglomerados subnormais. Verifique se há pessoas por perto no momento da foto para não prejudicar o seu trabalho no setor. 

Veja, no exemplo a seguir, a descrição de um perímetro urbano e a foto correspondente ao ponto inicial (cruzamento da Rua Rio Grande com a Rua Castelo Branco). 

`[FOTOGRAFIA OMITIDA]`

As fotografias do Ponto Inicial do setor e do ponto onde o percurso foi iniciado (caso não coincidam) são claros exemplos de **fotos que representam o setor censitário**. 

- **Ponto inicial e Ponto final:** CRUZAMENTO DA “RUA RIO GRANDE” COM A “RUA CASTELO BRANCO” 
- **Descrição do Perímetro:** DO PONTO INICIAL SEGUE PELA “RUA CASTELO BRANCO” ATÉ A “RUA GOIÁS”, POR ESTA ATÉ A “AVENIDA DESEMBARGADOR TÁCITO DE CALDAS”, POR ESTA ATÉ A “RUA MARANHÃO”, POR ESTA ATÉ A “RUA SÃO FRANCISCO, POR ESTA ATÉ A “RUA SÃO JORGE”, POR ESTA ATÉ A “RUA SÃO LUÍS”, POR ESTA ATÉ A “RUA MARANHÃO, POR ESTA ATÉ A RUA SÃO LUÍS, POR ESTA ATÉ A “RUA RIO GRANDE”, POR ESTA ATÉ O PONTO INICIAL. 

A foto a seguir mostra um exemplo de ponto de referência (ponte) que constitui importante elemento de localização, apesar de não ser cadastrada como endereço. 

Além de fotografar pontos que são referências importantes para o setor, é possível, **nos setores organizados em quadras e faces, registrar fotos que são representativas destas últimas**. As fotografias das faces são importantes para identificar visualmente suas características gerais, mostrar suas unidades no contexto das demais que compõem a face e mesmo para servir como referência à localização da própria face. 

Por fim, as **fotografias associadas aos endereços** têm por finalidade a identificação individual de unidades. Isso é especialmente importante para unidades de difícil localização durante o percurso e cobertura do setor e será de grande ajuda para operações futuras neste setor. Por outro lado, fotografar unidades de fácil identificação pode servir como referência para a localização de outras unidades, o que também é um recurso importante. Além disso, as fotografias de endereços podem servir para identificar características de unidades, como pode ser visto a seguir. 

Na figura são identificáveis 24 medidores, permitindo supor a possível existência de 24 unidades.

`[FIGURA OMITIDA]`

> **Atenção**
>
> Há no anexo 1, ao final do manual, orientações sobre o “Procedimento do DMC” envolvendo a temática “**Registro de Fotografias**”.



#### 15.2.8. Registro das Unidades Visitadas

Para fazer o registro das Unidades Visitadas em domicílios particulares, domicílios coletivos (com ou sem morador) e nas unidades não domiciliares, você deverá seguir as orientações descritas a seguir.

**Passo a passo**

##### 15.2.8.1. Nos Domicílios Particulares

1. Verificar, em cada estrutura, a existência de mais de um domicílio particular ocupado ou não por morador, respeitando os princípios de separação e independência;
2. Indagar a respeito de outros domicílios nos fundos ou em outra edificação na propriedade;
3. Havendo mais de uma edificação com o mesmo acesso no logradouro, coletar primeiro as da frente e depois as dos fundos como endereços distintos . Caso as edificações estejam dispostas de maneira desordenada, procurar manter as unidades à sua direita;
4. Nas vilas, cortiços e terrenos com mais de uma unidade domiciliar, você deverá registrar cada uma como endereços distintos; e
5. Nos locais com características de veraneio, investigar a existência de casa de caseiro, que também deverá ser registrada como unidade domiciliar;
6. Os dados de identificação e contato do responsável exibidos na espécie do domicílio serão atualizados automaticamente ao final da entrevista, quando são coletados CPF, telefone e e-mail, se informados.

##### 15.2.8.2. Em edificações verticais

1. Em edificações com várias unidades, constatar, primeiramente, se a edificação é residencial, não residencial ou mista;
2. Procure saber quantas e quais são as unidades existentes na edificação. Esta informação deve ser levantada junto ao porteiro, síndico, administrador ou morador que esteja disponível para prestar esta informação;
3. Seguir listando do andar mais alto para o mais baixo;
4. Coletar as unidades de um mesmo pavimento na ordem que estejam organizadas, seja numérica, alfabética ou outra forma de identificação. A partir dessa unidade registrada, prosseguir às demais unidades, obedecendo à ordem numérica ou alfabética encontrada (Ex.: apartamento 501, apartamento 502 etc.); 
5. Não omitir unidades localizadas em coberturas, subsolos e locais destinados a alojamento de porteiros, zeladores, faxineiros etc.;
6. Confirme ou inclua, conforme o caso, todas as unidades existentes sempre na ordem correta do percurso, sem realizar “saltos”, ou seja, não deixe como “Não trabalhada” uma unidade que deveria ser a próxima trabalhada. Caso contrário, você estará cometendo um erro de percurso.
7.  Caso não consiga identificar a espécie em uma primeira visita à edificação, não deixe de confirmar ou incluir o endereço.
8.  Ao incluir uma unidade nova, pode ser mais vantajoso deixá-la “Pendente de Espécie de Unidade Visitada”, para alterá-la posteriormente quando obtiver a informação precisa.
9. Caso encontre, na lista prévia, endereços pertencentes ao edifício, cuja ordenação não obedeça ao percurso corretamente previsto, você deverá proceder do seguinte modo:

   - **a)** Busque na lista qual deveria ser a primeira unidade confirmada, segundo a orientação correta (andar mais alto, menor valor do complemento no andar);

   - **b)** Pode ser necessário utilizar a função de pesquisar na lista de Pendentes, pois o endereço pode estar ordenado incorretamente na lista prévia;

   - **c)** Abra o endereço para confirmação;

   - **d)** Após confirmar o primeiro endereço do andar mais alto, siga para confirmação do próximo endereço do mesmo andar;

   - **e)** Após confirmar todos os endereços do andar mais alto, siga para a confirmação dos endereços do andar imediatamente abaixo.

   - **f)** Repita estes procedimentos até esgotar a listagem de todas as unidades existentes na edificação.

> **Atenção**
> Há no anexo 1, ao final do manual, orientações sobre o “Procedimento do DMC” envolvendo a temática “Adicionar Endereços por Herança e Herdar coordenadas”.

> **Atenção**
> Cada apartamento, seja em condomínios ou em casa de vila, deve ser listado como um endereço distinto. Nunca registre unidades distintas como um único endereço.



##### 15.2.8.3. Nos Domicílios Coletivos Com ou Sem Morador

Registrar a espécie, indicar qual o Nome do Estabelecimento e o Tipo de Edificação. Exemplo:

- Espécie: “Domicílio Coletivo Sem Morador”

- Nome do Estabelecimento: “Hotel Suspiro”

- Tipo de Edificação: “Hotel, pensão e similares”

  
##### 15.2.8.4. Nas Unidades não Domiciliares

1. Indagar sempre sobre a existência de moradores ou locais de habitação, pois há pessoas que residem em dependências de prédios que, aparentemente, são somente não residenciais, mas são utilizados como moradia, tais como: fundos de lojas, escritórios, escolas, igrejas etc.;
2. Registrar como domicílio particular nas unidades não domiciliares todos os locais destinados à habitação (ocupados ou não) ou que estejam servindo como moradia.

Caso você identifique locais não destinados à habitação sendo ocupados para fins domiciliares, deve registrá-los verificando a pertinência de considerá-lo um Domicílio Particular Improvisado Ocupado;

3. No caso de edifícios exclusivamente não domiciliares (sem moradores), inclusive galeria comercial, shopping center etc., fazer um único registro de endereço e incluir cada espécie de estabelecimento neste mesmo endereço. Havendo algum morador, após este registro, deve-se proceder como no item anterior; e
4. No caso de edifícios mistos, isto é, com unidades domiciliares e unidades não domiciliares, deve-se registrar e coletar cada uma das unidades domiciliares e os estabelecimentos uma única vez, conforme cada espécie identificada.



##### 15.2.8.5. Nas Edificações em Construção ou em Reforma

1. Indagar sempre sobre a existência de moradores ou locais de habitação, pois há pessoas que residem em dependências de prédios que, aparentemente, estão em construção ou em reforma, mas são utilizados como moradia;
2. Em caso de existência de moradores na edificação, você deve realizar o registro do domicílio, considerando a espécie identificada;
3. Registre adequadamente o uso planejado da edificação e a estimativa de unidades.



#### 15.2.9. Endereços Selecionados para Pesquisa

O IBGE toma precauções para que o mesmo endereço não seja captado mais de uma vez por uma pesquisa. Portanto, um endereço não pode constar mais de uma vez no Cadastro de Endereços da instituição e não pode ser selecionado mais de uma vez para alguma pesquisa amostral. Buscando esta garantia, o IBGE identifica cada endereço registrado com um código único, que não se repete para nenhum deles (como o Cadastro de Pessoa Física – CPF, para os cidadãos), e registra se ele já foi selecionado para alguma pesquisa anteriormente. 

Por isso, os endereços listados previamente em seu dispositivo de coleta possuem este identificador único e uma sinalização caso tenham participado de alguma pesquisa anterior ao Censo. Durante os procedimentos de percurso e cobertura, você fará **confirmações** destes endereços, mas fará também **alterações** e **exclusões** , além da possibilidade de incluir novos endereços. Nestes procedimentos, você precisa tomar cuidados para garantir a integridade destes identificadores do endereço:

- Ao tentar excluir um endereço que já foi selecionado para alguma pesquisa, você será alertado e deve tomar cuidados adicionais, procurando verificar ainda mais detalhadamente se o endereço deve, de fato, ser excluído. Após a exclusão, não inclua um novo registro com o mesmo endereço.
- Ao incluir um endereço, certifique-se de que, de fato, ele não existe em sua listagem de endereços do setor, para não gerar duplicidades. Ex.: Endereços localizados em esquina, com mais de uma entrada, por faces distintas.
- Ao alterar um endereço, o dispositivo de coleta oferecerá restrições que servem para que você se certifique de que os dados de um endereço realmente precisam de edição. Isso ocorre quando o número de um endereço é alterado ou atualizado, pois, neste caso, não será permitido alterar simultaneamente o complemento. O motivo dessa restrição é não permitir descaracterizar completamente um endereço da lista prévia.

> **Atenção**
> Em caso de erro na exclusão, você poderá desfazê-la, podendo confirmar o endereço sem perder suas informações sobre seleção para pesquisa e seu identificador único. 

Procedendo desta forma, você preservará a identificação única dos endereços e os registros de sua participação em pesquisas, práticas fundamentais tanto para o Censo 2022 quanto para as outras pesquisas do IBGE que utilizarão este cadastro de endereços como referência.

> **Atenção**
> Em hipótese alguma edite dados de um endereço para que ele passe a identificar outra edificação em campo. 

Seja qual for o método de percurso e cobertura do setor, seu trabalho estará terminado apenas quando todos os endereços estiverem registrados, com todos os questionários coletados e todas as faces concluídas (se for o caso). Todo este trabalho deve ser feito respeitando a ordem do percurso, considerando as orientações trabalhadas anteriormente. Esta tarefa considera, inclusive, o retorno às unidades onde foi necessário utilizar a espécie “Pendente de Espécie da Unidade Visitada” para caracterizar a espécie de forma definitiva e aos Domicílios Particulares Permanentes Ocupados com Moradores Ausentes para realizar a coleta do questionário, conforme as orientações específicas para esta espécie.

> **Atenção**
> Há no anexo 1, ao final do manual, orientações sobre o “Procedimento do DMC” envolvendo a temática “**Fechamento do Setor**”.



## 16. A Conduta do Recenseador

Aqui você receberá algumas orientações a respeito da sua conduta que o ajudarão na execução do seu trabalho. 

Essas orientações são válidas para todas as atividades de campo realizadas pelo IBGE, não somente durante o momento específico do contato com informantes para a realização da coleta do Censo Demográfico. 

Milhares de recenseadores e agentes de pesquisa do IBGE em todo o Brasil vão às ruas em busca de informações de qualidade para a coleta das pesquisas. Neste processo, interagem com diferentes públicos, cada qual com suas características e peculiaridades. 

Dada essa diversidade, é de se esperar que os recenseadores e agentes do IBGE sejam recebidos de maneiras distintas por esses informantes: ora com receptividade, ora com desconfiança e resistência. 

Em muitas ocasiões, os questionamentos apresentados pelo cidadão no momento da abordagem exigem que você esteja muito bem preparado para prestar esclarecimentos solicitados e argumentar no sentido de obter a cooperação dos informantes. 

Portanto, é importante que você tenha uma postura adequada, pois está representando um órgão público com uma reputação a zelar – o IBGE – e todas as atitudes no desenvolvimento do seu trabalho revelarão aspectos do seu comportamento. Isso é fundamental para que o contato ocorra da maneira esperada e para que seja possível estabelecer uma relação de parceria com os informantes, pensando, inclusive, em contatos futuros do IBGE com estes na ocasião de outras pesquisas. 

O tratamento cortês, respeitoso e seguro com o informante é fundamental para estabelecer uma relação de confiança e interesse. Reagir positivamente e demonstrar compreensão a respeito das questões colocadas pelo entrevistado são atitudes que podem ajudar você a obter as informações necessárias na abordagem. Ao ouvir seu informante, você deverá demonstrar empatia e ele, certamente, valorizará sua atitude positiva e respeitosa.



### 16.1. Atitudes, deveres e responsabilidades

Adquirir conhecimentos sólidos sobre o IBGE como um todo é um importante ponto de partida para o trabalho de abordagem. Conhecer o funcionamento da instituição em sua relação com o próprio Censo Demográfico lhe dará instrumentos para o contato com os informantes, onde será necessário esclarecer questionamentos e argumentar.

>  **Atenção**
>
> Portanto, procure conhecer, minimamente, a missão do IBGE, sua estrutura, produtos, projetos e pesquisas. O conhecimento, em sua forma geral ou mais específica, é seu maior aliado. Esteja ciente da importância do trabalho que você realiza para transmiti-la no contato com os informantes. 

A segurança é também outro aspecto que deve ser demonstrado em suas atitudes, com a qual você e o IBGE têm deveres e responsabilidades. Assim, identifique-se sempre de forma muito clara ao seu interlocutor e deixe sua identificação (crachá e demais itens de identificação) visíveis a ele. Além disso, não deixe de esclarecer que o sigilo é tanto um compromisso seu quanto da instituição.



### 16.2. A preservação do sigilo estatístico

A garantia de que as informações obtidas pelo Censo Demográfico e por quaisquer outras pesquisas são sigilosas é fundamental tanto para os informantes quanto para o IBGE. Os cidadãos que devem prestar informações à instituição só se sentirão em condições de fazê-lo se tiverem confiança depositada no IBGE e no funcionário que busca as informações naquele momento. Assim, o IBGE toma todas as precauções necessárias para garantir que dados individualizados não serão divulgados. 

A esta preocupação do Instituto, você deve somar a sua conduta e seu conhecimento no contato com seus interlocutores, demonstrando e garantindo a eles que sua individualidade será preservada. Além das orientações de conduta, identificação, segurança e contato com o informante, há orientações importantes com relação ao próprio registro dos endereços. Estas preocupações são fundamentais, pois o Censo Demográfico é um produto do IBGE e dados relativos ao endereço serão divulgados para a sociedade. 

Como na divulgação dos dados do Censo Demográfico e em outras publicações institucionais, todos os dados coletados são **desidentificados**. Ou seja, todps os dados pessoais associados aos endereços são omitidos. Assim, o produto divulgado não possui dados pessoais (nome do responsável e telefone, por exemplo) nem dados detalhados de espécies domiciliares ou respondidos nos questionários. Para que este procedimento de omitir dados que possam identificar informantes seja efetivo, é fundamental tomar um cuidado especial no preenchimento de alguns campos do endereço. 

Pontos de referência e nomes de estabelecimentos são dados especialmente sensíveis. Estes dois dados dos endereços são publicáveis, além de serem fundamentais para a sua localização. Já estudamos a importância do preenchimento do ponto de referência e do nome do estabelecimento na espécie, porém, o que é fundamental destacar neste momento é o uso adequado dos atributos de endereço e de espécie. 

O ponto de referência deve ser preenchido sempre que for obrigatório e é de preenchimento desejável em quaisquer outros endereços quando contribuir para a localização da unidade. Esta informação deve ser relacionada a um aspecto visível em campo, que possua características estáveis e duradouras, como já visto, para garantir sua validade pelo maior tempo possível. A descrição do ponto de referência deve ser de fácil compreensão, de modo que qualquer outra pessoa possa ler e localizar sem dificuldades. Seguem alguns exemplos adequados de registro:

- “Em frente à UBS Oswaldo Cruz”;
- “Ao lado da Escola Estadual Paulo Freire”;
- “Em frente ao Supermercado Economize”;
- “Ao lado da Antena de Telefonia”;
- “Atrás da Olaria”;
- “Esquina da Rua Riachuelo com a Rua XV de Novembro”;
- “Segunda Casa à Esquerda após a Linha Férrea”;
- “Primeira Casa da margem direita do Igarapé Juruí”;
- “Próximo ao Morro do Chá”;

> **Atenção**
>
> Por isso, fazer referência a informantes neste campo não é permitido, tanto por motivos operacionais (relativos à capacidade futura de localizar o endereço ao qual se faz referência) quanto por motivos de sigilo estatístico.

Ou seja, não é adequado o registro de expressões como “Ao lado da casa do Seu Manoel” ou “Em frente à Fazenda da Cecília”. Ainda que o uso de nome de pessoas como pontos de referência pudesse funcionar em determinados casos, isso exigiria que o Recenseador ou agente em uma operação futura precisasse necessariamente buscar informações com outras pessoas para localizar o referido endereço. Contudo, essa prática pode não ser possível futuramente, pelo fato das pessoas utilizadas como referência não residirem mais lá. 

Além disso, “Seu Manoel” e “Cecília” depositaram no IBGE a confiança de que seus dados pessoais não seriam utilizados para nada que permitisse a sua identificação. Ao terem seus nomes utilizados como pontos de referência, estas pessoas terão dados pessoais associados a outros endereços com os quais não possuem relação e, por ocasião da divulgação dos dados dos endereços coletados no Censo Demográfico, estas pessoas teriam seus dados pessoais publicados em um produto do IBGE.

> **Atenção**
>
> Esta prática é terminantemente proibida por lei ao IBGE, que assume compromisso total com este sigilo.

Nos casos de estabelecimentos que possuem um nome formalizado, este deverá ser registrado. Nos casos em que a formalização não existe, deve-se registrar o nome declarado pelo informante, desde que este nome não permita sua identificação pessoal. Já nos casos em que o informante afirma não haver um nome para o estabelecimento, recomenda-se o uso de uma expressão que indique o tipo do estabelecimento (como “loja de roupas sem denominação”, “lanchonete sem denominação” ou “fazenda sem denominação”, por exemplo), a fim de não identificar o informante. 

Porém, em alguns casos, o nome formal (visível) do estabelecimento é composto por um nome próprio ou apelido, como nesta imagem, onde o bar é publicamente identificado como “Mercadinho João e Maria” ou em outros casos possíveis, como “Pousada Maeda” ou “Armazém Rafael”, por exemplo, o que obriga o registro deste nome no campo em questão sem nenhum problema relacionado ao sigilo das informações, já que ela está exposta ao público. 

`[IMAGEM OMITIDA]`

A tabela a seguir lista os dados coletados durante o registro do endereço e da espécie do endereço, conforme visto anteriormente. A segunda coluna indica se estes dados podem conter ou não informações pessoais e, por último, a perspectiva de divulgação de cada dado é especificada. 

| Dados coletados         | Identifica informações pessoais? | Será divulgado?                                              |
| ----------------------- | -------------------------------- | ------------------------------------------------------------ |
| Logradouro              | Não                              | Sim                                                          |
| CEP                     | Não                              | Sim                                                          |
| Localidade              | Não                              | Sim                                                          |
| Quadra                  | Não                              | Sim                                                          |
| Face                    | Não                              | Sim                                                          |
| Número                  | Não                              | Sim                                                          |
| Modificador             | Não                              | Sim                                                          |
| Existe identificação    | Não                              | Não                                                          |
| Ponto de referência     | Não                              | Sim                                                          |
| Complementos            | Não                              | Sim                                                          |
| Latitude                | Não                              | Sim                                                          |
| Longitude               | Não                              | Sim                                                          |
| Espécie                 | Sim                              | Parcial para Domicílios (Particular ou Coletivo); Completa para Estabelecimentos e Edificação em Construção ou Reforma |
| Tipo de Edificação      | Não                              | Não                                                          |
| Nome do Responsável     | Sim                              | Não                                                          |
| Telefone                | Sim                              | Não                                                          |
| E-mail                  | Sim                              | Não                                                          |
| Nome do Estabelecimento | Não                              | Sim                                                          |
| Indicador do Endereço   | Não                              | Parcialmente, apenas "Único" ou "Múltiplo"                   |

Nota-se que há dados que possuem informações que não podem ser divulgadas devido à identificação dos informantes. Portanto, inserir identificação pessoal em campos que serão divulgados pode comprometer a credibilidade da instituição com relação à segurança dos dados. Destaca-se que os campos mais sensíveis como nome, e-mail e telefone do responsável, além do detalhamento da espécie de domicílio (ocupado, vago ou uso ocasional e coletivo com ou sem morador) que não é integralmente publicada, são requisitos para o uso interno de informações (como seleção de amostras para outras pesquisas e contato com informantes). Com exceção destes casos, para a coleta do Censo Demográfico não é necessário registrar no endereço e na espécie outras informações pessoais que possam identificar informantes. 

Além das orientações específicas sobre o preenchimento dos dados de endereços e espécies, observe outras informações também fundamentais:

- Não permita que pessoas não autorizadas pelo IBGE o acompanhem em seu trabalho;
- Não permita que pessoas estranhas ao serviço manuseiem os equipamentos de coleta;
- Não permita que informações contidas no dispositivo de coleta sejam vistas por terceiros;
- Não faça comentários sobre qualquer informação obtida durante seu trabalho;
- Não revele fatos ou informações sigilosas sobre os informantes, domicílios e estabelecimentos pesquisados.

> **Atenção**
>
> Os responsáveis pela violação do sigilo estarão sujeitos a punição de acordo com as normas e legislação e ficarão sujeitos a processo criminal. 

Espera-se que estas orientações contribuam para melhorar a precisão e qualidade dos dados divulgados, conferindo-lhes maior relevância e possibilidades de uso. Ao mesmo tempo, as orientações voltadas à preservação do sigilo estatístico visam proteger informações pessoais dos cidadãos, parceiros estratégicos para a instituição. 

Por fim, buscam padronizar entendimentos e práticas sobre o registro dos endereços e espécies, construindo um produto mais consistente e seguro para a sociedade. Demonstre sempre ao informante tanto seu compromisso pessoal quanto o compromisso institucional com o sigilo das informações.



### 16.3. Antes de ir a campo

O seu trabalho começa na sua casa, na hora de se arrumar para sair. Uma boa apresentação pessoal faz parte dele:

- Vista roupas discretas e confortáveis, ande sempre bem apresentável e utilize colete e/ou uniforme do IBGE;
- Separe com antecedência todo o material que utilizará;
- Faça um roteiro planejando a saída de sua casa até o local de trabalho, com os tipos de transporte e horários que você poderá utilizar;
- Estude o conteúdo a ser trabalhado;
- Procure conhecer o IBGE e suas pesquisas;
- Prepare-se adequadamente para se apresentar ao informante;
- Leve sempre sua identificação do IBGE e um documento de identidade oficial com foto;
- Verifique sempre as condições de funcionamento do seu dispositivo de coleta (carga da bateria, informações do setor a ser recenseado etc.);
- Leve os materiais auxiliares à coleta, como seu mapa de setor;
- Pratique os procedimentos que serão utilizados;
- Tire as eventuais dúvidas com o seu supervisor.

> **Atenção**
> No caso de sua área de trabalho ser indígena ou quilombola, seu planejamento deve levar em consideração as orientações contidas no Manual do Recenseador PCT.



### 16.4. Cuidados com o Dispositivo Móvel de Coleta – DMC

Em seu trabalho, uma responsabilidade importante é a garantia das condições de funcionamento do DMC. Além de verificar estas condições, é fundamental zelar por elas. 

É muito importante tomar providências para evitar a perda de informações coletadas, tais como:

- Zelar pelo correto registro das informações;
- Fazer cópias de segurança (backups) regularmente;
- Transmitir as informações sempre que possível;
- Estar sempre atento às novas atualizações de versões. Verificar se a sua versão do aplicativo é a mais atual;
- Evitar quedas e contato com água e umidade; e
- Adotar cuidados básicos de segurança ao circular pelos setores censitários com o DMC, preservando a sua própria segurança pessoal, e a segurança dos dados coletados e do próprio equipamento.



### 16.5. Procedimentos em campo

#### O Informante

Normalmente, cada pessoa é a melhor informante a respeito de suas próprias características, exceto em casos especiais ou quando se trata de crianças. Entretanto, é muito difícil que se consiga a realização da entrevista diretamente com todos os moradores do domicílio. Portanto, nos casos em que houver um só informante para todos os moradores, é tarefa do recenseador verificar se o informante é capacitado a prestar, com segurança, as informações referentes ao domicílio e a todos os seus moradores. 

Em alguns casos, é possível que não haja condições de realizar a entrevista com um morador. Se isso ocorrer, as informações podem ser prestadas por um não morador, contanto que sejam respeitados os critérios de idade e capacidade de prestar informações precisas sobre o domicílio e seus moradores. 

**A idade mínima** necessária para a pessoa prestar as informações ao Censo Demográfico 2022 é **12 anos**, porém, se houver possibilidade, é desejável que a entrevista seja realizada com pessoas de 16 anos ou mais. 

Ao executar o seu trabalho, observando, investigando e coletando os endereços do setor, será necessário conversar com os moradores, donos de estabelecimento etc. Este é um momento crítico da coleta, em que o informante faz um primeiro “julgamento” do Recenseador. Portanto:

1. demonstre profissionalismo e credibilidade;
2. cumprimente o informante e identifique-se, demonstrando que você é uma pessoa credenciada e treinada para realizar a coleta pelo IBGE;
3. fale brevemente o que deseja.

É muito importante ter cuidado com seus gestos, sua postura corporal, suas expressões e a maneira de falar. Seja educado, procure trabalhar em horários que favoreçam a coleta e evite incômodos ao informante. Evite desviar o foco da atenção do informante e gerar conflitos que possam atrapalhar o trabalho. Ao chegar e sair, procure usar as palavras-chave que sempre ajudam. 

Ao abordar os informantes, você não deve:
- usar o celular;
- fumar;
- mascar chicletes;
- abordar temas polêmicos (política, religião, futebol etc.);
- exercer quaisquer atividades que não sejam específicas da sua função (vendas, atividades políticas, religiosas etc.); e
- pleitear, solicitar, sugerir ou receber qualquer tipo de vantagem (ajuda financeira, gratificação etc.) para si ou para outros. 

Durante a abordagem, é muito importante que você esteja atento aos procedimentos adequados e que não tome atitudes inadequadas. Isso colabora essencialmente tanto para demonstrar profissionalismo e credibilidade quanto para criar um clima cordial, que lhe permite esclarecer e argumentar o que for necessário para obter as informações necessárias.

> **Atenção**
>
> Nunca se esqueça de que todas as informações prestadas ao IBGE são de caráter confidencial. 

Nas operações de campo, ao lidar com o público, principalmente como Recenseador do IBGE, algumas orientações e cuidados são importantes, pois você precisará interagir com pessoas que podem questioná-lo a respeito de informações sobre o seu trabalho. No entanto, você não deve fazer comentários a respeito das informações obtidas, pois são sigilosas.

> **Atenção**
>
> No caso de sua área de trabalho ser indígena ou quilombola, seu planejamento deve levar em consideração as orientações contidas no Manual do Recenseador PCT. 

Por isso, é importante conhecer de antemão alguns dos questionamentos que podem surgir durante seu trabalho, principalmente no momento da abordagem aos informantes. Você verá, neste manual, algumas das perguntas típicas e suas respectivas sugestões de respostas. Estude-as e esteja preparado quando alguma situação semelhante acontecer com você, lembrando que, em qualquer situação, é fundamental que você já tenha se identificado como Recenseador do IBGE de maneira apropriada, com seu crachá e um documento oficial, se necessário.

> **Atenção**
>
> No caso de sua área de trabalho ser indígena ou quilombola, o procedimento de abordagem deverá levar em consideração as orientações do Manual do Recenseador PCT a respeito.



### 16.6. Conduzindo a Entrevista

Você deverá efetuar as perguntas exatamente da mesma forma que estão no questionário. Agindo assim, as respostas recebidas irão atender aos objetivos esperados. Se cada Recenseador formular as perguntas com suas próprias palavras, o Censo Demográfico 2022 corre o risco de ter informações incorretas, já que as perguntas podem ser interpretadas de modo diferente do que está expresso no questionário. 

Além disso, é fundamental que você leia integral e pausadamente todas as perguntas na ordem em que aparecem. Caso o entrevistado tenha alguma dificuldade, ajude-o a compreender a pergunta, sem induzi-lo à resposta.

> **Atenção**
>
> Se a pergunta terminar com "?", você não deverá ler as opções de resposta; caso a pergunta termine com “:”, você precisará ler as opções de resposta na ordem indicada, de forma pausada e sem mudança de ritmo. 

Mesmo que você suponha conhecer as respostas de algumas perguntas, não responda pelo informante. Certifique-se de que ele está entendendo as perguntas e de que está respondendo de forma consciente. É indispensável que o entrevistado se posicione em todas as perguntas do questionário. Jamais omita qualquer pergunta ou alternativa de resposta, pois esse tipo de omissão vai repercutir na qualidade do resultado do Censo Demográfico 2022. Se for necessário, repita a leitura do quesito da forma como está escrita, e caso o informante tenha dúvidas, utilize a função “Ajuda” do seu DMC para esclarecer o informante sobre o que está sendo perguntado.

> **Atenção**
>
> Não influencie a resposta do informante. Não demonstre que já sabe o que ele responderá. Não faça julgamentos pelo tom de voz ou pela expressão facial após a resposta dada pelo informante.



### 16.7. Resistência à abordagem

Você deve informar que a legislação (Lei nº 5.534/68 - Obrigatoriedade da prestação de informações estatísticas) preserva os dados individuais dos informantes e que o IBGE tem obrigação legal de garantir o sigilo das informações estatísticas. 

O argumento de obrigatoriedade de prestar informações ao IBGE não deve ser utilizado para coagir o informante. Quando você não conseguir fazer com que a pessoa se disponha a prestar informações, comunique o fato imediatamente ao seu Supervisor. A rede de coleta do IBGE deve lhe prestar suporte para este tipo de situação. 

Em hipótese alguma demonstre contrariedade ou irritação com a postura do informante. Mantenha a calma, mesmo quando o informante for agressivo no tom de voz. 

No caso de sua área de trabalho ser indígena ou quilombola, o procedimento de convencimento do informante deverá levar em consideração as orientações do Manual do Recenseador PCT. 

Em hipótese alguma demonstre contrariedade ou irritação com a postura do informante. Mantenha a calma, mesmo quando o informante for agressivo no tom de voz. 



> **O que está fazendo?** 
>
> Neste momento, estou realizando a coleta do Censo Demográfico na sua localidade. O IBGE realiza o Censo Demográfico do país a cada 10 anos. Excepcionalmente, o Censo foi adiado para este ano por conta da pandemia. Trata-se da principal fonte de dados do país a respeito das condições de vida da população. 



> **Como posso saber se você é mesmo do IBGE?**
>
> Você pode verificar minha identificação comparando meu crachá e meu RG com as informações do site **respondendo.ibge.gov.br**, do telefone **0800 721 8181** ou do Posto de Coleta do IBGE (que fornece endereço, nome e cargo da pessoa que poderá confirmar a informação). 



> **O que é IBGE?** 
>
> É o órgão oficial de pesquisas do país. Ele é responsável por muitas pesquisas que permitem caracterizar a situação da população brasileira, tal como o Censo Demográfico, e que revelam dados sobre emprego/ desemprego, renda, escolaridade, inflação etc. 



> **Porque o censo foi adiado para este ano?** 
> 
> O Censo Demográfico foi adiado em virtude da pandemia do vírus da Covid-19, que nos obrigou a manter o isolamento social. 



> **O Censo já esteve aqui...**. 
>
> **O ideal é que o Censo seja realizado de 10 em 10 anos, mas há muitas outras pesquisas realizadas pelo IBGE**. Por isso, é possível que um agente de pesquisa do IBGE tenha realizado a coleta de outra pesquisa em seu domicílio ou estabelecimento recentemente. 



> **Eu já respondi na semana passada...** 
>
> O IBGE faz diversos tipos de pesquisas com o objetivo de obter informações e divulgar as características da população. Provavelmente, seu domicílio foi selecionado para responder alguma outra pesquisa realizada pela mesma instituição. **Agora, estou realizando a coleta de dados do Censo Demográfico 2022, que deve ser respondida mesmo que você já tenha respondido ou que esteja respondendo outra pesquisa nesse momento**. 



> **Já forneci as informações à Receita Federal ou a outro órgão do governo. Por que vocês não utilizam esses dados?** 
>
> Há informações declaradas a outros órgãos do governo que são protegidas por lei de sigilo, assim como as informações prestadas ao IBGE. Portanto, pode ser que o IBGE precise pesquisar as mesmas informações junto à população. No caso do Censo Demográfico, somente ele permite conhecer a realidade da população com esse nível de detalhe e abrangência. 



> **Não tenho tempo para responder…** 
>
> **A coleta do Censo Demográfico é fundamental para conhecer a realidade da população brasileira. Por isso, sua participação é essencial**. Entretanto, caso realmente não possa nos atender no momento, retornarei em breve ou podemos agendar o retorno para outro dia e horário. 
>
> *(A insistência cordial diante desta postura pode ser um importante meio de garantir a coleta, bem como a prestação de informações de segurança.)* 



> **Para que serve isto? O que eu ganho com isso? É do governo? O governo não serve para nada… Não coopero com o governo...** 
>
> Nas pesquisas, os dados são levantados para fornecer informações e divulgar características da população e de outros aspectos do país. Estas informações servem para planejar ou rever ações do poder público; para o planejamento de empresas; para pesquisadores; e para que os cidadãos tenham acesso às informações da sua cidade, estado ou do próprio país e exerçam sua cidadania. **Podem servir também para cobrar medidas das autoridades competentes que estejam de acordo com as necessidades da localidade**. O IBGE é um órgão do governo federal criado em 1936 e está a serviço da população. 



> **Sou obrigado a responder? Isso vai aumentar meu imposto?** 
>
> É importante ter cautela, pois o objetivo não é a coação, mas o convencimento. 
>
> Antes da obrigatoriedade, deve-se pensar na atitude cidadã de prestar informações. Os dados levantados são importantes para a população local e para o planejamento de ações por parte de empresas e governos. **O IBGE preza uma relação com o público baseada na colaboração e no reconhecimento da importância deste trabalho e, por isso, entende que a participação de cada informante é fundamental para que as informações sejam produzidas com qualidade**. 



> **Por que quer saber se há morador aqui?** 
>
> Porque faz parte do trabalho realizado no Censo a identificação e o registro de todos os domicílios com moradores. Caso possua morador, será necessário realizar a coleta de dados, pois todos os domicílios ocupados devem ser coletados. Para facilitar o contato, perguntamos nome e telefone do morador, tanto para supervisão do meu trabalho quanto para o caso de o domicílio ser selecionado para outra pesquisa do IBGE. Desta forma, poderemos agendar o contato para a data e a hora que forem mais convenientes para os moradores selecionados. 



> **Por que quer saber meu nome? Por que quer saber meu telefone, e-mail e CPF?** 
>
> **Para que meu trabalho possa ser acompanhado e verificado por meu Supervisor, é fundamental que ele possa entrar em contato com o morador caso precise tirar alguma dúvida a respeito dos dados coletados**. Ele escolhe alguns endereços e telefona para conferir meu trabalho e minha conduta: se estive aqui, se agi de maneira correta, se preenchi as informações corretamente. Por isto, caso receba um telefonema, peço, por favor, que confirme que estive aqui. 
>
> **Além disso, essas informações servem também para atualizar o cadastro de endereços que o IBGE** mantém para dar suporte às demais pesquisas da instituição. 



> **Quem tem acesso às minhas informações? Como posso saber se você vai manter sigilo?** 
> 
> **O IBGE tem a obrigação legal de tratar todas as informações obtidas como confidenciais e sigilosas**. Elas são utilizadas exclusivamente para fins estatísticos e em hipótese alguma podem ser utilizadas para outras finalidades. Por isso, nenhuma informação de nenhuma pesquisa do IBGE é divulgada individualmente nem repassada a outras instituições ou pessoas, de forma que algum informante possa ser identificado. 



> **Alguém voltará ao meu domicílio?** 
> 
> **Meu supervisor pode retornar ao seu domicílio para verificar se a coleta foi realizada da forma correta**. Além disso, a partir da atualização desses dados, **alguns domicílios podem ser selecionados para responder a outras pesquisas do IBGE futuramente**. 




> **Você não está autorizado a entrar neste condomínio.** 
>
> **Neste caso, é importante procurar contato direto com o responsável pela proibição, para responder diretamente a ele e utilizar os argumentos e materiais que possam reverter a situação**. A partir deste ponto, estabelecer uma relação que permita compreender o motivo da recusa e revertê-la é o procedimento mais adequado. 
>
> Neste momento, é importante estar ciente de quem é o responsável pela tentativa de proibição e de que **não há nenhum interesse em adotar uma postura de coação ou ameaça com os funcionários do condomínio**. 



> **O(a) Recenseador(a) depara-se com situações ilícitas ou com atitudes inadequadas do informante.** 
>
> Este tipo de situação exige do Recenseador extremo cuidado e atenção. 
>
> A constatação de atividade(s) ilícita(s) pode decorrer tanto da observação local quanto de informações prestadas pelo informante. Neste caso, o julgamento não cabe ao Recenseador nem ao IBGE. Portanto, as informações devem ser apenas registradas, considerando a preocupação com o sigilo do informante e com a credibilidade do IBGE. 
>
> Diante de atitude hostil ou inapropriada do informante que possa inviabilizar a coleta, cabe ao Recenseador preservar sua segurança, interrompendo o trabalho e relatando o ocorrido ao supervisor para avaliar as medidas a serem tomadas. **A sua segurança pessoal e integridade física devem ser a primeira preocupação**. 
>
> **No caso de assédio a Recenseadores, reporte imediatamente o ocorrido ao seu Supervisor para que as medidas cabíveis sejam tomadas.**



> **Atenção**
>
> Caso você tenha sido selecionado para atuar em áreas indígenas ou quilombolas, leia o material específico, que se encontra no Manual do Recenseador PCT, no qual terá acesso aos procedimentos diferenciados de abordagem e comportamento nessas áreas.



# Glossário {#glossario}

**Afluente** 

- Curso d’água cujo volume de água contribui para aumentar outro no qual desemboca. 

**Área urbana**

- Área Urbana: define-se pelas situações de área urbana com alta densidade de edificações, área urbana com baixa densidade de edificações e núcleos urbanos. 
- Área Urbana de alta densidade de edificações: são áreas compostas pela aglomeração presente nas sedes municipais ou nas vilas e que apresentam grande concentração de estruturas, edificações, sistema viário desenvolvido, domicílios e equipamentos urbanos (edificações, pavimentação, rede elétrica e sanitária, etc.), e onde predominam as superfícies artificiais não agropecuárias, além de apresentar, geralmente, densidade demográfica. 
- Área Urbana de baixa densidade de edificações: são áreas presentes nas sedes municipais ou nas vilas e que apresentam baixa concentração de estruturas, domicílios e equipamentos urbanos (edificações, pavimentação, rede elétrica e sanitária, etc.). A morfologia destes ambientes urbanos se caracteriza pela ocupação menos densa do solo. 

**Desidentificados** 

- É um procedimento de garantia do sigilo estatístico dos informantes. Em tabelas divulgadas, a desidentificação consiste em substituir o dado numérico original por um símbolo “x”, com o objetivo de não permitir a identificação individualizada dos informantes da pesquisa, assegurando o sigilo estatístico. Em arquivos de microdados divulgados, a desidentificação consiste na supressão de variáveis que propiciem a identificação do informante, podendo envolver também a substituição de dado numérico pelo símbolo “x”. 

**DMC** 

- Dispositivo Móvel de Coleta. 

**Geocódigo** 

- É a numeração utilizada para identificar cada setor censitário de maneira única. É formado por 15 dígitos que indicam a macrorregião, estado, município, distrito e subdistrito onde o setor censitário está contido. Através do geocódigo são recuperadas todas as informações gráficas e alfanuméricas relacionadas ao setor. Através do geocódigo do setor censitário também é possível reconstruir diretamente a área das macrorregiões, estados, municípios, distritos e subdistritos brasileiros. 

**GPS** 

- O Sistema de Posicionamento Global por satélites é uma técnica de posicionamento por satélites através da qual é obtida a posição de um receptor móvel, assim como o horário, sob quaisquer condições atmosféricas, a qualquer momento e em qualquer lugar na Terra, desde que o receptor se encontre no campo de visão de no mínimo quatro satélites GPS. 

**Hachuras** 

- Conjunto gráfico de traços paralelos de igual espaçamento utilizado para a percepção diferenciada de áreas em um mapa. 

**Linhas Secas** 

- São linhas retas que definem um limite de setor censitário, mas que não são reconhecíveis no terreno 

**Núcleo urbano** 

- Categoria referente a aglomerações com uso e características urbanas que se encontram afastadas das cidades ou vilas ou ainda as que foram estabelecidas por legislação municipal. Estas áreas urbanas são identificadas por topônimos específicos. Existem três critérios de identificação de Núcleos Urbanos: 1) áreas definidas como urbanas por lei municipal e que se encontram afastadas das cidades e vilas (correspondem às AUIs – Áreas Urbana Isoladas na metodologia vigente até 2017); 2) áreas de uso e características urbanas afastadas das cidades e vilas em não mais que 1 km; 3) condomínios residenciais e conjuntos habitacionais, mesmo que distantes em mais de 1 km das cidades e vilas. 

**Subnormal** 

- Forma de ocupação ilegal de terrenos de propriedade alheia (públicos ou privados) para fins de habitação em áreas urbanas e, em geral, caracterizados por um padrão urbanístico irregular, carência de serviços públicos essenciais e localização em áreas restritas à ocupação.



# Anexo 1 - Procedimentos no DMC {#anexo1}



## Faces e quadras no DMC

As Faces serão exibidas no DMC tanto em uma listagem quanto no mapa. Para realizar adequadamente o trabalho de coleta, é fundamental que você verifique no mapa o que vê em campo. 

Ao selecionar uma face pela linha no mapa ou pela lista, você visualizará o nome do logradouro que foi atribuído a ela. Na listagem, as faces estarão numeradas com um código de quadra-face: cada quadra é numerada com um valor único no setor, e, dentro de cada quadra, cada face é também 
numerada com um valor específico.

Contudo, podem existir faces que não tiveram sua representação gráfica (sua linha no mapa) desenhada pelo IBGE. Nesse caso, a face não possuirá um desenho correspondente no mapa, mas existirá na sua lista de faces, por onde deve ser selecionada. 

Por isso, antes de iniciar o percurso, verifique se todas as faces que estão na lista de faces também estão representadas graficamente no mapa. Desse modo, você não será surpreendido durante o percurso, o que reduzirá a probabilidade de ocorrer algum erro de procedimento. 

Há diversas tarefas ligadas às as faces que podem ser realizadas no DMC, relacionando mapa e lista. Dentro dessa relação, é necessário, por vezes, editar ou excluir informações inadequadas: 

### Confirmação

- Confirmar uma face envolve verificar duas coisas: se a sua representação na lista e no mapa está correta; se os dados de seu Logradouro estão corretos. 
- Na primeira etapa, basta selecionar a face (na lista ou no mapa) e prosseguir com sua confirmação. 
- Na segunda etapa, você deve verificar o preenchimento dos seus dados de Logradouro, e realizar ajustes se necessário. Os dados de Logradouro incluem os itens: Logradouro, Localidade e CEP, que serão vistos detalhadamente a seguir.

### Associação

- Consiste em associar a lista ao mapa, a partir da observação em campo, isto é, associar o nome de uma face que consta na lista à linha de face correspondente no mapa. Em outras palavras: você pode se deparar com uma linha no mapa que representa a face corretamente, mas que não tem correspondente na lista; nesse caso, você deve efetuar a associação. Ao selecionar a linha correspondente, que ainda não está associada a nenhuma outra face, você poderá associá-la a uma face da lista. Isso fará com que o desenho no mapa e a face na lista fiquem vinculados entre si. A partir daí, o trabalho segue como uma confirmação de face. 

### Desassociação

- A tarefa de desassociação ocorre quando você identifica uma face em campo que está representada na lista de faces e que está associada a uma linha no mapa, mas esta associação está equivocada. Assim, é necessário desassociar o registro na lista do desenho no mapa para, em seguida, realizar a associação correta e/ou a confirmação da face. Cabe lembrar que, caso não exista uma linha do mapa que represente corretamente a face que foi desassociada, você deverá seguir para a confirmação da face selecionando-a na lista, sem uma correspondência nas linhas do mapa. 

### Inclusão 

- A tarefa de inclusão ocorre quando você identifica uma face em campo que não está representada na lista de faces. Caso essa face possua uma linha que a represente corretamente no mapa, você deverá selecionar a linha e incluir a face a partir do desenho no mapa. Caso essa face não possua uma linha que a represente no mapa, você deverá incluir a face e trabalhá-la sem uma representação gráfica no mapa. 

### Exclusão

- A tarefa de exclusão deve ocorrer quando uma face que existe nos registros do seu DMC não existe mais em campo (o logradouro pode ter sido demolido, por exemplo). Neste caso, deve-se tomar o cuidado de verificar se a face possui endereços que ainda existem em campo, pois excluir uma face significa excluir junto a ela todos os endereços pertencentes a ela. 

### Face NAR

- A Face “Nada a Registrar” é uma face que não tem nenhum endereço associado. Isto é, ao longo de sua extensão, não há nenhum acesso a unidade. Por exemplo, você pode estar percorrendo uma face que corresponde apenas a um terreno baldio. Ou você pode estar percorrendo uma face que corresponde a um muro que não permite acesso a unidades. Nesse caso, o acesso às unidades se dá por outra face da mesma quadra. Registre uma Face como NAR caso tenha verificado em campo que a face não oferece acesso a nenhuma unidade. Preste muita atenção antes de fazer essa operação, pois a operação exclui todos os endereços registrados anteriormente na face. Isto é, pode acontecer que o Recenseador não perceba um acesso a unidade existente na face, e acabe excluindo indevidamente o seu endereço (registrado corretamente em momento anterior).

> **Atenção**
>
> Estas orientações sobre faces se referem à maioria dos setores do Censo 2022 que estão associados às áreas urbanas. Entretanto, nas áreas rurais, e outros casos particulares, o trabalho com faces não existirá nas atividades de coleta. Nestes casos, os endereços serão tratados individualmente e seu DMC atribuirá automaticamente uma codificação de quadra-face aos endereços, com base nas informações que você confirmar ou preencher (Logradouro, Localidade e CEP) para cada endereço.



## Localidade, Logradouro e CEP


### **Procedimento no DMC**

Agora iremos para uma parte mais prática e ver melhor como todos os conceitos de **Localidade, Logradouro e CEP** são utilizados no DMC (Dispositivo Móvel de Coleta). 

O preenchimento de Logradouro, Localidade e CEP ocorre quando o Recenseador confirma ou inclui uma face. Ele seleciona, em uma lista de opções do DMC, um Logradouro, uma Localidade e um CEP. Depois disso, pode editar o Logradouro e a Localidade, conforme a necessidade. Mas o CEP, não. CEPs não podem ser incluídos, excluídos ou editados, pois o DMC carrega uma lista fornecida pelos Correios. 

Essas operações são realizadas nas seguintes situações:

- **Edição**: caso você identifique algum erro de preenchimento, alguma mudança de nome, ausência de preenchimento do combo de localidades, etc.;
- **Inclusão**: caso algum logradouro existente no setor não esteja presente na lista; e
- **Exclusão**: caso algum logradouro que tenha existido no passado não exista mais ou caso um logradouro tenha sido indevidamente registrado em momento anterior. 

O correto registro dos logradouros é fundamental para que as faces e, em consequência, os endereços estejam gravados de forma adequada em seu DMC. Assim, faça o preenchimento considerando corretamente Tipo, Título e Nome, conforme orientado anteriormente. Lembre-se de que todos os logradouros do setor devem ser verificados por você através do trabalho com as faces. 

Além disso, seu DMC também está carregado com uma lista de localidades de todo o município onde está o setor censitário. Nesse caso, você também pode incluir novas localidades e deve selecionar a localidade correspondente a cada face que você confirmar ou incluir.

> **Atenção**
>
> Em seu setor censitário, existe uma localidade ou mais de uma. Mas a listagem em seu DMC é relativa a todo o município. Logo, a lista contém todas as suas localidades, isto é, todas as localidades existentes nos setores censitários que compõem o município. 
>
> Cada Logradouro e cada Localidade deve ser trabalhado de forma única em seu setor censitário. Ou seja, não deve haver mais de um registro para determinado logradouro ou localidade. Portanto, jamais realize uma inclusão antes de verificar a lista dos que já existem e caso você identifique uma duplicidade já registrada em seu DMC, trabalhe apenas com um deles e exclua o outro.



> **Atenção**
>
> Caso você identifique a existência de algum Povo ou Comunidade Tradicional em seu setor censitário, certifique-se de que a Localidade está preenchida com a tradicionalidade que se aplica antes do nome propriamente dito da localidade. Se não estiver preenchido ou se o prefixo estiver errado, siga os passos do procedimento a seguir para preencher adequadamente esse campo. 


## Confirmação, Inclusão e Exclusão de Endereços

Durante seu trabalho, você encontrará endereços em campo na sua área de trabalho (setor censitário) e deverá verificar se estes endereços se encontram na lista prévia de seu DMC. Você encontrará casos que exigirão três ações possíveis de sua parte no DMC, conforme o caso: 

**Confirmação**: Endereços existentes em campo e que já constam na lista prévia de seu DMC. Verifique se os componentes do endereço estão preenchidos corretamente, corrigindo-os se necessário, e colete as coordenadas geográficas da unidade. 

**Inclusão**: Endereços existentes em campo e que não constam na lista prévia. Você deve incluir um novo registro na ordem correta em relação ao percurso que está fazendo, preenchendo corretamente todos os dados do endereço e coletando as coordenadas geográficas. 

**Exclusão**: Endereços que constam no seu DMC, mas não existem mais em campo. Você deve verificar se, de fato, o endereço que consta na lista não existe em seu setor (se foi demolido, se pertence a outro setor ou se foi indevidamente confirmado em operação anterior) e proceder à exclusão. É fundamental ter o cuidado de não excluir nenhum endereço que não esteja em alguma destas três condições, pois essa prática pode causar sérios problemas a pesquisas que venham a utilizar o cadastro de endereços como base. 

Cada endereço registrado em seu DMC deverá ser identificado de forma única em seu setor censitário, ou seja, garanta que os componentes preenchidos individualizem a unidade em que você está trabalhando. Isso evitará que unidades diferentes possam ser confundidas com outros registros feitos. 

Para que essa tarefa seja bem realizada, o DMC faz algumas verificações sobre o preenchimento que você está realizando:

- Não pode haver endereços iguais no setor censitário.
- Todo endereço deve possuir um número ou a indicação de que é “Sem número” (**SN**) feita no modificador.
- Caso um endereço seja SN, você deve preencher complementos e/ou ponto de referência, com a finalidade de incluir informações que individualizem o registro daquela unidade e possibilitem o retorno futuro a ela.
- Um endereço pode ou não possuir modificador, de acordo com o que já estudamos.
- Um endereço pode ou não ter complementos e, caso possua, os complementos são formados por até cinco pares de elemento e valor (caso você inclua complementos, o elemento é obrigatório, e o valor é opcional). 

Você sempre deve indicar se “Existe Identificação” do endereço, demonstrando se há elementos visíveis que identificam número, modificador e complementos da unidade. Após confirmar o preenchimento dos dados alfanuméricos do endereço, será realizada a captura de Coordenadas Geográficas, que também fazem parte do registro do endereço, mas são feitas em outra tela do DMC. 

Não é permitido alterar simultaneamente número, modificador e complementos de um endereço, para evitar que o registro de um endereço seja utilizado para fazer referência a outra unidade. Assim, quando você realizar algum ajuste, este deverá ser apenas para número e modificador, devidamente justificado, ou apenas para complementos.

Após confirmar o preenchimento dos dados alfanuméricos do endereço, será realizada a captura de Coordenadas Geográficas, que também fazem parte do registro do endereço, mas são feitas em outra tela do DMC.



## Capturas de Coordenadas dos Endereços

Cada endereço no setor censitário deve ser representado por um ponto, determinado por um par de coordenadas geográficas capturado por seu DMC. Para realizar a captura das coordenadas de modo correto e preciso, siga as orientações abaixo: 

### I. Primeiro Uso - Atualização da Posição dos Satélites

Procure um local a céu aberto e livre de obstruções. Evite, sempre que possível, locais próximos a prédios altos, marquises, pontes e árvores. 

Ao abrir o mapa digital pela primeira vez, verifique se o botão de localização está ativado. Mantenha a tela do DMC com o mapa aberto, com a localização ligada, por ao menos 15 minutos enquanto faz o reconhecimento do setor, durante o primeiro uso. Esse é o tempo necessário para que o GPS atualize a posição dos satélites, principalmente sem nenhum auxílio da rede de telefonia móvel. 

Esse procedimento é recomendado não somente no primeiro uso do DMC, mas também nos casos em que ele não é ligado há pelo menos 4 meses. Mantenha o DMC ligado durante todo o período de coleta e durante o período em que estiver se deslocando pelo setor censitário. Avalie sempre a carga da bateria do DMC, especialmente em áreas remotas. 

Quando o DMC estiver provido de chip de telefonia móvel, o tempo necessário para a atualização da posição dos satélites será reduzido para 1 minuto, pois ele estará fazendo uso do GPS Assistido ou A-GPS, acelerando assim a obtenção das coordenadas através do uso da rede de telefonia móvel. 

Nos demais dias de trabalho, as coordenadas serão obtidas imediatamente, a não ser que haja um deslocamento maior do que 100 km entre a última posição determinada e a nova posição, devendo realizar, nesse caso, uma nova inicialização de 15 minutos. 

### Demais Usos - Confirmação ou Inclusão de Endereços 

A confirmação ou inclusão de um endereço deve ser realizada, sempre que possível, em local sem obstruções de construções (prédios altos, marquises e pontes) e árvores, afastando-se o máximo possível destas obstruções, principalmente no caso de áreas urbanas sem o auxílio do chip de telefonia móvel (GPS Assistido). 

A captura pode ocorrer de duas formas, dependendo da situação do setor censitário em trabalho:

- Caso você esteja trabalhando em um setor urbano ou outro setor que não seja rural, o aplicativo tentará realizar a captura de coordenadas automaticamente. Você será direcionado à tela de captura de coordenadas caso a tentativa automática falhe por ausência de sinal. Nesse caso, será necessário realizar novas tentativas. Contudo, se as novas tentativas de captura falharem, você poderá prosseguir, mesmo sem o registro de coordenadas da unidade em trabalho.
- Mas se você estiver trabalhando em um setor rural, não haverá tentativa automática de captura e você sempre será direcionado à tela da captura de coordenadas. Nesse caso, você deverá selecionar o botão de busca de coordenadas apenas quando estiver adequadamente posicionado na edificação da unidade. 

Se em algum momento da coleta for necessário refazer a captura de uma coordenada já coletada (automaticamente ou não), você poderá retornar manualmente à tela de coordenadas para fazer o ajuste. 

Essa função pode ser útil quando:

- o ponto capturado pelo DMC apresentar muita imprecisão;
- a captura falhou anteriormente; ou
- houver algum erro de coleta que precisa ser corrigido. 

### II. Validação das Coordenadas em relação ao Perímetro do Setor Censitário 

A captura de coordenadas geográficas exige também que você esteja sempre atento em relação ao perímetro do setor censitário e às unidades da lista prévia com suas respectivas coordenadas (caso existam). No ato de captura de coordenadas, seu DMC fará duas verificações: 

1. O ponto capturado está **dentro** do perímetro do setor censitário.
   - Em caso positivo, você deve trabalhar esse endereço normalmente (e, se julgar necessário, pode refazer a captura de coordenada em um ponto mais adequado).
   - Em caso negativo, você será alertado para que verifique se a unidade em trabalho realmente pertence ao seu setor censitário. Se ela pertencer a outro setor censitário, não deverá ser recenseada, pois será coletada por outro Recenseador. 

2. Se o ponto está **fora**, mas muito distante do ponto capturado em coleta anterior, a causa pode ser tanto um erro de posicionamento na coleta anterior quanto na captura atual.
   - Lembre-se de que, eventualmente, a captura pode ter sido influenciada por baixa precisão do equipamento naquele momento ou por desajuste do traçado do contorno no mapa, apontando para uma localização diferente. 

#### Procedimentos para sucessivos problemas na obtenção da localização 

Caso sejam encontradas dificuldades na obtenção das coordenadas nas atividades de rotina, deve-se realizar o procedimento de inicialização do DMC, ativação do serviço de “localização” em local a céu aberto totalmente livre de obstruções e esperar 15 minutos. 

#### Endereços da Lista Prévia sem coordenadas 

Caso você identifique endereços em sua listagem de endereços no DMC sem pontos correspondentes no mapa do aplicativo, isso significa que são endereços sem coordenadas. Entre os endereços da **Lista Prévia**, isso poderá ser bastante comum, sobretudo em setores urbanos, pois esses pontos não foram coletados em 2010. Entretanto, entre os endereços já trabalhados por você, isso tende a ser raro, pois o índice de falha na captura de coordenadas é muito pequeno. Assim, o IBGE espera que, ao final do Censo, a maioria das unidades coletadas possua coordenadas geográficas. 

Os endereços com coordenadas podem ser selecionados por você para o trabalho tanto pelo mapa quanto pela lista. Contudo, os endereços sem coordenadas só podem ser selecionados pela lista, o que requer atenção para a correta identificação do endereço. 

### III. Herdar Coordenadas 

Por fim, vale destacar uma função importante que é especialmente útil para a coleta em prédios (edifícios verticais). Como a coleta de coordenadas tende a ser difícil no interior das edificações, e conforme a orientação anterior de buscar um ponto alternativo para a coleta, você terá à disposição no DMC uma função que permite “herdar” as coordenadas de um endereço para outro, ou seja, os endereços ficarão com os mesmos valores de coordenadas geográficas. Essa função poderá ser utilizada quando existir mais de um endereço com o mesmo número, o mesmo modificador e os mesmos complementos, à exceção do último complemento, que diferenciará uma unidade da outra. 

Em termos práticos, significa que será possível herdar as coordenadas do apartamento 901 de um edifício para os demais apartamentos, desde que o endereço de todos os apartamentos do mesmo edifício esteja registrado de modo que a única variação esteja no número do apartamento. Os componentes do endereço trabalhados anteriormente serão utilizados no registro de todo e qualquer endereço feito por você. Durante o trabalho, você poderá estar situado em um município, ou parte de um município, onde os mecanismos de registro de endereços sejam diferentes do usual. Nesse caso, em que os endereços são oficialmente estruturados de forma particular, orientações específicas serão prestadas, como, por exemplo, o endereçamento do Distrito Federal. Essas orientações serão oferecidas de forma complementar a esse documento, de acordo com as demandas locais.

### Registro de Espécies


O registro da espécie no DMC é feito logo após a captura de coordenadas geográficas, último dado relativo ao endereço. Já vimos que toda unidade deve possuir pelo menos uma espécie, seja ela de estabelecimento, de edificação em construção ou em reforma ou de domicílio, além da possibilidade de realizar o registro de espécie pendente temporariamente, quando não é possível identificar a espécie logo após o registro do endereço. 

No caso dos endereços previamente presentes em seu DMC, existirá uma informação de espécie coletada na última vez em que o IBGE registrou o referido endereço no setor censitário. Você deve verificar se a espécie se mantém:

- em caso positivo, veja se o preenchimento das informações associadas à espécie está correto (nome do estabelecimento, responsável onde couber, indicador etc.);
- em caso negativo, faça o ajuste da informação da espécie da unidade visitada e, além disso, preencha as demais informações necessárias. 

Cabe destacar que, no DMC, você deve registrar todas as espécies identificadas em campo. A cada espécie domiciliar identificada por você em campo, deve haver um registro de endereço, ou seja, não pode haver mais de um domicílio registrado no mesmo endereço.

### Inclusão de mais de uma Espécie


Cabe destacar que o DMC restringirá a inclusão de mais de uma espécie domiciliar no mesmo endereço, pois você deve registrar um endereço para cada domicílio. Por outro lado, o DMC restringirá também o registro de mais de uma espécie do mesmo tipo, uma vez que, neste caso, você deverá utilizar o indicador do endereço para informar que a espécie é múltipla. 

Quando você identificar, em campo, a existência de mais de uma espécie em um endereço, você deve realizar este registro em seu DMC. 

A tela de espécies lhe oferece a possibilidade de adicionar quantas espécies forem necessárias à correta caracterização da unidade visitada que está sendo trabalhada, seja em um endereço confirmado por você a partir da lista prévia, seja em um novo endereço incluído por você.

### Identificação das Faces e Quadras em Setores Urbanos


Quando estiver em campo, você deve verificar que o setor censitário é organizado em quadras e faces visíveis no mapa, na imagem de satélite no dispositivo de coleta e identificáveis em campo. 

Após identificar a primeira face da primeira quadra a ser trabalhada, você deve verificar se é uma face a ser confirmada, desassociada e/ou associada ou incluída. Em seguida, deve trabalhar todas as unidades desta face antes de seguir para as demais faces da primeira quadra.

> **Atenção**
> Ao trabalhar as faces da primeira quadra, lembre-se de que nem todas as faces possuem representação gráfica desenhada no mapa. Por isso, pode haver faces que serão selecionadas apenas pela lista de faces. Além disso, as faces incluídas por você também estarão representadas apenas na lista de faces. Assim, antes de seguir para a segunda quadra do setor, certifique-se de que todas as faces (e seus endereços, inclusive) da primeira quadra foram adequadamente trabalhadas. 

É possível que a lista prévia do seu setor censitário possua endereços registrados em uma face errada. Por isso, ao percorrer uma face e notar que algum endereço não se encontra na listagem de endereços da face em questão, verifique no DMC a possibilidade de o endereço estar registrado em outra face do setor, antes de proceder à inclusão. 

Um recurso interessante neste caso é realizar a busca no relatório de listagem de endereços, utilizando o nome do responsável ou os componentes do endereço para localizar a unidade. Caso você localize o endereço no setor censitário, é possível alocar o endereço na face correta através da função “Incluir endereço de outra face”. Isso permitirá selecionar um ou mais endereços equivocadamente registrados em outra face e transferi-los para a face que você está trabalhando. 

Tome o mesmo cuidado ao excluir endereços. Você não deve excluir os endereços da sua lista prévia que pertencem a outra face do setor. Nesse caso, a partir da face correta, utilize a função “Incluir endereço de outra face” para retirar os endereços da outra face, trazendo-os para a sua face em trabalho.

> **Atenção**
> Lembre-se de que um endereço só deve ser excluído da sua listagem se ele realmente não existir no seu setor censitário (ou seja, se foi demolido, se está em ruínas, se não existe ou se pertence a outro setor censitário). 

Além de trabalhar as faces de forma sequencial e ordenada dentro de cada quadra, você deve trabalhar uma quadra por vez e trabalhar os endereços de forma sequencial e ordenada dentro de cada face. Desta forma, você produzirá uma listagem de endereços confirmados e incluídos que obedecerá à ordem correta de percurso e cobertura no setor censitário, informação extremamente importante para o IBGE.

### Percurso em Setores Rurais


Ao trabalhar um setor rural em seu DMC, você visualizará todas as unidades do setor na listagem de endereços, pois não passará pelo mapa de faces antes de chegar às unidades. 

Por isso, você deve se lembrar de verificar adequadamente o preenchimento do logradouro, da localidade e do CEP associado a cada endereço, pois é com base nestes dados que seu DMC atribuirá, automaticamente, os códigos de quadra e de face. Neste caso, é possível que você encontre listas de endereços extensas, que dificultem a localização da unidade desejada. 

Para fazer frente a esta dificuldade, lembre-se de que a tela de unidades oferece uma opção de busca, onde você pode localizar endereços com base nos seus componentes e até mesmo com base no nome do responsável na operação anterior. Outra forma de localizar unidades é utilizar os pontos de coordenadas no mapa, considerando que a maioria absoluta dos endereços rurais está representada por coordenadas geográficas e que seu DMC oferece a possibilidade de verificar sua localização atual. Assim, você pode selecionar os endereços pelo mapa, de acordo com a proximidade das coordenadas geográficas do endereço em relação às coordenadas geográficas que indicam sua localização em campo. 

Comparando ao que vimos no trabalho por quadras e faces, é possível indicar a transferência de endereços para outro grupo de logradouro, localidade e CEP (o que gera a codificação de faces nos setores rurais). Caso você identifique que existem endereços registrados em um logradouro equivocado, você pode selecionar a função “Transferir endereços em bloco” para transferir um ou mais endereços para o logradouro, localidade e/ou CEP corretos.

### Percurso por Logradouros


Ainda que o percurso por logradouros se aplique a setores em que existe dificuldade de identificar quadras e faces no mapa e em campo, o trabalho considerará as faces como uma listagem, mesmo que não exista representação gráfica delas nos mapas. Por isso, com a finalidade de registrar adequadamente Logradouro, Localidade e CEP dos endereços do setor censitário, você deverá trabalhar com uma face a cada lado de cada logradouro percorrido, preenchendo os dados da face para que os endereços fiquem corretamente associados a ela.

> **Atenção**
> Lembre-se de que, no percurso por logradouros, você deve percorrer cada lado do logradouro com o ombro direito junto à face, diferente do percurso por área dos setores rurais. 

Por isso, você confirmará ou incluirá tantas faces quantos forem os trechos de logradouro que você percorrer para registrar os endereços. Estas faces devem ser percorridas de forma ordenada e cuidadosa, conforme as orientações dadas anteriormente e, dentro das faces, os endereços devem ser cobertos tomando os mesmos cuidados. Ao final do trabalho de cada face em cada logradouro, você deverá concluí-la em seu DMC. 

Diante da necessidade de percorrer o setor por esse método, tenha especial atenção à eventual necessidade de utilizar a função “incluir endereço de outra face” e à eventual necessidade de excluir endereços. A dificuldade de identificar uma ordenação clara na ocupação do território pode induzir a erros no registro das faces e endereços no DMC. Portanto, utilize-se sempre do contato com informantes no percurso e cobertura do setor para evitar erros e caracterizar os endereços da melhor forma possível. Caso não seja possível diferenciar quadras no setor, trabalhe todas as faces considerando a codificação de quadra da lista prévia (ou seja, trabalhe um código de quadra por vez) e inclua todas as eventuais novas faces em uma nova quadra.

### Registro de Fotografias


Durante seu trabalho, o registro de fotografias é muito importante. Entretanto, cabe destacar que não interessa ao IBGE o registro indiscriminado das mesmas: por isso, seu DMC apresenta um limite de vinte fotografias por setor censitário. Veja como registrar as fotografias:
- Caso você deseje fotografar uma referência para o setor censitário (como o ponto inicial, algum ponto de acesso importante ou outra referência relevante para o setor), deve fazê-lo a partir da galeria de fotos.
- Caso você deseje fotografar uma face (para facilitar sua identificação, indicar alguma referência importante ou alguma característica da mesma), deve fazê-lo a partir do ícone de fotografia na tela de confirmação de face.
- Caso você deseje fotografar uma unidade (para facilitar a identificação, para indicar alguma referência importante ou alguma característica), deve fazê-lo a partir do ícone de fotografia na tela de confirmação de dados do endereço da unidade. 

As fotografias registradas por seu DMC são acompanhadas de uma referência de localização por coordenadas geográficas: no caso dos registros do setor e de endereços, é realizada uma busca de coordenadas geográficas, enquanto nos registros de faces, a fotografia fica associada às coordenadas geográficas da própria face quando ela está representada no mapa adequadamente.

> **Atenção**
>
> Lembre-se de que, toda vez que você registrar uma fotografia, você deve registrar uma descrição. Este registro deve indicar com clareza o que está representado na foto, de modo a garantir que o registro da fotografia esteja acompanhada de uma descrição útil aos futuros usuários da mesma.


### Adicionar Endereços por Herança e Herdar coordenadas

Conforme a área de um município, é comum a existência de locais com muitas edificações novas e com grande número de unidades. Nestes casos, é provável que unidades construídas recentemente não constem na lista prévia do seu DMC. Ou seja, você terá muitos endereços para incluir, frequentemente localizados em um mesmo acesso ou edificação. 

Para garantir a agilidade do seu trabalho, ao incluir uma grande quantidade de endereços na situação descrita, pode ser útil que você utilize as funções de “Adicionar Endereço por Herança” e “Herdar Coordenadas”.

### Fechamento do Setor


Quando o percurso e a cobertura estiverem completos, você deve iniciar os procedimentos de fechamento do setor. Realize um backup e entre em contato com sua supervisão antes de fechar o setor, pois eventuais ajustes posteriores só poderão ser realizados se o setor for reaberto pela supervisão.

> **Atenção**
> Certifique-se de que não há nenhum questionário a ser coletado, de que todos os endereços foram visitados, de que apenas permaneçam com espécie DPPO com Morador Ausente ou Recusa os endereços em que não foi possível em hipótese alguma coletar o questionário após as devidas tentativas de coleta. 

Após selecionar a opção “Fechar” e confirmar o procedimento, o aplicativo efetuará uma série de validações e críticas automáticas para garantir a integridade dos dados trabalhados no setor. 

Caso a **Validação** seja efetuada com sucesso, você será redirecionado à etapa de Avaliação do seu trabalho no setor, no qual você deverá opinar sobre o mapeamento constante nos insumos recebidos (mapa em papel, descritivo, mapa digital, linhas secas) e sobre o acesso ao setor (dificuldade de acesso, deslocamento, existência de restrição de segurança, principal meio de transporte para se deslocar para o setor e dentro dele). 

Há ainda espaço para registrar observações, em que você pode fornecer informações adicionais não contempladas nos demais itens da avaliação. Concluído o fechamento do setor, você deve transmitir os dados de seu DMC e, novamente, entrar em contato com a sua supervisão para novas orientações.



# Anexo 2 - Povos e Comunidades Tradicionais {#anexo2}


|TRADICIONALIDADE | ESTRUTURA TERRITORIAL | ELEMENTOS SIGNIFICATIVOS E IDENTIFICADORES |
|-----------------|-----------------------|--------------------------------------------|
|Povos indígenas | Terra indígena, aldeia indígena, agrupamento indígena, comunidade indígena etc. | Placas da FUNAI, outros tipos placas e identificações, escolas e postos de saúde indígenas e presença de indivíduos autodeclarados indígena. |
| Comunidades quilombolas | Território quilombola, comunidade quilombola, agrupamento quilombola, comunidade negra rural, terra de preto, terra de santo etc. | Placas de associações quilombolas, escolas ou postos de saúde quilombolas e presença de indivíduos autodeclarados quilombolas. |
| Povos e comunidades de terreiro/povos e comunidades de matriz africana |Terreiro, casa tradicional ou roça de matriz africana | Comunidades que se autoidentifiquem como de Terreiros ou de Matriz Africana. Presença de terreiros, casas ou roças tradicionais de matriz africana, identificadas por placas ou por descrições dos moradores ou produtores rurais. |
| Povos ciganos | Acampamento, rancho ou bairro cigano | Comunidades que se autoidentifiquem como ciganas. Placas identificadoras dos acampamentos; centros culturais ciganos. |
| Pescadores artesanais | Território Pesqueiro | Comunidades de pescadores artesanais, comunidades tradicionais pesqueiras, áreas de pesqueiros, comumente em áreas de baías, estuários, enseadas, manguezais, arrecifes, igapós, lagoas, lagos, igarapés e outras áreas alagáveis ou não, identificadas por placa ou autoidentificação da comunidade. Notar também a presença de associações comunitárias de pesca artesanal. Presença de colônia de pescadores. |
| Caiçaras | Território Caiçara | Placas da Secretaria de Patrimônio da União (SPU) indicando o território caiçara ou autoidentificação por parte da comunidade caiçara. Placa com o Termo de Autorização de Uso Sustentável Coletivo (TAUs) da Secretaria de Patrimônio da União (SPU). |
| Faxinalenses | Faxinal, terra faxinal ou comunidade de faxinal | Placas identificadoras do faxinal, autoidentificação da comunidade. |
| Ilhéus | Território de Ilhéus ou Comunidade de Ilhéus ou Ilhéus | Compreendem as comunidades de povos ribeirinhos ou/e pescadores habitantes das ilhas do rio Paraná. Pode haver uma identificação pública por placas na entrada da comunidade ou pela autoidentificação dos moradores. | 
| Vazanteiros | Comunidade de vazanteiros | Comunidades que se autoidentifiquem como vazanteiras. São povos que habitam as margens do rio São Francisco e dedicam-se à agricultura e pesca de subsistência (economia "do catado") nas áreas de vazantes ou "lameiros" do Médio e do Submédio São Francisco. | 
| Morroquianos | Comunidade morroquiana | Comunidades que se autoidentifiquem como morroquianas. Ambiente localmente conhecido como "morraria".  |
| Povo pomerano | Comunidade pomerana | Comunidades que se autoidentifiquem como pomeranos. Placas de identificação, centros e associações culturais. | 
| Quebradeiras de coco babaçu | Comunidade de Quebradeiras de Coco de Babaçu | Ocorrência de Palmeira de Babaçu. Nas comunidades, pode haver placas de identificação ou pode ser feita a autoidentificação. | 
| Retireiros do Araguaia | Comunidade de Retireiros ou Retiro | Comunidades que se autoidentifiquem como Retireiros do Araguaia. | 
| Comunidades de fundos e fechos de pasto | Território de Comunidade de fundo de pasto ou Território de Comunidade de fecho de pasto | Fundo das roças familiares de cultivo destinada ao criatório de caprinos e ovinos (fundos) e de gado(fechos), de forma extensiva, aproveitando-se da pastagem nativa, o cuidado dos animais sendo também compartilhado. Os fundos são mais comuns na Caatinga e os fechos no Cerrado. As comunidades assim se autoidentificam, mas a identificação pode ser encontrada também nas igrejas, associações e centros comunitários. |
| Ribeirinhos | Comunidade ribeirinha | Comunidades que se autoidentifiquem como ribeirinhas. A identificação costuma se fazer presente em placas, nomes de escolas ou até mesmo nas casas de alguns moradores. | 
| Extrativistas e Ribeirinhos | Projeto de Assentamento Extrativista ou Agrovila do PA Extrativista | Comunidades de extrativistas e ribeirinhos que vivem em áreas regularizadas pela reforma agrária, onde têm assegurado seu modo de vida. A indicação do projeto de assentamento pode ser encontrada em placas de identificação, estruturas coletivas e na autoidentificação dos moradores. | 
| Pantaneiros | Comunidade pantaneira | Comunidades que se autoidentifiquem como pantaneiras. Comunidades que habitam o Pantanal mato-grossense e têm o seu modo de vida relacionado diretamente a este bioma. | 




# Errata {#errata}



Observação: as correções textuais já foram aplicadas no texto principal acima. As correções referentes a imagens ou legendas de imagens não foram aplicadas pois as imagens não foram incluídas no documento em Markdown.



| Onde? | O que alterar? | Status |
| ----- | -------------- | ----- |
|Página 9 | Excluir no sexto parágrafo, no terceiro marcador o texto: “a estimativa de brasileiros que vivem fora do País;” |Corrigido no texto principal|
| Página 10 (quadro de atenção) | Onde se lê: "meia-noite do dia 31 de maio para 1 de junho de 2022", leia-se: "meia-noite do dia 31 de julho para 1 de agosto de 2022" |Corrigido no texto principal|
| Página 27 – item 7.2 – primeiro parágrafo | Onde se lê: "... mas permitem assinalar áreas em que podem ser existir domicílios ou agrupamentos... ", leia-se: "... mas permitem assinalar áreas em que podem existir domicílios ou agrupamentos... " |Corrigido no texto principal|
| Página 61 e 62 – quadros Atenção e item 9.1 | Alterar a data de referência nos dois quadros de ATENÇÃO e no item 9.1 de: “à meia-noite do dia 31 de maio para 1º de junho de 2022” para “a meia-noite do dia 31 de julho para 1º de agosto de 2022”.|Corrigido no texto principal|
| Página 62 – no 3º item | Onde se lê: “condenada com sentença definitiva declarada”; leia-se: “condenada com sentença definitiva declarada (em qualquer instância)”. |Corrigido no texto principal|
| Página 63 - imagem | Onde se lê: “Edificação construída com a finalidade de servir de moradia”, leia-se: “Edificação destinada a servir de moradia”. |Corrigido no texto principal|
| Página 65 – 2º parágrafo após o quadro de independência | Onde se lê: “cozinhas e instalações sanitárias”, leia-se: “cozinhas ou instalações sanitárias”. |Corrigido no texto principal|
| Página 65 - separação financeira | Onde se lê: “despesas de alimentação e moradia”, leia-se: “despesas de alimentação ou moradia”. |Corrigido no texto principal|
| Página 68 - último parágrafo | Onde se lê: “entrevista presencial”, leia-se: “entrevista presencial ou por telefone”. |Corrigido no texto principal|
| Página 69 - terceiro parágrafo | Onde se lê: “Quando o Recenseador retornar a um domicílio e novamente não encontrar algum morador para prestar as informações”, leia-se: “Quando o Recenseador não encontrar morador para prestar as informações". |Corrigido no texto principal|
| Página 69 - sexto parágrafo | Onde se lê: “informando o nome, a matrícula, o RG ou o CPF do Recenseador.”, leia-se “informando a matrícula, o RG ou o CPF do Recenseador.” |Corrigido no texto principal|
| Páginas 69 e 75 - na imagem da Folha de Recado | Onde se lê: “O número da sua Unidade Visitada é”, leia-se “O código do seu endereço é” |Imagem não incluída no Markdown|
| Página 69 - quarto parágrafo (logo após a imagem da folha de recado) | Substituir o texto: “Em alguns casos especiais você também pode deixar essa folha de recado logo na primeira visita...” por “Você também deve deixar essa folha de recado logo na primeira visita...” |Corrigido no texto principal|
| Página 71 - após quadro de atenção | Após a seleção da opção “Aplicar Questionário Presencial” ou “Aplicar Questionário por Telefone” será exibida a tela para a confirmação da modalidade de coleta. Nesta tela o Recenseador deve selecionar a modalidade de coleta para que o questionário seja aberto para preenchimento. A tela de confirmação foi criada para que o Recenseador possa ao fazer contato com o morador ou receber um telefonema do morador, registrar que o preenchimento do questionário foi realizado por telefone, mesmo que não exista um telefone associado ao endereço. |Corrigido no texto principal|
| Página 75 – 1º parágrafo (logo após a imagem) | Substituir o texto “(do chip fornecido pelo IBGE ou do posto de coleta)” por “(do chip fornecido pelo IBGE)” |Corrigido no texto principal|
| Página 75 – 1º parágrafo (logo após a imagem) | Substituir o texto “número da sua unidade visitada” por “código do seu endereço”. |Corrigido no texto principal|
| Página 76 | Substituir a 2ª imagem pela imagem ao lado com o destaque no código do endereço. |Imagem não incluída no Markdown|
| Página 83 – na legenda das imagens | Onde se lê “Malocas e casas da Aldeia Sikaimabiú, Terra Indígena Yanomami, Monte Alegre – RR. Casas na Terra Indígena Parabubure, Campinápolis/MT”, leia-se: Malocas e casas da Aldeia Sikaimabiú, Terra Indígena Yanomami, Alto Alegre – RR. Casas na Terra Indígena Parabubure, Campinápolis/MT. |Imagem não incluída no Markdown|
| Página 83 – na caixa Atenção! | Onde se lê "nenhuma habitação indígena pode ser considerada como domicílio improvisado", leia-se: "nenhuma habitação indígena sem paredes ou maloca deve ser considerada como domicílio improvisado". |Corrigido no texto principal|
| Página 85 - antes do quadro de atenção | Também será aberta a tela de confirmação da modalidade de coleta no DPIO. |Corrigido no texto principal|
| Página 87 - 1º parágrafo do 2º quadro de ATENÇÃO | Substituir o texto por “Quando os moradores residirem em cômodos exclusivamente destinados a moradia, localizados aos fundos ou acima de estabelecimentos comerciais em funcionamento, deve-se classificar como um domicílio particular permanente ocupado – DPPO.” |Corrigido no texto principal|
| Página 87 – 2º quadro de ATENÇÃO | Substituir a palavra “residem” por “residirem”; |Corrigido no texto principal|
| Página 90 – quadro de Atenção. | Onde se lê “Só considere a espécie Domicílio Coletivo com Morador depois da realização da entrevista”; leia-se: “Só considere a espécie Domicílio Coletivo com Morador se houver a realização da entrevista”. |Corrigido no texto principal|

