# Censo Demográfico 2022 - Manual de Entrevista - CD-1.04



## Descrição

Este arquivo é uma versão em Markdown do Manual de Entrevista do Censo de 2022. Como o arquivo original está em formato PDF, o objetivo da conversão é disponibilizar os dados em formato mais facilmente *machine-readable* para facilitar o uso por humanos e agentes de IA.

Arquivo gerado em: 2026-04-24.



## Fonte de dados

A fonte principal desta transcrição é:

- Ministério da Economia. Instituto Brasileiro de Geografia e Estatística - IBGE. Censo Demográfico 2022. Manual de Entrevista. CD-1.04. Rio de Janeiro, 2022. 
- O arquivo em PDF pode ser obtido a partir do [site do IBGE](https://censo2022.ibge.gov.br/component/rsfiles/download-file/files.html?path=censo2021%252Fmanuais%252FManual_de_Entrevista_CD_1.04_v_05.22.pdf&Itemid=7959) ou da função `interview_manual()` do pacote [censobr](https://ipeagit.github.io/censobr/), disponível para R.



## Processamento  {#processamento}

Esta transcrição usa o PDF como *ground truth* para o conteúdo substantivo do questionário, reorganizando seu conteúdo para torná-lo mais facilmente *machine-readable*. 

As principais modificações em relação ao PDF original incluem:

- Alteração na hierarquia de seções
- Criação de novos marcadores de seções
- Renumeração de seções 
- Remoção de imagens, gráficos e diagramas
- Correção de pequenos erros de digitação
- Reposicionamento de alguns blocos de Atenção e Importante para aumentar a fluidez do texto
- Inserção de frases explicativas para trechos confusos 



Algumas inconsistências do PDF original **não** foram inteiramente resolvidas. 

- No PDF original o bloco de Educação tem apresentação confusa. Há sobreposição de quesitos (alguns quesitos são introduzidos antes de todas as opções de resposta do quesito anterior serem apresentadas), quesitos faltando (os quesitos 12.09, 12.10 e 12.11 são omitidos) e um quesito repetido para quem frequenta e para quem não frequenta escola (12.12).
- Nesta transcrição, implementamos uma solução **parcial** para esses problemas. O bloco foi reorganizado para evitar a sobreposição de quesitos e a repetição do quesito 12.12, mas não incluímos os quesitos faltantes.



## Apresentação {#apresentacao}

Prezado Recenseador, 

No Manual do Recenseador, você conheceu uma série de instruções e procedimentos anteriores à realização da entrevista. 

Você conheceu o IBGE e sua estrutura para o Censo Demográfico 2022, e aprendeu a conhecer a sua área de trabalho - o setor censitário. Além disso, aprendeu a registrar os endereços, classificar domicílios e estabelecimentos e também a percorrer os diversos tipos de setores censitários. Foi orientado a ter uma conduta de forma a representar bem o IBGE diante das pessoas e das adversidades, como resistência à abordagem e recusas. 

No Manual do Recenseador, foi também alertado sobre os cuidados que deve tomar antes de ir a campo, os cuidados com o DMC e a preservação do sigilo das informações coletadas, que é regra de ouro para os Institutos Nacionais de Estatística. 

Lembre-se: atitudes, deveres e responsabilidades são essenciais no trabalho que você irá desenvolver. 

A partir de agora, apresentaremos a você os questionários e os conceitos necessários para realizar as entrevistas. 

É importante que você não guarde dúvidas. Elas deverão ser esclarecidas durante o treinamento. Só dessa forma você terá as condições necessárias para realizar um bom trabalho. 

Bom estudo! 

Bom trabalho!



## Sumário

- [1. Conhecendo e Preenchendo os Questionários - Básico e Amostra](#secao1)
  - 1.1. Questionário Básico
  - 1.2. Questionário da Amostra
  - 1.3. Conjunto Universo
  - 1.4. Orientações gerais para o preenchimento dos questionários
  - 1.5. Questionário para Domicílios Particulares e Coletivos
  
- [2. Lista de Moradores na Data de Referência](#secao2)

  - 2.1. Objetivos

  - 2.2. Questionário

- [3. Características do Domicílio](#secao3)

  - 3.1. Objetivos

  - 3.2. Questionário

- [4. Características dos Moradores](#secao4)
  - 4.1. Características Adicionais dos Moradores
  - 4.2. Registro Civil de Nascimento
  - 4.3. Nupcialidade
  - 4.4. Núcleo Familiar
  - 4.5. Fecundidade
  - 4.6. Religião ou culto
  - 4.7. Pessoas com Deficiência
  - 4.8. Migração interna e internacional
  - 4.9. Educação
  - 4.10. Deslocamento para estudo
  - 4.11. Trabalho e Rendimento
  - 4.12. Deslocamento para o Trabalho
  - 4.13. Mortalidade
  - 4.14. Autismo
  - 4.15. Prestação das informações
  - 4.16. Dados de contato

- [5. Entendendo o Formulário de Domicílio Coletivo](#secao5)

- [6. Coleta pela Internet](#secao6)
  - 6.1. Recomendações gerais
  - 6.2. Confirmação do preenchimento do questionário pela internet

- [7. Relatórios no DMC](#secao7)
  - 7.1. Andamento do Setor
  - 7.2. Listagem de endereços
  - 7.3. Listagem de questionários
  - 7.4. Listagem de espécies
  - 7.5. Resumo PCT
  - 7.6. Transmissões

- [8. Fechamento de Setor](#secao8)
  - 8.1. O seu Supervisor
  - 8.2. Erros e Fraudes

- [9. Considerações Finais](#secao9)

- [Glossário](#glossario)

- [Anexo I - Mensagens para o Informante](#anexo1)

  

# 1. Conhecendo e Preenchendo os Questionários - Básico e Amostra {#secao1}

Primeiramente, você precisa saber que é muito importante garantir que toda a população brasileira seja recenseada, e que a coleta de dados seja efetuada com qualidade. Para que isso aconteça, é necessário ter muito cuidado no preenchimento dos questionários. Para essa coleta, serão utilizados dois modelos de questionários:

- **Questionário Básico**; e

- Questionário da Amostra.


> **Atenção**
> A unidade de coleta do Censo Demográfico 2022 é o domicílio: cada questionário deve ser aplicado a um domicílio. As pessoas devem ser relacionadas no questionário aplicado no domicílio onde moram.



## 1.1. Questionário Básico

É o questionário mais simples, com menor número de quesitos, que será aplicado à maior parte dos domicílios. Ele busca captar as características do domicílio e dos seus moradores, na data de referência, em cada domicílio ocupado que não tiver sido selecionado para a amostra. 

O **questionário básico** contém os **quesitos** necessários ao conhecimento de características básicas do domicílio e de seus moradores, o que é de grande relevância para a operação censitária. Este questionário será aplicado nos domicílios particulares ocupados e nas unidades com moradores nos domicílios coletivos. 

O conteúdo que será investigado no Questionário Básico encontra-se abaixo:

- Lista de Moradores na data de referência;

- Características do Domicílio;

- Identificação Étnico-racial;

- Registro civil;

- Educação;

- Trabalho e Rendimento;

- Mortalidade; e

- Prestação das informações.

  
## 1.2. Questionário da Amostra

É o questionário mais complexo, com maior número de quesitos, que será aplicado à menor parte dos domicílios. Ele pretende captar as características do domicílio e dos seus moradores, na data de referência, em cada domicílio ocupado que tiver sido selecionado para a entrevista com o questionário da Amostra.

> **Atenção**
>
> O aplicativo de coleta, ao abrir o questionário, seleciona automaticamente o seu tipo (básico ou da amostra) para guiar a entrevista. 
>

Para a seleção do Questionário da Amostra, é utilizada a técnica de amostragem. Com essa técnica, o questionário é designado apenas a uma parte dos domicílios particulares ocupados e a uma parte das unidades com moradores nos domicílios coletivos. 

Nos Domicílios Coletivos, a seleção da amostra será feita a partir dos registros na Lista de Unidades com morador. 

As informações obtidas junto aos domicílios selecionados para a amostra serão utilizadas para produzir resultados válidos para o conjunto da população brasileira. 

A seguir, encontra-se todo o conteúdo a ser investigado no Questionário da Amostra:

- Lista de Moradores na data de referência;
- Características do Domicílio;
- Identificação Étnico-racial;
- Registro civil;
- Nupcialidade;
- Núcleo familiar;
- Fecundidade;
- Religião ou culto;
- Deficiência;
- Migração interna e internacional;
- Educação;
- Deslocamento para estudo;
- Trabalho e rendimento;
- Deslocamento para trabalho;
- Mortalidade;
- Autismo; e
- Prestação das informações.

> **Atenção**
> Perceba que todos os quesitos do Questionário Básico também estão presentes no da Amostra. Além disso, você vai perceber que, para alguns temas, como Características dos Domicílios e Características dos Moradores, além das questões presentes no Questionário Básico, são apresentadas questões adicionais no Questionário da Amostra.



## 1.3. Conjunto Universo

É o conjunto das variáveis que fazem parte dos dois modelos de questionários (**básico e da amostra**). Como em cada domicílio só é aplicado um tipo de questionário, após a coleta, as variáveis comuns aos dois modelos de questionário são agrupadas, formando o conjunto universo.



## 1.4. Orientações gerais para o preenchimento dos questionários

Para cada um dos **domicílios particulares ocupado**s, deverá ser preenchido um dos modelos de questionário (básico ou da amostra), onde devem ser registrados todos os moradores do domicílio. 

Já para o caso dos domicílios coletivos com morador, deverá ser preenchido um dos modelos de questionário (básico ou da amostra) para cada grupo familiar ou para cada morador individual desses domicílios coletivos.

>  **Atenção**
>
> A seleção do questionário a ser preenchido no domicílio é feita de forma automática pelo aplicativo de coleta a partir da correta classificação da espécie. 

Lembre-se de que **domicílios particulares ocupados** abrangem dois tipos:

- Particular permanente ocupado; e
- Particular improvisado ocupado. 

Os quesitos e respectivas orientações apresentadas daqui em diante se referem ao **questionário da amostra** e respeitam a sua numeração específica.

- Dependendo da resposta do informante, o aplicativo pulará alguns quesitos **durante** a entrevista.
- Mensagens de advertência indicam que é necessário confirmar alguma informação incomum.
- Os quesitos que estão também no **questionário básico** serão sinalizados com a **letra B**, ao lado de seu número correspondente, situados no canto do ícone. 
- Os quesitos são agrupados em blocos, de acordo com o assunto ao qual se referem.
- Se o quesito terminar com o sinal de interrogação, **você não deve ler** as opções de resposta.
- Caso o quesito termine em dois pontos, **você precisa ler** as opções de resposta pausadamente na ordem apresentada.
- No bloco de características dos moradores, o aplicativo direciona o preenchimento de duas formas: 
  - Vertical - todas as pessoas respondem ao mesmo quesito, uma após a outra. 
  - Horizontal - cada pessoa responde a um grupo de quesitos. A próxima pessoa só responderá aos mesmos quesitos após a primeira pessoa ter respondido. Isso ocorre nos temas: fecundidade, migração, educação e trabalho. Isso ocorre nos temas: fecundidade, migração, educação e trabalho.  

### Funcionalidades

Durante o preenchimento do questionário, no menu acessado na parte superior direita (os três pontinhos), o Recenseador terá acesso às seguintes funcionalidades:

- Árvore de Quesitos;
- Observações;
- Limpar Quesito;
- Fechar Questionário;
- Coleta por Internet; e
- Dados de Contato.

**1.** Na opção **Árvore de Quesitos**, é possível acessar qualquer bloco do questionário que já tenha sido preenchido. 

**Os símbolos**:

- na cor verde mostram o preenchimento completo do quesito;
- na cor vermelha mostra um quesito de preenchimento obrigatório que não foi respondido;
- na cor amarela mostra uma pendência, ou seja, quesito não obrigatório, mas que não foi respondido.

**2.** Na opção **Observações**, é possível fazer anotações sobre qualquer assunto que o Recenseador julgar necessário durante o preenchimento do questionário.

**3.** A opção **Limpar Quesito** permite ao Recenseador apagar as informações preenchidas no quesito.

**4.** A opção **Fechar Questionário** permite que a qualquer momento durante o preenchimento do questionário, o Recenseador feche o questionário. Ao escolher esta funcionalidade, será necessário preencher os Dados de Contato.

**5.** A opção **Coleta por Internet** permite que o preenchimento do questionário seja interrompido para que o informante responda pela internet. Vale lembrar que as informações fornecidas ao Recenseador não são levadas para outra modalidade de preenchimento.

**6.** A opção **Dados de Contato** levará o Recenseador para a tela que deverá ser preenchida ao final do questionário.



### Função Ajuda

O aplicativo de coleta também conta com a **função ajuda** em alguns quesitos da pesquisa, bem como algumas opções de resposta. 

Clicando na "?", será aberta uma janela com a explicação sobre o quesito.

- Mensagens de erro serão exibidas quando alguma informação preenchida for inválida ou se a variável for de preenchimento obrigatório e estiver em branco. Ela deve ser corrigida, caso contrário, o questionário não poderá ser finalizado, ficando com o status de "**pendente**".

- Mensagens de alerta e confirmação aparecerão quando houver necessidade de confirmar alguma informação preenchida. É importante confirmar o que foi preenchido no DMC com o informante.

- **Mensagens para o informante** serão exibidas quando for necessário dar algum aviso ou fazer alguma **pergunta de confirmação** ao informante. No **Anexo I** deste manual, você encontra todas as mensagens que devem ser lidas para os informantes. 

O primeiro bloco, tanto do questionário Básico como da Amostra, trata do número de pessoas que moravam no domicílio na data de referência, além da **composição da lista de todos os moradores do domicílio na data de referência**.



> **Atenção**
> A partir de agora esse manual irá tratar dos quesitos dos questionários básico e amostra. É muito importante que você, Recenseador, entenda como deve **realizar as perguntas e preencher as respostas**. 



## 1.5. Questionário para Domicílios Particulares e Coletivos

### 2.01 / B2.01 - Quantas pessoas moravam neste domicílio em 31 de julho de 2022?

Registre o número total de moradores nos domicílios particulares. Em caso de domicílio coletivo, registre o total por cada unidade onde há morador.

> **Atenção**
>
> Não esquecer as crianças e os idosos.



### 2.02 / B2.02 - Quantas crianças de zero a nove anos de idade, inclusive recém-nascidos, moravam neste domicílio em 31 de julho de 2022?

Registre o número total de crianças de zero a nove anos de idade, inclusive recém-nascidos, residentes no domicílio particular. Em caso de domicílio coletivo, registre o total por cada unidade onde há morador.

>  **Atenção**
>
> Registre **0 (zero)** se não houver crianças de 0 a 9 anos de idade.



# 2. Lista de Moradores na Data de Referência {#secao2}

## 2.1. Objetivos

- quantificar a população do Brasil, por sexo e idade, através do número de moradores de cada domicílio; e

- estabelecer a relação de parentesco ou de convivência dos moradores com o responsável pelo domicílio, pois ela permite a análise dos arranjos familiares formados no domicílio, identificando os diversos tipos de família.

A captação correta de todas as pessoas que residem no domicílio é de extrema importância para a qualidade da pesquisa, pois a omissão de morador ou a inclusão indevida de não morador causam distorções nos resultados que de nenhuma forma podem ser corrigidas nas etapas posteriores. 

A seguir, iniciaremos a coleta de informações sobre as pessoas. O primeiro passo é listar todos os moradores do domicílio.

Caso seja necessário alterar ou excluir algum registro, selecione esse registro e, em seguida, clique no ícone correspondente ao procedimento. 

As figuras abaixo exibem os botões do DMC para inclusão, edição e exclusão de pessoas na lista de moradores, além de permitir a troca da pessoa responsável pelo domicílio. Abaixo temos os botões que servem a essa operação: 

`[FIGURAS OMITIDAS]`

1. Inclusão de moradores

2. Edição das informações dos moradores

3. Exclusão de moradores

4. Troca da pessoa responsável do domicílio

   

>  **Atenção**
>
> O morador responsável pelo domicílio **deve ser a primeira pessoa incluída na lista de moradores**. 
>
> O informante pode **não ser o responsável pelo domicílio**, e nem morador do domicílio. 
>
> Por isso, pergunte sempre **quem é o morador responsável pelo domicílio**.



> **Importante**
>
> Vamos entender a diferença entre o Informante e a Pessoa Responsável pelo Domicílio: 
>
> - **Informante** é a pessoa de 12 anos ou mais capaz de prestar informações sobre o domicílio e sobre todos os seus moradores. 
> - **Responsável pelo Domicílio** é a pessoa de 12 anos ou mais cuja responsabilidade domiciliar é reconhecida pelos demais moradores.



## 2.2. Questionário 



### 2.03 / B2.03 - Nome e Sobrenome (completo) do morador:

A primeira informação da lista de moradores é o nome do morador. Registre o nome e o sobrenome completo de todos os moradores do domicílio na **data de referência**. 

**Nome do morador**: registre o primeiro nome ou o nome composto do morador. 

**Sobrenome do morador**: registre todos os demais sobrenomes do morador. Preferencialmente, o sobrenome completo, caso não seja possível, registre o último sobrenome. 

**Exemplos**:

- **a)** José Rodrigues da Silva
- **b)** Ana Clara Mattos Fonseca da Silva



### 2.04 / B2.04 - Sexo:

- **1 - Masculino**
- **2 - Feminino** 

Leia sempre para o informante as duas opções de resposta e registre a opção correspondente ao sexo biológico do morador (sexo atribuído ao nascer).



### 2.05/ B2.05 - Qual é a data de nascimento?

A data de nascimento é uma informação **fundamental** para o Censo Demográfico, pois possibilita conhecer a população brasileira. Todos os esforços devem ser feitos para o registro do dia, mês e ano do nascimento. 

Um erro na data de nascimento pode resultar na inclusão ou exclusão da pessoa em algum tema do questionário, por isso **PRESTE MUITA ATENÇÃO**! 

Registre o dia, o mês e o ano de nascimento de cada morador: 

### 2.051/B2.051 - DIA: 

Registre o dia em que a pessoa nasceu:

### 2.052/B2.052 - MÊS: 

Registre o mês em que a pessoa nasceu:

- **01 - Janeiro**

- **02 - Fevereiro**

- **03 - Março**

- **04 - Abril**

- **05 - Maio**

- **06 - Junho**

- **07 - Julho**

- **08 - Agosto**

- **09 - Setembro**

- **10 - Outubro**

- **11 - Novembro**

- **12 - Dezembro**

### 2.053/B2.053 - ANO:

Registre o ano em que a pessoa nasceu;

> **Atenção**
>
> Reforce o pedido do dia, mês e ano de nascimento de cada morador com as seguintes perguntas, de acordo com cada situação: 
>
> I - Se o morador disser que não se lembra da própria data de nascimento, pergunte:
>
> 1. Se incomodaria de pegar algum documento como: certidão de nascimento, certidão de casamento, carteira de identidade, carteira de motorista, carteira de trabalho, passaporte, etc.?
>
> 2. Tem alguém em casa que possa lhe ajudar? 
>
>    II - Caso o informante não lembre (ou não saiba) a data de nascimento de algum outro morador da casa, pergunte:
>
> 1. A própria pessoa se encontra em casa para prestar esta informação?
>2. Se incomodaria de pegar algum documento como: certidão de nascimento, certidão de casamento, carteira de identidade, carteira de motorista, carteira de trabalho, passaporte, etc.?
> 3. Tem como entrar em contato agora com este morador para obter esta informação neste momento? (Esta resposta precisa ser obtida de forma imediata, e não se deve ficar aguardando resposta posterior). 

Depois de esgotadas todas as possibilidades para obter a data de nascimento completa, caso o informante não saiba o mês ou ano de nascimento, você deve deixar as informações obtidas registradas e assinalar a quadrícula "**Não sei o mês e/ou ano de nascimento**" para registrar a idade do morador em 31 de julho de 2022.

**Não calcule o ano de nascimento da pessoa baseado na informação da idade, pois esse procedimento, comprovadamente, induz a erros nessa informação fundamental para o Censo.**



### 2.054/B2.054 - Qual era a sua idade em 31 de julho de 2022?

- **1 - Um ano ou mais**: Este campo deve ser preenchido com a idade em anos. Se a idade for de 1 (um) ano ou mais, registre o número de anos 
  completos no campo “**Um ano ou mais**” .
- **2 - Menos de um ano**: Este campo deve ser preenchido com a idade em meses. Se a idade for inferior a 1 (um) ano, registre o número de meses 
  completos no campo “**menos de um ano**”.

>  **Atenção**
>
> Lembre-se, a idade declarada deve ser aquela que cada morador possuía em 31 de julho de 2022. 
>
> Para o recém-nascido de idade inferior a **1 (um) mês**, registre **0 (zero)** no campo "menos de um ano". 
>
> Somente preencha este quesito se o informante não souber o mês ou o ano de nascimento.



### 2.06 / B2.06 - Qual é a relação de parentesco ou de convivência com a pessoa responsável pelo domicílio?

É extremamente **IMPORTANTE** que o Recenseador pergunte ao informante quem é a pessoa responsável pelo domicílio. 

Mesmo quando houver mais de um responsável pelo domicílio, será necessário que o informante indique um morador para ser a primeira pessoa a ser inserida no quadro de moradores. Todos os outros moradores terão sua condição no domicílio determinada a partir de sua relação de parentesco ou convivência com este primeiro morador relacionado.

> **Atenção**
>
> É fundamental ressaltar mais uma vez que a pessoa responsável pelo domicílio **deve ser a primeira pessoa incluída** na lista de moradores.



> **Importante**
>
> O aplicativo não permitirá o cadastramento de um morador menor de 12 anos de idade como responsável pelo domicílio . 
>
> Embora sejam muito raros os casos, é possível que uma pessoa de 12 a 15 anos de idade seja a responsável pelo domicílio. Nestes casos, o sistema exibirá uma Mensagem ao Informante que deve ser lida pelo Recenseador: "**O responsável pelo domicílio é menor de 16 anos. Confirma?**"

- **01 – Pessoa responsável**: Para a pessoa (homem ou mulher) com no mínimo 12 anos de idade, reconhecida pelos moradores como responsável pelo domicílio. Essa pessoa precisa ser escolhida pelo informante e/ou demais moradores do domicílio, sem qualquer influência do Recenseador. 
- **02 – Cônjuge ou companheiro(a) de sexo diferente**: Para a pessoa (homem ou mulher) que vivia conjugalmente com a pessoa responsável pelo domicílio, sendo de sexo diferente e com no mínimo 10 (dez) anos de idade. 
- **03 – Cônjuge ou companheiro(a) do mesmo sexo**: Para a pessoa (homem ou mulher) que vivia conjugalmente com a pessoa responsável pelo domicílio, sendo ambas de mesmo sexo e com no mínimo 10 (dez) anos de idade.
- **04 – Filho(a) do responsável e do cônjuge**: Para o(a) filho(a) consanguíneo(a) ou adotivo (a), ou de criação da pessoa responsável e do cônjuge. 
- **05 – Filho(a) somente do responsável**: Para o(a) filho(a) consanguíneo(a) ou adotivo (a), ou de criação somente da pessoa responsável. 
- **06 – Enteado(a)**: Para o(a) filho(a) consanguíneo(a) ou adotivo(a), ou de criação somente do cônjuge. 
- **07 – Genro ou nora**: Para o genro ou nora da pessoa responsável. 
- **08 – Pai, mãe, padrasto ou madrasta**: Para o pai ou a mãe, padrasto ou madrasta da pessoa responsável. 
- **09 – Sogro(a)**: Para o(a) sogro(a) da pessoa responsável.
- **10 – Neto(a)**: Para o(a) neto(a) da pessoa responsável. 
- **11 – Bisneto(a)**: Para o(a) bisneto(a) da pessoa responsável. 
- **12 – Irmão ou irmã**: Para o irmão ou a irmã legítimo(a), seja consanguíneo(a) ou adotivo(a), ou de criação da pessoa responsável. 
- **13 – Avô ou avó**: Para o avô ou a avó da pessoa responsável. 
- **14 – Outro parente**: Para o(a) bisavô(ó), cunhado(a), tio(a), sobrinho(a), primo(a) da pessoa responsável. 
- **15 – Agregado(a)**: Para a pessoa residente em domicílio particular que, sem ser parente, convivente, pensionista, empregado doméstico ou 
  parente da pessoa responsável, não pagava hospedagem nem contribuía para as despesas de alimentação e moradia do domicílio. 
- **16 – Convivente**: Para a pessoa residente em domicílio particular que, sem ser parente, dividia as despesas de alimentação e/ou moradia. 
- **17 – Pensionista**: Para a pessoa residente em domicílio particular que, sem ser parente, pagava hospedagem. 
- **18 – Empregado(a) doméstico(a)**: Para a pessoa residente em domicílio particular que prestava serviços domésticos remunerados a um ou mais moradores do domicílio. 
- **19 – Parente do(a) empregado(a) doméstico(a)**: Para a pessoa residente em domicílio particular que era parente do(a) empregado(a) doméstico(a) e que não prestava serviços domésticos remunerados a moradores do domicílio. 
- **20 – Morador individual em Domicílio Coletivo**: Para a pessoa só que residia em Domicílio Coletivo, ainda que compartilhando a unidade com outra(s) pessoa(s) com a(s) qual(is) não tinha laços de parentesco. Esta opção só estará disponível para moradores em domicílios coletivos. 

> **Atenção**
> Ao final da lista de moradores, caso existam inconsistências entre o número de crianças de 0 a 9 anos declaradas e as registradas na lista de moradores, serão exibidas mensagens de confirmação de acordo com a inconsistência apresentada: 
>
> **Total de crianças de 0 a 9 anos é inferior ao informado anteriormente. Deseja adicionar crianças?**
>
> Se desejar adicionar crianças de 0 a 9 anos de idade, assinale **SIM** e inclua essa criança na lista de moradores, caso contrário, o aplicativo acerta automaticamente a quantidade de crianças de 0 a 9 anos de idade no quesito 2.02.
>
> **Quantidade de crianças de 0 a 9 anos de idade listadas maior do que a informada anteriormente. Confirma? **
>
> Em caso de confirmação, o aplicativo acerta automaticamente a quantidade de crianças de 0 a 9 anos de idade no quesito 2.02. 
>
> 
>
> Caso existam inconsistências entre o número de moradores declarados e os registrados na lista de moradores, a **mensagem de confirmação** será a seguinte:
>
> **Total de moradores é inferior ao informado anteriormente. Deseja adicionar morador?**
>
> Se desejar adicionar morador, assinale **SIM** e inclua esse morador na lista de moradores, caso contrário, o aplicativo acerta automaticamente a quantidade de moradores no quesito 2.01. 
>
> **Quantidade de moradores listados maior do que o informado anteriormente. Confirma?**
>
> Em caso de **confirmação**, o aplicativo acerta automaticamente a quantidade de moradores no quesito 2.01, caso contrário, os moradores registrados erradamente devem ser **excluídos**.

Antes do encerramento da lista de moradores, será exibida a seguinte **mensagem de confirmação, que deve ser lida para o informante**: *Existe mais alguma pessoa que normalmente vive aqui, mas está ausente por motivo de trabalho, estudo, internação hospitalar, a passeio ou por outra razão?*

Caso exista, essa pessoa deve ser incluída na lista de moradores. Dessa forma, assinale **SIM** e inclua esse morador na lista de moradores. O aplicativo acerta automaticamente a quantidade de moradores no quesito 2.01.

# 3. Características do Domicílio {#secao3}



## 3.1. Objetivos

- conhecer as condições de moradia da população e os níveis de qualidade de vida, através do acesso a serviços básicos;
- registrar a existência de máquina de lavar roupa e saber sobre o acesso à internet. Essas informações são importantes para medir os padrões de bem-estar da população. Essas perguntas serão investigadas tendo como base a **data de referência**.



## 3.2. Questionário



### 3.01 - Este domicílio é:

Este quesito investiga se o domicílio é próprio, alugado, cedido ou outra condição de ocupação. **É importante que você leia as opções de respostas de forma pausada**. 

Conforme o caso, registre:

*  **1 – Já pago, herdado ou ganho**: Quando o domicílio for de propriedade, total ou parcial, de um ou mais moradores e já estiver integralmente pago, 
  independentemente da condição de ocupação do terreno. Inclua neste item o domicílio recebido por herança, ganho ou construído pelos próprios moradores. 
* **2 – Ainda pagando**: Quando o domicílio for de propriedade, total ou parcial, de um ou mais moradores e ainda não estiver integralmente pago, 
  independentemente da condição de ocupação do terreno. Considere inclusive os domicílios financiados em que o morador proprietário não está pagando, no momento, as prestações devidas. 
* **3 – Alugado**: Quando o domicílio tiver o aluguel pago, ainda que parcialmente, por qualquer um de seus moradores. Considere também como alugado o domicílio em que o empregador (de qualquer um dos moradores) pagar, como parte integrante do salário, uma parcela em dinheiro para o pagamento do aluguel. 
* **4 – Cedido por empregador **: Quando o domicílio for cedido por empregador (particular ou público) de qualquer um dos moradores, ainda que mediante uma taxa de ocupação (impostos, condomínio, etc.) ou de conservação. Inclua nesta opção o domicílio cujo **aluguel integral** é pago, 
  diretamente pelo empregador de um dos moradores do domicílio. 
* **5 – Cedido por familiar**: Quando o domicílio for cedido por familiar de qualquer um dos moradores, ainda que mediante uma taxa de ocupação 
  (impostos, condomínio, etc.) ou de conservação. Nesse item, inclua os domicílios cujo aluguel integral é pago, direta ou indiretamente, por parente de um dos moradores. 
* **6 – Cedido de outra forma**: Quando o domicílio for cedido, gratuitamente, por pessoa que não seja parente, moradora ou por instituição que não seja empregadora de algum morador, ainda que mediante uma taxa de ocupação (impostos, condomínio, etc.) ou de conservação. Inclua nesse item o domicílio cujo aluguel integral é pago, direta ou indiretamente, por pessoa que não seja parente, moradora ou por instituição que não seja empregadora de algum morador, ainda que mediante uma taxa de ocupação (impostos, condomínio, etc.) ou de conservação. Exemplo: **Imóvel cedido por uma ONG**. 
* **7 – Outra condição**: Quando o domicílio for ocupado de forma diferente das anteriores, inclua nesse item: 
  * o domicílio cujo aluguel, pago por morador, se referir à unidade domiciliar em conjunto com estabelecimento de outras finalidades (oficina, loja,  etc.) Exemplo: **Um aluguel que corresponde a um apartamento e uma loja comercial**; 
  * o estabelecimento agropecuário arrendado quando a família nele residir; e
  * os casos de domicílios por ocupação. 

> **Exemplo**
>
> * Um domicílio no qual uma parcela do aluguel é paga por um ou mais moradores e a outra parcela pelo empregador de um dos moradores, como parte de sua remuneração. Neste caso, deve-se assinalar a opção "**3 - Alugado**".
> * Um domicílio localizado em um prédio de apartamentos que tenha sido cedido para moradia de um empregado do condomínio, mesmo que o empregado tenha que arcar com os custos de taxas de conservação/ocupação. Para este caso, deverá ser registrada a opção "**4 - Cedido por empregador**".
> * Um domicílio emprestado por uma tia que mora em outra cidade deverá ter o registro na opção "**5 - Cedido por familiar**".



### 3.02 - De qual material é feita a maior parte das paredes externas deste domicílio?

Você deverá registrar o material predominante utilizado na construção das paredes externas da edificação na qual se encontra o domicílio. 

Conforme o caso, registre: Para paredes de tijolo, adobe (tijolo de barro com palha), pedra, concreto pré-moldado ou aparente, de barro ou de cal e areia com estacas e varas de madeira com revestimento (é uma

- **1 – Alvenaria ou taipa com revestimento**: Para paredes de tijolo, adobe (tijolo de barro com palha), pedra, concreto pré-moldado ou aparente, de barro ou de cal e areia com estacas e varas de madeira **com revestimento** (é uma forma de proteção contra chuva, umidade, etc., como: emboço, 
  reboco, chapisco). As paredes de barro com estacas são também conhecidas como tabique, estuque ou pau a pique. Considere, também, aquelas recobertas de mármore, metal, vidro, lambris ou azulejo. 
- **2 – Alvenaria sem revestimento**: Para paredes de tijolo, adobe (tijolo de barro com palha), pedra, concreto pré-moldado ou aparente sem revestimento (sem emboço, reboco ou chapisco). Considere nesta opção as paredes de tijolos pintados (sem emboço, reboco ou chapisco). 
- **3 – Taipa sem revestimento**: Para paredes feitas de barro ou de cal e areia com estacas e varas de madeira, ou seja, tabique, estuque ou pau a pique, desde que não haja revestimento (emboço, reboco, chapisco). 
- **4 – Madeira para construção (aparelhada)**: Para paredes de qualquer tipo de madeira que foi preparada para essa finalidade (construção).
- **5 – Madeira aproveitada de tapume, embalagens, andaimes**: Para paredes feitas de madeira de tapumes, embalagens, andaimes etc.
- **6 – Outro material**:  Para paredes feitas de qualquer outro material que não tenha sido descrito anteriormente. Exemplo: zinco, plástico, folha ou casca de vegetais, etc. 
- **7 – Sem parede**: Para habitações que não possuírem paredes, sendo a cobertura sustentada por estacas de madeira ou similar. Esta opção será exibida apenas em domicílios localizados em área indígena (terra indígena, agrupamento indígena e área de interesse operacional indígena).



### 3.03 - Quantos cômodos tem este domicílio? Incluindo cozinha e banheiro.

Neste quesito, você deverá registrar o total de cômodos que compõem o domicílio. 

**Considere** como cômodo cada compartimento do domicílio:

- coberto por um teto e limitado por paredes (construção vertical que permite limitar, dividir ou vedar espaços) que seja parte integrante do domicílio, inclusive banheiro e cozinha;
- que atenda à definição anterior e esteja sendo utilizado para fins residenciais, ainda que não tenha sido construído com esta finalidade. Inclua, no total, os cômodos existentes na parte externa da edificação que sejam parte integrante do domicílio. **Exemplo**: um cômodo construído no próprio terreno com a finalidade de servir de dormitório para algum morador do domicílio.

> **Atenção**
>
> Ao verificar o número de cômodos de um domicílio, conte também aqueles que estejam em outra edificação no mesmo terreno, tais como banheiro externo, cozinha externa etc., desde que utilizados apenas pelos moradores desse domicílio.

> **Exemplo**
>
> Para os **apartamentos loft**, ou ainda as quitinetes (onde não existe paredes dividindo os ambientes internos), a contagem de cômodos deve respeitar a conceituação, mesmo que esse apartamento tenha apenas um ou dois cômodos. 

Em áreas indígenas, as casas e malocas indígenas sem paredes serão consideradas como tendo um único cômodo. No caso de as casas ou malocas indígenas não terem paredes e terem algum mesmo sem paredes. 

**Não considere** como cômodo:

- corredores de ligação entre cômodos;
- locais abertos como alpendres, varandas ou áreas de serviço;
- garagem, depósitos e outros compartimentos utilizados exclusivamente para fins não residenciais; e
- cozinha americana, mezanino, pois não existe parede delimitando. 

No caso de cozinha americana, ela deve ser contada junto com o compartimento em anexo, como um só cômodo. 

**Não compute**, no total de cômodos, aqueles que:

- sejam isolados e de uso comum a mais de um domicí lio, como a cozinha e o banheiro comuns às unidades domiciliares de uma casa de cômodos;
- estejam isolados e servindo a mais de um domicílio, localizados em um mesmo terreno , como as cozinhas e banheiros de uso comum (comunitários).


> **Atenção**
> - O número de cômodos servindo de dormitório não pode ser maior que o total de moradores e nem maior que o total de cômodos do domicílio; 
> - É de preenchimento obrigatório o mínimo de 1 (um) cômodo servindo de dormitório.



### 3.04 - Quantos cômodos estão servindo permanentemente de dormitório para os moradores deste domicílio?

Neste quesito, deverá ser registrado o número de cômodos do domicílio que estiverem servindo, **em caráter permanente**, de dormitório para os moradores. Inclusive os cômodos desse tipo que estiverem localizados na parte externa da edificação. Também devem ser incluídos os cômodos que estejam servindo de dormitório, de forma permanente, por falta de acomodações adequadas a esse fim. 

No caso de construções em áreas indígenas sem paredes que sejam consideradas cômodos, investigue se os mesmos servem de dormitório. 

**Não considere** os cômodos utilizados somente como quarto de vestir, de hóspede, de costura, de escritório etc.

> **Exemplo**
>
> 1. Três pessoas moram em um domicílio onde existe apenas um cômodo. Neste domicílio, o registro deve indicar que existe **um cômodo servindo de dormitório** (igual ao total de cômodos).
> 2. Duas irmãs moram em um apartamento de seis cômodos, sendo três quartos. Cada irmã tem seu quarto e dormem permanentemente nele. Neste domicílio, o registro deve indicar que existem **dois cômodos servindo de dormitório** (igual ao número de pessoas).
> 3. Em um terreno, existem duas edificações que constituem um único domicílio onde residem um casal e um filho solteiro. Em uma edificação, encontram-se cinco cômodos, sendo um deles ocupado, permanentemente, como dormitório do casal. A outra edificação é constituída por dois cômodos, sendo um deles ocupado, permanentemente, como dormitório pelo filho solteiro. Neste domicílio, o registro deverá indicar que existem **dois cômodos servindo de dormitório**.



### 3.05 / B3.01 - Qual a principal forma de abastecimento de água utilizada neste domicílio?

> **Atenção**
>
> Se, no domicílio, utilizarem água de mais de uma **proveniência, considere a mais utilizada**. 

Selecione a principal forma de abastecimento de água utilizada no domicílio:

- **1 - Rede geral de distribuição**: Quando a forma utilizada de abastecimento de água consiste de ligação direta no domicílio ou no terreno, proveniente de um conjunto de tubulações interligadas e instaladas ao longo das vias públicas, junto às unidades ou prédios. Este conjunto de tubulações conduz a água aos pontos de consumo, como moradias, escolas, hospitais etc. Em geral, no Brasil, esses serviços são organizados por **empresas estaduais ou municipais de água e esgoto, podendo também ser prestado diretamente pelas prefeituras, ou por associações de moradores**. Exemplo: CEDAE (RJ), CAGECE (CE), SABESP (SP), CORSAN (RS), SANEPAR (PR), CASAN (SC) etc. 
- **2 - Poço Profundo ou artesiano**:  Quando o domicílio utilizar água proveniente de poços perfurados por máquina (perfuratrizes, por exemplo) para 
  captar água de lençóis situados nas camadas mais profundas do solo (em geral mais de 20m). 
- **3 - Poço Raso, freático ou cacimba**: Quando o domicílio utilizar água de poço raso, freático ou cacimba, proveniente de cavidade aberta no solo, em geral, até 20m, com a finalidade de atingir o lençol de água menos profundo (lençol freático). 
- **4 - Fonte, nascente ou mina**: Quando o domicílio utilizar água de fonte proveniente de um veio natural na terra, manancial que brota do solo ou 
  mina. 
- **5 - Carro-pipa**: Quando o domicílio utilizar água transportada por carro-pipa.

- **6 - Água da armazenada**: Quando o domicílio utilizar água de chuva armazenada em cisterna, caixa de cimento, galões, tanques de material plástico, piscina, etc.
- **7 - Rios, açudes, córregos, lagos e igarapés**: Quando o domicílio utilizar água proveniente de rios, açudes, córregos, lagos e igarapés. 
- **8 - Outra**: Quando a forma utilizada de abastecimento de água do domicílio for proveniente de forma diferente das citadas anteriormente. 

> **Atenção**: 
>
> Em alguns agrupamentos indígenas, a distribuição da água é realizada através de tubulações interligadas e instaladas ao longo das vias públicas. Este serviço é administrado pela SESAI (Secretaria Especial de Saúde Indígena) e conta com funcionários pagos pelo governo federal para manter a rede. Para este caso, considere “**rede geral de distribuição**”.



### 3.06 / B3.02 - O domicílio tem acesso à rede geral de distribuição de água?

Este quesito destina-se a captar a existência do serviço de abastecimento de água por rede geral de distribuição, caso a principal forma de abastecimento de água declarada na pergunta anterior seja diferente de rede geral de distribuição. Essa informação faz-se necessária para o levantamento de domicílios com acesso à rede geral de distribuição de água, mesmo que seu uso não seja o principal. 

Assinale **SIM**, caso o domicílio tenha acesso a rede geral de distribuição de água, mesmo que ela não seja a principal forma de abastecimento de água do domicílio.

>  **Atenção**
>
> Essa pergunta (3.06 / B3.02) será feita apenas para os domicílios em que não for assinalada a opção **1 - rede geral de distribuição** no quesito 3.05/B3.01 como principal forma de abastecimento de água. 
>
> Caso o domicílio tenha ligação física com uma rede pública (rede geral de distribuição), mas a mesma não tenha abastecido o domicílio em nenhum dia nos últimos 12 (doze) meses antes da data de referência, considere que o domicílio não tem acesso à rede geral.

> **Exemplo**
>
> Um domicílio está ligado à rede geral de distribuição de água, porém, nos últimos doze meses, apenas por um mês houve abastecimento de água da rede geral. Por isso, os moradores utilizaram principalmente a água retirada de um poço artesiano localizado em seu terreno. Neste domicílio, deve-se registrar a opção "2 - Poço Profundo ou artesiano" no quesito 3.05/B3.01 e a opção "1 - sim" no quesito 3.06/B3.02. 

### 3.07 / B3.03 - A água utilizada no domicílio chega:

Leia para o informante as opções de respostas.

- **1 - Encanada até dentro da casa, apartamento ou habitação**: Quando o domicílio for servido de água encanada, com distribuição interna para um ou mais cômodos da casa, apartamento ou habitação. Inclui, **além da água proveniente da rede geral de distribuição**, também os casos em que a água chega **encanada ao domicílio através de outras proveniências**, por exemplo: bombeada de uma nascente próxima até as torneiras dentro do domicílio. Considere também nessa categoria os domicílios em que a água chega encanada a um banheiro externo de uso exclusivo dos moradores do domicílio. Considere se a água chega dentro de casa através de canos, mangueiras, etc. 
- **2 - Encanada, mas apenas no terreno**: Quando a água utilizada no domicílio chegar encanada apenas até o terreno, **sem haver distribuição interna** na casa, apartamento ou habitação. **A água não chega a nenhum cômodo do domicílio** (casa, apartamento etc.) 
- **3 - Não chega encanada**: Quando a água não chegar encanada a casa, apartamento, habitação ou terreno. Exemplo: quando a água utilizada no domicílio é transportada por encanada meio de baldes, a partir de um poço ou nascente.

> **Atenção**
> Quando o domicílio utilizar banheiro ou cozinha de uso exclusivo do domicílio em edificação separada da edificação principal, ou seja, nos fundos do terreno, e a água encanada chegar a esse banheiro e/ou essa cozinha, deve-se registrar no quesito **3.07/B3.03 a opção 1 - Encanada até dentro de casa, apartamento ou habitação**.



### 3.08 / B3.04 - Quantos banheiros de uso exclusivo com chuveiro e vaso sanitário existem neste domicílio, inclusive os localizados no terreno?

Este quesito busca investigar o número de banheiros que são utilizados apenas pelos moradores do domicílio - isto é, que não são cotidianamente compartilhados com moradores de domicílios vizinhos. **Considere** os banheiros de dentro da casa, apartamento ou habitação e aqueles localizados no terreno.

**Considere** o cômodo destinado a banho que tenha chuveiro ou banheira e vaso sanitário ou privada como banheiro, desde que seja de uso apenas dos moradores deste domicílio. 

**Não considere** lavabo como banheiro, pois sua estrutura é projetada para ter apenas vaso sanitário ou privada e pia para lavar as mãos.

> **Atenção**
>
> Considere o banheiro como sendo apenas de uso dos moradores do domicílio, mesmo que, ao receber visitas, as mesmas utilizem este banheiro.
>
> Em alguns domicílios, é possível que a instalação sanitária e o chuveiro ou banheira encontrem-se em compartimentos distintos. Quando ocorrer essa situação, deve-se considerar que o domicílio tem banheiro e os dois compartimentos onde o sanitário e o chuveiro se encontram devem ser contados como um só cômodo e um só banheiro. 

Registre o número total de banheiros ou, se não existir banheiros, registre **0 (zero)**.



### 3.09 / B3.05 - Utiliza banheiro de uso comum a mais de um domicílio, com chuveiro e vaso sanitário, inclusive os localizados no terreno?

Este quesito busca investigar a utilização de banheiros localizados na mesma casa, apartamento ou habitação, inclusive aqueles localizados no terreno, que sejam de **uso comum dos moradores do domicílio e de, pelo menos, um outro domicílio**. 

**Registre sim**, se na casa, apartamento ou habitação é utilizado banheiro de uso comum, inclusive aqueles localizados no terreno. 

Esta pergunta (3.09 / B3.05) será realizada apenas para os domicílios em que o número de banheiros exclusivos for **0 (zero) no quesito 3.08/B3.04**.

>  **Exemplo**
>
> Em um terreno, existem dois domicílios além de um banheiro no quintal, que atende a ambos os domicílios. Neste caso, **deve-se registrar que os dois domicílios utilizam "banheiro de uso comum a mais de um domicílio"**.



### 3.10 / B3.06 - Utiliza sanitário ou buraco para dejeções, inclusive os localizados no terreno?

Este quesito busca investigar a existência de sanitário no domicílio para uso dos moradores, comum ou não a mais de um domicílio. 

**Considere** como sanitário o cômodo ou local limitado por paredes de qualquer material, coberto ou não por um teto, que disponha de **vaso sanitário** ou **buraco para dejeções**. 

Esta pergunta (3.10 / B3.06) será realizada apenas para os domicílios em que não houver banheiro.

> **Atenção**
>
> Dependendo da região do país, sanitário pode ser conhecido como: casinha, patente, latrina, privada, sentina, retrete, casa de força ou cambrone etc.



### 3.11 / B3.07 - Para onde vai o esgoto do banheiro?

Selecione para onde vai o esgoto do vaso sanitário dos banheiros do domicílio. 

Se, no domicílio, o esgoto for para lugares diferentes, em função da existência de mais de um banheiro, considere aquela opção que se **enquadrar primeiro na ordem enumerada**. 

O quesito 3.11/B3.07 só será respondido nos domicílios onde exista banheiro.



### 3.12 / B3.08 - Para onde vai o esgoto do sanitário ou buraco para dejeções?

Selecione para onde vai o esgoto do sanitário ou buraco para dejeções do domicílio. 

Se, no domicílio, o esgoto for para lugares diferentes, em função da existência de mais de um sanitário ou buraco para dejeções, considere aquela opção que se **enquadrar primeiro na ordem enumerada**. 

O quesito 3.12/B3.08 só será respondido nos domicílios onde exista sanitário. 

Registre para os quesitos **3.11** ou **3.12**, conforme o caso: 

- **1 - Rede geral ou pluvial**: Quando a canalização das águas servidas e dos dejetos provenientes do banheiro ou do sanitário 
  estiver ligada diretamente a um sistema de coleta que os conduz para a rede geral da área. **Considere esta opção**, mesmo que o sistema não disponha de estação de tratamento da matéria esgotada. 
- **2 - Fossa séptica ou fossa filtro ligada à rede**: Quando a canalização do banheiro ou do sanitário estiver ligada a uma fossa séptica ou fossa filtro, sendo a **parte líquida conduzida em seguida para uma rede geral da área**, região ou município. 
- **3 - Fossa séptica não ligada à rede**: Quando a canalização do banheiro ou sanitário estiver ligada a uma fossa séptica ou fossa filtro, 
  **porém a parte líquida não é conduzida para uma rede geral da área**, região ou município. 
- **4 - Fossa rudimentar ou buraco**: Quando o banheiro ou sanitário estiver ligado a uma fossa rústica, poço ou buraco. 
- **5 - Vala**: Quando os dejetos provenientes do banheiro ou do sanitário forem esgotados diretamente para uma vala a céu aberto. 
- **6 - Rio, lago, córrego ou mar**: Quando os dejetos provenientes do banheiro ou do sanitário forem esgotados diretamente para um rio, lago, córrego ou mar. 
- **7 - Outra forma**: Quando o escoadouro dos dejetos provenientes do banheiro ou do sanitário não se enquadrar em qualquer das categorias descritas anteriormente. Exemplo: descartado em sacos, potes, etc. 

> **Atenção**: 
>
> **Fossa séptica** é uma instalação composta por um ou mais tanques de concreto, plástico, fibra de vidro ou outro material impermeável, em geral dividido em duas câmaras, onde o esgoto passa por um processo de tratamento (decantação, decomposição ou filtragem).  
>
> **Fossa rudimentar** é uma escavação no terreno, em que os resíduos caem diretamente no solo e a parte líquida se infiltra na terra. Esse buraco não possui revestimento, mas pode ter algum material para auxiliar sua sustentação, e pode contar com uma cobertura. Também pode ser chamada de fossa rústica ou buraco. 



### 3.13 / B3.09 - O lixo deste domicílio é:

Leia as opções de resposta para o informante e marque o destino dado ao lixo domiciliar segundo o especificado abaixo. Se for dado mais de um destino ao lixo domiciliar, **considere aquele que for o mais frequente**. 

Conforme o caso, registre:

- **1 – Coletado no domicílio por serviço de limpeza**: Quando o lixo for coletado por serviço de limpeza de empresa pública ou particular diretamente na casa, prédio, na calçada em frente ao domicílio ou a uma distância curta do mesmo (de até cerca de 100 metros). 

- **2 – Depositado em caçamba de serviço de limpeza**: Quando o lixo do domicílio for levado pelos moradores de diversas casas ou prédios para uma mesma caçamba, tanque ou depósito, em local público, para ser recolhido por serviço de limpeza de empresa pública ou particular que posteriormente o recolhe. 

- **3 – Queimado na propriedade**: Quando o lixo for queimado no terreno ou propriedade onde se localiza a casa, apartamento ou habitação. 

- **4 – Enterrado na propriedade**: Quando o lixo for enterrado no terreno ou propriedade onde se localiza a casa, apartamento ou habitação. 

- **5 – Jogado em terreno baldio, encosta ou área pública**: Quando o lixo for jogado em terreno baldio, encosta ou em espaço público (ruas, alamedas, parques, praças etc.). Considera-se terreno baldio aquele sem uso ou proveito, podendo ser encontrado tanto em área urbana como rural. 

- **6 – Outro destino**: Quando for dado qualquer outro destino ao lixo que não se enquadre nas categorias anteriores. Exemplo: lixo domiciliar utilizado como adubo, compostagem, jogado no rio etc. 

  
### 3.14 - Neste domicílio tem Máquina de lavar roupa? Não considerar tanquinho.

**Considere** como máquina de lavar roupa o aparelho que desenvolva, de forma automática, todas as etapas da lavagem de roupas, ou seja, desde a entrada de água na máquina, passando pelos processos de agitação e enxágue até o de centrifugação.

> **Atenção**
>
> Se, no domicílio, existirem dois aparelhos que façam as funções de uma máquina de lavar em separado, considere que no domicílio existe máquina de lavar. 
>
> Deverá ser considerada apenas a **máquina de lavar que estiver em condições de uso**, independentemente de ser própria, cedida ou alugada.

> **Atenção**
>
> Não considere o tanque de agitação como máquina de lavar, ainda que movido a eletricidade, isto é, não considerar quando a máquina existente apenas lavar a roupa sem realizar as operações de enxágue e centrifugação (tanquinho e similares).



### 3.15 - Algum morador tem acesso à internet no domicílio?

O objetivo é captar se algum morador tem acesso à Internet no domicílio, por meio de qualquer equipamento e conexão (rede móvel celular 3G ou 4G, conexão discada por linha telefônica ou banda larga), para qualquer finalidade (entretenimento, trabalho, relacionamento com outras pessoas etc.). 

**Considere sim** quando, no domicílio, algum morador tiver acesso à internet por meio de qualquer equipamento: computador, tablet, telefone móvel, televisão ou outro equipamento eletrônico como: console de videogame, tocador portátil de música (MP3 e MP4 players, iPod etc.), leitor de livro eletrônico (e-reader), relógio, máquina fotográfica etc., ainda que seja com auxílio de outrem. 

**Considere sim** quando houver acesso à internet para qualquer fim, incluindo os casos em que houver acesso apenas para troca de mensagens por aplicativo de telefone celular ou acesso a redes sociais. 

Registre a opção "**1 - Sim**" quando, no domicílio, houver acesso à internet. 

Registre a opção "**2 - Não**" quando, no domicílio, não houver acesso à internet.

> **Atenção**
>
> Não considere quando o morador acessa a internet apenas fora do domicílio. 
>
> Exemplo: Apenas na escola, no trabalho ou em lan house. 



# 4. Características dos Moradores {#secao4}

Você já conheceu os quesitos referentes ao bloco das Características do Domicílio. Confira agora os quesitos referentes às características adicionais dos moradores.



## 4.1. Características Adicionais dos Moradores

A partir desta unidade serão coletados dados adicionais de todos os moradores. Alguns quesitos serão apresentados de uma única vez, de forma a ser respondido para todos os moradores ao qual ele se aplica. Outros quesitos deverão ser respondidos em blocos (grupo de perguntas), de forma a facilitar o entendimento do tema, para todos os moradores ao qual se aplica. 

Os nomes serão trazidos da Lista de Moradores e os quesitos deverão ser respondidos para cada um destes moradores. Isso acontecerá sempre respeitando a sequência de preenchimento estabelecida pelo aplicativo. 

Essas características vão permitir determinar o perfil demográfico e socioeconômico da população do país e realizar estimativas, estudos e diagnósticos mais específicos, com o objetivo de subsidiar o planejamento e o desenvolvimento de políticas e programas governamentais. 

A seguir percorreremos passo-a-passo as características adicionais dos moradores.

### 4.1.1. Questionário de Identificação Étnico-racial

Os objetivos deste bloco são:

- conhecer a composição étnico-racial da população brasileira por cor ou raça e pertencimento étnico;
- construir indicadores socioeconômicos desagregados por cor ou raça, por etnia, por língua indígena e por pertencimento étnico;
- quantificar o total de indígenas residentes no Brasil, dentro e fora de Terras Indígenas;
- quantificar o total de quilombolas residentes no Brasil; e
- retratar a diversidade étnico-racial das pessoas residentes no Brasil. 

Este bloco tem como princípio o respeito à declaração do informante sobre a sua identificação étnico-racial e a dos demais moradores do domicílio. **Esta não pode ser em momento algum questionada pelo(a) Recenseador(a)**.



#### 4.01 / B4.01 - A sua cor ou raça é:

"Cor ou raça" é uma **percepção** que o informante tem sobre si mesmo (autoidentificação) e sobre os outros moradores (ausentes).

O quesito é denominado "**cor ou raça**" e não apenas "**cor**" ou apenas "**raça**", pois há vários critérios que podem ser usados pelo informante para a classificação, tais como: **origem familiar, cor da pele, traços físicos, etnia, entre outros**, e porque as 5 (cinco) categorias disponíveis (Branca, Preta, Amarela, Parda e Indígena) podem ser entendidas pelo informante de **forma variável**. 

Vale lembrar que "**Raça**" é uma categoria socialmente construída na interação social e não um conceito biológico.

> **Atenção**
>
> Leia todas as opções de cor ou raça para a pessoa de forma pausada e cadenciada e assinale aquela que for a **opção declarada**. Faça o mesmo para o registro da informação de cada morador, pois é comum haver domicílios com diversidade na cor ou raça. 

**E o que fazer quando uma pessoa:**

- Tem dúvidas sobre sua própria cor ou raça;
- Pede para que o Recenseador diga qual a cor ou raça dela ou de outros moradores? 

**Resposta**: use, se necessário, a função Ajuda do DMC e explique por que se investiga "cor ou raça". Explique também que o quesito é sobre como o informante se considera em relação a sua cor ou raça, dentro das categorias do IBGE, e sua percepção sobre os outros moradores, caso responda por outras pessoas. Explique que você não pode responder pelo informante. Releia as opções para o informante.

- Insiste em responder uma opção de cor ou raça que não existe nas alternativas do quesito? 

**Resposta**: explique à pessoa que não existem outras opções e que você vai reler as cinco opções de resposta para que ela escolha aquela que julgar mais adequada. Releia, então, pausadamente as opções: Branca, Preta, Amarela, Parda e Indígena. 

Se você ler as opções, vai ganhar tempo! Isso ajuda o informante a usar uma das 5 (cinco) alternativas oferecidas (Branca, Preta, Amarela, Parda e Indígena) em vez de outra qualquer.

>  **Saiba Mais**
>
> As categorias Branca, Preta, Amarela, Parda e Indígena são usadas da mesma forma desde o censo demográfico de 1991! Isso garante a comparabilidade dos resultados! 

Caso a pessoa solicite que você explique alguma das opções de "cor ou raça", leia as definições para cada opção, clicando na função **Ajuda** referente a cada uma. 

Conforme o caso, registre:

- **1 - Branca**: Para a pessoa que se declarar branca.
- **2 - Preta**: Para a pessoa que se declarar preta.
- **3 - Amarela**: Para a pessoa de origem oriental: japonesa, chinesa, coreana, etc.
- **4 - Parda**:  Para a pessoa que se declarar parda ou que se identifique com mistura de duas ou mais opções de cor ou raça, incluindo branca, preta, parda e indígena. 
- **5 - Indígena**: Para a pessoa que se declarar indígena ou índia. Esta classificação se aplica tanto aos indígenas que vivem em terras indígenas, como aos que vivem fora delas, inclusive em áreas quilombolas. 

> **Atenção**
> Alguns grupos não entendem o conceito "indígena" ou "índia". Eles se identificam pelo nome de sua etnia, povo ou grupo indígena, tais como Xavante, Guarani, Terena, Fulni-ô, Yanomami, Kaingang, entre outros. 
> Assinale a opção indígena caso o informante mencione sua etnia como resposta. 

Caso a pessoa se declare ou declare algum morador como de cor ou raça "amarela", uma mensagem deve ser lida para o informante, solicitando uma resposta: "**Considera-se como cor ou raça amarela a pessoa de origem oriental exemplo: Japonesa, Chinesa, Coreana. Você confirma sua escolha?**" (sim/não). 

Caso a pessoa responda "Não", indicando que não confirma a escolha da resposta "amarela", ela deverá escolher outra opção de cor ou raça. Para isso, assinale **NÃO** na mensagem lida ao informante e refaça a pergunta de cor ou raça para todos os moradores que foram declarados como de cor ou raça amarela. 

A pergunta de confirmação só será exibida quando o Recenseador avançar para o próximo quesito e houver algum morador com declaração de cor ou raça amarela.

>  **Atenção**
>
> Esta mensagem para o Informante é muito importante para garantir uma boa qualidade desta informação.

> **Exemplo**
>
>  E como o Recenseador deve proceder nas seguintes situações?
>
> **1. O informante responde que sua cor ou raça é "morena"**. 
>
> Explique que o IBGE usa as 5 (cinco) categorias mencionadas e releia as opções pausadamente.
>
> **2.  O informante insiste que sua cor ou raça é "negra"**. 
>
> Explique que o IBGE usa apenas as 5 (cinco) categorias mencionadas, desde o Censo 1991, e peça que o informante escolha uma das opções. Jamais presuma que negra é preta ou parda.
>
> **3.  O informante pede para você escolher e dá respostas como "é parecida com a sua", "você me diz" ou "não está vendo?"**. 
>
> Explique que esse quesito é sobre como a pessoa se considera e considera os outros moradores e, se necessário, releia as opções. Você jamais deve escolher qualquer opção no lugar do informante.
>
> **4. O informante de pele clara responde que sua cor ou raça é "preta".**
>
> Não questione a opção e assinale a alternativa "preta".



### 4.1.2. Questionário de Investigação de Pertencimento Étnico-Indígena

Para a pessoa que mora em terra indígena, agrupamento indígena ou área de intere sse operacional indígena e que não se declare indígena no quesito de cor ou raça, será investigado, automaticamente, se a pessoa se considera indígena.



#### 4.02 / B4.02 - Você se considera indígena?

- **1 - Sim**
- **2 - Não** 

Perguntas adicionais são realizadas para complementar a investigação de pertencimento étnico- indígena, retratando a diversidade étnica e linguística desse grupo populacional. 

Os quesitos de etnia e línguas faladas no domicílio só serão investigados para as pessoas declaradas indígenas (4.01) ou consideradas indígenas (4.02).

> **Atenção**
> O fato de uma pessoa não declarar sua etnia ou língua indígena não altera sua identificação como indígena ou índia. **Em nenhum momento** o Recenseador deve questionar o informante a respeito de sua declaração.



#### 4.03 / B4.03 - Qual a sua etnia, povo ou grupo indígena? Especifique a(s) etnia(s) indígena(s) - Até dois registros

Registre o(s) nome(s) da(s) etnia(s), do(s) povo(s) ou do(s) grupo(s) indígena(s) ao(s) qual(is) cada morador do domicílio pertence.


> **Atenção**
> Por **etnia** entende-se uma comunidade humana definida por afinidades linguísticas, culturais e/ou sociais. Corresponde também ao povo ou grupo indígena no sentido de conjunto de pessoas que se caracterizam por uma cultura e forma de vida social própria. 

A partir do terceiro caractere digitado, serão exibidas as etnias que contenham os caracteres digitados. Encontrando a etnia informada, basta selecionar o texto. Se a etnia informada não for encontrada, registre a mesma buscando confirmar sua grafia com o informante sempre que possível. 

Até duas etnias podem ser registradas para este quesito, caso os informantes declarem mais de uma. Para cada espaço de registro, apenas uma etnia deve ser informada. Você não deve estimular uma segunda resposta, pois o segundo campo pode ficar sem preenchimento.

#### 4.031 / B4.031 - Etnia 1

#### 4.032 / B4.032 - Etnia 2


> **Atenção**
> Caso o respondente não saiba ou não se lembre, registre "**Não sabe**".



#### 4.04 / B4.04 - Fala língua indígena no domicílio? (Considere também o uso de língua de sinais)

- **1 - Sim**
- **2 - Não** 

Considere apenas a(s) língua(s) indígena(s) usada(s) para comunicação **no domicílio** pelas pessoas que se declaram ou se consideram indígenas. 

A finalidade deste tema é conhecer as línguas indígenas faladas no Brasil para planejamento de políticas sociais e educacionais mais adequadas para esses grupos linguísticos.

> **Atenção**
> Esta pergunta não é realizada para menores de dois anos de idade. Se a criança com dois ou mais anos de idade não aprendeu a falar, você deve registrar "**2 - Não**". 

Se o indígena informar que fala a "**língua do seu povo**", repita a etnia declarada no quesito 4.03.

> **Atenção**
> **Considere** também a Língua de Sinais Urubu-Ka'apor (LSUK) e outras línguas de sinais que sejam informadas. 

Poderão ser registradas até três línguas para este quesito e deverá ser informada apenas uma língua em cada espaço de registro. Apenas registre a segunda e a terceira línguas indígenas faladas no domicílio, nos casos em que os informantes declararem mais de uma língua indígena. Você não deve estimular uma segunda e terceira resposta, já que o segundo e o terceiro campo podem ficar sem resposta. 

A partir do terceiro caractere digitado, serão exibidas as línguas indígenas que contenham os caracteres digitados. Encontrando a língua indígena informada, basta selecionar o texto. Se a língua indígena informada não for encontrada, registre a mesma buscando confirmar sua grafia com o informante sempre que possível.

> **Atenção**
> Para os moradores que, por motivo de doença ou deficiência, não façam uso nem da língua indígena falada nem de uma língua própria de sinais, você deve registrar "**2 - Não**".



#### 4.041 / B4.041 - Especifique a(s) língua(s) indígena(s) - até três registros:

#### 4.042 / B4.042 - Língua indígena 1

#### 4.043 / B4.043 - Língua indígena 2

#### 4.044 / B4.044 - Língua indígena 3

Caso o informante não saiba ou não se lembre, registre "**Não sabe**".



#### 4.05 / B4.05 - Fala português no domicílio? (Considere também o uso da língua brasileira de sinais).

- **1 - Sim**
- **2 - Não** 

Para os moradores que, por motivo de doença ou deficiência, não façam uso nem do português nem da língua brasileira de sinais, você deve registrar "**2 - Não**".




### 4.1.3. Questionário de Investigação de Pertencimento Étnico-Quilombola

Em territórios quilombolas, agrupamentos quilombolas e áreas de interesse operacional quilombola, será realizada, de forma automatizada, uma pergunta de pertencimento étnico - quilombola a todos os moradores do domicílio.



#### 4.06 / B4.06 - Você se considera quilombola?

- **1 - Sim**
- **2 - Não**


> **Atenção**
> Por quilombola entende-se a pessoa que se **autoidentifica** como quilombola. 

Comunidades quilombolas são grupos étnicos, segundo critérios de autoatribuição, com trajetória histórica própria, dotados de relações territoriais específicas, com presunção de ancestralidade negra relacionada com a resistência à opressão historicamente sofrida, como definidas pelo Decreto nº. 4.887/2003. 

Em algumas unidades da federação, as **comunidades quilombolas** são conhecidas como terra de preto, terra de santo, comunidade negra rural ou pelo nome da própria comunidade como Gurutubanos, Kalungas, entre outros.




#### 4.07 / B4.07 - Qual o nome da sua comunidade?

Registre o nome da comunidade quilombola à qual o entrevistado declarou que pertence. 

O quesito só aceita uma resposta, caso o informante esteja em dúvida sobre informar sua comunidade de origem ou de residência atual, **solicite a comunidade de origem**. 

A partir do terceiro caractere digitado, serão exibidos os nomes das comunidades quilombolas que contenham os três caracteres digitados. Encontrando a comunidade quilombola informada, basta selecionar o texto. 

Caso não identifique o nome informado pelo entrevistado na lista, inclua o nome da comunidade quilombola informado. Caso o respondente não saiba ou não se lembre, registre "**Não sabe**". 



## 4.2. Registro Civil de Nascimento

A finalidade deste quesito é saber quantas pessoas até 5 anos de idade possuem algum tipo de registro de nascimento. Portanto, o bloco só é aplicável para pessoas até 5 anos de idade.



### 5.01 / B5.01 - Tem registro de nascimento: (assinalar a primeira opção em que a pessoa se enquadrar, na ordem enumerada)

- **1 – Do Cartório**: Assinale esta opção se a pessoa possuir Certidão de nascimento lavrada em cartório. 
- **2 – Registro Administrativo de Nascimento Indígena (RANI) **: O Registro Administrativo de Nascimento de Indígena (RANI) é um documento administrativo fornecido pela FUNAI, instituído pelo Estatuto do Índio. O registro do RANI é realizado em livros próprios por funcionários da FUNAI, e para cada registro é emitido o documento correspondente, devidamente autenticado e assinado. O RANI não substitui a certidão de nascimento, mas pode servir como documento para solicitar o registro civil. 
  - **Atenção**: Esta opção só será oferecida para as pessoas que se 
    declarem (4.01) ou se considerem (4.02) indígenas.
- **3 – Não tem**: Esta opção deve ser assinalada para as pessoas que nunca tiveram registro de nascimento. 
- **4 – Não sabe**: Esta opção deve ser assinalada para as pessoas que não sabem se possuem registro de nascimento. 

Embora o quesito termine com dois pontos (:), não se deve ler as opções **3 – Não tem** e **4 – Não sabe**. Essas opções devem ser assinaladas somente se o informante declarar uma delas. 


> **Atenção**
> Se a pessoa não possuir o registro de nascimento devido à perda ou danificação, mas tenha sido registrada, assinalar a opção 1 - Do Cartório ou **2 - Registro Administrativo de Nascimento Indígena (RANI)**, conforme o caso.



## 4.3. Nupcialidade

A finalidade deste tema é conhecer a natureza da união conjugal das pessoas que declararem que vivem em companhia de cônjuge ou companheiro(a) **no mesmo domicílio**. 

Essa informação é muito importante para se conhecer a estrutura familiar e os padrões relacionados à vida conjugal no país. Através das uniões conjugais, é possível identificar os núcleos familiares.

O bloco só é aplicado para **pessoas de 10 anos ou mais de idade**.



### 6.01 - Vive em companhia de cônjuge ou companheiro(a)?

Conforme o caso, registre: 

- **1 - Sim**: Quando viver em companhia de cônjuge ou companheiro(a) e o mesmo(a) for **morador(a)** do domicílio. **Não considere** esta opção para pessoa que declarar viver em companhia de cônjuge ou companheiro(a), mas o mesmo perdeu a condição de morador. 
- **2 - Não, mas já viveu antes**: Considere esta opção para pessoa que **não vive** em companhia de cônjuge ou companheiro(a), **mas já viveu**. Considere também a pessoa que declarar que vive em companhia de cônjuge ou companheiro(a), mas o mesmo **perdeu a condição de morador do domicílio**. 
- **3 - Não, nunca viveu**: Para a pessoa que nunca viveu em companhia de cônjuge ou companheiro(a).

> **Atenção**
> Os quesitos 6.02 e 6.03 só serão respondidos para mulheres de 10 anos ou mais que declararam viver com cônjuge ou companheiro(a).



### 6.02 - Nome do cônjuge ou companheiro(a):

Selecione, na lista de moradores, o nome do cônjuge ou companheiro(a).



### 6.03 - Qual é a natureza da união?

Para a pessoa que vive em companhia de cônjuge com quem é

- **1 - Casamento civil e religioso**: Para a pessoa que vive em companhia de cônjuge com quem é casada no civil e no religioso, inclusive para a pessoa que, embora somente tenha comparecido à cerimônia religiosa, regularizou o ato civil de acordo com a legislação vigente. 
- **2 - Só casamento civil**: Para a pessoa que vive em companhia de cônjuge com quem é casada somente no civil. 
- **3 - Só casamento religioso**: Para a pessoa que vive em companhia de cônjuge com quem é casada somente no religioso, em qualquer religião ou culto. 
- **4 - União consensual**: Para a pessoa que vive em companhia de cônjuge com quem não contraiu casamento civil ou religioso. Considere esta opção para os que vivem em união estável com ou sem contrato registrado em cartório.


> **Atenção**
>
> Os quesitos a seguir (6.04 e 6.05) devem ser respondidos por homens de 10 anos ou mais de idade que declararam que vivem em companhia de cônjuge ou companheiro(a), mas não foram relacionados como cônjuge de morador(a) do domicílio.



### 6.04 - Nome do cônjuge ou companheiro(a):

Selecione, na lista de moradores, o nome do cônjuge ou companheiro(a).



### 6.05 - Qual é a natureza da união?

Conforme o caso, registre: 

- **1 - Casamento civil e religioso**: Para a pessoa que vive em companhia de cônjuge com quem é casada no civil e no religioso, inclusive para a pessoa que, embora somente tenha comparecido à cerimônia religiosa, regularizou o ato civil de acordo com a legislação vigente. 
- **2 - Só casamento civil**: Para a pessoa que vive em companhia de cônjuge com quem é casada somente no civil. 
- **3 - Só casamento religioso**: Para a pessoa que vive em companhia de cônjuge com quem é casada somente no religioso, em qualquer religião ou culto. 
- **4 - União consensual**: Para a pessoa que vive em companhia de cônjuge com quem não contraiu casamento civil ou religioso. Considere esta opção para os que vivem em união estável com ou sem contrato registrado em cartório.



## 4.4. Núcleo Familiar

Identificar outros núcleos familiares não identificados pela lista de moradores do domicílio (famílias conviventes em um único domicílio).

> **Saiba Mais**
>
> A família é interpretada como uma unidade básica para a análise social, por isso, é importante tipificá-las para a orientação de políticas públicas. Também é importante a identificação de núcleos secundários (as famílias conviventes), já que elas indicam que em um único domicílio convive mais de uma família. 
>
> Com as informações obtidas com os temas nupcialidade e núcleo familiar, é possível categorizar as famílias conviventes, saber quantas são, como são e onde estão. Para todos os moradores



### 7.01 - Sua mãe ou madrasta mora atualmente neste domicílio?

- **1 - Sim**
- **2 - Não** 

**Considere como mãe**: a mãe biológica, a mãe adotiva legal, a mãe de criação e quem for considerada como tal pelo indivíduo. 

**Considere como madrasta**: a esposa ou companheira do pai, ou da mãe em casais do mesmo sexo, em relação aos filhos por eles tidos em relacionamento anterior.



### 7.011 - Quem é ela?

No caso de registrada a opção "**1 - Sim**", selecione, na Lista de Moradores, a pessoa correspondente à mãe ou madrasta.



### 7.02 - Seu pai ou padrasto mora atualmente neste domicílio?

- **1 - Sim**
- **2 - Não** 

**Considere como pai**: o pai biológico, o pai adotivo legal, o pai de criação e quem for considerado como tal pelo indivíduo. 

**Considere como padrasto** o marido ou companheiro da mãe, ou do pai em casais do mesmo sexo, em relação aos filhos por eles tidos em relacionamento anterior.



### 7.021 - Quem é ele?

No caso de registrada a opção "**1 - Sim**", selecione, na Lista de Moradores, a pessoa correspondente ao pai ou padrasto.



## 4.5. Fecundidade

Os quesitos deste tema têm como finalidade conhecer a história reprodutiva das mulheres através do número de filhos tidos (filhos biológicos), bem como a sobrevivência dos mesmos, para a realização de estimativas sobre o padrão etário e o nível de fecundidade e mortalidade infantil. Essas informações fornecem os parâmetros demográficos que são utilizados nas projeções da população realizadas pelo IBGE. 

O bloco só é aplicável para **mulheres de 12 anos ou mais de idade**.

Vamos conhecer todos esses quesitos e as orientações para o seu correto preenchimento?



### 8.01 - Quantos filhos e filhas nascidos vivos teve até 31 de julho de 2022?

Para responder a esta pergunta, você deverá considerar como filho nascido vivo aquele que, após o parto, independentemente do tempo de duração da gravidez, **manifestou qualquer sinal de vida** (respiração, choro, movimentos de músculos de contração voluntária, batimento cardíaco, etc.), **ainda que tenha falecido em seguida**. 

**Devem ser incluídos**: as filhas e os filhos biológicos que estão vivos, que moram no domicílio ou moram fora do domicílio, e os nascidos vivos que já morreram. 

**Não devem ser incluídos** neste quesito as mortes fetais e os filhos adotivos.

### 8.011 - Homens: ________

### 8.012 - Mulheres: ________

> **Atenção**
>
> Quando a mulher não tiver tido filho nascido vivo até a data de referência, registrar **0 (zero)** nos dois campos: 
>
> **[8.011 - Homens: 0 >>> 8.012 - Mulheres: 0]**
>
> Quando o total de filhos nascidos vivos for do mesmo sexo, registre **0 (zero)** na categoria correspondente ao outro sexo. Ex.: para quem teve dois filhos vivos do sexo masculino, a resposta ao quesito seria: 
>
> **[8.011 - Homens: 2 >>> 8.012 - Mulheres: 0]** 
>
> Quando o informante não souber o número de filhos tidos nascidos vivos até a data de referência, você deve deixar os quesitos em branco. 
>
> **[8.011 - Homens:  _ >>> 8.012 - Mulheres: _ ]**



### 8.02 - Dos filhos e filhas que teve, quantos estavam vivos em 31 de julho de 2022?

Registre, segundo o sexo, o número de filhos que estavam vivos até 31 de julho de 2022.

### 8.021 - Homens: ________

### 8.022 - Mulheres: ________ 

>  **Atenção**
>
> Quando os filhos vivos em 31/07/2022 forem do mesmo sexo, registre **0 (zero)** na categoria correspondente ao outro sexo. Ex.: para dois filhos vivos do sexo masculino, a resposta ao quesito seria: 
>
> **[8.021 - Homens: 2 >>> 8.022 - Mulheres: 0]** 
>
> Quando não houver filhos vivos em 31/07/2022, assinalar 0 nos dois campos. 
>
> **[8.021 - Homens: 0 >>> 8.022 - Mulheres: 0]** 
>
> Quando o informante não souber o número de filhos vivos em 31/07/2022, você deve deixar os quesitos em branco. 
>
> **[8.021 - Homens: _ >>> 8.022 - Mulheres: _ ]**



### 8.03 - Qual é a data de nascimento do último filho ou filha tido (a) nascido (a) vivo (a) até 31 de julho de 2022?

Registre o dia, mês e o ano de nascimento do último filho ou filha tido (a) nascido (a) vivo (a) até 31 de julho de 2022, **mesmo que ele ou ela já tenha falecido**. O último filho (a) nascido (a) vivo (a) é o filho ou filha biológico(a) mais novo ou o caçula.

### 8.031 - DIA: 

Registre o dia de nascimento do último filho ou filha nascido vivo. 

### 8.032 - MÊS: 

Registre o mês de nascimento do último filho ou filha nascido vivo. 

- **01 - Janeiro**
- **02 - Fevereiro**
- **03 - Março**
- **04 - Abril**
- **05 - Maio**
- **06 - Junho**
- **07 - Julho**
- **08 - Agosto**
- **09 - Setembro**
- **10 - Outubro**
- **11 - Novembro**
- **12 - Dezembro**

### 8.033 - ANO:

Registre o ano de nascimento do último filho ou filha nascido vivo. 



Após esgotadas **todas as possibilidades** para obter a data de nascimento completa do último filho ou filha nascido (a) vivo(a), caso o informante não saiba alguma das três informações (dia, mês ou ano), deixe registradas as respostas prestadas. Não calcule o ano de nascimento do filho baseado na informação da idade, pois esse procedimento, comprovadamente, induz a erros na informação, além de atrasar a sua coleta. Nesse caso, você deve assinalar a quadrícula **Não sei o mês e/ou ano de nascimento** para registrar a idade do último filho ou filha nascido (a) vivo (a) até 31 de julho de 2022.



### 8.034 - IDADE

Esse quesito somente será preenchido caso o informante não saiba informar o mês ou o ano de nascimento do filho (a) mais novo (a) ou caçula. 

- **1 – Um ano ou mais**: Este campo deve ser preenchido com a idade em anos. Se a idade for de 1 (um) ano ou mais, registre o número de anos completos no campo “Um ano ou mais” 
- **2 – Menos de um ano**: Este campo deve ser preenchido com a idade em meses. Se a idade for inferior a 1 (um) ano, registre o número de meses completos no campo “menos de um ano” 

> **Atenção**
> Para o recém-nascido de **idade inferior a 1 (um) mês**, registre **0 (zero)** no campo "**menos de um ano**". 
> Somente preencha este quesito se o informante não souber o mês ou o ano de nascimento do filho (a) mais novo (a). 
> Lembre-se: a idade declarada deve ser aquela que o filho ou filha possuía em 31 de julho de 2022.



## 4.6. Religião ou culto

A finalidade deste tema é conhecer as religiões ou cultos declarados pela população e o número de seus adeptos.

O bloco só é aplicável para **pessoas de 10 anos ou mais de idade**.



### 9.011 - Qual é sua religião ou culto?

O registro deve identificar a seita, culto ou ramo da religião professada como: Católica Apostólica Romana, Católica Apostólica Brasileira, Luterana Pentecostal, Batista, Assembleia de Deus, Universal do Reino de Deus, Congregação Cristã do Brasil, Adventista do Sétimo Dia, Complexo ritual do Toré, Kardecista, Testemunhas de Jeová, Candomblé, Umbanda, Opy ou Casa de Reza, Budismo, Israelita, Maometana (ou Islamita), Esotérica, etc. 

É possível digitar qualquer religião, mesmo que não apareça na lista de opções. Caso o informante declare mais de uma religião ou culto para um ou mais moradores, todas as religiões ou cultos mencionados devem ser digitadas por extenso, separadas por vírgulas, por exemplo: "Umbanda, Católica Apostólica Romana" - "Kardecista, Candomblé" - "Ouricuri, Católica Apostólica Romana" - "Budismo, Católica Apostólica Romana, Espírita".

> **Atenção**
>
> Caso a resposta do informante seja apenas "Católica", selecionar "Católico Apostólico Romano". 

Caso a pessoa se declare sem religião, agnóstico(a), ateu ou ateia, selecione essa informação no combo de religiões, digitando os caracteres, como na imagem a seguir:

`[IMAGEM OMITIDA]`

> **Atenção**
>
> **Não faça deduções a partir da declaração da pessoa que estiver prestando as informações**. Registre a religião ou culto declarada para cada morador do domicílio.



### 9.012 - Qual a sua crença, ritual indígena ou religião?

Esta pergunta será realizada de forma diferenciada nas Terras Indígenas, nos Agrupamentos Indígenas e Áreas de Interesse Operacional Indígena. Essa modificação na pergunta se deve ao fato de que muitos grupos indígenas não associam seus sistemas de crenças e complexos de práticas rituais à ideia de "religião ou culto", apresentando dificuldade de compreensão da pergunta na forma como é apresentada fora de Terras e Agrupamentos Indígenas. 

Considere como crenças e rituais indígenas, todos aqueles praticados pelos moradores do domicílio, tais como: frequentar a Casa de Reza, o Toré, o Complexo Ritual do Ouricuri, a Pajelança, o Oheokoti (cerimônia Terena), o Kikikoi (ritual Kaingang), entre outros. Muitas vezes esses sistemas são explicitados pelos nomes dos rituais ou das festas. Caso o informante responda com o nome de rituais ou festas, registre-os como resposta ao quesito. Já se encontram pré-listadas em seu DMC os nomes de muitas festas e rituais que compõem os sistemas religiosos indígenas. Caso o informante declare uma crença, ritual indígena ou religião que não conste da lista, você deve incluí-la como nova opção.

> **Atenção**
>
> Caso o informante declare mais de uma crença, ritual indígena ou religião para um morador, registre todas as respostas declaradas. Digite os seus nomes por extenso, um após outro, separando o que vem depois por vírgula. Por exemplo: "Casa de Reza, Católica Apostólica Romana".



## 4.7. Pessoas com Deficiência

A finalidade deste tema é conhecer o número de pessoas com deficiência na população, bem como o grau de severidade dessas deficiências. A partir desses dados, podem ser adotadas políticas públicas que promovam a inclusão social dessa parcela da população. 

O bloco só é aplicável para **pessoas de 2 (dois) anos ou mais de idade**.

Acompanhando o entendimento da Lei Brasileira de Inclusão da Pessoa com Deficiência, consideramos que uma pessoa com deficiência é: 

>  Aquela que tem impedimento de longo prazo de natureza física, mental, intelectual ou sensorial, o qual, em interação com uma ou mais barreiras, pode obstruir sua participação plena e efetiva na sociedade em igualdade de condições com as demais pessoas (Art. 2º da Lei Brasileira de Inclusão da Pessoa com Deficiência, LEI Nº 13.146/ 2015) 

A investigação deste tema requer que as perguntas sejam feitas uma a uma para cada morador com 2 (dois) anos ou mais de idade, seguidas das opções de resposta para o entrevistado, assinalando a quadrícula correspondente à declaração deste, **sem nenhuma interpretação pessoal por parte do Recenseador**.

> **Atenção**
>
> O Recenseador deve ler a pergunta até o final para que fique evidente que a medida do grau de dificuldades da pessoa se dá mesmo com o uso de aparelhos, como óculos, bengalas etc.

É importante salientar que o Recenseador não deve fornecer qualquer juízo de valor em relação às características pessoais que encontrar no campo. A dificuldade aparentada pode ser transitória ou menos severa do que o julgamento inicial do Recenseador possa apontar. Assim, por exemplo, uma pessoa usando bengala ou até mesmo cadeira de rodas pode ser capaz de andar pequenas distâncias, e cabe apenas ao informante a medida desta dificuldade.

> **Atenção**
>
> Deve ser considerada dificuldade permanente aquela que já exista há pelo menos 6 meses ou que tenha duração esperada de pelo menos 6 meses. 

As recomendações internacionais sugerem que este bloco de perguntas não deve ser aplicado para crianças de 0 (zero) a 2 (dois) anos de idade, pois o desenvolvimento das crianças nessa fase não é compatível com o tipo de pergunta proposta. 

Em caso de dúvida do informante sobre alguma criança com mais de 2 (dois) anos de idade, oriente-o a considerar a criança sempre em comparação com outras crianças da mesma idade. Desse modo, por exemplo, uma criança de 3 (três) anos pode não subir degraus com a mesma velocidade que um adulto, mas sobe conforme o esperado para uma criança dessa idade.

> **Atenção**
>
> Nesse tema você deve ler todas as opções de resposta, apesar do uso do ponto de interrogação (?).



### 10.01 - Tem dificuldade permanente para enxergar, mesmo usando óculos ou lentes de contato?

- **1 – Tem, não consegue de modo algum**: Para a pessoa que se declarar totalmente incapaz de enxergar, mesmo com o uso de óculos ou lentes de contato. 
- **2 – Tem muita dificuldade**: Para a pessoa que se declarar com grande dificuldade permanente para enxergar, mesmo com o uso de óculos ou lentes de contato. 
- **3 – Tem alguma dificuldade**: Para a pessoa que se declarar com alguma dificuldade permanente para enxergar, mesmo com o uso de óculos ou lentes de contato. 
- **4 – Não tem dificuldade**: Para a pessoa que se declarar sem nenhuma dificuldade permanente para enxergar, ainda que precise usar óculos ou lentes de contato. 



### 10.02 - Tem dificuldade permanente para ouvir, mesmo usando aparelhos auditivos?

-  **1 – Tem, não consegue de modo algum**: Para a pessoa que se declarar totalmente incapaz de ouvir, mesmo com o uso de aparelho auditivo. 
- **2 – Tem muita dificuldade**: Para a pessoa que se declarar com muita dificuldade permanente para ouvir, mesmo com o uso de aparelho auditivo. 
- **3 – Tem alguma dificuldade**: Para a pessoa que se declarar com alguma dificuldade permanente para ouvir, mesmo com o uso de aparelho auditivo. 
- **4 – Não tem dificuldade**: Para a pessoa que se declarar sem nenhuma dificuldade permanente para ouvir, ainda que precise usar aparelho auditivo. 



### 10.03 - Tem dificuldade permanente para andar ou subir degraus, mesmo usando prótese, bengala ou aparelho de auxílio?

- **1 – Tem, não consegue de modo algum**: Para a pessoa que se declarar totalmente incapaz de andar ou subir degraus, mesmo usando prótese, bengala ou aparelho de auxílio. 
- **2 – Tem muita dificuldade**: Para a pessoa que se declarar com muita dificuldade permanente para andar ou subir degraus, mesmo usando prótese, bengala ou aparelho de auxílio. 
- **3 – Tem alguma dificuldade**: Para a pessoa que se declarar com alguma dificuldade permanente para andar ou subir degraus, mesmo usando prótese, bengala ou aparelho de auxílio. 
- **4 – Não tem dificuldade**: Para a pessoa que se declarar sem nenhuma dificuldade permanente para andar ou subir degraus, ainda que precise usar  prótese, bengala ou aparelho de auxílio. 



### 10.04 - Tem dificuldade permanente para pegar pequenos objetos, como botão ou lápis, ou abrir e fechar tampas de garrafas, mesmo usando aparelho de auxílio?

- **1 – Tem, não consegue de modo algum**: Para a pessoa que se declarar totalmente incapaz para levantar uma garrafa, pegar objetos pequenos, abrir e fechar recipientes, mesmo usando prótese ou aparelho de auxílio. 
- **2 – Tem muita dificuldade**: Para a pessoa que se declarar com muita dificuldade permanente para levantar uma garrafa, pegar objetos pequenos, abrir e fechar recipientes, mesmo usando prótese ou aparelho de auxílio. 
- **3 – Tem alguma dificuldade**: Para a pessoa que se declarar com alguma dificuldade permanente para levantar uma garrafa, pegar objetos pequenos, abrir e fechar recipientes, mesmo usando prótese ou aparelho de auxílio. 
- **4 – Não tem dificuldade**: Para a pessoa que se declarar sem nenhuma dificuldade permanente para levantar uma garrafa, pegar objetos pequenos,  abrir e fechar recipientes, ainda que use prótese ou aparelho de auxílio. 



### 10.05 - Por causa de alguma limitação nas funções mentais, tem dificuldade permanente para se comunicar, realizar cuidados pessoais, trabalhar, estudar etc.?

- **1 – Tem, não consegue de modo algum**: Para a pessoa que for totalmente incapaz de se comunicar, realizar cuidados pessoais, trabalhar, ir à escola, etc. 
- **2 – Tem muita dificuldade**: Para a pessoa que se declarar com muita dificuldade permanente de se comunicar, realizar cuidados pessoais, trabalhar, ir à escola, etc. 
- **3 – Tem alguma dificuldade**: Para a pessoa que se declarar com alguma dificuldade permanente de se comunicar, realizar cuidados pessoais, trabalhar, ir à escola, etc. 
- **4 – Não tem dificuldade**: Para a pessoa que se declarar sem nenhuma dificuldade permanente para realizar atividades habituais como se comunicar, realizar cuidados pessoais, trabalhar, mesmo quando a pessoa possuir algum transtorno psicossocial, intelectual, de desenvolvimento, entre outros 

  

## 4.8. Migração interna e internacional

Nesse bloco, o tema Migração engloba dois assuntos: migração interna e imigração internacional.

O bloco é aplicável para **todos os moradores**.

O objetivo deste tema é compreender como se comporta a mobilidade espacial da população dentro do Território Nacional, suas tendências recentes, a relação entre espaços e os fluxos imigratórios internacionais, além de subsidiar as projeções populacionais. 

Para o correto preenchimento dos quesitos de migração, é importante que se saiba corretamente o conceito de morador. O conceito de morador está no Manual do Recenseador, Unidade 1, Item 9. 



### 4.8.1. Conceitos 

**Migração:** 

Refere-se aos movimentos de entrada e saída de população, com objetivo de fixar residência, em outra divisão político-administrativa (município, estado ou país). 

**Migração Interna:** A migração interna ocorre quando os deslocamentos populacionais acontecem dentro do território nacional, ou seja, entre municípios do próprio estado (intraestaduais) ou entre municípios de estados diferentes (interestaduais). A pessoa será um emigrante interno ao deixar o município onde residia e se tornará um imigrante interno no município de destino. 

**Migração Internacional:** A migração internacional é observada quando os deslocamentos de população ocorrem entre diferentes países. Nesse caso, a pessoa realiza uma emigração internacional ao deixar o país onde residia, tornando-se um imigrante internacional no país de destino onde foi fixar residência. 

Para facilitar o trabalho de preenchimento do questionário em relação aos próximos quesitos, incluímos as siglas dos Estados e do Distrito Federal: 

| Estado              | Sigla |
| ------------------- | ----- |
| Acre                | AC    |
| Alagoas             | AL    |
| Amapá               | AP    |
| Amazonas            | AM    |
| Bahia               | BA    |
| Ceará               | CE    |
| Distrito Federal    | DF    |
| Espírito Santo      | ES    |
| Goiás               | GO    |
| Maranhão            | MA    |
| Mato Grosso         | MT    |
| Mato Grosso do Sul  | MS    |
| Minas Gerais        | MG    |
| Pará                | PA    |
| Paraíba             | PB    |
| Paraná              | PR    |
| Pernambuco          | PE    |
| Piauí               | PI    |
| Rio de Janeiro      | RJ    |
| Rio Grande do Norte | RN    |
| Rio Grande do Sul   | RS    |
| Rondônia            | RO    |
| Roraima             | RR    |
| Santa Catarina      | SC    |
| São Paulo           | SP    |
| Sergipe             | SE    |
| Tocantins           | TO    |



### 4.8.2. Questionário de migração interna e internacional




#### 11.01 - Nasceu:

- **1 – Neste município**: Para a pessoa que nasceu no município de residência atual. Considere que a pessoa nasceu no município de residência atual: (i) mesmo que este tenha mudado de nome ou se emancipado ou tenha sido incorporado a um novo município; e (ii) mesmo que tenha nascido em maternidade ou casa de saúde localizada fora do município de residência atual, mas tenha retornado logo após o nascimento. Para a pesquisa, o local de nascimento refere-se ao município de residência da mãe, e não aquele em que se localizava o hospital/maternidade ou cartório onde a criança foi registrada, a não ser nos casos em que esses locais sejam os mesmos. 
- **2 – Em outro município do Brasil**: Para a pessoa que nasceu no Brasil, mas não no município de residência atual. Neste caso, deverá ser assinalado o estado e o município de nascimento. 
- **3 – Em outro país**: Para a pessoa que não nasceu no Brasil. Neste caso, deverá ser assinalado o país estrangeiro de nascimento. 

#### 11.011 - Estado:

#### 11.012 - Município:

Se não souber o nome do Estado nem do município em que nasceu, registre "**Não sabe Estado**" no campo do estado e "**Não sabe Município**" no campo de município.

Se só souber o nome do Estado, registre seu nome; e, no campo do município, registre "**Não sabe Município**".

Se só souber o nome do município, registre "**Não sabe Estado**" no campo de Estado; e o nome do município, no campo do município.

#### 11.013 - País:

Se não souber o nome do país estrangeiro em que nasceu, registre "**Não sabe o nome do país estrangeiro**".



#### 11.02 - Já morou em outro município do Brasil ou país estrangeiro?

- **1 - Sim**
- **2 - Não** 

**Assinale SIM** para a pessoa que já morou em município brasileiro diferente do município de residência atual.

> **Atenção**
>
> Não considere que morou em outro município do Brasil a pessoa que:
>
> - sempre morou no município de residência atual, ainda que ele tenha mudado de nome ao longo do tempo;
> - nasceu em maternidade (ou casa de saúde) localizada fora do município de residência atual, e retornou a ele logo em seguida ao nascimento.



#### 11.03 - Qual é a sua nacionalidade?

- **1 – Brasileiro nato**: Para a pessoa que nasceu no Brasil ou em país estrangeiro e foi registrada como brasileira, segundo as leis do Brasil. 
- **2 – Naturalizado brasileiro**: Para a pessoa que nasceu em país estrangeiro e obteve a nacionalidade brasileira por meio de título de naturalização ou por meio de disposição da legislação brasileira. 
- **3 – Estrangeiro**: Para a pessoa que nasceu fora do Brasil ou aquela que nasceu no Brasil e se registrou em representação estrangeira, não se naturalizando brasileira. Considere nesta opção a pessoa que nasceu fora do Brasil e esteja tentando se naturalizar brasileira, mas que ainda não tenha conseguido o título de naturalização. 



#### 11.04 - Em que ano fixou residência no Brasil?

Registre o ano em que a pessoa naturalizada brasileira ou estrangeira fixou residência no Brasil.



#### 11.05 - Há quanto tempo mora sem interrupção neste município? (nº de anos)

Registre há quanto tempo (em número de anos completos) a pessoa mora no município de residência atual, sem interrupção, contados até 31 de julho de 2022. 

Registre o tempo de moradia após o último retorno, para a pessoa que tenha migrado para outro município e que depois tenha retornado. 

Deslocamentos temporários não devem ser considerados como uma interrupção no tempo de moradia no município, por exemplo, ter passado 3 meses estudando em outro município/estado/país. 

Registre **0 (zero)**, quando o tempo de moradia for inferior a um (1) ano.



#### 11.06 - Onde morava antes de mudar-se para este município?

- **1 - Estado / Município**
- **2 - País estrangeiro** 

**Para a pessoa que morava em outro município do Brasil**, antes de mudar para o município de residência atual, registre o Estado e o nome do Município em que morava antes.

#### 11.061 - Estado:

#### 11.062 - Município:

Se não souber o nome do Estado nem o nome do Município em que morava antes, registre "**Não sabe Estado**" no campo do estado e "**Não sabe Município**" no campo do município. 

Se só souber o nome do Estado, registre seu nome e, no campo do município, registre "**Não sabe Município**". 

Se só souber o nome do município, registre "**Não sabe Estado**" no campo de estado e o nome do Município que morava anteriormente.

#### 11.063 - País Estrangeiro:

Para a pessoa que morava em **país estrangeiro**, antes de mudar para o município de residência atual, registre o **nome do país** em que morava antes. 

Se não souber o nome do país estrangeiro, registre "**Não sabe país estrangeiro**".

Para a pessoa que tenha morado no município de residência atual e migrado para país estrangeiro e depois retornado, registre o nome do país estrangeiro **em que morava antes** de se mudar para o município de residência atual.



#### 11.07 - Em 31 de julho de 2017, morava:

- **1 - Neste município**
- **2 - Em outro município do Brasil**
- **3 - Outro país** 

Para a pessoa que naquela data morava em outro município do Brasil, registre o nome do Estado e o Município em que a pessoa residia. 

#### 11.071 - Estado:

#### 11.072 - Município:

Se não souber o nome do Estado nem o nome do Município em que residia em 31 de julho de 2017, registre "**Não sabe Estado**" no campo de estado e "Não sabe Município" no campo do município. 

Se só souber o nome do estado, registre esse nome e, no campo do município, registre "**Não sabe Município**".

#### 11.073 - País:

Registre o nome do país estrangeiro em que a pessoa residia em 31 de julho de 2017.

Se não souber o país estrangeiro em que residia em 31 de julho de 2017, registre "**Não sabe País Estrangeiro**".

> **Atenção**
>
> Se o país estrangeiro, o estado ou município mudou de nome, registre o nome atual.



## 4.9. Educação



### 4.9.1. Objetivo

O objetivo desse bloco é caracterizar a educação da população residente no Brasil, investigando analfabetismo, frequência à escola, nível de instrução e área de formação no ensino superior. Identificar quem sabe ler e escrever, acesso da população à escola, frequência anterior à escola, tipo de curso concluído e outras informações educacionais é essencial para conhecer a situação educacional do país e orientar políticas públicas. 

Para a captação do tema educação, o IBGE pauta-se nas disposições mais recentes da Lei nº 9.394 de 1996, que estabelece as diretrizes e bases da educação nacional, e outras legislações associadas à educação. A intenção é medir o alcance real dessas disposições (obrigatórias e opcionais), particularmente em relação às modalidades de ensino. 

É essencial entender as diferenças entre as realidades educacionais do país (aspectos sociais e estruturas organizacionais). Ao longo dos anos, ocorreram significativas mudanças, que serão apresentadas no decorrer do texto. 

O intuito, ao se apresentar as transformações ocorridas, é preparar o agente do IBGE para melhor receber as informações do morador quanto ao quesito. Com uma boa coleta, retrataremos as características educacionais da população da maneira o mais fiel possível. 

Afinal, durante o trabalho, podem-se encontrar pessoas de diferentes gerações e que, por esse motivo, irão responder às perguntas de acordo com o período em que estiveram na escola. 

Agora vamos apresentar como está dividida a Educação Brasileira hoje.

> **Atenção**
>
> É importante saber que a educação escolar se compõe de Educação básica e Ensino superior:



### 4.9.2. Educação Básica

A educação básica é formada por:

- **Educação Infantil** - creche e pré-escola.

- **Ensino Fundamental** - duração de 8 ou 9 anos.

- **Ensino Médio** - estruturado em 3 ou 4 anos.

> **Saiba mais**
>
> O ensino básico, tanto no nível fundamental como no médio, pode organizar-se em séries anuais, períodos semestrais, ciclos etc.

A educação básica pode ser oferecida por meio de:

- **Ensino regular**: Educação infantil, Ensino fundamental e Ensino médio.
- **Educação Especial**: modalidade de educação escolar oferecida preferencialmente na rede regular de ensino, para educandos com deficiência, transtornos globais do desenvolvimento, altas habilidades ou superdotação. Atualmente, a rede de ensino é orientada a buscar ações inclusivas para estes alunos nas classes comuns de ensino regular. Contudo, o atendimento educacional será feito em classes ou serviços especializados somente quando não for possível a integração deste aluno nas classes comuns de ensino regular.
- Educação de Jovens e Adultos (EJA): modalidade de educação, além da forma regular, que se destina às pessoas que não tiveram acesso ou continuidade de estudos em idade apropriada.


> **Saiba Mais**
>
> Ainda que a educação de jovens e adultos tenha o objetivo de atender às pessoas que não cursaram o ensino fundamental ou médio em idades apropriadas, não existe impedimento legal de pessoas com idade mais elevada em frequentar um curso regular (fundamental ou médio).



### 4.9.3. Ensino Superior

O Ensino Superior brasileiro é composto pelos cursos sequenciais, de extensão, graduação e pós-graduação. No entanto, o Censo Demográfico 2022 **não irá investigar os cursos sequenciais, nem os de extensão**. Apesar disso, é necessário ter conhecimento desses cursos, para que seja possível traduzir a informação declarada pelo informante.

- **Cursos sequenciais** - cursos sequenciais são abertos para candidatos que atendam aos requisitos estabelecidos pelas instituições de ensino desde que tenham concluído o ensino médio ou equivalente. Destinam-se à obtenção ou atualização de qualificações técnicas, profissionais ou acadêmicas, de acordo com a lei nº 9.394/96. **Não conferem nível e não correspondem ao diploma de graduação**. Os cursos sequenciais podem servir ao interesse de todos que, possuindo um certificado de conclusão do ensino médio, buscam ampliar ou atualizar seus horizontes intelectuais ou mesmo suas qualificações técnico-profissionais, frequentando o ensino superior sem necessariamente ingressar em um curso de graduação.
- **Cursos de extensão** - as instituições de ensino superior têm como pilares o ensino, a pesquisa e a extensão. Os dois primeiros referem-se ao meio acadêmico, ou seja, representam as atividades internas à própria instituição. Já a extensão busca integrar universidade e sociedade em atividades que sejam comuns a elas. Uma das formas de permitir esta integração é através de cursos preparados pelos programas de extensão. Estes cursos são abertos a candidatos que atendam aos requisitos estipulados em cada caso pelas instituições de ensino. Não conferem nível e não correspondem ao diploma de graduação.
- **Cursos de graduação** - abertos a candidatos que tenham concluído o ensino médio ou equivalente e tenham sido classificados em processo seletivo. **Confere nível**.
- **Cursos de pós-graduação** - abertos a candidatos que tenham concluído o ensino superior de graduação e que atendam às exigências das instituições de ensino. Compreendem os programas: Stricto sensu (mestrado e doutorado); **lato sensu** (especialização - duração mínima de 360 horas de aula); **aperfeiçoamento** e outros.

> **Atenção**
>
> Os cursos sequenciais e de extensão não são investigados no tema educação do questionário do Censo 2022. 
>
> Somente os cursos de especialização que tiverem duração mínima de 360 horas serão investigados no tema educação do questionário do Censo 2022.



### 4.9.4. Questionário

No questionário, o tema "Educação" é organizado de acordo com a frequência à escola.

- A primeira parte do questionário será respondida pelas pessoas que estão frequentando escola ou creche.
- A segunda parte será direcionada àqueles que não estão frequentando. Neste caso, teremos um grupo de pessoas que não frequenta mais escola, mas já frequentou em algum momento de sua vida e outro grupo que nunca frequentou, conforme resumido no quadro a seguir: 

A seguir, serão apresentadas as perguntas do módulo de educação.



**Observação**: 

- Ver disclaimer na seção [Processamento](#processamento).



#### 12.01 / B6.01 - Sabe ler e escrever?

A pergunta se "**Sabe ler e escrever?**" investiga a alfabetização das pessoas de **5 anos ou mais de idade**. Essa pergunta é feita antes de sabermos se a pessoa frequenta ou já frequentou escola, tendo em vista que a frequência escolar não determina o aprendizado da leitura e da escrita. 

Destina-se a captar se a pessoa sabe ler e escrever pelo menos um bilhete simples ou uma lista de compras, no idioma que conhece, independentemente do fato de estar ou não frequentando escola e já ter concluído períodos letivos.

> **Atenção**
>
> Lembre-se de que não importa a caligrafia. 

Assinale **SIM**, para quem sabe ler e escrever, e até mesmo para a pessoa alfabetizada que se tornou física ou mentalmente incapacitada de ler ou escrever. **Considere** como sabendo ler e escrever a pessoa que utiliza o **Sistema Braille**.

>  **Saiba Mais**
>
> Braile ou braille é um sistema de escrita tátil utilizado por pessoas cegas ou com baixa visão. É tradicionalmente escrito em papel relevo. Os usuários do sistema Braille podem ler em telas de computadores e em outros suportes eletrônicos atualizáveis graças a um mostrador em braile. Nesse sistema, pode-se fazer a representação tanto de letras quanto de algarismos e sinais de pontuação. 

Assinale **NÃO**, para a pessoa que:

- nunca aprendeu a ler e a escrever;
- sabe apenas assinar o próprio nome, mas não sabe ler nem escrever um bilhete simples;
- aprendeu, mas esqueceu, devido a ter passado por um processo de alfabetização precário que não se consolidou.


> **Atenção**
>
> O uso da língua brasileira de sinais - LIBRAS **não é considerado como saber ler e escrever**. 



#### 12.02 - Frequenta escola ou creche? (Escola inclui desde cursos da pré-escola até o doutorado)

Este quesito é aplicado a **todas as pessoas**.

Considere como frequentando escola ou creche a pessoa que cursa:

- creche;
- pré-escola;
- curso de alfabetização de jovens e adultos - AJA;
- curso regular do ensino fundamental ou do ensino médio, inclusive de educação especial;
- curso de educação de jovens e adultos (EJA), do ensino fundamental ou do ensino médio;
- curso de ensino médio técnico na modalidade integrada (matrícula única no ensino médio e técnico de nível médio);
- curso de ensino médio normal, destinado à formação de professores para o exercício do magistério nos anos iniciais (cinco primeiros anos) do ensino fundamental;
- curso superior de graduação;
- especialização de nível superior (duração mínima de 360 horas);
- curso de mestrado, inclusive para quem está em fase de preparação de dissertação; e
- curso de doutorado, inclusive para quem está em fase de preparação de tese.

**Considere** também como frequentando escola:

- a pessoa que está temporariamente impedida de comparecer às aulas por motivo de doença, greve, más condições do tempo ou outra razão;
- a pessoa que cursa qualquer nível de ensino (fundamental, médio ou superior) na modalidade de Educação a Distância - EAD, ministrado por estabelecimento de ensino credenciado pelo MEC para este tipo de ensino, mesmo que a maior parte do curso não seja realizada presencialmente. Note-se que a educação a distância prevê a obrigatoriedade de ocorrência de atividades presenciais (por exemplo, provas e avaliações). Definição de curso EaD: é o processo de aprendizagem que faz uso de meios/tecnologias da informação e comunicação, e que permite a transmissão de informações e interação entre professores e estudantes em lugares ou tempos diversos. 

**Não considere** como frequentando escola a pessoa que esteja frequentando cursos:

- de qualificação profissional, inclusive de formação inicial e continuada - FIC, ou de extensão cultural, tais como: corte e costura, dança, idiomas, informática;
- técnico de nível médio na modalidade subsequente (curso feito por pessoa que já concluiu o ensino médio, o 2º grau ou o médio 2º ciclo);
- técnico de nível médio na modalidade concomitante, caso a pessoa já tenha concluído o ensino médio e ainda está terminando o curso técnico de nível médio, visto que eram duas matrículas distintas;
- pré-vestibular;
- superiores sequenciais, de especialização (menos de 360 horas) ou de extensão;
- cursos ministrados por meio de rádio, televisão ou por correspondência, mesmo que alfabetização de jovens e adultos, ensino fundamental ou ensino médio.
- estuda em curso a distância em estabelecimento de ensino não credenciado pelo Ministério da Educação ou que não realize atividades presenciais.

> **Atenção**
>
> A pandemia de COVID-19 obrigou as instituições de ensino a se adaptar, mesmo que temporariamente, ao ensino online ou híbrido, ou mesmo, a suspender a totalidade das atividades escolares. 
>
> Todavia, é importante ficar claro que, se houver novamente a suspensão das atividades escolares ou a migração para o ensino online ou híbrido nos cursos presenciais ou nas atividades presenciais dos Cursos de Educação à Distância, em função de uma pandemia, deve-se considerar a pessoa como frequentando escola.

> **Atenção**
>
> Lembre que a "mãe crecheira", a "mãe social", as "creches parentais" ou as "cuidadoras de crianças" não devem ser consideradas como creche.

> **Exemplo**
>
> **Considere as situações a seguir e veja como o Recenseador deve proceder ao assinalar a resposta do quesito 12.02 - Frequenta escola ou creche?**
>
> - Se uma criança de 3 anos e passa o dia com uma senhora que cuida das crianças do bairro em sua residência, deve ser assinalada a opção correspondente ao código "**2 - Não**", visto que a mãe crecheira não é considerada como creche ou escola.
> - Se uma pessoa frequenta um curso regular do ensino fundamental na modalidade de educação especial, deve ser assinalada a opção correspondente ao código "**1 - Sim**".
> - Se uma pessoa saiu de uma escola e está aguardando o fim do período de férias para continuar o curso de ensino médio na nova escola em que se matriculou, deve ser assinalada a opção correspondente ao código "**1 - Sim**", porque após as férias ela volta a frequentar escola.
> - Para uma pessoa que, por ter quebrado a perna, não está comparecendo às aulas do curso superior em que está matriculada, deve ser assinalada a opção correspondente ao código "**1 - Sim**", porque, assim que se curar, voltará a frequentar a escola.
> - Uma pessoa terminou o ensino médio, em seguida, fez o vestibular para um curso superior de graduação e passou. Agora, está aguardando o início do primeiro período letivo para frequentar o curso superior no qual foi aprovada. Nesse caso, deve ser assinalada a opção correspondente ao código "**1 - Sim**", porque a pessoa passou no vestibular e, assim que começar o ano letivo, frequentará escola.
> - Se uma pessoa terminou o ensino médio, em seguida, fez o ENEM e agora está esperando o resultado para saber se irá ingressar no ensino superior de graduação, deve ser assinalada a opção correspondente ao código "**2 - Não**", porque essa pessoa não sabe se irá frequentar escola antes do resultado do ENEM.
> - Uma pessoa concluiu o ensino médio há dois anos. No início do ano, decidiu voltar a estudar e está frequentando um curso técnico de nível médio na modalidade subsequente. Nesse caso, deve ser assinalada a opção correspondente ao código "**2 - Não**", porque cursos sequenciais não são cursos considerados no tema Educação do Censo Demográfico 2022.
> - Se uma pessoa frequenta um curso técnico de nível médio na modalidade integrada, deve ser assinalada a opção correspondente ao código "**1 - Sim**", porque nessa modalidade a matrícula é única no ensino médio e técnico.





#### **12.03 - Qual é o curso que frequenta?**

A seguir, estão enumeradas as opções de cursos do Censo Demográfico 2022 para quem frequenta escola.

> **Atenção**
>
> A pessoa inserida na modalidade de educação especial deve ser classificada no curso em que está matriculada e frequenta. 

- **01 – Creche**: Considere como creche o estabelecimento formalizado destinado a dar assistência diurna a crianças nas primeiras idades, preferencialmente com idade entre 0 e 3 anos. É um estabelecimento educativo que ministra apoio pedagógico e cuidado às crianças. **Não considere a mãe crecheira, mãe social, cuidadora de crianças ou creche parental**. Caso essa opção seja assinalada, o aplicativo do DMC irá direcionar para o quesito 13.01 (Deslocamento para estudo) 

- **02 – Pré-escola**: Curso de iniciação escolar oferecido a crianças muito pequenas, ou seja, aquelas que ainda não estão no primeiro ano regular do ensino fundamental, e cujo objetivo é prepará-las através de jogos e atividades lúdicas, artísticas etc. para o aprendizado do currículo escolar, e que compreende o maternal e o jardim de infância. Preferencialmente ofertado para crianças com idade entre 4 e 5 anos. Caso essa opção seja assinalada, o aplicativo do DMC irá direcionar para o quesito 13.01 (Deslocamento para estudo) 

- **03 – Alfabetização de jovens e adultos (AJA)**: Para as pessoas que declararem frequentar a alfabetização de jovens e adultos - AJA.  O AJA é dirigido a jovens com 15 anos ou mais, adultos e idosos não alfabetizados, com o objetivo de universalizar a alfabetização e abrir oportunidades de acesso à educação nos demais níveis – ensino fundamental, ensino médio e profissional e educação superior. Os egressos desses cursos dão continuidade aos estudos na Educação de jovens e adultos (EJA). Caso essa opção seja assinalada, o aplicativo do DMC irá direcionar para o quesito 13.01 (Deslocamento para estudo) 

- **04 – Regular do ensino fundamental**: Para as pessoas que declararem frequentar entre o primeiro e o nono ano do ensino fundamental. Caso essa opção seja assinalada, o aplicativo do DMC irá direcionar para o quesito 12.04 a seguir. 

- **05 – Educação de jovens e adultos (EJA) do ensino fundamental**: Para pessoa que frequenta curso do ensino fundamental na modalidade de educação de jovens e adultos. Este curso é orientado para jovens e adultos que não completaram ou abandonaram a educação formal não conseguindo, portanto, concluir o ensino fundamental no tempo certo e já tenham completado 15 anos de idade. Caso essa opção seja assinalada, o aplicativo do DMC irá para o quesito 12.05 a seguir. 

- **06 – Regular do ensino médio**: Para pessoa que frequenta curso do ensino médio (antigo 2º grau), organizado em séries anuais ou em regime de créditos, períodos letivos, semestres, fases, módulos, ciclos etc., inclusive cursos técnicos. O ensino médio corresponde à etapa final da Educação Básica. Tem a duração mínima de 3 ou 4 anos. Caso essa opção seja assinalada, o aplicativo do DMC irá direcionar para o quesito 12.05 a seguir. 

- **07 – Educação de jovens e adultos (EJA) do ensino médio**: Para pessoa que frequenta curso de ensino médio na modalidade de educação de jovens e adultos. Este curso é orientado para adultos que não completaram ou abandonaram a educação formal, não conseguindo, portanto, concluir o ensino médio no tempo certo e já tenham completado 18 anos de idade. Caso essa opção seja assinalada, o aplicativo do DMC irá direcionar para o quesito 12.05 a seguir. 

- **08 – Superior de graduação**: Para a pessoa que declarar que frequenta curso de graduação de nível superior.  Caso essa opção seja assinalada, o aplicativo do DMC irá direcionar para o quesito 12.04. 

- **09 – Especialização de nível superior (duração mínima de 360 horas)**: Para pessoa que frequenta curso de pós-graduação de especialização  (lato sensu), cujo pré-requisito é a conclusão de um curso de graduação. Este tipo de curso tem duração mínima de 360 horas. O MBA (Master of Business Administration) é um exemplo desse curso. Caso essa opção seja assinalada, o aplicativo do DMC irá direcionar para o quesito 12.12 a seguir. 

- **10 – Mestrado**: Para a pessoa que frequenta curso de mestrado, inclusive para quem está em fase de preparação de dissertação. Caso essa opção seja assinalada, o aplicativo do DMC irá direcionar para o quesito 12.12 a seguir. 

- **11 – Doutorado**: Para a pessoa que frequenta curso de doutorado, inclusive quem está  em fase de preparação de tese. Caso essa opção seja assinalada, o aplicativo do DMC irá direcionar para o quesito 12.12 a seguir. 

Este quesito é aplicado a **todas as pessoas que frequentam escola**.

> **Atenção**
>
> A opção 6 - Regular do ensino médio deve ser assinalada somente se a pessoa frequentar o curso regular de ensino médio. Se frequentar o curso da educação de jovens e adultos, a opção assinalada deve ser a opção 7 - Educação de jovens e adultos (EJA) do ensino médio.



#### **12.04 - Qual é o ano que frequenta?**

Para curso regular do ensino fundamental, marque o ano que a pessoa frequenta.

- Primeiro

- Segundo 

- Terceiro

- Quarto

- Quinto 

- Sexto

- Sétimo

- Oitavo 

- Nono

- Curso não classificado em anos


Este quesito é aplicado a **todas as pessoas que frequentam escola**.

> **Atenção**
>
> Esta opção deve ser assinalada somente se a pessoa frequentar o curso regular de ensino fundamental. Se frequentar o curso da educação de jovens e adultos, a opção assinalada deve ser a opção 5 - Educação de jovens e adultos (EJA) do ensino fundamental. 
>
> Para a pessoa que frequenta matérias em anos distintos (classes de aceleração, multisseriadas ou dependências), assinale o ano em que a pessoa está matriculada.

> **Atenção**
>
> Para a pessoa que frequenta curso superior de graduação que não é organizado em anos, mas em trimestre, quadrimestre ou semestres, faça a 
> conversão para os anos correspondentes. 

> **Exemplo**
>
> Considere a situação do quesito 12.04 a seguir e veja como o Recenseador deve proceder nestes casos: 
>
> Se a pessoa frequenta o ensino superior de graduação e está no: 
>
> - 1º, 2º, 3º ou 4º trimestre, deve-se marcar que frequenta o 1º ano 
> - 5º, 6º, 7º ou 8º trimestre, deve-se marcar que frequenta o 2º ano 
> - 1º, 2º ou 3º quadrimestre, deve-se marcar que frequenta o 1º ano 
> - 4º, 5º ou 6º quadrimestre, deve-se marcar que frequenta o 2º ano 
> - 1º ou 2º semestres, deve-se marcar que frequenta o 1º ano 
> - 3º ou 4º semestres, deve-se marcar que frequenta o 2º ano 

> **Atenção**
>
> Para a pessoa que frequenta mais de um curso superior de graduação, assinale o ano correspondente ao período letivo mais elevado. 
>
> Para a pessoa que frequenta curso superior de graduação e cursa matérias de vários períodos letivos diferentes, assinale o ano letivo do curso que 
> contempla o maior número de matérias.  
>
> Para a pessoa que concluiu um curso de bacharelado e retornou à faculdade para cursar licenciatura com aproveitamento de parte do curso de 
> bacharelado, deve-se marcar o período letivo que está cursando, considerando todo o aproveitamento de matérias do curso anterior. 

> **Exemplo**
>
>  Considere a situação do quesito 12.04 a seguir e veja como o Recenseador deve proceder nestes casos: 
>
> - Uma pessoa concluiu o curso de bacharelado em Biologia. Agora ela pediu reingresso na faculdade e está cursando as matérias de licenciatura para dar aula de Biologia. Ela aproveitou 6 semestres de matérias do curso já concluído. Logo, deve-se marcar a frequência ao **4º ano, porque os três anos anteriores foram cumpridos com matérias do curso de bacharelado em Biologia**. 
> - Uma estudante do ensino superior terminou com aprovação o 4º ano do curso superior que está frequentando e está em férias esperando para 
>   começar o 5º ano. Deve-se registrar como frequentando o **5º ano, porque após as férias ela irá frequentar o 5º ano**. 



#### **12.05 - Qual é a série que frequenta?**

Para o curso do ensino fundamental na modalidade de educação de jovens e adultos, marque a série que frequenta.

- Primeira

- Segunda 

- Terceira

- Quarta

- Quinta 

- Sexta

- Sétima

- Oitava

- Curso não classificado em séries

Este quesito é aplicado a **todas as pessoas que frequentam escola**.

> **Saiba mais**
>
> A educação regular pode ser frequentada por pessoas de qualquer idade, já a modalidade de jovens e adultos exige uma idade mínima para ingresso (**por regra, 15 anos para o ensino fundamental e 18 anos para o ensino médio**).

> **Atenção**
>
> Para pessoa que frequenta curso de educação de jovens e adultos do ensino fundamental em que cada série é ministrada em período de duração inferior a um ano (semestre, trimestres etc.), deve ser assinalado o código correspondente à série frequentada, independentemente da duração necessária para cumpri-la. 

> **Atenção**
>
> Para curso na modalidade educação de jovens e adultos do ensino médio não classificado em séries, mas em regime de fases, módulos, ciclos etc. e que não possibilita a correspondência com as séries do ensino regular do mesmo nível, deve-se assinalar “**Curso não classificado em séries**”. 
>
> Para a pessoa que frequenta curso na modalidade educação de jovens e adultos do ensino médio em que cada série é ministrada em período de duração inferior a um ano (semestre, trimestres etc.), deve ser assinalado o código correspondente à série frequentada, independentemente da > duração necessária para cumpri-la. 

>**Exemplo**
>
>Considere a situação do quesito 12.05 a seguir e veja como o Recenseador deve proceder neste caso:
>
>- Uma pessoa está frequentando o 8º mês de um curso do ensino médio na modalidade de educação de jovens e adultos em que cada série é completada em 6 meses. Para essa pessoa, deve ser assinalada a opção correspondente ao **código 2 - Segunda série, porque ainda está frequentando o segundo semestre**.




#### **12.06 - Já concluiu algum outro curso superior de graduação?**

Assinale **SIM**, para a pessoa que frequenta curso de graduação e já possui outro curso superior de graduação concluído.

- **1 - Sim**

- **2 - Não**

Este quesito é aplicado a **todas as pessoas que frequentam curso superior de graduação**.



#### **12.07 - Qual foi o curso mais elevado que frequentou anteriormente?**

- **01 - Creche**
- **02 - Pré-escola**
- **03 - Classe de alfabetização - CA**
- **04 - Alfabetização de jovens e adultos - AJA**
- **05 - Antigo primário (elementar)**
- **06 - Antigo ginasial (médio 1º ciclo)**
- **07 - Regular do ensino fundamental ou do 1º grau**
- **08 - Educação de jovens e adultos (EJA) do ensino fundamental ou Supletivo do 1º grau**
- **09 - Antigo científico, clássico, etc. (médio 2º ciclo)**
- **10 - Regular do ensino médio ou do 2º grau**
- **11 - Educação de jovens e adultos (EJA) do ensino médio ou Supletivo do 2º grau**
- **12 - Superior de graduação**
- **13 - Especialização de nível superior (duração mínima de 360 horas)**
- **14 - Mestrado;**
- **15 - Doutorado** 

Este quesito é aplicável a todas as **pessoas que não frequentam escola, mas já frequentaram anteriormente**.

**Considere também como já tendo frequentado escola:** 

A pessoa que prestou os exames do **artigo 99 da Lei de Diretrizes e Bases 4.024/61 (médio 1º ciclo ou médio 2º ciclo)** ou do **supletivo (1º grau ou 2º grau)** ou da **Educação de Jovens e Adultos (ensino fundamental ou médio)** e foi aprovada, embora nunca tenha frequentado curso ministrado em escola. 

A pessoa que conseguiu o certificado de conclusão do ensino médio por ter sido aprovada no **Exame Nacional do Ensino Médio - ENEM**, embora não tenha concluído ou frequentado curso desse nível ou equivalente. 

A pessoa que conseguiu o certificado de conclusão do ensino fundamental por ter sido aprovada no **Exame Nacional de Certificação de Competências de Jovens e Adultos - ENCCEJA**, embora não tenha concluído ou frequentado curso desse nível ou equivalente.

> **Atenção**
>
> Para a pessoa que frequentou mais de um curso de mesmo nível ou grau, considere aquele em que a pessoa concluiu, com aprovação, maior número de séries ou anos. Se o número de séries ou anos concluídos, com aprovação, for o mesmo, considere o mais recente. 

**Não considere como frequência à escola a pessoa que frequentou cursos:**

- de qualificação profissional, inclusive de formação inicial e continuada - FIC, ou de extensão cultural, tais como: corte e costura, dança, idiomas, informática;
- ministrados por meio de rádio, televisão, internet ou por correspondência, mesmo que alfabetização de jovens e adultos, ensino fundamental ou ensino médio.

A seguir, estão enumeradas as opções de respostas:

- **01 – Creche**: Considere como creche o estabelecimento formalizado destinado a dar assistência diurna a crianças nas primeiras idades,   preferencialmente com idade entre 0 e 3 anos. É um estabelecimento educativo que ministra apoio pedagógico e cuidado às crianças. **Não  considere a mãe crecheira, mãe social, cuidadora de crianças ou creche parental**. Caso essa opção seja assinalada, o bloco será encerrado.

- **02 – Pré-escola**: Considere pré-escola o curso de iniciação escolar oferecido a crianças muito pequenas, preferencialmente com idade entre 4 e 5 anos, e cujo objetivo é prepará-las através de jogos e atividades lúdicas, artísticas etc. para o aprendizado do currículo escolar, e que compreende o maternal e o jardim de infância. Caso essa opção seja assinalada, o bloco será encerrado.

- **03 – Classe de alfabetização (CA)**: Considerar como Classe de alfabetização a classe destinada a dar o aprendizado da leitura e da escrita às crianças antes do ingresso no ensino fundamental com duração de 8 anos. Passou a integrar o ensino fundamental de 9 anos a partir de 2006, correspondendo ao primeiro ano desse curso.  Caso essa opção seja assinalada, será perguntado se concluiu este curso que frequentou anteriormente (quesito 12.11). 

-  **04 – Alfabetização de jovens e adultos (AJA)**: Considerar a alfabetização de jovens e adultos realizada por meio do  antigo Movimento Brasileiro de Alfabetização - MOBRAL ou outros  cursos patrocinados pelo governo ou entidades privadas. O AJA é dirigido a jovens com 15 anos ou mais, adultos e idosos não alfabetizados, com o objetivo de universalizar a alfabetização e abrir oportunidades de acesso à educação nos demais níveis – ensino fundamental, ensino médio e profissional e educação superior. Os egressos desses cursos continuam os estudos na Educação de jovens 
  e adultos (EJA). Caso essa opção seja assinalada, será perguntado se concluiu este curso (quesito 12.11). 
  
- **05 – Antigo primário (elementar)**: Este curso fazia parte do sistema de ensino anterior a 1971, correspondendo aos anos iniciais do Ensino Fundamental. Era estruturado em 4, 5 ou 6 séries, dependendo da época. Caso essa opção seja assinalada, será perguntada a última série concluída com aprovação (quesito 12.10) e se concluiu este curso (quesito 12.11). 

-  **06 – Antigo ginásio (médio 1º ciclo)**: Este curso fazia parte do sistema de ensino anterior a 1971, correspondendo aos anos finais do Ensino Fundamental. Era estruturado em 4 ou 5 séries, dependendo da época. Considere nesta opção quem frequentou o Artigo 99 do médio 1º ciclo. 
  Caso essa opção seja assinalada, será perguntada a última série concluída com aprovação (quesito 12.10) e se concluiu este curso (quesito 12.11). 
  
- **07 – Regular do ensino fundamental ou do 1º grau**: Nesta opção deve ser assinalada a pessoa que declarar que o curso mais elevado que frequentou foi o regular do ensino fundamental ou o antigo 1º grau (este curso fazia parte do sistema de ensino entre os anos de 1971 a 1996 e era estruturado em 8 séries). Para quem declarar esta opção, será perguntado sobre a duração do curso, se 8 séries ou 9 anos - quesito 12.08. 

- **08 – Educação de jovens e adultos (EJA) do ensino fundamental ou supletivo do 1º grau**: Nesta opção, deve ser assinalada a pessoa que declarar que o curso mais elevado que frequentou foi educação de jovens e adultos – EJA ou o curso supletivo do 1º grau. Considere também a pessoa que alcançou a certificação de conclusão do ensino fundamental por aprovação no Exame Nacional de Certificação de Competências de Jovens e Adultos – ENCCEJA. Para quem declarar esta opção será feita a pergunta: “Qual a última série concluída com aprovação?” (quesito 12.10) e se concluiu este curso (quesito 12.11). 

- **09 – Antigo científico, clássico etc. (médio 2º ciclo)**: Este curso fazia parte do sistema de ensino anterior a 1971, correspondendo ao ensino médio. Era estruturado em 3 séries. Considere nesta opção quem frequentou o Artigo 99 do médio 2º ciclo. Para quem declarar esta opção, será perguntada a última série concluída com aprovação (quesito 12.10) e se concluiu este curso (quesito 12.11).  

- **10 – Regular do ensino médio ou do 2º grau**: Além do ensino médio regular, considerar também nesta opção a pessoa que declarar que o curso mais elevado que frequentou foi o antigo 2º grau (este curso fazia parte do sistema de ensino entre os anos de 1971 a 1996 e era estruturado em 3 ou 4 séries).  Para quem se declarar nesta opção, será perguntada a última série concluída com aprovação (quesito 12.10) e se concluiu este curso (quesito 12.11). 

- **11 – Educação de jovens e adultos (EJA) do ensino médio ou supletivo do 2º grau**: Considerar nesta opção a pessoa que declarar que o curso mais elevado que frequentou foi o EJA do ensino médio ou o antigo supletivo do 2º grau. Considere também a pessoa que alcançou a 
  certificação de conclusão do ensino médio por aprovação no Exame Nacional do Ensino Médio – ENEM ou no Exame Nacional de 
  Certificação de Competências de Jovens e Adultos – ENCCEJA. Para quem se declarar nesta opção, será perguntada a última série concluída com aprovação (quesito 12.10) e se concluiu este curso (quesito 12.11). 
  
- **12 – Superior de graduação**: Considerar nesta opção a pessoa que declarar que o curso mais elevado que frequentou foi o superior de graduação. 
  Para quem se declarar nesta opção, será perguntado o último ano concluído com aprovação (quesito 12.09) e se concluiu este curso (quesito 12.11). 
  
- **13 – Especialização de nível superior (duração mínima de 360 horas)**: Considerar nesta opção a pessoa que declarar que o curso mais 
  elevado que frequentou foi o de especialização (lato sensu), desde que o curso tenha, no mínimo, duração de 360 horas. Para a pessoa que se declarar nesta opção, será perguntado se concluiu este curso (quesito 12.11) e qual o curso superior de graduação que concluiu (quesito 12.13). 
  
- **14 – Mestrado**: Considerar nesta opção a pessoa que declarar que o curso mais elevado que frequentou foi o de mestrado. Para a pessoa que se declarar nesta opção, será perguntado se concluiu este curso (quesito 12.11) e qual o curso superior de graduação que concluiu (quesito 12.13). 

- **15 – Doutorado**: Considerar nesta opção a pessoa que declarar que o curso mais elevado que frequentou foi o de doutorado. Para a pessoa que se declarar nesta opção, será perguntado se concluiu este curso (quesito 12.11) e qual o curso superior de graduação que concluiu (quesito 12.13). 

> **Saiba mais**
>
> O **artigo 99** da Lei de Diretrizes e Bases 4.024/61 dizia que “aos maiores de dezesseis anos será permitida a obtenção de certificados de conclusão do curso ginasial, mediante a prestação de exames de madureza, após estudos realizados sem observância do regime escolar”. 
>
> O **Exame de Madureza** era um curso existente na década de 60 destinado a preparar jovens e adultos para o exame de aferição do conhecimento curricular daqueles que não frequentaram o Ginásio e/ou Colegial, mas que desejavam ter o respectivo diploma de conclusão: do Ginasial (para maiores de 16 anos) e Colegial (para maiores de 19 anos). 
>
> Para pessoa que não frequentou, mas alcançou a conclusão do médio 2º ciclo por ter sido aprovada no correspondente exame supletivo, **assinale o código correspondente ao curso concluído**. 

> **Saiba mais**
>
> O Ensino Supletivo é dividido em supletivo de ensino fundamental ou o antigo supletivo de 1º grau e o supletivo de ensino médio ou o antigo supletivo de 2º grau. Pode ser feito em todo o Brasil e tem certificado reconhecido pelo MEC. Para fazer um curso supletivo, basta ter mais de 15 anos de idade para o ensino fundamental e 18 anos para o ensino médio. 

> **Atenção**
>
>  Para pessoa que não frequentou, mas alcançou a conclusão do médio 2º ciclo por ter sido aprovada no correspondente exame supletivo, assinale o código correspondente ao curso concluído. 


> **Exemplo**
>
> **Considere as situações relacionadas com o quesito 12.07 “Qual foi o curso mais elevado que frequentou anteriormente?” e veja como o 
> Recenseador deve proceder nestes casos: **
>
> - Uma pessoa frequentou a 1ª série do curso regular do ensino médio, foi reprovada e nunca mais frequentou escola. No quesito 12.07 – Qual foi o curso mais elevado que frequentou anteriormente, deve ser assinalada a opção correspondente ao código “**10 – Regular do ensino médio ou do 2º grau**”, pois mesmo cursando a 1ª série sem aprovação, foi o curso mais elevado frequentado; 
> - Uma pessoa concluiu, com aprovação, a 3ª série do curso regular de 2º grau. Posteriormente, esta pessoa frequentou e concluiu um curso superior sequencial (que não exige que a pessoa passe por um processo seletivo - vestibular). Depois, tentou, mas foi reprovada no vestibular para um curso superior de graduação, no qual pretendia conseguir isenção das matérias que havia concluído no curso sequencial. Após essa tentativa, desistiu de prosseguir estudando. Para essa pessoa, deve ser assinalada a opção correspondente ao código “**10 – Regular do ensino médio ou do 2º grau**”, porque curso sequencial não é considerado para a pesquisa. Além disso, essa pessoa foi reprovada no vestibular. 
> - Uma pessoa concluiu, com aprovação, a 4ª série do curso ginasial (médio 1º ciclo). Posteriormente, ela estudou em sua casa, através da televisão, para os exames do supletivo de 2º grau, nos quais foi aprovada. Para essa pessoa, deve ser assinalada a opção correspondente ao código “**11 – Educação de Jovens e adultos (EJA) do ensino médio ou supletivo do 2º grau”**, porque a pesquisa considera que frequentou escola quem foi aprovada em exames supletivos; 
> - Uma pessoa concluiu, com aprovação, a 2ª série do curso científico (médio 2ª ciclo) e, posteriormente, concluiu, com aprovação, a 3ª série do curso supletivo de 2º grau. Depois deste último curso, essa pessoa nunca mais frequentou escola. Para essa pessoa, deve ser assinalada a opção correspondente ao código “**11 – Educação de jovens e adultos (EJA) do ensino médio ou supletivo do 2º grau**”, pois ambos são cursos de nível médio e a terceira série é maior que a segunda; 
> - Uma pessoa concluiu, com aprovação, a 8ª série do curso regular de 1º grau. Posteriormente, estudou em sua casa, através de um curso por correspondência, para os exames do supletivo de 2º grau, nos quais foi aprovada. Após conseguir alcançar o 2º grau, esta pessoa nunca mais frequentou escola. Para essa pessoa, deve ser assinalada a opção correspondente ao código “**11 – Educação de Jovens e adultos (EJA) do ensino médio ou supletivo do 2º grau**”, porque o curso supletivo 2º grau é mais elevado que a 8ª série do 1º grau. 
> - Uma pessoa frequentou um curso superior de graduação e não chegou a concluir o primeiro ano, mesmo neste caso, para essa pessoa, deve ser assinalada a opção correspondente ao código “**12 – Superior de graduação**”, porque é o curso mais elevado que frequentou. 

> **Exemplo**
>
> Considere as situações relacionadas com o quesito 12.10 “Qual a última série que concluiu com aprovação?” e veja como o Recenseador deve 
> proceder nestes casos: 
>
> - Para pessoa que ingressou no ensino médio, foi reprovada e deixou de frequentar escola, deve ser assinalada a opção “**nenhuma**”, porque essa 
>   pessoa não chegou a concluir a primeira série. 
> - Uma pessoa frequentava a educação de jovens e adultos do ensino médio e, antes de concluí-lo, alcançou a certificação de conclusão do ensino 
>   médio por aprovação no Exame Nacional do Ensino Médio - ENEM. Para essa pessoa, deve ser assinalada a opção “**Terceira**”, porque a terceira 
>   série é a última série do ensino médio. 

> **Atenção**
>
>  Para a pessoa que frequentou curso superior de graduação organizado em períodos letivos diferentes de anos, por exemplo, em trimestre, quadrimestre ou semestres, faça a conversão para os correspondentes anos e verifique se concluiu o conjunto de etapas necessárias para ter concluído pelo menos o primeiro ano do curso. 

> **Exemplo**
>
> **Conversão para anos. Quesito 12.09**:
>
> Se a pessoa frequentou o ensino superior de graduação até: 
>
> - 1º, 2º, 3º ou 4º trimestre, deve-se marcar que frequentou o 1º ano; 
> - 5º, 6º, 7º ou 8º trimestre, deve-se marcar que frequentou o 2º ano;
> - 1º, 2º ou 3º quadrimestre, deve-se marcar que frequentou o 1º ano; 
> - 4º, 5º ou 6º quadrimestre, deve-se marcar que frequentou o 2º ano; 
> - 1º ou 2º semestres, deve-se marcar que frequentou o 1º ano; 
> - 3º ou 4º semestres, deve-se marcar que frequentou o 2º ano. 

> **Atenção**
>
> Para pessoa que frequentou mais de um curso superior de graduação, assinale o curso com o período letivo mais elevado. 

> **Exemplo**
>
> **Considere as situações relacionadas com o quesito 12.09 “Qual foi o último ano que concluiu com aprovação?” e veja como o Recenseador deve proceder nestes casos: **
>
> - Uma pessoa concluiu dois cursos superiores de graduação, um organizado em períodos semestrais (no total de 6 semestres) e o outro, em anos (no total de 4 anos). Para essa pessoa, deve ser assinalada a opção correspondente ao código **05 – Quarto**, por ser o curso de período letivo mais elevado. 
> - Uma pessoa concluiu o 5º semestre de um curso superior de graduação e o 4º trimestre de outro, mas não terminou os cursos. Para essa pessoa, deve ser assinalado o código **03 - Segundo**, por ser o curso de período letivo mais elevado. 
> - Para a pessoa que frequentou curso superior de graduação e não chegou a completar o primeiro ano, deve-se marcar o código “**01 - Nenhum**”, pois não chegou a concluir o primeiro ano. 
> - Para a pessoa que frequentou curso superior de graduação e finalizou matérias de períodos letivos diferentes, mas não concluiu, pelo menos, 
>   todas as matérias do primeiro ano letivo, deve-se assinalar o código “**01 - Nenhum**”, pois não concluiu o primeiro ano. 

> **Atenção**
>
> Para a pessoa que frequentou curso superior de graduação sem alcançar a sua conclusão, mas finalizou matérias de períodos letivos diferentes, assinale o último ano letivo em que concluiu todas as matérias. 
>

> **Exemplo**
>
> **Considere as situações relacionadas com o quesito 12.09 para “cursos organizados em trimestres, quadrimestres e semestres” e veja como o Recenseador deve proceder nestes casos: **
>
> **Trimestres**: 
>
> - Para a pessoa cujo último trimestre concluído, com aprovação, foi o 4º, 5º, 6º ou 7º (concluiu, no máximo, o correspondente ao 1º ano). Para essa pessoa, deve ser assinalado o código **02 – Primeiro**. 
>
> - Para a pessoa cujo último trimestre concluído, com aprovação, foi o 8º, 9º, 10º ou 11º (concluiu, no máximo, o correspondente ao 2º ano). Para 
>   essa pessoa, deve ser assinalado o código **03 - Segundo**. 
>
> **Quadrimestres**: 
>
> - Para a pessoa cujo último quadrimestre concluído, com aprovação, foi o 3º, 4º ou 5º, isto é, não chegou a concluir o segundo ano, deve ser 
>     assinalado o código **02 – Primeiro**. 
> - Para a pessoa que concluiu, com aprovação, no máximo, o 2º quadrimestre, deve ser assinalado o código **01 - Nenhum**, pois não  chegou a concluir o primeiro ano. 
> - Para a pessoa cujo último quadrimestre concluído, com aprovação, foi o 6º, 7º ou 8º, isto é, não chegou a concluir o terceiro ano, deve ser 
>     assinalado o código **03 – Segundo**. 
>
> **Semestres**: 
>
> - Para a pessoa cujo último semestre concluído, com aprovação, foi o 1º, isto é, não chegou a concluir o primeiro ano, deve ser assinalado o 
>     código **01 – Nenhum**. 
> - Para a pessoa que concluiu com aprovação o 2º semestre, deve ser assinalado o código **02 - Primeiro**, pois ela concluiu o primeiro ano. 
> - Para a pessoa cujo último semestre concluído, com aprovação, foi o 5º, isto é, não chegou a concluir o terceiro ano, deve ser assinalado o código **03 – Segundo**. 



> **Atenção**
>
>  O curso de mestrado deve ser considerado como concluído se a pessoa já tiver a posse do título de mestre ou aprovação da dissertação, ainda que o diploma não tenha sido expedido. 
>



> **Atenção**
>
>  O curso de doutorado deve ser considerado como concluído se a pessoa já tiver a posse do título de doutor ou aprovação da tese, ainda que o diploma não tenha sido expedido. 



#### 12.08 - A duração deste curso que frequentou era de:

Conforme o caso registre:

- **1 - 8 séries**: Para a pessoa que frequentou curso regular do ensino fundamental com duração de 8 séries. Se essa opção for assinalada, será perguntada a última série concluída com aprovação (quesito 12.10) e se concluiu este curso (quesito 12.11).
- **2 - 9 anos**: Para a pessoa que frequentou curso regular do ensino fundamental com duração de 9 anos, ou seja, que já está enquadrado na mudança estabelecida na Lei nº 11.274, de 6 de fevereiro de 2006. Se essa opção for assinalada, será perguntado o último ano concluído com aprovação (quesito 12.09) e se concluiu este curso (quesito 12.11).

Este quesito é aplicável a todas as **pessoas que não frequentam escola, mas já frequentaram anteriormente**.




#### 12.12 - Qual foi o curso superior de graduação que concluiu?

Essa pergunta será feita para:

- pessoas que frequentam escola e já concluíram um curso superior de graduação. Assim, responderão a esse quesito todos que frequentem curso superior de graduação e que já tenham concluído anteriormente outro curso superior de graduação. Também responderão a esta pergunta as pessoas que declararem que estão cursando especialização (lato sensu), mestrado ou doutorado. 
- pessoas que não frequentam escola, mas concluíram um curso superior de graduação. Assim, daqueles que afirmaram terem frequentado escola, responderão esse quesito todos que concluíram curso superior de graduação, incluindo quem frequentou e/ou concluiu especialização, mestrado ou doutorado, devendo especificar qual o nome do curso superior de graduação concluído. 

No aplicativo de coleta será exibido um combo com os nomes dos cursos superiores de graduação para que seja assinalado o nome do curso concluído. À medida que for sendo digitado o nome do curso, será exibida a relação dos cursos existentes com as letras digitadas. 

Caso não encontre o curso declarado, escreva o nome do mesmo no espaço apropriado.

> **Exemplo**
>
> **Cursos superiores de graduação: **
>
> Engenharia de Sistemas, Engenharia Civil, História do Brasil, Medicina, Geografia, Direito, Administração, Gestão Ambiental, Biologia, Economia etc.

> **Atenção**
>
> Caso não encontre o curso declarado, escreva o nome do mesmo no espaço apropriado.



## 4.10. Deslocamento para estudo



 A finalidade deste tema é levantar informações sobre o deslocamento cotidiano de pessoas para a frequência à escola ou creche. Este deslocamento pode ser dentro do município, entre diferentes municípios ou países estrangeiros.

O bloco é aplicável para **pessoas que frequentam escola**.

>  **Atenção**
>
> Considerar como local de estudo: colégio, escola, creche, universidade, instituto técnico etc. Para o ensino a distância (EAD), considerar o polo do EAD. 
>
> A informação sobre deslocamento deve ser sobre o curso que se declarou frequentar no quesito 12.03. 
>
> Se houver mais de um local de estudo neste curso, responda sobre o trajeto que realiza mais vezes.



### 13.01 - Em que município ou país estrangeiro estuda?

**Local de estudo: colégio, escola, creche, universidade, instituto técnico etc.** 

**(Atenção: Para Ensino à Distância (EAD) considerar o polo do EAD)**

- **1 – Neste município**: Quando a pessoa estuda no município de residência atual.
- **2 – Em outro município do Brasil**: Quando a pessoa estuda em município diferente daquele em que mora, selecione o estado e o município.
- **3 – Em outro país**: Quando a pessoa estuda em país estrangeiro, selecione o nome deste país. 

   

Para quem assinalar a opção 2 do quesito 13.01, devem ser assinalados o estado e o município onde estuda. Para quem assinalar a opção 3, deve ser assinalado o país onde estuda. 

### 13.011 - Estado:

### 13.012 - Município:

### 13.013 - País:

>  **Atenção**
>
> Se não souber o estado, selecione "**Não sabe estado**". 
>
> Se não souber o município, selecione "**Não sabe município**". 
>
> Se não souber o país em que estuda, selecione "**Não sabe país estrangeiro**".



## 4.11. Trabalho e Rendimento



A pesquisa do tema trabalho e rendimento tem como objetivos:

- Conhecer a composição da força de trabalho do país, distinguindo as pessoas que procuram trabalho das que possuem trabalho.
- Identificar as principais características do trabalho, tais como: ocupação, atividade e posição na ocupação. Além disso, retratar o nível de rendimento da população: se existem, qual o valor dos rendimentos que sejam oriundos de trabalho e de outras fontes, por pessoas de 10 anos ou mais de idade. 

O bloco é aplicável para **pessoas de 10 anos ou mais de idade**.

Na investigação deste tema, serão considerados os seguintes períodos de referência: 

**SEMANA DE REFERÊNCIA** - 25 a 31 de julho de 2022. 

**MÊS DE REFERÊNCIA** - julho de 2022. 

Para o Censo Demográfico 2022, considera-se como trabalho em atividade econômica o exercício de:

- **1 - trabalho remunerado**;
- **2 - trabalho sem remuneração**;
- **3 - trabalho na produção para o próprio consumo**.

**Não considerar** trabalho voluntário e afazeres domésticos (dona(o) de casa). 

Agora vamos entender esses conceitos.



### 4.11.1. Trabalho remunerado

Ocupação remunerada em:

- dinheiro;
- produtos;
- mercadorias;
- benefícios (moradia, alimentação, roupas, treinamento, etc.), na produção de bens ou serviços. 

Para trabalhadores domésticos, considera-se como trabalho remunerado apenas a ocupação que for remunerada em dinheiro ou benefícios (moradia, alimentação, roupas, treinamento, etc.), e não em produtos ou mercadorias (sacas de café, etc).



### 4.11.2. Trabalho sem remuneração

Ocupação **sem remuneração** na produção de bens ou serviços, em ajuda a morador do domicílio ou parente que pode **não morar no domicílio**.

>  **Exemplo**
>
> Uma filha pode atuar como secretária, sem remuneração, no escritório de advocacia de seus pais aos sábados, mesmo que não more com eles.



### 4.11.3. Trabalho na produção para o próprio consumo

Ocupação desenvolvida na produção de bens, destinados exclusivamente à alimentação de moradores do domicílio (de pelo menos um), exercendo algumas das seguintes atividades:

- agricultura;
- pecuária;
- produção florestal;
- extração vegetal;
- caça;
- pesca; e
- aquicultura.



### 4.11.4. Questionário de trabalho

#### 14.01 - Na última semana de julho, por pelo menos uma hora:

#### 14.011 - Trabalhou ou estagiou em alguma atividade remunerada em dinheiro?

- **1 - Sim** 
- **2 - Não**

**Assinale SIM**, caso a pessoa tenha trabalhado ou estagiado por, pelo menos, uma hora completa na semana de referência, recebendo em dinheiro. 

**Nesse item, considere também** a pessoa que trabalhou como "conta própria" ou empregador, por pelo menos uma hora completa durante a semana de referência, e que tenha recebido clientes nesse período.

> **Atenção**
>
> Considere também o trabalho na roça, criação de animais, caça, pesca, extração vegetal, artesanato, quando destinados à venda. 

E **registre ainda** o "conta própria" ou empregador que **não tenha recebido** clientes/fregueses, mas que tenha ficado à disposição (oferecendo os seus serviços), por pelo menos uma hora completa durante a semana de referência, se atender aos seguintes critérios da quantidade de dias em que ficou à disposição:

1. Se possuir **um estabelecimento em funcionamento** para exercer a sua atividade: **qualquer** que seja a quantidade de dias.
2. Se **não** possuir um **estabelecimento em funcionamento** para exercer a sua atividade: durante o período de até **30 dias**.

>  **Exemplo**
>
> Celso é pedreiro e estava à disposição para exercer o seu trabalho. Porém, por uma razão excepcional, não teve clientes na semana de referência. Podemos considerar que ele trabalhava nesse período, mesmo sem ter recebido fregueses? Para sabê-lo, o Recenseador pergunta a Celso há quantos dias estava esperando por clientes, contando do dia 31 de julho para trás. Se ele estiver aguardando por mais de 30 dias, não será considerado como pessoa que exercia atividade remunerada em dinheiro. Celso responde que estava há 20 dias sem conseguir trabalho. Logo, segundo os critérios do Censo, podemos considerar que Celso trabalhava durante a semana de referência -- pois não estava esperando clientes por mais de **30 dias**.

**Assinale NÃO**, 

- Para a pessoa que não tinha trabalho remunerado;
- Para a pessoa que tinha trabalho remunerado, mas não o exerceu durante ao menos uma hora completa na semana de referência;
- Para a pessoa que tinha trabalho remunerado, oferecendo-o por pelo menos uma hora na semana de referência, sem exercer a sua atividade em um estabelecimento, mas que ultrapassou os 30 dias à espera de cliente.



#### 14.012 - Trabalhou ou estagiou em alguma atividade remunerada de outra forma que não dinheiro?

>  **Exemplo**
> Produtos, mercadorias, moradia, alimentação, treinamento ou aprendizado etc.


- **1 - Sim**
- **2 - Não**

**Assinale SIM**, caso a pessoa tenha trabalhado ou estagiado recebendo em produtos, mercadorias, moradia, alimentação, treinamento ou aprendizado etc. 

**Assinale NÃO**, para a pessoa que não tinha trabalho remunerado na semana de referência, assim como para a pessoa que tinha, mas não o exerceu durante ao menos uma hora completa na semana de referência. 

**Assinale NÃO** caso a pessoa não tenha trabalhado ou estagiado recebendo em produtos, mercadorias, moradia, alimentação, treinamento ou aprendizado.

> **Exemplo**
>
> Justino faz estágio **não remunerado em dinheiro**, mas exclusivamente por **treinamento e aprendizado**. Essa informação será captada neste quesito.



#### 14.013 - Fez algum bico ou trabalho ocasional remunerado?

- **1 - Sim**
- **2 - Não** 

Considere a pessoa que exerceu alguma atividade ocasional, sem vínculo empregatício, tal como trabalho eventual, bico ou aquela definida por qualquer outro termo que caracterize um trabalho exercido sem continuidade, apenas como maneira de obter alguma remuneração imediata. 

**Assinale SIM**, para a pessoa que exerceu trabalho ocasional remunerado, por pelo menos uma hora completa na semana de referência. 

**Assinale NÃO**, para a pessoa que não exerceu trabalho ocasional remunerado ou, então, o exerceu menos de uma hora completa na semana de referência.

> **Atenção**
>
> Bico é qualquer atividade remunerada que seja temporária ou ocasional.

> **Atenção**
>
> Às vezes, a pessoa não considera que está trabalhando por ter apenas um trabalho ocasional (e não um trabalho formal). Isto é , por fazer apenas pequenos serviços, chamados de "bicos".



#### 14.014 - Ajudou sem receber pagamento no trabalho remunerado de algum morador do domicílio ou parente?

> **Atenção**
>
> O trabalho não remunerado na ajuda à atividade econômica de algum morador do domicílio ou parente ocorre em qualquer atividade, ainda que seja mais comumente encontrado em atividades da agricultura, pecuária e pesca. Este parente não precisa ser morador do domicílio. 

**Não considere** o cuidador de pessoas do domicílio ou de parentes que residiam em outro domicílio, sem remuneração, pois esta atividade constitui trabalho voluntário.

>  **Exemplo**
>
> - Um enteado pode atuar como auxiliar de escritório, sem remuneração, no escritório de contabilidade de seu padrasto; e
>
> - Um filho que mora com os pais e ajuda a avó que é horticultora, como trabalhador de enxada, sem remuneração, na zona rural do município onde ela é moradora.

> **Atenção**
> É necessária muita atenção para captação de trabalho no Censo Demográfico  2022. Muitas vezes, as pessoas não entendem que as tarefas que elas exercem são consideradas como trabalho. Um exemplo disso é o caso do trabalho não remunerado.



#### 14.015 - Estava temporariamente afastado de algum trabalho remunerado? 

- **1 - Sim**
- **2 - Não** 

**Assinale SIM**, se a pessoa estava temporariamente afastada de algum trabalho remunerado por motivo de férias, doença, falta ou jornada de trabalho variável.

> **Atenção**
>
> Os motivos para afastamento temporário incluem férias, doença, falta, jornada de trabalho variável.

> **Exemplo**
>
> **Considere as situações relacionadas com o quesito 14.015 "Estava temporariamente afastado de algum trabalho remunerado?" e veja como o Recenseador deve proceder nestes casos:**
>
> - Uma pessoa trabalhava embarcada durante 15 dias e folgava durante outros 15 dias. Durante a semana de referência, ela estava no período de folga. Nesse caso, assinale a **opção 1 - SIM**.
> - Uma pessoa trabalhava como diarista 1 vez a cada 15 dias. Durante a semana de referência, estava de folga. Neste caso, assinale a **opção 1 - SIM**.
> - Se, na semana de referência, o conta própria ou empregador não puderam trabalhar por motivo de doença, assinale a **opção 1 - SIM**.
> - O trabalhador se encontra em greve, junto à sua categoria respectiva. Assinale, então, a **opção 1 - SIM**.



#### 14.016 - Trabalhou para alimentação dos moradores do domicílio na roça, criação de animais, pesca, extrativismo, caça?

- **1 - Sim**
- **2 - Não** 

**Trabalho na produção para consumo próprio e dos moradores do domicílio** é a ocupação voltada à produção de bens que têm como 
finalidade a alimentação dos moradores do domicílio (de pelo menos um morador) – ocupação que se relaciona com as seguintes atividades: 

- agricultura;
- pecuária;
- produção florestal;
- extração vegetal;
- caça;
- pesca; e
- aquicultura. 

**O trabalho de cultivo, criação de animais, caça, pesca e extração vegetal para produzir alimentos destinados para o consumo dos moradores do domicílio** pode ser desenvolvido até em áreas relativamente pequenas, mas que sejam suficientemente adequadas, por exemplo, para 
a criação de algumas galinhas ou uma pequena horta. Note que, em casos em que parte da produção dessas atividades é vendida, a ocupação dos responsáveis passa a ser caracterizada como trabalho remunerado (mesmo que a parte da produção vendida seja pequena). 

Considere nesta opção o trabalho na roça, criação de animais, pesca, caça, extração vegetal e artesanato quando destinados à troca direta. 

>  **Atenção**
>
> Se uma parte, mesmo que pequena, for vendida, passa a ser trabalho remunerado. 

Em algumas áreas indígenas e quilombolas, pode haver uma dificuldade maior de reconhecer as atividades na produção para próprio consumo como trabalho e, também, as desenvolvidas em emprego sem carteira de trabalho assinada ou por conta própria. 

Os rendimentos de trabalho mais comuns desta população provêm das atividades de:

- Cultivo (chamada geralmente de roça);
- Criação de animais;
- Caça, pesca ou extração vegetal;
- Artesanato de forma individual ou em grupo. 

Portanto, é importante distinguir quando esta produção de cultivo, criação de animais, caça, pesca e extração vegetal se destina somente para o consumo do grupo familiar, ou se é usada para venda, como ocorre com o artesanato.

> **Saiba Mais**
>
> No caso de sua área de trabalho ser indígena ou quilombola, consulte o **Manual do Recenseador Povos e Comunidades Tradicionais (PCT)** para mais informações.



#### 14.02 - Quantos trabalhos tinha na última semana de julho?

- **1 - Um**
- **2 - Dois**
- **3 - Três ou mais** 

Esta pergunta procura quantificar o **número de trabalhos que a pessoa tinha na semana de referência**, independentemente de ter exercido o(s) seu(s) trabalho(s). Contudo, para definirmos quantos trabalhos a pessoa ocupada possui e identificar qual é o principal dentre eles, precisamos considerar a definição de negócio/empresa. 

**NEGÓCIO/EMPRESA** é a instituição, entidade, firma etc., ou ainda, o trabalho sem estabelecimento desenvolvido individualmente ou com a ajuda de outras pessoas (empregados, sócios e/ou trabalhadores não remunerados). 

A definição de negócio/empresa contribui para determinar quantos trabalhos a pessoa ocupada possui, pois as atividades realizadas por meio de um negócio ou empresa são consideradas como um único trabalho, independentemente de serem exercidas em mais de um estabelecimento ou para mais de um cliente. 

Mas observe que uma pessoa pode possuir mais de um negócio/empresa de áreas diferentes. 

Veja a seguir como pode ser constituído um **negócio/empresa**. 

- Um único estabelecimento
- Dois ou mais estabelecimentos
- Não ter estabelecimento



**Casos especiais**:

Caso a pessoa exerça **serviço doméstico remunerado**, por convenção, essa ocupação será considerada como **um único trabalho**, mesmo que a pessoa o exerça em mais de um local. Afinal, ela está exercendo a **mesma ocupação**, mesmo que em lugares diferentes. 

A ocupação com atividade de **agricultura, silvicultura, pecuária, extração vegetal, pesca ou piscicultura** (ou em um de seus serviços auxiliares), exercida por um empregado temporário, será considerada como um **único trabalho**, independentemente de se vincular a **diversos** negócios/empresas e a **diferentes empregadores**. 

A pessoa com mais de um contrato (ou vínculo) para lecionar na mesma área (federal, estadual ou municipal) do ensino público será considerada como tendo **tantos trabalhos** quantos forem os **contratos ou vínculos (matrículas)**, embora exercidos no mesmo negócio/empresa. 

É importante considerar as seguintes situações na definição do número de trabalhos (negócios/empresas) que uma pessoa conta própria ou empregadora explorava: 

- um empreendimento explorado que não envolve a participação de sócios e outro empreendimento explorado que envolve uma sociedade com um ou mais indivíduos constituem empreendimentos distintos, mesmo que a atividade econômica seja a mesma nos dois empreendimentos; 
- dois empreendimentos explorados, cada um com um sócio diferente, constituem empreendimentos distintos, mesmo que a atividade econômica seja a mesma nos dois empreendimentos. 

> **Exemplo**
>
> Uma pessoa possui duas farmácias, uma explorada em sociedade e a outra não. Essa pessoa será considerada como tendo **dois trabalhos**, assim como uma pessoa que tem duas farmácias exploradas em sociedade com sócios diferentes em cada uma delas. 

Considere que a pessoa explorava mais de um negócio/empresa quando for possível separar para cada um deles:

- o rendimento de trabalho;
- o pessoal que ocupava;
- as receitas;
- as despesas, tais como: pagamento de empregados, impostos, ferramentas, aluguel, maquinaria, energia elétrica, combustíveis, material de trabalho em geral etc.;
- os investimentos.

>  **Exemplo**
>
> Uma pessoa tem um restaurante que funciona para almoço durante a semana. Nos finais de semana, aluga as cadeiras e as mesas do restaurante para festas, usando os próprios empregados para realizar as entregas. Dessa forma, essa pessoa possui apenas 1 trabalho. 

Após entender o que é um negócio/empresa e definir quantos trabalhos a pessoa possuía na semana de referência, deve-se definir o trabalho principal, pois é sobre este trabalho que a pessoa irá responder as perguntas a seguir. 

Para a pessoa que, na semana de referência, era ocupada em mais de um trabalho, ou seja, trabalhava em mais de um negócio/empresa, o trabalho principal será definido segundo a ordem de critérios especificada a seguir:

>  **Atenção**
>
> Considerar como trabalho principal aquele que a pessoa: 
>
> 1. Dedicou mais horas; ou, em caso de igualdade no número de horas; 
> 2. Tinha maior rendimento; ou, em caso de igualdade no rendimento; 
> 3. Estava há mais tempo.



#### 14.03 - Qual era a ocupação, cargo ou função que tinha nesse trabalho?

##### Informações gerais

Objetiva investigar a ocupação que a pessoa exercia no trabalho que tinha na semana de referência. Esse trabalho pode ser o único trabalho da pessoa ou o **trabalho principal**. Para a pessoa que estava temporariamente afastada do trabalho na semana de referência, o registro deve referir-se à ocupação que a pessoa exercia habitualmente, respeitando os critérios de definição do trabalho principal. 

Deve ser registrada a ocupação que a pessoa exercia na semana de referência, inclusive aquelas que trabalhavam como: estátuas vivas, malabaristas em semáforos (sinais de trânsito), músicos de rua, serviço de limpeza de para-brisas, serviço de guarda de veículos (flanelinha), produção de alimentação para terceiros (salgadinhos, quentinhas etc.), cuidador de crianças ou idosos em troca de pagamento, vendedores (em sinais, engarrafamento, etc.).

> **Atenção**
>
> Ocupação é a função, cargo, profissão ou ofício que a pessoa exercia no negócio/empresa. A ocupação não deve ser confundida com a formação profissional.

- Uma pessoa formada em medicina pode trabalhar como professor do ensino superior, diretor de hospital, secretário municipal de saúde etc.

- Uma pessoa com diploma de técnico agrícola pode trabalhar como agricultor, instrutor agrícola, administrador de fazenda etc.

>  **Atenção**
>
> A ocupação não deve ser confundida com a **Categoria profissional**. Dentro de cada categoria profissional existem vários cargos e funções possíveis.

> **Exemplo**
>
> - **Bancário** é um registro errado, o registro correto deve ser: caixa de banco, gerente de banco, analista de sistemas, avaliador de imóveis etc.
> - **Comerciário** é um registro errado, o registro correto deve ser: balconista de loja, motorista de caminhão, auxiliar de contabilidade, vitrinista, repositor etc.
> - **Industriário** é um registro errado, o registro correto deve ser: engenheiro mecânico, torneiro mecânico, operador de empilhadeira, almoxarife etc.

> **Atenção**
>
> Após a coleta, na fase de codificação, cada ocupação recebe um código único de acordo com o cargo ou função que a pessoa exerce, por isso, a ocupação deve ser registrada de forma **suficientemente específica, detalhada**, a fim de permitir a sua correta classificação. Registros vagos ou genéricos impossibilitam classificar adequadamente a ocupação que a pessoa exercia. 



Algumas ocupações merecem uma atenção especial em seu registro.



##### **Trabalhador Doméstico**

Considere como Trabalhador doméstico a pessoa que **presta serviço doméstico remunerado** em uma ou mais unidades domiciliares.

> **Atenção**
> Não considere a faxineira de escritório como trabalhadora doméstica.

> **Atenção**
> Caseiro de sítio é diferente de encarregado de fazenda. **Os caseiros são trabalhadores domésticos**, portanto **devem ser incluídos** neste grupo de profissionais. Eles cuidam de sítios, chácaras, casas de praias, chalés etc., ou seja, de espaços de lazer. Suas tarefas podem incluir limpar o quintal, podar árvores, plantar e cuidar das plantas e de animais domésticos etc. A natureza dessas tarefas é doméstica. **Não altera** o fato de que ele exerce um **trabalho doméstico**. 
>
> Se o sítio tiver produção comercial de produtos agrícolas ou criação de animais, trata-se de um empreendimento agrícola, e o trabalhador envolvido nessas atividades não será caseiro. Nesse caso poderá ser encarregado de fazenda, capataz, vaqueiro etc.



##### **Militares (Forças Armadas, Polícia Militar e Corpo de Bombeiros Militar)**

Os militares do Exército, Marinha ou Aeronáutica, Polícia Militar e Corpo de Bombeiros Militar devem ser registrados por sua patente (soldado, cabo, tenente, general etc.) e a área militar a que pertencem, independentemente das tarefas que desempenhavam de acordo com a formação educacional ou qualificação profissional.

> **Exemplo**
> - Um Major da Aeronáutica que é professor no Instituto Tecnológico da Aeronáutica - ITA deve ser registrado como **Major da Aeronáutica**;
>  Um capitão da Polícia Militar exercia a função de médico militar. Esta pessoa deve ser registrada como Capitão da Polícia Militar.



##### **Gestores (administradores, gerentes, diretores etc.)** 

A palavra "Administrador" pode ter dois sentidos distintos para a classificação de ocupações: 

- Pessoa que gerencia o empreendimento (a fazenda, a loja, o restaurante, a fábrica etc.) ou uma área do empreendimento (departamento de vendas de uma fábrica, serviço de pessoal de supermercado etc.) em que trabalha.
- Pessoa que trabalha na profissão de administrador de empresas (nível superior).


> **Exemplo**
>
> Os irmãos Aureir e João se declararam como Administradores. O Recenseador, sabendo que existem vários tipos de administradores, fez as perguntas de cobertura (perguntas espontâneas de esclarecimento) e descobriu que o Aureir administra a fazenda da família e João administra o laticínio que funciona dentro do estabelecimento agropecuário. Dessa forma, ele registrou: 
>
> Aureir - **Administrador de fazenda**. 
>
> João - **Administrador de laticínio**. 



##### **Outros tipos de gestores**

- **Gerente** de banco, de loja, de bar etc.;
- **Diretor** comercial, de escola, financeiro etc.;
- **Supervisor** de obras, de vendas, pedagógico etc.

> **Atenção**
>
> Não existe gerente que não tenha pessoas para gerenciar, por exemplo, um trabalhador por conta própria não pode se declarar Gerente de loja. 
>
> Pequenos comerciantes em lojas que têm envolvimento direto nas tarefas deverão ser registrados como: Comerciante em loja.



##### **Professores e profissionais do ensino** 

Os professores devem ser registrados de acordo com a sua área de atuação:

>  **Exemplo**
>
> **Professor** de ensino fundamental, de ensino médio, de ensino superior, na educação infantil, de inglês, de música, de religião etc.

>  **Atenção**
>
> Professores da Educação de Jovens e Adultos (EJA) e da Educação Especial devem ser enquadrados como **professores do Ensino Fundamental ou do Ensino Médio**.



##### **Técnicos em geral** 

Técnico é um profissional de nível médio com conhecimentos teóricos e práticos em diversas atividades do setor produtivo. Em geral, esse profissional domina o uso de diversas ferramentas, que lhe permitem executar a técnica em questão.

>  **Exemplo**:
>
> **Técnico** de enfermagem, em computação, administrativo, em refrigeração, judiciário etc.



##### **Profissionais do atendimento ao público**

Os profissionais responsáveis pelo atendimento ao público, de tipo pessoal ou telefônico, são responsáveis por garantir o suporte necessário ao cliente ou público em geral. Estes profissionais esclarecem dúvidas ou fazem registros de reclamações, em sua rotina. No questionário, eles devem ser registrados de acordo com as funções específicas que executam dentro da área de atendimento ao público.

> **Exemplo**
>
> - **Atendente** de telemarketing, atendente de serviço de informações etc.; 
> - **Recepcionista** de hotel, de hospital, de consultório médico etc.; 
> - **Telefonista**; 
> - **Vendedor** por telemarketing.



##### **Artesãos**

O artesão é um profissional que fabrica produtos através de um processo manual ou com auxílio de ferramentas. Sua profissão exige regularmente algum tipo de habilidade ou conhecimento especializado na sua prática. Eles devem ser registrados de acordo com o material que utilizam na fabricação do artesanato.

> **Exemplo**
> - Artesão de madeira, de palha, de tecidos, etc. 
> - Artesã de cerâmica, de couro, de pedra etc.; 
> - Bordadeira, crocheteira, tecelã, ceramista etc.



##### **Profissionais do vestuário (costureiras, alfaiates, modistas etc.)**

Dentro dos profissionais do vestuário estão aqueles que operam máquinas de costura convencionais e especiais, inclusive aqueles que criam roupas masculinas e calçados de forma artesanal e sob medida, além dos profissionais que desenvolvem trabalho de alta costura (roupas femininas sofisticadas, originais e exclusivas).

> **Exemplo**
> - **Costureira** sob medida, costureira modista, costureira de peças etc.; 
> - **Alfaiate**; 
> - **Sapateiro**.



##### **Profissionais dos transportes**

Entre os profissionais dos transportes temos:

- **Motorista** de ônibus, de van, de caminhão, de táxi; 
- **Motoboy**, **mototaxista**; 
- **Manobrista** de automóveis; 
- **Piloto** de avião, de barco etc.
- **Maquinista** de trem etc.

> **Atenção**
> O motorista particular que leva e busca o patrão ou os membros da família a compromissos é considerado empregado doméstico.



##### **Mecânicos**

Mecânico é um profissional especializado na manutenção preventiva, na reparação e ocasionalmente, na modificação de máquinas, motor e outros equipamentos mecânicos.

> **Exemplo**
> Mecânico de automóveis, industrial, de máquinas pesadas, torneiro mecânico etc.



##### **Operadores de máquinas**

Em geral, um Operador de máquinas trabalha na linha de produção, desenvolvendo várias funções, desde inserir os componentes nas esteiras de produção, retirando e embalando o produto até operar máquinas responsáveis pela manufatura de matérias-primas em bens de consumo. Esses profissionais serão classificados de acordo com a máquina que operam.

> **Exemplo**
> Operador de máquina agrícola, de máquina fotocopiadora, de empilhadeira, de terraplanagem, de retroescavadeira etc.



##### **Trabalhadores da agropecuária, pesca, extração vegetal**

Os Trabalhadores da agropecuária são responsáveis pelo trabalho de criação e tratamento de animais e da cultura agrícola, desde a preparação do solo, até a armazenagem, valendo-se de equipamentos e processos adequados. Estão incluídos neste grupo os pescadores e os extrativistas vegetais.

> **Exemplo**
> Entre os profissionais da agropecuária encontramos: 
>
> - **Agricultor**; 
> - **Capataz** de fazenda; 
> - **Criador** de gado; 
> - **Cortador** de cana; 
> - **Horticultor**; 
> - **Pescador** artesanal etc.



##### **Trabalhadores da construção civil**

São trabalhadores responsáveis pela confecção de obras como casas, edifícios, pontes, barragens, fundações com máquinas, estradas, aeroportos e outras infraestruturas, onde participam diversos tipos de profissionais. Estes profissionais executam todas as etapas do projeto, da fundação ao acabamento, obedecendo ao que consta em projeto, respeitando as técnicas construtivas e as normas técnicas vigentes.

> **Exemplo**
>
> Entre os profissionais da construção civil encontramos: 
>
> - **Pedreiro**; 
> - **Servente** de pedreiro; 
> - **Pedreiro** azulejista; 
> - **Mestre de obras**; 
> - **Pintor** de paredes etc.



##### **Trabalhadores do comércio**

Quando falamos de profissionais ligados ao comércio, estamos falando do comércio externo, de porta em porta, por catálogo, em loja etc. Para a correta classificação deste profissional, devemos registrar sua ocupação pela forma como é realizada a venda ou por sua ocupação.

> **Exemplo**
>
> **Balconista** de loja, **comerciante** em loja, **operador de caixa**, vendedor **ambulante**, vendedor **externo**, vendedor **por catálogo**, vendedor **de porta em porta**, vendedor de **loja** etc. 

Não considere o feirante como vendedor ambulante, pois ele vende seus produtos em áreas públicas ou em locais mais estruturados como mercados municipais, pavilhões etc.

>  **Atenção**
>
> Vendedor externo não é vendedor ambulante, pois são ligados a uma fábrica, uma loja, a produção caseira etc.



##### **Trabalhadores do serviço de alimentação**

O trabalhador do ramo da alimentação pode ser desde o cozinheiro até o atendente.

> **Exemplo**
> **O cozinheiro, o cantineiro, o garçom, o merendeiro, o chapeiro** etc.



##### **Profissionais da saúde**

Entre os profissionais da área de saúde encontram-se ocupações de nível superior e nível médio. Envolve a prestação de cuidados aos pacientes, coleta e análise de amostras (exames), além dos profissionais envolvidos na medicina veterinária. Para a correta classificação destes profissionais, devemos registrar também a sua especialidade. Os demais profissionais da saúde devem ser registrados por sua ocupação.

> **Exemplo**
>
> - **Agente de saúde**; 
> - **Dentista**; 
> - **Fisioterapeuta**; 
> - **Médico** pediatra, cardiologista, ortopedista, clínico geral etc.; 
> - **Veterinário** etc.



##### **Profissionais da segurança**

Entre os profissionais da segurança encontramos os policiais civis que se destinam a apurar infrações penais fazendo investigações de campo, efetuando prisões e reunindo evidências para a documentação do escrivão, visando a abertura do inquérito policial. Junto a esses profissionais também se encontram os responsáveis por zelar pela guarda do patrimônio, promover a segurança de clientes, de empresas e de residências.

>  **Exemplo**
>
> - **Delegado de polícia**; 
> - **Perito criminal**; 
> - **Vigia**; 
> - **Vigilante**; 
> - **Segurança** de patrimônio etc.



##### **Ajudantes e auxiliares dos serviços, em geral**

Muito cuidado ao registrar esses profissionais, pois eles estão presentes na maioria das categorias profissionais. Todo o registro deve conter a característica do trabalho deste profissional.

> **Exemplo**
>
> - Auxiliar de contabilidade
> - Auxiliar de limpeza
> - Ajudante de vaqueiro
> - Auxiliar de costura
> - Ajudante de caminhão 
> - Ajudante de carga e descarga
> - Ajudante de eletricista
> - Auxiliar administrativo
> - Ajudante de cozinha
> - Auxiliar de enfermargem
> - Ajudante de mecânico de automóveis
> - Ajudante de professor

> **Atenção**
>
> **Nunca registre uma ocupação como autônomo**. O profissional autônomo é uma pessoa que trabalha por conta própria, isto é, não é empregado de ninguém. Para desempenhar essa função, não há exigência obrigatória de qualificação profissional. Esse registro é genérico e não poderá ser codificado posteriormente. O correto é fazer o registro da tarefa que o profissional realmente executa.



##### **Estagiários**

Estagiários são estudantes em busca de aprimoramento profissional na sua área de estudo ou cumprindo um período de estágio obrigatório para obtenção do diploma. Para o estagiário de nível superior, é necessário indicar o curso respectivo. Para o estagiário de nível médio, deve-se colocar a função exercida.

>  **Exemplo**
>
> Nível superior: estagiário de economia, de arquitetura, de contabilidade etc. 
>
> Nível médio: técnico de enfermagem, técnico em radiologia, técnico judiciário etc.

> **Atenção**
>
> Empregado do setor público cedido, o registro deve indicar a ocupação exercida no empreendimento ao qual estava cedido. 
>
> Para a pessoa que estava afastada de um trabalho, exercendo mandato eletivo, o registro deve ser do cargo eletivo. (Vereador, Prefeito etc.)



#### **14.04 - Qual era a principal atividade do negócio ou empresa em que tinha esse trabalho?**

##### Informações gerais

Esse quesito busca identificar a principal atividade em que a pessoa trabalhava na semana de referência. Ou seja, a principal finalidade ou o principal ramo do empreendimento em questão: negócio, firma, instituição, empresa ou entidade.

- Para as **empresas**, a atividade principal é o **produto ou serviço** que proporciona maior rendimento ao empreendimento.
- **Para a pessoa que era ocupada no setor agrícola**, deve ser registrada a **atividade principal** do empreendimento.
- Para a pessoa que trabalhava em empreendimento que explora mais de uma atividade agrícola, registre a sua **atividade principal**. Não esqueça de fazê-lo **para todos os que trabalham no empreendimento**.
- **No caso do empreendimento que exerça atividade "agrícola" e "industrial"** registre a atividade para a qual a pessoa foi **alocada**.
- **Caso a pessoa trabalhe tanto na atividade agrícola quanto na industrial**, ela deverá ser registrada naquela que for a **atividade principal**. 


> **Exemplo**
>
> - Para a pessoa que trabalhava em empreendimento com mais de uma atividade do mesmo tipo de produção (empreendimentos 1 e 2), o **registro deve ser a atividade principal** do empreendimento, independentemente de qual for a atividade diretamente vinculada à pessoa.
> - Para os casos em que o empreendimento exerça atividades "agrícola" e "industrial" (empreendimento 3), registre a atividade com qual a **pessoa está trabalhando**. Caso a pessoa trabalhe nas duas atividades, **registre a atividade principal**.

> **Atenção**
>
> Para a pessoa que trabalha por conta própria, registre a **natureza da atividade** exercida **na semana de referência**, respeitando os critérios de definição do **trabalho principal**. 

Nem sempre há relação direta entre a ocupação da pessoa e a atividade do empreendimento em que trabalha. **Por exemplo: cozinheiro numa fazenda de cultivo de soja, médico do trabalho na indústria siderúrgica e analista de sistemas numa emissora de televisão.**

> **Atenção**
>
> A **ocupação é uma característica relacionada à pessoa** e a **atividade é uma característica relacionada ao empreendimento** com o qual a pessoa tinha vínculo de trabalho. 
>
> Algumas ocupações são típicas de determinadas atividades, mas não exclusivas. Um motorista de caminhão pode exercer sua ocupação em uma empresa de transporte rodoviário de cargas, em um laticínio, ou em uma fazenda de cultivo de bananas.

> **Exemplo**
>
> - Para **empregados** (com ou sem carteira assinada, militares ou regidos pelo regime dos funcionários públicos), registre a **atividade principal** do empreendimento que o contratava ou ao qual estava vinculado.
> - Para os **empregadores** e trabalhadores por **conta própria**, registre a principal atividade do seu empreendimento. 
> - Para os trabalhadores **não remunerados**, registre a atividade principal do empreendimento d**a pessoa para a qual trabalhava sem remuneração**. 
> - Para os trabalhadores na **produção para o próprio consumo**, registre a atividade principal à qual se dedicava com a finalidade de produzir alimentos para o próprio consumo domiciliar.



Veja como registar corretamente as atividades a seguir:



##### **Atividades da agropecuária, extração vegetal e pesca**

Esse grupo é caracterizado por um conjunto de atividades primárias, estando diretamente associada ao cultivo de plantas (agricultura) e à criação de animais (pecuária), extração de produtos vegetais e pesca. Essas atividades são exercidas há milhares de anos, sendo de fundamental importância para a sobrevivência humana. 

Para o pescador conta própria, deverá ser registrada a atividade "**pesca**", mesmo se ele comercializava o peixe. O registro de "**comércio de peixe**" somente deverá ser feito no caso da pessoa que apenas **compra** e **revende** o peixe. 

Quase toda atividade agrícola envolve algum tipo de comercialização da produção. Ainda assim, deve-se registrar a atividade como **cultivo** e não como **comércio** deste produto. 

Na parte da agricultura, temos os trabalhadores que estão envolvidos em preparar o solo para plantio em áreas de terceiros. Isto é, em preparar o solo para o plantio de produtos agrícolas. Logo, se a pessoa era [1] empregada de um empreendimento que prestava serviço de **preparo do solo para plantio de produtos agrícolas** e [2] era enviada para exercer sua ocupação em estabelecimentos agrícolas, ela deve ter a sua atividade registrada como **serviço de preparo do solo para plantio de produtos agrícolas**.

> **Exemplo**
>
> Uma fazenda produz leite e café, sendo o café a principal atividade. Nesse caso, mesmo que a pessoa trabalhe, exclusivamente, no trato dos animais ou na ordenha, o registro de atividade deve ser cultivo de café.

> **Atenção**
>
> Se expressão genérica "Granja" for utilizada pelo informante, ele deve especificar se se refere à criação de aves ou de suínos (porcos). 

Não registre também outras expressões genéricas, como: "agricultura", "agropecuária", "catador", nem "roça" ou "fazenda". O correto é especificar: 

- **Cultivo de arroz, feijão, soja etc.;** 
- **Criação de aves, porcos, ovelhas etc.;** 
- **Extração de coco babaçu, lenha etc.; e** 
- **Pesca artesanal**.

> **Atenção**
>
> Para a pessoa que trabalha em pequena propriedade com grande variedade de cultivos e/ou criações, onde uma pequena parte da produção é destinada à venda, não possibilitando determinar a atividade principal (aquela de maior renda), a forma correta de preenchimento é: 
>
> - Agricultura variada - para atividade de cultivo; 
> - Criação de animais - para atividade de criação; 
> - Agricultura e pecuária - para ambas as atividades; 
> 
> Mesmo que o objetivo principal dessas pequenas propriedades seja subsistência, se houve venda proveniente do cultivo ou da criação, considere o preenchimento acima.



##### **Atividades de fabricação** 

Neste grupo encontramos as atividades de confecção, produção (caseira ou industrial). Para a pessoa que trabalhava na produção caseira e comercialização da sua produção, deverá ser registrado "produção caseira de". **A pessoa só comercializa porque produz**. 

Registros corretos: 

- **Fabricação de automóveis;** 

- **Artesanato em madeira;**

- **Confecção de roupas femininas, sob medida;** 

- **Produção caseira de conservas;** 

- **Produção caseira de bolos.**

  

##### **Atividades da construção civil** 

A construção civil reúne a realização de obras como: casas, edifícios, pontes, barragens, estradas e outras infraestruturas, inclusive pintura, carpintaria e redes elétricas. 

Registros corretos: 

- **Construção de casas, estradas, barragens etc.;** 

- **Serviços de pedreiro;** 

- **Pintura de casas;** 

- **Serviço de encanador, eletricista, carpintaria etc.;** 

- **Eletricista residencial;** 

- **Manutenção de rodovias etc.**

  

##### **Atividades do comércio** 

O comércio compreende as atividades de compra e venda de mercadorias, sem transformação significativa. A venda sem transformação inclui operações (ou manipulações) que são usualmente associadas ao comércio, tais como: montagem, mistura de produtos, engarrafamento, empacotamento, fracionamento etc.

>  **Atenção**
>
> A atividade comercial está vinculada a compra e revenda de mercadoria.



###### **Comércio ambulante**

A atividade no comércio ambulante se caracteriza por não ter estabelecimento e ser realizado em vias ou áreas públicas.

> **Exemplo**
>
> - Parado em uma barraca ou banca montada em local demarcado ou não;
> - Em veículo automotor parado em via pública (caminhão, van, Kombi etc.);
> - Batendo de porta em porta para oferecer seus produtos aos clientes.
> - Andando e oferecendo sua mercadoria em ruas, praças, parques, praias, ônibus, trens etc.



###### **Empreendimentos comerciais que não são considerados como ambulantes** 

- Em lojas, quiosques, stands, boxes, postos (Mercado Municipal, etc.); 
- De venda por catálogo, telefone, Internet, televisão, etc.; e 
- No próprio domicílio ou em domicílio de cliente. 

Registros corretos: 

- **Comércio de calçados ou sapataria;** 
- **Comércio de móveis ou loja de móveis;** 
- **Supermercado, farmácia, mercearia, posto de gasolina etc.;** 
- **Comércio de cosméticos por catálogo;** 
- **Comércio de roupas pela internet;** 
- **Comércio ambulante de bijuterias.** 

No caso dos feirantes, utilize comércio de [diz o produto] em feira.



##### **Atividades de alimentação** 

Os serviços de alimentação têm como características o preparo de refeições, lanches e bebidas para consumo imediato ou encomenda. Estão envolvidos nesse segmento todos os empreendimentos que preparem alimentos diretamente para o consumidor final. 

Registros corretos: 

- **Restaurante;** 
- **Lanchonete;** 
- **Ambulante de churrasco;** 
- **Preparação de marmitas, quentinha.**



##### **Atividade de manutenção em veículos** 

A atividade de manutenção em veículos é responsável por manter os veículos em perfeitas condições ou para reparar defeitos de funcionamento. 

Registros corretos: 

- **Borracharia;** 
- **Lanternagem;** 
- **Serviço de lava-jato;** 
- **Oficina mecânica de automóveis, bicicletas, motos etc.**



##### **Atividades dos serviços de transportes** 

Compreende os transportes: rodoviário, ferroviário, aquaviário e aéreo. 

Registros corretos:

- **Empresa de ônibus;** 
- **Táxi;** 
- **Mototáxi;** 
- **Transporte rodoviário de passageiros, cargas etc.;** 
- **Transporte aéreo;** 
- **Transporte ferroviário.**



##### **Atividades ligadas ao governo e à administração pública** 

Neste conjunto de atividades, encontramos todos os órgãos da administração pública, Federal, Estadual e Municipal, ou seja, os órgãos com poder de legislar, tributar, fiscalizar e regulamentar. O servidor público pode ser cedido, transferido ou nomeado para trabalhar em outro órgão ou entidade da União, dos Estados, do Distrito Federal e dos Municípios. Nesse caso, o registro de atividade deve se referir ao trabalho no órgão público ao qual **estava cedido.**

> **Exemplo**
>
> O Servidor público municipal foi cedido ao Tribunal Regional do Trabalho - TRT para atuar como analista judiciário. O registro da atividade deve ser: **Tribunal Regional do Trabalho (TRT)**. 

A legislação prevê licença para o servidor público exercer o mandato em cargo político, sindical ou classista. Nesse caso, o registro deve ser relativo ao **mandato**.

> **Exemplo**
>
> Servidor público federal com afastamento integral para assumir cargo de vereador. O registro da atividade deve ser: **Câmara municipal**. 

Registros corretos: 

- **Prefeitura municipal;** 
- **Guarda municipal;** 
- **Polícia civil;**
- **DETRAN, IBGE, INSS, IBAMA, FUNASA etc.;** 
- **Receita federal;** 
- **Ministério do trabalho etc.**



##### **Atividades da educação** 

São consideradas atividades da educação as etapas de ensino, desde a creche até o ensino superior, além de outros tipos de cursos: idioma, música, autoescola etc.

> **Atenção**
>
> Professores que lecionam no ensino fundamental, médio ou superior obrigatoriamente atuam em escolas. **Não registre Secretaria Municipal / Estadual de Educação para esses professores.** 

Registros corretos:

- **Creche;** 

- **Educação pré-escolar;** 

- **Escola de ensino fundamental, médio etc.;** 

- **Faculdade, universidade etc.;** 

- **Curso de idiomas, música etc.;** 

- **Autoescola etc.**

  

##### **Atividades da Saúde** 

O registro correto para a área de saúde é: 

- **Consultório médico;** 

- **Clínica de fisioterapia, ortopedia, psicologia etc.;** 

- **Consultório odontológico;**

- **Hospital, posto de saúde, pronto socorro etc.;** 

- **Laboratório de análises clínicas.**

  

##### **Atividade de Hospedagem** 

Registros corretos:

- **Hotel, motel, hostel etc.;** 
- **Locação de imóveis para temporada;** 
- **Pousada, albergue etc.**



##### **Locação de mão de obra, agência de emprego** 

As atividades de locação de mão de obra e agência de empregos são dedicadas a captar profissionais (especializados ou não), buscando suprir a necessidade de cada cliente.

> **Atenção**
>
> As **agências de emprego** fazem apenas a seleção e agenciamento da mão de obra (intermediação). As empresas de locação de mão de obra fornecem seus empregados a outras empresas e/ou pessoas físicas. 

Para a pessoa que trabalhava para empreendimento que enviava o seu pessoal para prestar serviços em outros empreendimentos, **o registro deve referir-se à atividade daquele com o qual a pessoa tinha o vínculo de trabalho**.

> **Atenção**
>
> Os trabalhadores terceirizados são empregados das empresas prestadoras de serviços e não de quem contrata o serviço dessas empresas.

> **Exemplo**
>
> Para a pessoa que era empregada de um empreendimento de serviço de vigilância e segurança e exercia a sua ocupação de vigilante em um estabelecimento bancário, o registro da atividade deve ser **serviço de vigilância e segurança**. 

Registros corretos: 

- **Serviço de limpeza e conservação;** 
- **Serviço de vigilância e segurança patrimonial;** 
- **Locação de mão de obra agrícola;** 
- **Agência de emprego etc.**

> **Atenção**
>
> Nunca registre o nome da empresa, principalmente no setor privado, pois **várias empresas possuem nomes parecidos**. Além disso, algumas empresas de grande porte **possuem diversas empresas subsidiárias com atividades diferentes**. Para essas grandes empresas, apenas o nome não permite identificar em qual **atividade a pessoa exercia sua ocupação**.

> **Exemplo**
>
> A Petrobrás é um grupo empresarial com diversas empresas subsidiárias cuja atividade pode ser **petróleo, refinaria, produção de biocombustível, gasoduto, transporte marítimo, engarrafamento de gás etc**.



#### 14.05 - Nesse trabalho era:

Este quesito, conhecido como posição na ocupação, busca captar a relação de trabalho existente entre a pessoa e o empreendimento no trabalho único ou principal que a pessoa tinha na semana de referência. 

- **1 – Trabalhador doméstico (inclusive trabalhador(a) doméstico(a) diarista)**: Segundo a lei complementar de nº 150 de 01/06/2015, empregado doméstico é aquele que presta serviço de forma contínua, subordinada, onerosa e pessoal, de finalidade não lucrativa à pessoa ou à família, **no âmbito residencial destas**. 
- **2 – Militar do exército, da marinha, da aeronáutica, da polícia militar ou do corpo de bombeiros militar**: Para a pessoa que era militar do Exército, Marinha, Aeronáutica ou das Forças Auxiliares, como Polícia Militar ou Corpo de Bombeiros, inclusive a pessoa que prestava o serviço militar obrigatório. **Não considere** como militares os funcionários civis nas Forças Armadas e as pessoas ocupadas na Marinha Mercante. 
- **3 – Empregado do setor privado**: empregado de empreendimento de qualquer atividade econômica não controlada pelo estado. 
- **4 – empregado do setor público (funcionário estatutário)**: são servidores estatutários, aqueles ocupantes de cargos públicos providos por concurso público, nos moldes do artigo 37 da Constituição Federal, e que são regidos por estatuto que define seus direitos e obrigações nas 
  esferas federal, estadual ou municipal. 
- **5 – empregado do setor público (empregado não estatutário)**: também são chamados de funcionários públicos os empregados ocupantes de cargo público provido por concurso público, seguindo o artigo 37 da Constituição Federal, contratados sob o regime da CLT. Nesta opção devem ser incluídos os servidores temporários que exercem função pública (despida de vinculação a cargo ou emprego público), contratados por tempo determinado para atender às necessidades temporárias de interesse público. 
- **6 – empregado de empresas estatais**: empresa estatal é uma entidade administrativa criada por lei como uma pessoa jurídica de direito privado que faz parte da administração indireta e que deve buscar lucro na exploração de uma atividade econômica ou uma atividade de interesse público. **Alguns exemplos: Petrobrás, Eletrobrás, Banco do Brasil, Caixa Econômica Federal, Infraero, BNDES, Correios etc.** 
- **7 – Empregador (com, pelo menos, um empregado)**: Para a pessoa que trabalhava explorando o seu próprio empreendimento com, pelo menos, 1 (um) empregado, contando, ou não, com a ajuda de trabalhador não remunerado. 
- **8 – Conta própria (sem empregados)**: Para a pessoa que trabalhava explorando seu próprio empreendimento, sozinha ou com sócio, sem ter empregado, ainda que contando com ajuda de trabalhador não remunerado. 
- **9 – Trabalhador não remunerado em ajuda a morador do domicílio ou parente**: Para a pessoa que, na semana de referência, trabalhou sem remuneração em ajuda na atividade econômica de uma pessoa que era empregado, conta própria ou empregadora. A pessoa que recebeu a ajuda deve ser moradora do domicílio ou parente, moradora ou não moradora do domicílio.  

> **Atenção**
>
> **Empregado** é a pessoa (física ou jurídica) que trabalhava para um empregador (pessoa física ou jurídica),  geralmente obrigando-se ao cumprimento de uma jornada de trabalho e recebendo em contrapartida uma remuneração em dinheiro, mercadorias, produtos ou benefícios (moradia, alimentação, vestuário, treinamento, etc.). 
>
> A posição na ocupação de empregado inclui: 
>
> - o sacerdote, o ministro de igreja, o pastor, o rabino, frade, a freira e outros clérigos; 
>
> - aprendizes e estagiários recebendo somente aprendizagem ou treinamento como pagamento; e 
>
> - pessoas remuneradas somente em benefícios (moradia, comida, roupas, treinamento etc.). 
>
> Sindicatos são entidades do setor privado, portanto servidor licenciado sem remuneração para mandato sindical se torna empregado do setor privado. 

> **Atenção**
>
> O **Microempreendedor Individual (MEI)** pode ser incluído no **quesito 14.05** como: 
>
> - 3 - Empregado - Se atender a regras de **subordinação**, **jornada de trabalho** e não correr **risco de capital** (não ter obrigação de arcar com prejuízo), no local onde trabalha. 
> - 7 - Empregador (se tiver um empregado) 
> - 8 - Conta própria (se não tiver empregado) 





#### 14.06 - Nesse trabalho, tinha carteira de trabalho assinada?

Esse quesito identifica se o **empregado ou trabalhador doméstico** tinha carteira de trabalho assinada em seu trabalho principal. 

Esse quesito é aplicável para **pessoas de 14 anos ou mais**.

Conforme o caso, registre:

- **1 - Sim**
- **2 - Não**



#### 14.07 - Esse negócio ou empresa era registrado no Cadastro Nacional da Pessoa Jurídica - CNPJ?

Para o trabalhador **conta própria ou empregado**r, se o negócio/empresa que explorava possuía registro no Cadastro Nacional da Pessoa Jurídica da Receita Federal - CNPJ. 

Esse quesito é aplicável para **pessoas de 14 anos ou mais**.

Conforme o caso, registre:

- **1 - Sim**
- **2 - Não**



#### 14.08 - Era contribuinte de instituto de previdência oficial (INSS) nesse trabalho?

Esse quesito investiga se o morador tinha cobertura de previdência oficial, se contribuía no trabalho principal que tinha na semana de referência. 

Esse quesito é aplicável para **pessoas de 14 anos ou mais**.

Conforme o caso, registre:

- **1 - Sim**
- **2 - Não**



#### 14.09 - No mês de julho tomou alguma providência para conseguir trabalho, seja um emprego ou iniciar um negócio próprio?

O objetivo deste quesito é captar a pessoa sem trabalho no mês de julho e que:

- sem ter tido qualquer trabalho no período de referência de 30 dias, tomou alguma providência efetiva para conseguir trabalho nesse período; e
- após ter saído do último trabalho que teve no período de referência de 30 dias, tomou alguma providência efetiva para conseguir trabalho nesse período. 

Conforme o caso, registre uma das opções:

- **1 - Sim**
- **2 - Não** 

Considere como tomar providência para conseguir trabalho as seguintes situações:

- enviar currículo;
- consultar empregadores;
- fazer entrevistas;
- fazer concurso;
- fazer ou se inscrever em concurso;
- consultar agência de empregos ou sindicatos;
- consultar o Sistema Nacional de Emprego - SINE;
- colocar ou responder anúncio;
- consultar parente, amigo ou colega;
- tomar providência para iniciar empreendimento como conta própria ou empregador; e
- tomar outra providência qualquer que efetivamente tivesse como objetivo conseguir um trabalho.

>  **Atenção**
>
> Considere também as providências para conseguir trabalho tomadas por meio da Internet. Por exemplo, consultar um amigo ou mandar o currículo para um empregador por meio do correio eletrônico; inscrever-se como candidato a um emprego no portal de uma agência de emprego na Internet.



#### 14.10 - Se tivesse conseguido um trabalho, poderia ter começado a trabalhar na última semana de julho?

O objetivo deste quesito é captar a pessoa que tomou alguma providência para conseguir trabalho no período de referência de 30 dias e que poderia ter trabalhado já na semana de referência em um trabalho que conseguisse ou lhe fosse oferecido. Conforme o caso, registre:

- **1 - Sim**:  para pessoa que, na semana de referência, estava disponível para assumir um trabalho que conseguisse ou lhe fosse oferecido. 
- **2 - Não**: para a pessoa que, na semana de referência, não estava disponível para assumir um trabalho que conseguisse ou lhe fosse oferecido.



### 4.11.5. Rendimento bruto do trabalho principal

Esse quesito busca investigar o **valor do rendimento bruto** ou da **retirada mensal** recebida como pagamento pelo trabalho de um **mês completo**, no trabalho principal que a pessoa tinha na semana de referência. 

As próximas questões são destinadas à captação do rendimento do trabalho principal. Além dos valores informados no rendimento em dinheiro, será investigada a existência de recebimento na forma de tíquete, cartão ou vale alimentação e transporte.

>  **Atenção**
>
> O entrevistador precisa garantir que o rendimento que está investigando é o rendimento bruto e não o líquido.

- **Rendimento do assalariado bruto em dinheiro**: É o pagamento da pessoa empregada, sem nenhum desconto. Trata-se da remuneração em termos brutos.

> **Atenção**
> **Não deve ser estimada em dinheiro** a parcela do pagamento efetuada em benefícios (moradia, alimentação, roupas, vales alimentação, refeição ou transporte etc.). Entretanto, se a pessoa possuir esses benefícios e eles **forem pagos em dinheiro**, juntamente com as outras parcelas da remuneração, estes devem ser integralmente considerados.

- **Rendimento do assalariado bruto em produtos ou mercadorias**: O rendimento do trabalho em produtos ou mercadorias, da seção de atividade que normalmente compreende a agricultura, pecuária, caça, silvicultura, exploração florestal, pesca e aquicultura, é contabilizado pelo seu **valor de mercado em dinheiro**.

  

### 4.11.6. Rendimento do empregador e do trabalhador por conta própria

###### **Rendimento em dinheiro** 

Alguns empreendimentos são **organizados ou estruturados** para permitir o registro do rendimento obtido, em dinheiro. Isto é, do rendimento que a pessoa obtém com o seu trabalho, em dinheiro, explorando o negócio. Isto gera um valor bruto, que é registrado. A retirada bruta é, então, igual a esse valor, **que é o valor bruto registrado**. 

Para o empreendimento que **não é organizado ou estruturado**, a retirada pode ser calculada como a **diferença entre as receitas e as despesas** (pagamento de empregados, matéria prima, energia elétrica, telefone, equipamentos e outras despesas, etc.) do empreendimento. 

O rendimento bruto proveniente de produção sazonal (produção temporária, ou seja, que não ocorre durante o ano inteiro) deverá ser dividido para calcular o valor médio mensal, real ou estimado (valor de mercado), que a pessoa ganhava habitualmente. No cálculo da média, considere os rendimentos obtidos nos últimos 12 meses.

###### **Rendimento em produtos ou mercadorias** 

A retirada do trabalho em produtos ou mercadorias, da seção de atividade que normalmente compreende a agricultura, pecuária, caça, silvicultura, exploração florestal, pesca e aquicultura, é contabilizada pelo seu **valor de mercado em dinheiro após a dedução das despesas necessárias para a sua produção**. Não incluir no cálculo de produtos ou mercadorias a parcela destinada ao próprio consumo do domicílio. Isto é, a produção destinada ao consumo dos próprios produtores não conta para o "rendimento do empregador e do trabalhador por conta própria".

> **Atenção**
>
> - Para a pessoa que ingressou no trabalho no mês em que está inserida a semana de referência, **registre o valor do rendimento bruto mensal que ganharia trabalhando normalmente o mês completo;**
> - Para a pessoa licenciada por instituto de previdência federal, estadual ou municipal, **registre o rendimento bruto normalmente recebido como benefício (auxílio-doença, auxílio por acidente de trabalho etc.).**
> - Para a pessoa empregada como responsável por equipe de trabalhadores membros da unidade domiciliar, o **registro deve ser do rendimento que recebia normalmente pelo trabalho do grupo**. Por exemplo: Wilson é o responsável pelo trabalho de um grupo de três pessoas que moram no mesmo domicílio que ele. Neste caso, no registro do Rendimento bruto do Wilson, deve ser lançada a soma do rendimento bruto das quatro pessoas.



### 4.11.7. Autopreenchimento de Renda

Caso o informante sinta-se desconfortável em prestar informações sobre seus rendimentos ao Recenseador, ele próprio pode preencher o valor de seu rendimento no DMC, por meio de uma funcionalidade criada para esse propósito. 

Caso isto ocorra, selecione a quadrícula intitulada "**autopreenchimento**"; entregue o DMC ao informante, orientando-o a preencher a **faixa e o valor do rendimento**; e em seguida selecionar o botão "**GRAVAR**". 

Ao fazer isso, será exibida a mensagem: "**Informação gravada com sucesso! O Recenseador não terá acesso ao valor declarado**." Após a confirmação no botão GRAVAR, o valor da renda aparecerá como * (**asteriscos**) no campo do questionário.

> **Atenção**
>
> Se o informante não se sentir desconfortável em declarar seu rendimento, não é preciso acionar a quadrícula de autopreenchimento. Esta funcionalidade está disponível em todos os quesitos sobre rendimento.



### 4.11.8. Questionário de Rendimentos do Trabalho



#### 14.11 - Qual era o rendimento bruto mensal que recebia normalmente neste trabalho?

Este quesito será respondido pelas pessoas que declararem que possuíam apenas 1 (um) trabalho na semana de referência. 

O rendimento bruto do trabalho recebido em produtos ou mercadorias é contabilizado pelo seu valor de mercado em dinheiro. 

Caso tenha rendimento variável, considere o valor médio da remuneração bruta. 

Conforme o caso, assinale:

- **1 - Valor em dinheiro, produtos ou mercadorias**
- **2 - Outra forma (Moradia, Alimentação, Treinamento, etc.)**
- **3 - Não tem**

#### 14.111 - Valor

#### 14.112 - Faixa de rendimento

Após o registro do valor do rendimento bruto mensal, assinale a faixa salarial deste rendimento.

- **1 - 1,00 a 500,00**
- **2 - 501,00 a 1.000,00**
- **3 - 1.001,00 a 2.000,00**
- **4 - 2.001,00 a 3.000,00**
- **5 - 3.001,00 a 5.000,00**
- **6 - 5.001,00 a 10.000,00**
- **7 - 10.001,00 a 20.000,00**
- **8 - 20.001,00 a 100.000,00**
- **9 - 100.001,00 ou mais**



#### 14.12 - Qual era o rendimento bruto mensal que recebia normalmente neste e nos outros trabalhos?

Este quesito será respondido pelas pessoas que declararem que possuíam mais de 1 (um) trabalho na semana de referência. 

Considere a **soma dos rendimentos brutos recebidos em todos os trabalhos que tinha na semana de referência.** 

Caso tenha rendimento variável, considere o valor médio da remuneração bruta.

Conforme o caso, assinale:

- **1 - Valor em dinheiro, produtos ou mercadorias**
- **2 - Outra forma (Moradia, Alimentação, Treinamento, etc.)**
- **3 - Não tem**

#### 14.121 - Valor

#### 14.122 - Faixa de rendimento

Após o registro do valor do rendimento bruto mensal, assinale a faixa salarial deste rendimento.

- **1 - 1,00 a 500,00**

- **2 - 501,00 a 1.000,00**

- **3 - 1.001,00 a 2.000,00**

- **4 - 2.001,00 a 3.000,00**

- **5 - 3.001,00 a 5.000,00**

- **6 - 5.001,00 a 10.000,00**

- **7 - 10.001,00 a 20.000,00**

- **8 - 20.001,00 a 100.000,00**

- **9 - 100.001,00 ou mais**

  
### 4.11.9. Questionário de Rendimento de Outras Fontes

#### 14.13 - Recebeu rendimento bruto mensal de aposentadoria, pensão, Auxílio Brasil (antigo Bolsa Família), BPC, aluguel ou outra origem? 

Os rendimentos de outras fontes são os rendimentos recebidos pelos moradores que não são oriundos do trabalho que a pessoa tinha na semana de referência. Esses rendimentos também são captados em termos brutos e deve-se registrar o valor normalmente recebido, sem qualquer desconto de pagamentos efetuados por meio administrativo, tal como empréstimo consignado etc. 

Se o morador deixou de receber o rendimento por atraso ou qualquer outro motivo temporário, deve registrar o valor normalmente recebido. 

Registre a soma dos rendimentos brutos mensais recebidos por todas as outras fontes que não seja pelo trabalho. 

Conforme o caso, assinale:

- **1 - Sim**

- **2 - Não**

  

As outras fontes de rendimentos são:


- **Aposentadoria ou pensão**: Considere a aposentadoria ou pensão recebida de instituto de previdência oficial ou dos regimes próprios de previdência do serviço público proveniente das forças armadas, de jubilação, de reforma, Plano de Seguridade Social da União ou de instituto de previdência social federal (Instituto Nacional de Seguridade Social - INSS), estadual ou municipal, inclusive pelo Fundo de Assistência ao Trabalhador Rural (Funrural).

- **Auxílio Brasil (antigo Bolsa Família)**: O Programa Auxílio Brasil é um programa do governo federal, de transferência direta de rendimento com condicionalidades, que beneficia famílias em situação de pobreza.

- **BPC-LOAS**: BPC (Benefício de Prestação Continuada) é um benefício que garante, pela Lei Orgânica da Assistência Social - LOAS, um salário mínimo mensal à pessoa idosa, de 65 anos ou mais de idade, ou ao portador de deficiência incapacitado para a vida independente e para o trabalho, sendo ambos impossibilitados de prover sua manutenção ou tê-la provida por sua família.

- **Aluguel**: Registrar o valor bruto mensal recebido de aluguel.

- **Outra origem**: Registrar o valor bruto mensal recebido de qualquer origem: outros programas dos governos (federal, estadual ou municipal), seguro-desemprego, seguro-defeso, pensão alimentícia, mesada em dinheiro de pessoa que não morava no domicílio, arrendamento, previdência privada, bolsa de estudos, rendimentos de aplicações financeiras etc.

#### 14.131 - Valor: R$

#### 14.132 - Faixa de rendimento

Após o registro do rendimento bruto mensal recebido de outras fontes, assinale a faixa onde se insere o valor declarado.

- **1 - 1,00 a 500,00**
- **2 - 501,00 a 1.000,00**
- **3 - 1.001,00 a 2.000,00**
- **4 - 2.001,00 a 3.000,00**
- **5 - 3.001,00 a 5.000,00**
- **6 - 5.001,00 a 10.000,00**
- **7 - 10.001,00 a 20.000,00**
- **8 - 20.001,00 a 100.000,00**
- **9 - 100.001,00 ou mais**

> **Atenção**
>
> Para os domicílios com renda **0 (zero)** será feita a seguinte pergunta ao informante: 
>
> Alguém no domicílio recebeu doação ou ajuda de parentes ou amigos, pensão alimentícia, seguro desemprego ou rendimento de outra origem? Sim ou Não.



### 4.11.10. Questionário de Rendimento do Questionário Básico

#### B7.01 - Qual era o rendimento bruto mensal normalmente recebido pelo responsável pelo domicílio? 

Considere todos os rendimentos de trabalho, aposentadoria, Auxílio Brasil (antigo Bolsa Família) ou outra origem. 

Para o correto preenchimento deste quesito, considere as seguintes situações:

- Caso o responsável pelo domicílio tenha rendimento fixo, considere o último rendimento.
- Para o responsável pelo domicílio que estava **sem trabalho na semana de referência e não teve outro tipo de rendimento**, deve-se selecionar a opção "Não tem".
- Para a pessoa responsável pelo domicílio que ingressou no trabalho no mês em que está inserida a semana de referência, registre o valor do rendimento bruto mensal que ganharia trabalhando normalmente o mês completo.
- Para a pessoa responsável pelo domicílio licenciada por instituto de previdência federal, estadual ou municipal, registre o rendimento bruto normalmente recebido como benefício (auxílio-doença, auxílio por acidente de trabalho etc.).
- Para a pessoa responsável pelo domicílio empregada como responsável por equipe de trabalhadores membros da unidade domiciliar, o registro deve ser do rendimento que recebia normalmente pelo trabalho do grupo.
- Caso a pessoa responsável pelo domicílio tenha rendimento bruto proveniente de produção sazonal (produção temporária, ou seja, que não ocorre durante o ano inteiro) esse rendimento deverá ser dividido para calcular o valor médio mensal, real ou estimado (valor de mercado) que a pessoa ganhava normalmente. No cálculo da média, considere os rendimentos obtidos nos últimos 12 meses.
- Caso o responsável pelo domicílio tenha tido rendimento variável, deve-se registrar o valor médio das remunerações recebidas (até 12 meses).
  
> **Atenção**
> Este quesito busca captar o rendimento do trabalho e de outras fontes apenas da pessoa responsável pelo domicílio. Assim, não devem ser somados os rendimentos dos demais moradores do domicílio

#### 14.111 / B7.011 - Valor

#### 14.112 / B7.012 - Faixa de rendimento

Após o registro do valor do rendimento bruto mensal, assinale a faixa salarial deste rendimento.

- **1 - 1,00 a 500,00**
- **2 - 501,00 a 1.000,00**
- **3 - 1.001,00 a 2.000,00**
- **4 - 2.001,00 a 3.000,00**
- **5 - 3.001,00 a 5.000,00**
- **6 - 5.001,00 a 10.000,00**
- **7 - 10.001,00 a 20.000,00**
- **8 - 20.001,00 a 100.000,00**
- **9 - 100.001,00 ou mais**



## 4.12. Deslocamento para Trabalho

Este tema do questionário levantará informações sobre o deslocamento de pessoas para o trabalho, a fim de atender aos seguintes objetivos:

- Identificar as ligações entre municípios, permitindo o planejamento integrado das redes de transporte disponíveis;
- Dimensionar a oferta de transporte público adequado à flutuação da demanda;
- Identificar os polos de trabalho e as localidades eminentemente residenciais. 

Esse bloco é aplicável para as **pessoas que trabalham**.

Perguntamos sobre onde as pessoas trabalham, a frequência do deslocamento, quanto tempo levam e como chegam até seu trabalho, para criar estatísticas sobre deslocamento ou jornada de uma pessoa para o trabalho. 

Padrões e características de deslocamento são cruciais para planejar melhorias na infraestrutura de transporte, desenvolver planos e serviços de transporte e entender para onde as pessoas estão se deslocando no decorrer de um dia normal. Essas informações contribuem para identificar as áreas de maior atratividade (oferta de empregos) e também os municípios integrados, contribuindo para identificar arranjos populacionais e concentrações urbanas. 

As informações a seguir se referem ao deslocamento para o **trabalho único** ou para o **trabalho principal** na **semana de referência**.



### 15.01 - Em que município ou país estrangeiro trabalha?

Conforme o caso, registre:

- **1 - Neste município, mas apenas em casa ou na propriedade**: quando a pessoa trabalha no município de residência apenas em casa ou na propriedade;
- **2 - Neste município, fora de casa e da propriedade**: quando a pessoa trabalha no município de residência, fora de casa e da propriedade 1 dia na semana ou mais; 
- **3 - Em outro município no Brasil**: quando a pessoa trabalha em município diferente daquele em que mora 1 dia na semana ou mais. Nesse caso, selecione o estado e o município. Se não souber o estado em que trabalha, selecione "Não sabe Estado". Se não souber o município em que trabalha, selecione "Não sabe Município".
- **4 - Em outro País**: quando a pessoa trabalha em país estrangeiro 1 dia na semana ou mais, selecione o nome deste país. Se não souber o nome do país em que trabalha, selecione "Não sabe País estrangeiro".
- **5 - Em mais de um Município ou País**: quando a pessoa trabalha em mais de um município ou país.



### 15.02 - Retorna do trabalho para casa 3 dias ou mais na semana?

- **1 - SIM**
- **2 - NÃO** 

**Tabela resumo para casos em que se trabalha dentro e fora de casa:**

| Deslocamento (dias na semana) | 15.02 - Retorna do trabalho para casa 3 dias   ou mais na semana? |
| ----------------------------- | ------------------------------------------------------------ |
| 0                             | Respondeu “1. Apenas em casa ou na propriedade” no quesito 15.01 e encerrou o bloco. |
| 1                             | Não                                                          |
| 2                             | Não                                                          |
| 3                             | Sim                                                          |
| 4                             | Sim                                                          |
| 5                             | Sim                                                          |
| 6                             | Sim                                                          |
| 7                             | Sim                                                          |

> **Atenção**
>
> O retorno do trabalho para casa deve ser considerado mesmo quando houver paradas para tarefas cotidianas (buscar crianças na escola, realizar compras etc.).

> **Reforçando**
>
> Para pessoas que afirmarem retornar para casa, a partir do trabalho, 1 ou 2 vezes durante a semana, deve ser registrada a opção "**Não**".




### 15.03 - Quanto tempo leva entre sua casa e o local de trabalho normalmente?

Considerar o deslocamento (**casa-trabalho**) preferencialmente. Caso não seja possível, considerar o deslocamento de retorno (**trabalho-casa**). 

Assinale o tempo habitual (em horas e minutos), gasto no deslocamento entre o domicílio do morador e o seu local de trabalho. Se o tempo de deslocamento for inferior a 1 hora registre **0 (zero)** no campo das horas e **registre os minutos** de deslocamento no campo apropriado. 

Caso não se desloque para **um local** para iniciar a sua jornada de trabalho assinale a opção: "**Não se desloca para um local de trabalho**". 

Para os **taxistas, motoristas de aplicativo**, inclusive **mototaxistas**, **entregadores**, **vendedores** e **assemelhados** o tempo de deslocamento será considerado:

- Se o trabalho for no município de residência e se existe um **ponto de táxi/mototáxi, ponto de apoio, escritório ou outro local** para onde a pessoa se desloca para iniciar sua jornada de trabalho; ou
- Se o trabalho for em **outro município** para onde a pessoa se desloca para iniciar sua jornada de trabalho. 

Para os **taxistas, motoristas de aplicativo, inclusive mototaxistas, entregadores, vendedores e assemelhados** que não se deslocam para um local para iniciar a sua jornada de trabalho, ou seja, já iniciam sua jornada de trabalho saindo de casa assinale "**Não se desloca para um local de trabalho**". O tempo será automaticamente zerado.

### 15.031 - Horas:

### 15.032 - Minutos:

### 15.033 - Não se desloca para um local de trabalho

> **Atenção**
> - Se o deslocamento para trabalho ocorrer a partir de outro local, como por exemplo, local de estudo, o tempo de duração do deslocamento deve corresponder ao retorno do local de trabalho para o domicílio, ou seja, se o deslocamento para trabalho não for partindo diretamente de casa (casa-trabalho), **considerar o trajeto de volta (trabalho-casa).**
> - O tempo do deslocamento (casa para o trabalho ou do trabalho para casa) deve ser contabilizado **desconsiderando-se o tempo gasto em paradas**, no meio do trajeto, para tarefas cotidianas.
> - Para a pessoa que mora em um município e trabalha em outro, retornando ao seu domicílio, **por exemplo**, somente no final de semana, considere o deslocamento **a partir do local considerado domicílio**. Nesse caso será considerado o **deslocamento que ocorre apenas no final de semana**.
> - Caso a pessoa utilize **mais de um meio de locomoção** até o local de trabalho, considere o **somatório do tempo gasto.**



### 15.04 - Qual o principal meio de transporte utilizado para chegar ao local de trabalho?

Se utiliza vários meios de transporte, inclusive a pé, indique o que passa mais tempo.

Conforme o caso assinale:

- **01 - A pé**

- **02 - Bicicleta**

- **03 - Motocicleta**

- **04 - Mototáxi**

- **05 - Automóvel**

- **06 - Taxi ou assemelhados**

- **07 - Van, perua ou assemelhados**

- **08 - Ônibus**

- **09 - BRT ou ônibus de trânsito rápido**

- **10 - Trem ou metrô**

- **11 - Caminhonete ou caminhão adaptado (pau de arara)**

- **12 - Embarcação de médio e grande porte (acima de 20 pessoas)**

- **13 - Embarcação de pequeno porte (até 20 pessoas)**

- **14 - Outros**

> **Atenção**
> Se o deslocamento para trabalho ocorrer a partir do local de estudo, considere o meio de transporte do trajeto de retorno do trabalho para casa. 
> Para a pessoa que mora em um município e trabalha em outro, retornando ao seu domicílio, **por exemplo**, somente no final de semana, considere o meio de transporte utilizado a partir do domicílio, ou seja, o deslocamento que ocorre apenas no final de semana, **entre o local considerado domicílio e o local de trabalho**. 
>
> Caso o morador utilize diferentes meios de transporte em dias alternados, **registre o meio de transporte do deslocamento que faz com mais frequência**.

> **Exemplo**
>
> Uma pessoa se desloca para trabalhar 2 (duas) vezes por semana a pé e 3 (três) vezes por semana de ônibus. Neste caso, registre que se desloca de ônibus.



## 4.13. Mortalidade

Este tema será investigado somente para os Domicílios Particulares Ocupados sejam eles Permanentes ou Improvisados. 

A finalidade deste tema é obter o perfil por sexo e idade dos óbitos ocorridos nos domicílios do Brasil no período de janeiro de 2019 a julho de 2022.



### 16.01 / B8.01 - De janeiro de 2019 a julho de 2022, faleceu alguma pessoa que morava com você(s)? (Inclusive recém-nascidos e idosos)

- **1 - Sim** 
- **2 - Não**

**Assinale SIM** se, no período de janeiro de 2019 a julho de 2022, faleceu alguma pessoa que morava no mesmo domicílio que você. Inclua recém-nascidos e idosos, mesmo que você não more mais no domicílio onde essa pessoa morava no momento do falecimento. 

Neste caso, utilize a opção (1) da figura abaixo e inclua a pessoa falecida. Caso seja necessário editar as informações da pessoa incluída, utilize a opção (2), para excluir alguma pessoa, utilize a opção (3). 

`[FIGURA OMITIDA]`



### **16.02 / B8.02 - Nome e Sobrenome (completo)**

Registre o nome e o sobrenome completo de todas as pessoas que faleceram no período de janeiro de 2019 a julho de 2022. 

**Nome da pessoa**: registre o primeiro nome ou o nome composto da pessoa falecida. 

**Sobrenome da pessoa**: registre todos os demais sobrenomes da pessoa falecida. Preferencialmente o sobrenome completo; caso não seja possível, registre o último sobrenome. 



### 16.03 / B8.03 - Mês e ano de falecimento:

Selecione no combo o mês e o ano de falecimento da pessoa.



### 16.04 / B8.04 - Sexo:

Registre o sexo biológico da pessoa que faleceu no período de janeiro de 2019 a julho de 2022.

- **1 - Masculino**
- **2 - Feminino**



### 16.05 / B8.05 - Idade ao falecer:

Registre a idade da pessoa ao falecer.

- **1 - 1 ano ou mais (1 a 140 anos)**: Registre, em anos completos, a idade ao falecer para as pessoas que tinham 1 ano ou mais de idade quando ocorreu o óbito.

- **2 - Menos de 1 ano (0 a 11 meses)**: Registre, em meses, a idade ao falecer para as pessoas que tinham menos de um ano de idade quando ocorreu o óbito.

  
## 4.14. Autismo

A finalidade deste tema é identificar na população as pessoas que já foram diagnosticadas por algum profissional de saúde com autismo. São exemplos de profissionais de saúde os médicos - em suas mais diversas especialidades, como pediatria, neurologia, psiquiatria etc. - psicólogos, fonoaudiólogos, entre outros. 

Este bloco é aplicável para **todos os moradores**. 

A Lei nº 13.861, de 18 de julho de 2019, determinou a inclusão do tema do autismo no Censo 2022. Segundo a Organização Mundial de Saúde, "O transtorno do espectro autista (TEA) se refere a uma série de condições caracterizadas por algum grau de comprometimento no comportamento social, na comunicação e na linguagem, e por uma gama estreita de interesses e atividades que são únicas para o indivíduo e realizadas de forma repetitiva. O TEA começa na infância e tende a persistir na adolescência e na idade adulta. Na maioria dos casos, as condições são aparentes durante os primeiros cinco anos de vida". 

A investigação desse tema requer que a pergunta seja feita ao informante, para cada morador do domicílio, independentemente da idade.

> **Atenção**
>
> É importante salientar que o Recenseador não deve fornecer qualquer juízo de valor ou interpretação pessoal em relação às características pessoais que encontrar no campo.



### 17.01 -  Já foi diagnosticado(a) com autismo por algum profissional de saúde?

Assinale **SIM**, para a pessoa que já tenha sido diagnosticada com autismo por algum profissional de saúde. 

Assinale **NÃO**, para a pessoa que nunca foi diagnosticada com autismo por algum profissional de saúde.

> **Atenção**
>
> Independentemente da forma como o autismo se manifesta em cada indivíduo - seja com limitações brandas ou severas - se ele tem o diagnóstico, deve responder afirmativamente ao quesito.



## 4.15. Prestação das informações

### 18.01 / B9.01 - Assinale quem prestou as informações desta pessoa:

Ao final da entrevista, o Recenseador deverá assinalar quem prestou as informações de cada morador (pessoa) do domicílio.

- **1 - A própria pessoa**:  Quando o próprio morador prestou as suas informações ao Recenseador. 
- **2 - Outro morador**: Quando um morador do domicílio prestou as informações sobre outro morador do domicílio ao Recenseador. 
- **3 - Não morador**: Quando uma pessoa não moradora do domicílio (pai, mãe, irmão(a) etc.), prestou as informações de um morador do domicílio ao Recenseador. 

> **Importante**
> Ao final do questionário, no momento da seleção de quem prestou informações, não será possível selecionar pessoa menor de 12 anos de idade.



### 18.02 / B9.02 - Nome do outro morador:

Sempre que for assinalada a opção 2 no quesito 18.01, selecione o nome do **outro morador** na Lista de Moradores.

Para os tipos de domicílio: casa, casa de vila ou em condomínio, habitações em casa de cômodos ou cortiço, em estrutura residencial permanente degradada ou inacabada ou em domicílio coletivo, deve ser verificada com o informante a existência de outro domicílio na propriedade ou terreno. 

Os Recenseadores terão um bloco de recados para que possam preencher e viabilizar o contato com o morador no caso de ausência deste morador no momento que ele chega ao domicílio. O Recenseador deverá preencher a folha de recado com seu **nome, telefone (próprio ou do posto de coleta), nome do supervisor e a identificação da unidade visitada**.



## 4.16. Dados de contato

Após encerrar o questionário, você deve registrar os dados do contato:

- Nome;
- E-mail;
- Telefone (fixo ou móvel); e
- CPF. 

O CPF será perguntado para o **informante que for morador do domicílio**. Para o informante que não é morador do domicílio não deve ser registrado o CPF. 

O pedido do número do CPF **não possui finalidade fiscal**, será utilizado apenas para **fins estatísticos**. 

Ao final da entrevista, o Recenseador deve esclarecer ao informante que o domicílio pode ser visitado pelo Supervisor do IBGE ou por algum Recenseador da Pesquisa de Pós-enumeração (PPE). Esta pesquisa é realizada para avaliar a cobertura e a qualidade da coleta de dados do Censo.



# 5. Entendendo o Formulário de Domicílio Coletivo {#secao5}

Ao registrar um **Domicílio Coletivo com Morador** no seu computador de mão, você precisará informar alguns dados, preenchendo os campos correspondentes no **Formulário de Domicílio Coletivo**. Nele, estão contidas:

- Espécie
- O nome do estabelecimento;
- O tipo de edificação (a identificação) deste estabelecimento;
- O nome do responsável pelo estabelecimento (domicílio coletivo);
- Um telefone de contato. 

Além da Identificação, será preenchida também a Lista das Unidades com Morador. Para isso, serão considerados:
- Grupo familiar em Domicílio Coletivo: é o conjunto de pessoas que se relacionam por laços de parentesco, residindo em uma ou mais unidades do Domicílio Coletivo;
- Morador Individual: é a pessoa que reside em Domicílio Coletivo, ainda que compartilhando a unidade com outras pessoas com as quais não tenha laços de parentesco. 

Agora, veremos como incluir a Lista de Unidades com Morador. A lista de unidades é composta pelos seguintes campos:
- Nome e sobrenome completo do responsável ou do morador individual, preferencialmente o sobrenome completo; se não for possível, registre o último sobrenome; e

- Identificação da unidade dentro do domicílio coletivo.

Caso a pessoa seja um Morador individual, assinale a quadrícula "Morador individual", e registre:

- A idade do morador; e

- O sexo do morador. 

Para grupos familiares, deixe a quadrícula "Morador individual" **em branco**. 

Após registradas as informações, clique no botão **Salvar Unidade**. 

Para abrir o questionário, editar ou excluir uma unidade domiciliar, clique nos três pontinhos à direita da unidade e selecione a opção desejada. 

**Mas como deverão ser registradas as informações na Lista de Unidades com Morador?** 

Em cada domicílio coletivo, registre, na Lista de Unidades com Morador, o nome e o sobrenome completo do responsável pelo grupo familiar ou do morador individual, na ordem sequencial das unidades, conforme os critérios de Cobertura do Setor.

Lembre-se de que no caso de prédios com mais de um andar, você deverá começar a registrar as unidades com morador do andar mais alto para o mais baixo.

> **Atenção**
>
> Nos domicílios coletivos somente serão listadas as unidades com morador, as demais unidades não devem ser listadas. **Exemplo**: Um hotel possui 25 quartos, mas somente nos quartos 301 e 202 há moradores. Nesse caso, apenas esses dois quartos devem ser listados. **Não confundir hóspedes com moradores.** 

Quando o grupo familiar ocupar mais de uma unidade de habitação no Domicílio Coletivo, faça um único registro na Lista de Unidades com Morador, identificando as unidades ocupadas. **Exemplo: Quarto 301 e 302**. 

Estando os moradores de uma unidade ausentes durante a sua visita, **essa unidade não deve ser registrada**. O Recenseador deverá voltar ao domicílio coletivo durante o período da Coleta, no mínimo, 4 (quatro) vezes e em períodos alternados, para incluir essa unidade e realizar a entrevista. 

**Como deverão ser aplicados os questionários?** 

Para os domicílios coletivos, será aplicado **um questionário para cada grupo familiar e um para cada morador individual**, conforme o modelo indicado pelo sistema, Básico ou da Amostra.

> **Exemplo**
>
> Duas irmãs dividem o mesmo quarto de um asilo com uma amiga. Neste caso, deverão ser preenchidos dois questionários: um para as duas irmãs (grupo familiar) e um para a amiga (morador individual). 

Caso o grupo familiar seja composto apenas por pessoas **menores de 12 anos** (geralmente em orfanatos), o procedimento será o mesmo adotado para o morador individual, isto é, elas deverão ser registradas uma a uma na Lista de Unidades com Morador e deverá ser preenchido **um questionário para cada pessoa**. Geralmente quando isso ocorre, o questionário é preenchido por algum funcionário do estabelecimento através de registro administrativo.



# 6. Coleta pela Internet {#secao6}

Durante a realização do Censo Demográfico de 2022, os informantes que, embora dispostos a participar da pesquisa, não puderem ou não quiserem fornecer as informações no momento da visita do Recenseador, poderão utilizar a internet para preencher o questionário.

> **Atenção**
>
> Embora essa ferramenta esteja disponível e seja de grande utilidade em alguns casos, deve-se estar ciente de que se trata apenas de uma alternativa, uma vez que a entrevista presencial é, sem dúvidas, a melhor forma de obter as informações e garantir a realização da coleta no período previsto. 

Assim, apesar de representar significativa facilidade para o informante, o Recenseador deve considerar a utilização da Internet com muito cuidado, devido às razões indicadas a seguir:

- Existe a possibilidade de o informante que optou pela Internet esquecer-se de responder, não dispor de tempo, encontrar dificuldade no preenchimento ou mesmo enfrentar dificuldade de conexão e acabar não respondendo o questionário;
- Caso o informante não realize o preenchimento do questionário até o prazo previsto, será necessário que o Recenseador retorne ao domicílio para realizar a entrevista presencialmente;
- Deve ser considerada, também, a possibilidade de o informante optar pela Internet apenas para encerrar o contato com o Recenseador, sem efetivamente estar disposto a preencher o questionário;
- O retorno a muitos domicílios, possivelmente espalhados pelo setor, é mais complexo e demorado do que a realização do percurso regular no setor;
- É possível que este grupo de informantes esteja menos colaborativo no segundo contato do que no primeiro;
- O setor não poderá ser concluído sem que os optantes pela Internet tenham preenchido seus questionários;
- Você, Recenseador, deve estar ciente de que os domicílios e setores em que há questionários provenientes da Internet estarão sujeitos aos mesmos critérios de validação e liberação estabelecidos para aqueles em que a coleta se der por meio do computador de mão.

> **Atenção**
> Deste modo, a opção pela Internet não deve ser vista, por você, Recenseador, como a principal ferramenta para a obtenção das informações, mas sim como um método auxiliar destinado a atender um número limitado de situações. O interesse e a possibilidade de acesso à Internet devem ser considerados quando do oferecimento desta opção. 
> O registro de preenchimento pela Internet deverá ser feito somente com a solicitação de um morador do domicílio. 

A opção de autopreenchimento pela internet será oferecida em dois momentos: 

**Primeiro momento:** 

Este momento se dará durante o período de coleta presencial, e tem como objetivo garantir a realização da entrevista nas situações em que o Recenseador encontrar dificuldades para realizá-las nesta modalidade (entrevista direta com os moradores do domicílio). O Recenseador poderá oferecer essa alternativa quando houver restrições de acesso às áreas específicas, como no caso de condomínios fechados, por exemplo, ou recusas em recebê-lo. É importante frisar que o **método prioritário para a coleta das informações deve ser a entrevista presencial**, porém, caso o informante opte pelo autopreenchimento do questionário pela internet, esta opção deve ser permitida pelo Recenseador. 

Caso o morador peça para responder pela internet, deve-se seguir o seguinte roteiro:

- Após incluir a espécie DPPO, deve-se selecionar a opção "Internet";
- Feito isso, deve-se preencher os campos "Nome", "Telefone" e "E-mail" do morador, além do Total de Moradores do Domicílio, informando-lhe que ele receberá uma chave de acesso e o link do questionário por e-mail. O link do questionário também pode ser encontrado no site do IBGE (www.ibge.gov.br).

Nos casos de autopreenchimento pela internet, cabe alertar ao informante o seguinte:
- Após o recebimento da chave de acesso, ele terá **7** dias para preencher o questionário. Caso não realize o preenchimento neste prazo, sua chave de acesso perderá a validade e ele receberá novamente a visita do Recenseador.
- É importante alertá-lo também que devem ser preenchidas as informações de todos as pessoas que moravam no domicílio na data de referência, e não apenas a dele próprio.
- Deve-se informar também que existe uma central telefônica para atendimento em caso de eventuais dúvidas. Essa central telefônica também irá auxiliar no preenchimento do questionário, por meio do telefone (**0800 721 81 81**).
- Caso o questionário não seja preenchido pela Internet ou tenha pendências, o IBGE fará contato com os moradores, com o objetivo de solicitar e/ou auxiliar no preenchimento.
- Deve-se enfatizar também que o sistema não permite que o questionário seja preenchido parte na Internet e parte no computador de mão. Assim, caso o informante inicie o preenchimento do questionário pela internet e não o conclua, retornando ao modo presencial, a entrevista deverá ser completamente refeita, independentemente do estágio de preenchimento pela Internet.
- O mesmo vale para os casos em que o Recenseador inicie o preenchimento do questionário presencialmente e o morador, em algum momento, escolha concluí-lo pela internet, a entrevista deverá ser completamente refeita, independentemente do estágio de preenchimento no DMC do Recenseador. 

No equipamento de coleta, o Recenseador deve acompanhar a quantidade de questionários solicitados e preenchidos por meio do relatório "**Resumo questionários internet**" localizado no menu "Inicio" >> "Relatórios" >> "Andamento do setor".

> **Atenção**
>
> Os questionários serão automaticamente habilitados para a coleta presencial quando os informantes não preencherem completamente as informações obrigatórias do questionário da internet. Neste caso, é tarefa do Recenseador retornar a esses domicílios para que seja realizada a entrevista. Estes endereços serão encontrados na "**Listagem de endereços para retorno aos domicílios**". Também encontrada na aba "**Relatórios**" do **DMC**. 

Caso o cadastro seja realizado com telefone fixo, a cobrança do CAC começa no quarto dia, pois não haverá envio de SMS. 

Após o fim do prazo, caso o questionário não tenha sido preenchido, o **domicílio retorna ao DMC do Recenseador** para que o mesmo possa realizar a entrevista presencial. 

> **Atenção**
>
> Fique atento! 
>
> O Centro de Apoio ao Censo (CAC) poderá cancelar a chave de acesso ao questionário WEB, a pedido do informante, antes do prazo estipulado, para que seja realizada a entrevista presencial. 



**Segundo momento:** 

O segundo momento ocorre após o encerramento da coleta nos setores. Nos domicílios ocupados em que não foi possível realizar a entrevista (seja porque os moradores estavam ausentes durante todo o tempo da coleta, seja porque houve recusa em receber o Recenseador), será realizada uma tentativa de preenchimento pela internet. Essa tarefa pertence ao supervisor, que deverá colocar nas caixas de correio envelopes com as chaves de acesso para o preenchimento dos questionários pela internet. Mas esses procedimentos serão melhor detalhados no manual da Supervisão.



## 6.1. Recomendações gerais

Nos edifícios de apartamentos ou em condomínios, é natural que, antes do contato com os moradores, você tenha que se dirigir ao administrador, síndico ou porteiro, solicitando permissão para fazer contato com os moradores de cada uma das unidades. Informe a este profissional a importância do Censo Demográfico 2022 e do seu contato aos respectivos domicílios. 

Excepcionalmente, se você não obtiver autorização para falar com os moradores, registre a identificação de todas as unidades, seguindo as instruções para o registro dos endereços, e reporte ao seu supervisor. 

Por fim, se, mesmo depois de todas as tentativas de realização da entrevista presencial e da entrega da chave de acesso para o preenchimento pela Internet, o morador não tiver preenchido o questionário, você deverá alterar a espécie Domicílio Particular Permanente Ocupado e escolher a opção "Recusa".



## 6.2. Confirmação do preenchimento do questionário pela internet

A imagem abaixo representa a tela de finalização do questionário preenchido pela internet.

`[IMAGEM OMITIDA]`



# 7. Relatórios no DMC {#secao7}

Alguns relatórios estão disponíveis em seu DMC para você acompanhar o trabalho que realiza no setor, por meio de resumos (dados agregados) e listagens.



## 7.1. Andamento do Setor

Este relatório é um resumo geral do setor. Para facilitar a sua visualização, ele vem separado por temas:

- Identificação do setor;
- Resumo de logradouros;
- Resumo de faces;
- Resumo de unidades;
- Resumo de espécies;
- Resumo de coordenadas;
- Resumo de questionários presenciais;
- Resumo de questionários da internet;
- Total de questionários;
- Resumo de pessoas recenseadas (por espécie de domicílio, por sexo e idade).



## 7.2. Listagem de endereços (Informa a lista de endereços existentes)

A ordenação padrão deste relatório é quadra/face/UV. 

É permitido filtrar as informações de:

- Quadra;
- Face;
- Logradouros;
- Localidade;
- Status;
- Coordenadas;
- Selecionado Pesquisa;
- Data confirmação. 

Ao escolher uma opção de filtragem, basta que você clique na seta ao lado da opção. Em seguida, faça a sua escolha, como na imagem abaixo.

`[IMAGEM OMITIDA]`

> **Atenção**
> Na linha total de registros você poderá observar o total de registros contidos na sua busca (filtro). Ao clicar em "Limpar", os campos são limpos e volta a exibir todos os registros usando a ordenação padrão.



## 7.3. Listagem de questionários (Informa a lista de questionários existentes)

A ordenação padrão deste relatório é quadra/face/UV. 

Podemos filtrar as informações por:

- Quadra;
- Face;
- Espécies;
- Status do questionário.

>**Atenção**
>Na linha total de registros você poderá observar o total de registros contidos na sua busca (filtro). Ao clicar em "Limpar", os campos são limpos e volta a exibir todos os registros usando a ordenação padrão. 

Neste relatório, clicando em "**Abrir**", se o status for pendente ou finalizado, você poderá abrir diretamente o questionário escolhido, sem passar pelas etapas do CNEFE, como definição das espécies ou captura de coordenadas. 



## 7.4. Listagem de espécies (informa a lista de espécies)

A ordenação padrão deste relatório é quadra/face/UV. 

Podemos filtrar as informações por:

- Logradouros;
- Endereços;
- CEP;
- Ponto de referência;
- Espécies.

> **Atenção**
>
> Na linha total de registros você poderá observar o total de registros contidos na sua busca (filtro). Ao clicar em "Limpar", os campos são limpos e volta a exibir todos os registros usando a ordenação padrão.



## 7.5. Resumo PCT

Este é um relatório específico, referente aos Povos e Comunidades Tradicionais e somente será exibido em setores de área indígena ou de área quilombola. Isto é, em Terras Indígenas Oficialmente Delimitadas, agrupamentos indígenas e áreas de interesse operacional indígena; ou em Territórios Quilombolas Oficialmente Delimitados, agrupamentos quilombolas ou áreas de interesse operacional quilombola. Será composto por:

- Identificação do setor;
- Resumo das unidades;
- Resumo dos questionários de abordagem em agrupamento indígena.



## 7.6. Transmissões (Resumo das transmissões)

A ordenação padrão deste relatório é pela data da transmissão em ordem decrescente, mas é permitido que você ordene as informações da forma que lhe for conveniente. As opções são:

- Data da transmissão (em ordem decrescente - padrão);

- Data da transmissão (em ordem crescente);

- Matrícula (em ordem crescente).

  
# 8. Fechamento de Setor {#secao8}

Sempre que você encerrar a coleta de um setor, é necessário verificar se existe alguma pendência no trabalho que acaba de finalizar. 

Pensando na qualidade do seu trabalho, foi criado um procedimento para o Fechamento do Setor. Consiste de um conjunto de verificações que devem ser realizadas antes de dar o setor como coletado. Os itens a serem verificados são os seguintes: 

- **Existência de faces não trabalhadas** - não poderá existir face ainda não trabalhada. Todas as faces deverão estar na situação de "Concluída". 
- **Existência de face pendente** - Não poderá existir face pendente. 
- Existência de face em andamento - Não poderá existir face em andamento. 
- **Existência de logradouro não associado a face** - Cada logradouro deverá estar associado a pelo menos uma face. 
- Existência de endereço com espécie pendente - Não deverá existir endereço com espécie pendente. 
- **Existência de questionários pendentes** - Não deverá existir questionário com pendência. Nesses casos, apenas o ACS, ACM ou Coordenador Censitário de Subárea/CCS poderá fechar o setor com questionários pendentes. 
- **Existência de questionários não finalizados** - Não deverá existir questionário que, embora sem pendência até onde foi preenchido, não foi finalizado, ou seja, respondido até o final. 
- **Existência de pelo menos um questionário de abordagem indígena preenchido em setor de TI ou agrupamento indígena** - Em setores de TI ou agrupamento indígena deve haver o preenchimento de pelo menos um questionário de abordagem indígena. 

Após as verificações acima, estando tudo ok, será apresentada a tela de confirmação do fechamento do setor.



## 8.1. O seu Supervisor

O Agente Censitário Supervisor - ACS acompanhará o seu trabalho desde o início da coleta. Para isso, ele montará uma agenda para acompanhamento em campo e instrução quanto à correta realização do percurso e cobertura do setor. Depois, serão agendados encontros periódicos para que possa orientá-lo, tirar suas dúvidas e corrigir falhas durante todo o período de coleta. 

Com o objetivo de sistematizar e organizar a utilização das ferramentas que o ACS terá disponível para o trabalho de avaliação, foi elaborado um conjunto de procedimentos a serem seguidos. Esse conjunto de procedimentos é chamado de Plano de Supervisão. 

O Plano de Supervisão tem o objetivo de guiar o ACS no gerenciamento do trabalho dos seus recenseadores, permitindo que ele obtenha informações que o ajudem a detectar possíveis falhas de cobertura ou na aplicação dos conceitos do Censo cometidas por seus recenseadores e atuar prontamente na correção destas falhas em tempo hábil. 

As informações produzidas pelos recenseadores serão oferecidas ao acesso do Supervisor por meio de três ferramentas informatizadas:

- os relatórios gerenciais e de supervisão;
- as mensagens dos indicadores gerenciais;
- os pedidos de supervisão.

> **Atenção**
>
> É imprescindível que você e o seu supervisor realizem comunicações periódicas de seus equipamentos com o computador central do IBGE, pois só dessa maneira você manterá sempre o sistema e o seu equipamento com as informações atualizadas. 
>
> Essa comunicação pode ser realizada no posto de coleta ou em qualquer local onde haja possibilidade de conexão e transmissão por meio de rede sem fio. 
>
> Lembre-se de que a integridade dos dados coletados é garantida pela transmissão ao ambiente central, pois do contrário, dados armazenados apenas na memória do seu dispositivo estarão sujeitos a eventos como defeito, dano, extravio ou furto. 
>
> Ao não efetuar transmissões regulares, pode ocorrer tanto um prejuízo pessoal, comprometendo o pagamento do que você já coletou, quanto um prejuízo institucional, colocando em risco a própria coleta. 

Uma das etapas do plano de supervisão são os **pedidos de supervisão**. Esta etapa consiste na conferência do percurso e da cobertura, confirmação da lista de moradores e é apoiada por supervisões complementares. 

O seu trabalho será monitorado pelo mapa digital visualizado pelo Supervisor e pelo ACM juntamente aos Indicadores Gerenciais do SIGC. 

São exibidos no mapa:

- **Coordenadas Anteriores e Atuais**: esta ferramenta permite que o Supervisor visualize as coordenadas associadas aos endereços da lista prévia e aqueles já trabalhados pelo Recenseador.
- **Trajeto**: Além dos pontos de coordenadas associados aos endereços, o Supervisor também poderá visualizar o trajeto do Recenseador, que ilustra os caminhos percorridos no setor ao longo do seu trabalho de coleta. Em vermelho, está sinalizado o setor pelo qual o agente censitário é responsável. Em azul, está sinalizado o percurso realizado pelo agente censitário.



## 8.2. Erros e Fraudes

Em uma grande operação como essa do Censo Demográfico 2022, os agentes estão sujeitos a cometer erros durante o processo de coleta, embora o IBGE trabalhe para evitar a sua incidência. Em uma eventualidade, caso o Recenseador incorra em erros conceituais ou procedimentais, o Supervisor e o ACM, poderão orientá-lo para sanar possíveis dúvidas e corrigir equívocos, de modo a reconduzir o trabalho de coleta para o modo correto.

> **Atenção**
>
> A prática de fraude, no entanto, é crime e não é tolerada pela instituição. Uma vez apurada a fraude, o agente responderá por seus atos. Caso ainda esteja atuando como Recenseador, o mesmo será imediatamente desligado das atividades do Censo. 

Além disso, o recebimento de valores percebidos indevidamente pelo Recenseador, inclusive aqueles havidos por fraude, dolo ou má-fé, implicará a devolução ao erário do total recebido. A reposição ao erário pode ocorrer mesmo após encerrado o vínculo do Recenseador com o IBGE. 

Pronto! Você conheceu todos os quesitos dos questionários (básico e amostra) e aprendeu informações e orientações necessárias ao preenchimento de cada quesito.



# 9. Considerações Finais {#secao9}

Você chegou ao final do Manual de Entrevista! Nele, você foi apresentado a conceitos e informações considerados primordiais pelo IBGE. Agora é só você se dedicar ao treinamento presencial, aplicar atentamente tudo o que foi visto aqui e contribuir para o Censo Demográfico 2022. E não se esqueça de procurar seu Supervisor em caso de dúvidas. 

**Lembre-se:** é muito importante que você exerça seu trabalho bem preparado, com profissionalismo e segurança.



# Glossário {#glossario}

**Combo**: palavra em inglês que é uma abreviação do termo *combination*. Em português, pode ter os significados de sequência, conjunto ou combinação. 

**Cônjuge**: o outro parceiro, companheiro ou ente em um casamento, união civil ou união estável. O termo é neutro em termos de gênero, ao passo que um cônjuge masculino é um marido e um cônjuge feminino é uma esposa. 

**Consanguíneo**: quem tem parentesco sanguíneo, biológico ou hereditário. Indivíduos com parentesco e ascendência comum.

**Quesito**: sinônimo de questionamento ou pergunta feita com o objetivo de obter uma resposta ou informação.



# Anexo I - Mensagens para o Informante {#anexo1}

## Lista de Moradores

- Quantidade de crianças de 0 a 9 anos de idade listadas maior do que a informada anteriormente. Confirma? (sim/não).
- Quantidade de moradores listados maior do que o informado anteriormente. Confirma? (sim/não).
- Total de crianças de 0 a 9 anos é inferior ao informado anteriormente. Deseja adicionar crianças? (sim/não).
- Existe mais alguma pessoa que normalmente vive aqui, mas está ausente por motivo de trabalho, estudo, internação hospitalar, a passeio ou por outra razão? (sim/não).

## Cor ou Raça

- Considera-se como cor ou raça amarela a pessoa de origem oriental, por exemplo: Japonesa, Chinesa, Coreana. Você confirma sua escolha? (sim/não).

## Educação

- Pessoa não frequenta escola com idade entre 6 e 14 anos. Confirma? (sim/não).
- Pessoa frequenta escola com mais de 90 anos. Confirma? (sim/não).
- Pessoa com 5 ou 6 anos de idade frequentando creche. Confirma?
- Pessoa com idade entre 7 e 9 anos cursando Pré-escola. Confirma? (sim/não).
- Pessoa com idade entre 12 e 13 anos cursando Alfabetização de Jovens e Adultos. Confirma? (sim/não).
- Pessoa com idade entre 11 e 12 anos cursando EJA do Ensino Fundamental. Confirma? (sim/não).
- Pessoa que não sabe ler e escrever cursando escola regular do ensino fundamental no 5º ano ou acima. Confirma? (sim/não).
- Pessoa que não sabe ler e escrever cursando EJA do Ensino Fundamental seriado na 3ª série ou acima. Confirma? (sim/não).
- Pessoa que não sabe ler e escrever e frequentou escola regular do ensino fundamental de nove anos com 4º ano concluído ou acima. Confirma? (sim/não).
- Pessoa não terminou nem mesmo o primeiro ano do curso que frequentou. Confirma? (sim/não).
- Pessoa não sabe ler e escrever e frequentou o antigo primário com 3ª série concluída ou acima. Confirma? (sim/não).
- Pessoa que não sabe ler e escrever e frequentou escola regular do ensino fundamental ou do 1º grau de oito anos ou com 3ª série concluída ou acima. Confirma? (sim/não).
- Pessoa que não sabe ler e escrever e frequentou EJA do Ensino Fundamental com 2ª série concluída ou acima. Confirma? (sim/não).
- Pessoa não terminou nem mesmo a primeira série do curso que frequentou. Confirma? (sim/não).

## Posição na Ocupação

- ATENÇÃO: Empregadores têm pelo menos um empregado. Confirma? (sim/não).
- ATENÇÃO: Trabalhadores por conta própria não têm empregados. Confirma? (sim/não).

## Rendimento Bruto (Renda Zero)

- Alguém no domicílio recebeu doação ou ajuda de parentes ou amigos, pensão alimentícia, seguro desemprego ou rendimento de outra origem? (sim/não).
