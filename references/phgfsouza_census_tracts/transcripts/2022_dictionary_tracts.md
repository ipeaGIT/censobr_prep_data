# Base de Informações do Censo Demográfico 2022: dicionário de variáveis por setor censitário

## Descrição

Este arquivo é uma versão em Markdown da documentação disponível no arquivo `docs/original/2022_dictionary_tracts.xlsx`, que reúne dicionários de variáveis da base agregada por setor censitário do Censo Demográfico 2022. Como a fonte disponível neste repositório é uma planilha Excel, e não um manual em PDF com texto corrido, esta documentação reorganiza as informações tabulares do workbook em um formato mais facilmente *machine-readable* para uso por humanos e agentes de IA.

- Gerado em: 2026-04-23

## Fonte de dados

A fonte principal desta transcrição é o arquivo `docs/original/2022_dictionary_tracts.xlsx`, disponível neste repositório.

## Processamento

O conteúdo foi extraído diretamente da estrutura do workbook e reorganizado editorialmente para aproximar o estilo de `docs/2010_dictionary_tracts.md`. Como o arquivo de 2022 não traz seções narrativas equivalentes às da documentação de 2010, a organização abaixo combina transcrição fiel das planilhas com seções introdutórias sintéticas. As principais intervenções editoriais foram:

* criação de uma estrutura numerada de seções e subseções para documentar o workbook;
* preservação dos nomes das planilhas como unidades documentais principais;
* padronização dos blocos repetidos em **Fonte de dados** e **Dicionário de dados**;
* associação das linhas de categorias à variável imediatamente anterior na planilha, para não perder a informação categórica em tabelas lineares;
* preservação da coluna **Cobertura da pesquisa do entorno** apenas na planilha `Entorno`, onde ela existe na fonte;
* exclusão da linha de cabeçalho interno repetido da planilha (`Nome no {censobr}` / `Nome Original`) das tabelas finais.

#  Sumário

1. [Introdução](#intro)
2. [Estrutura do arquivo Excel](#estrutura)
3. [Relação das siglas do arquivo básico](#siglas)
4. [Relação das variáveis das planilhas](#dicionarios)
5. [Referências](#referencias)

# 1\. Introdução {#intro}

O workbook `2022_dictionary_tracts.xlsx` reúne a documentação tabular das variáveis agregadas por setor censitário do Censo Demográfico 2022 em nove planilhas: uma planilha de siglas (`Siglas_Basico`) e oito planilhas temáticas com dicionários de variáveis (`Basico`, `Pessoas`, `Domicilios`, `Obitos`, `Indigenas`, `Quilombolas`, `ResponsavelRenda` e `Entorno`).

Diferentemente da documentação de 2010, que inclui texto explicativo extenso sobre conceitos, coleta e organização do arquivo, a fonte de 2022 disponível neste repositório é essencialmente tabular. Por isso, as seções introdutórias desta transcrição têm caráter descritivo e metodológico: elas sintetizam a estrutura observada no Excel, mas não substituem uma documentação narrativa oficial do IBGE.

# 2\. Estrutura do arquivo Excel {#estrutura}

## 2.1. Organização das planilhas {#planilhas}

|Planilha|Conteúdo resumido|Tipo de entrada|Número de registros transcritos|
|-|-|-:|-:|
|Siglas_Basico|Siglas e abreviações do arquivo básico|Siglas|7|
|Basico|Características do Setor; Identificação Geográfica|Variáveis|36|
|Pessoas|Alfabetização; Cor ou Raça; Demografia; Identificação Geográfica; Parentesco|Variáveis|704|
|Domicilios|Características do Domicílio - Parte 1; Características do Domicílio - Parte 2; Características do Domicílio - Parte 3; Identificação Geográfica|Variáveis|672|
|Obitos|Identificação Geográfica; Mortalidade|Variáveis|122|
|Indigenas|Domicílio; Identificação Geográfica; Pessoas|Variáveis|1058|
|Quilombolas|Domicílio; Identificação Geográfica; Pessoas|Variáveis|980|
|ResponsavelRenda|Identificação Geográfica; Renda do Responsável|Variáveis|34|
|Entorno|Domicílios particulares permanentes ocupados; Faces de quadra; Identificação Geográfica; Moradores em Domicílios particulares permanentes ocupados|Variáveis|134|

## 2.2. Convenções de leitura {#convencoes}

As tabelas desta transcrição seguem as convenções abaixo:

* **Tema**: agrupamento temático informado na planilha de origem;
* **Nome no {censobr}**: nome padronizado da variável conforme aparece no workbook;
* **Nome original**: nome original da variável na base/documentação;
* **Descrição da variável**: descrição textual da variável na planilha de origem; quando a fonte apresenta linhas adicionais de categorias logo abaixo de uma variável, essas categorias foram incorporadas é descrição;
* **Cobertura da pesquisa do entorno**: coluna adicional preservada apenas na planilha `Entorno`;
* as planilhas com dicionário de variáveis mantêm a ordem original do workbook.

## 2.3. Limitações da documentação {#limitacoes}

Como a fonte utilizada aqui é um arquivo Excel com tabelas, esta versão em `markdown` não contém seções equivalentes às notas técnicas, conceitos e definições presentes em `docs/2010_dictionary_tracts.md`. Quando a planilha não informa explicitamente o significado substantivo de um agrupamento, esta transcrição evita inferências além do que aparece nas colunas do workbook.

# 3\. Relação das siglas do arquivo básico {#siglas}

A planilha `Siglas_Basico` lista abreviações usadas na documentação do arquivo básico.

|Sigla|Descrição|
|-|-|
|DPPO|Domicílio Particular Permanente Ocupado|
|DPIO|Domicílio Particular Improvisado Ocupado|
|DPPV|Domicílio Particular Permanente Vago|
|DPPUO|Domicílio Particular Permanente de Uso Ocasional|
|DCCM|Domicílio Coletivo Com Morador|
|DCSM|Domicílio Coletivo Sem Morador|
|DPO|Domicílio Particular Ocupado (DPPO + DPIO)|

# 4\. Relação das variáveis das planilhas {#dicionarios}

## 4.1. Arquivo Básico {#dic_basico}

### Fonte de dados

* Planilha `Basico` do arquivo `docs/original/2022_dictionary_tracts.xlsx`

Temas presentes na planilha: `Características do Setor`; `Identificação Geográfica`.

### Dicionário de dados

|Tema|Nome no {censobr}|Nome original|Descrição da variável|
|-|-|-|-|
|Identificação Geográfica|code_tract|CD_SETOR|Geocódigo de Setor Censitário|
|Identificação Geográfica|situacao|SITUACAO|Situação do Setor Censitário Categorias observadas na planilha: `Urbana`; `Rural`.|
|Identificação Geográfica|code_situacao|CD_SIT|Situação detalhada do Setor Censitário Categorias: `1` = Área urbana de alta densidade de edificações de cidade ou vila; `2` = Área urbana de baixa densidade de edificações de cidade ou vila; `3` = Núcleo urbano; `5` = Aglomerado rural - Povoado; `6` = Aglomerado rural - Núcleo rural; `7` = Aglomerado rural - Lugarejo; `8` = Área rural (exclusive aglomerados); `9` = Massas de água.|
|Identificação Geográfica|code_type|CD_TIPO|Tipo do Setor Censitário Categorias: `0` = Não especial; `1` = Favela e Comunidade Urbana; `2` = Quartel e base militar; `3` = Alojamento / acampamento; `4` = Setor com baixo patamar domiciliar; `5` = Agrupamento indígena; `6` = Unidade prisional; `7` = Convento / hospital / ILPI / IACA; `8` = Agrovila do PA; `9` = Agrupamento quilombola.|
|Identificação Geográfica|area_km2|AREA_KM2|Área do Setor Censitário em quilômetros quadrados|
|Identificação Geográfica|code_region|CD_REGIAO|Código das Grandes Regiões (Regiões Geográficas)|
|Identificação Geográfica|name_region|NM_REGIAO|Nome das Grandes Regiões (Regiões Geográficas)|
|Identificação Geográfica|code_state|CD_UF|Código da Unidade da Federação|
|Identificação Geográfica|name_state|NM_UF|Nome da Unidade da Federação|
|Identificação Geográfica|code_muni|CD_MUN|Código do Município|
|Identificação Geográfica|name_muni|NM_MUN|Nome do Município|
|Identificação Geográfica|code_district|CD_DIST|Código do Distrito|
|Identificação Geográfica|name_district|NM_DIST|Nome do Distrito|
|Identificação Geográfica|code_subdistrict|CD_SUBDIST|Código do Subdistrito|
|Identificação Geográfica|name_subdistrict|NM_SUBDIST|Nome do Subdistrito|
|Identificação Geográfica|code_neighborhood|CD_BAIRRO|Código do Bairro|
|Identificação Geográfica|name_neighborhood|NM_BAIRRO|Nome do Bairro|
|Identificação Geográfica|code_nucleo_urbano|CD_NU|Código do Núcleo Urbano|
|Identificação Geográfica|name_nucleo_urbano|NM_NU|Nome do Núcleo Urbano|
|Identificação Geográfica|code_favela|CD_FCU|Código da Favela ou Comunidade Urbana|
|Identificação Geográfica|name_favela|NM_FCU|Nome da Favela ou Comunidade Urbana|
|Identificação Geográfica|code_aglomerado|CD_AGLOM|Código do Aglomerado|
|Identificação Geográfica|name_aglomerado|NM_AGLOM|Nome do Aglomerado|
|Identificação Geográfica|code_intermediate|CD_RGINT|Código da Região Geográfica Intermediária|
|Identificação Geográfica|name_intermediate|NM_RGINT|Nome da Região Geográfica Intermediária|
|Identificação Geográfica|code_immediate|CD_RGI|Código da Região Geográfica Imediata|
|Identificação Geográfica|name_immediate|NM_RGI|Nome da Região Geográfica Imediata|
|Identificação Geográfica|code_urban_concentration|CD_CONCURB|Código da Concentração Urbana|
|Identificação Geográfica|name_urban_concentration|NM_CONCURB|Nome da Concentração Urbana|
|Características do Setor|V0001|V0001|Total de pessoas|
|Características do Setor|V0002|V0002|Total de Domicílios (DPPO + DPPV + DPPUO + DPIO + DCCM + DCSM)|
|Características do Setor|V0003|V0003|Total de Domicílios Particulares (DPPO + DPPV + DPPUO + DPIO)|
|Características do Setor|V0004|V0004|Total de Domicílios Coletivos (DCCM + DCSM)|
|Características do Setor|V0005|V0005|Média de moradores em Domicílios Particulares Ocupados (Total pessoas em Domicílios Particulares Ocupados / DPPO + DPIO)|
|Características do Setor|V0006|V0006|Percentual de Domicílios Particulares Ocupados Imputados (Total DPO imputados / Total DPO)|
|Características do Setor|V0007|V0007|Total de Domicílios Particulares Ocupados (DPPO + DPIO)|

## 4.2. Arquivo Pessoas {#dic_pessoas}

### Fonte de dados

* Planilha `Pessoas` do arquivo `docs/original/2022_dictionary_tracts.xlsx`

Temas presentes na planilha: `Alfabetização`; `Cor ou Raça`; `Demografia`; `Identificação Geográfica`; `Parentesco`.

### Dicionário de dados

|Tema|Nome no {censobr}|Nome original|Descrição da variável|
|-|-|-|-|
|Identificação Geográfica|code_tract|CD_SETOR|Geocódigo de Setor Censitário|
|Identificação Geográfica|situacao|SITUACAO|Situação do Setor Censitário Categorias observadas na planilha: `Urbana`; `Rural`.|
|Identificação Geográfica|code_situacao|CD_SIT|Situação detalhada do Setor Censitário Categorias: `1` = Área urbana de alta densidade de edificações de cidade ou vila; `2` = Área urbana de baixa densidade de edificações de cidade ou vila; `3` = Núcleo urbano; `5` = Aglomerado rural - Povoado; `6` = Aglomerado rural - Núcleo rural; `7` = Aglomerado rural - Lugarejo; `8` = Área rural (exclusive aglomerados); `9` = Massas de água.|
|Identificação Geográfica|code_type|CD_TIPO|Tipo do Setor Censitário Categorias: `0` = Não especial; `1` = Favela e Comunidade Urbana; `2` = Quartel e base militar; `3` = Alojamento / acampamento; `4` = Setor com baixo patamar domiciliar; `5` = Agrupamento indígena; `6` = Unidade prisional; `7` = Convento / hospital / ILPI / IACA; `8` = Agrovila do PA; `9` = Agrupamento quilombola.|
|Identificação Geográfica|area_km2|AREA_KM2|Área do Setor Censitário em quilômetros quadrados|
|Identificação Geográfica|code_region|CD_REGIAO|Código das Grandes Regiões (Regiões Geográficas)|
|Identificação Geográfica|name_region|NM_REGIAO|Nome das Grandes Regiões (Regiões Geográficas)|
|Identificação Geográfica|code_state|CD_UF|Código da Unidade da Federação|
|Identificação Geográfica|name_state|NM_UF|Nome da Unidade da Federação|
|Identificação Geográfica|code_muni|CD_MUN|Código do Município|
|Identificação Geográfica|name_muni|NM_MUN|Nome do Município|
|Identificação Geográfica|code_district|CD_DIST|Código do Distrito|
|Identificação Geográfica|name_district|NM_DIST|Nome do Distrito|
|Identificação Geográfica|code_subdistrict|CD_SUBDIST|Código do Subdistrito|
|Identificação Geográfica|name_subdistrict|NM_SUBDIST|Nome do Subdistrito|
|Identificação Geográfica|code_neighborhood|CD_BAIRRO|Código do Bairro|
|Identificação Geográfica|name_neighborhood|NM_BAIRRO|Nome do Bairro|
|Identificação Geográfica|code_nucleo_urbano|CD_NU|Código do Núcleo Urbano|
|Identificação Geográfica|name_nucleo_urbano|NM_NU|Nome do Núcleo Urbano|
|Identificação Geográfica|code_favela|CD_FCU|Código da Favela ou Comunidade Urbana|
|Identificação Geográfica|name_favela|NM_FCU|Nome da Favela ou Comunidade Urbana|
|Identificação Geográfica|code_aglomerado|CD_AGLOM|Código do Aglomerado|
|Identificação Geográfica|name_aglomerado|NM_AGLOM|Nome do Aglomerado|
|Identificação Geográfica|code_intermediate|CD_RGINT|Código da Região Geográfica Intermediária|
|Identificação Geográfica|name_intermediate|NM_RGINT|Nome da Região Geográfica Intermediária|
|Identificação Geográfica|code_immediate|CD_RGI|Código da Região Geográfica Imediata|
|Identificação Geográfica|name_immediate|NM_RGI|Nome da Região Geográfica Imediata|
|Identificação Geográfica|code_urban_concentration|CD_CONCURB|Código da Concentração Urbana|
|Identificação Geográfica|name_urban_concentration|NM_CONCURB|Nome da Concentração Urbana|
|Alfabetização|alfabetizacao_V00644|V00644|15 a 19 anos|
|Alfabetização|alfabetizacao_V00645|V00645|20 a 24 anos|
|Alfabetização|alfabetizacao_V00646|V00646|25 a 29 anos|
|Alfabetização|alfabetizacao_V00647|V00647|30 a 34 anos|
|Alfabetização|alfabetizacao_V00648|V00648|35 a 39 anos|
|Alfabetização|alfabetizacao_V00649|V00649|40 a 44 anos|
|Alfabetização|alfabetizacao_V00650|V00650|45 a 49 anos|
|Alfabetização|alfabetizacao_V00651|V00651|50 a 54 anos|
|Alfabetização|alfabetizacao_V00652|V00652|55 a 59 anos|
|Alfabetização|alfabetizacao_V00653|V00653|60 a 64 anos|
|Alfabetização|alfabetizacao_V00654|V00654|65 a 69 anos|
|Alfabetização|alfabetizacao_V00655|V00655|70 a 79 anos|
|Alfabetização|alfabetizacao_V00656|V00656|80 anos ou mais|
|Alfabetização|alfabetizacao_V00657|V00657|15 a 19 anos, Cor ou raça é branca|
|Alfabetização|alfabetizacao_V00658|V00658|15 a 19 anos, Cor ou raça é preta|
|Alfabetização|alfabetizacao_V00659|V00659|15 a 19 anos, Cor ou raça é amarela|
|Alfabetização|alfabetizacao_V00660|V00660|15 a 19 anos, Cor ou raça é parda|
|Alfabetização|alfabetizacao_V00661|V00661|15 a 19 anos, Cor ou raça é indígena|
|Alfabetização|alfabetizacao_V00662|V00662|20 a 24 anos, Cor ou raça é branca|
|Alfabetização|alfabetizacao_V00663|V00663|20 a 24 anos, Cor ou raça é preta|
|Alfabetização|alfabetizacao_V00664|V00664|20 a 24 anos, Cor ou raça é amarela|
|Alfabetização|alfabetizacao_V00665|V00665|20 a 24 anos, Cor ou raça é parda|
|Alfabetização|alfabetizacao_V00666|V00666|20 a 24 anos, Cor ou raça é indígena|
|Alfabetização|alfabetizacao_V00667|V00667|25 a 29 anos, Cor ou raça é branca|
|Alfabetização|alfabetizacao_V00668|V00668|25 a 29 anos, Cor ou raça é preta|
|Alfabetização|alfabetizacao_V00669|V00669|25 a 29 anos, Cor ou raça é amarela|
|Alfabetização|alfabetizacao_V00670|V00670|25 a 29 anos, Cor ou raça é parda|
|Alfabetização|alfabetizacao_V00671|V00671|25 a 29 anos, Cor ou raça é indígena|
|Alfabetização|alfabetizacao_V00672|V00672|30 a 34 anos, Cor ou raça é branca|
|Alfabetização|alfabetizacao_V00673|V00673|30 a 34 anos, Cor ou raça é preta|
|Alfabetização|alfabetizacao_V00674|V00674|30 a 34 anos, Cor ou raça é amarela|
|Alfabetização|alfabetizacao_V00675|V00675|30 a 34 anos, Cor ou raça é parda|
|Alfabetização|alfabetizacao_V00676|V00676|30 a 34 anos, Cor ou raça é indígena|
|Alfabetização|alfabetizacao_V00677|V00677|35 a 39 anos, Cor ou raça é branca|
|Alfabetização|alfabetizacao_V00678|V00678|35 a 39 anos, Cor ou raça é preta|
|Alfabetização|alfabetizacao_V00679|V00679|35 a 39 anos, Cor ou raça é amarela|
|Alfabetização|alfabetizacao_V00680|V00680|35 a 39 anos, Cor ou raça é parda|
|Alfabetização|alfabetizacao_V00681|V00681|35 a 39 anos, Cor ou raça é indígena|
|Alfabetização|alfabetizacao_V00682|V00682|40 a 44 anos, Cor ou raça é branca|
|Alfabetização|alfabetizacao_V00683|V00683|40 a 44 anos, Cor ou raça é preta|
|Alfabetização|alfabetizacao_V00684|V00684|40 a 44 anos, Cor ou raça é amarela|
|Alfabetização|alfabetizacao_V00685|V00685|40 a 44 anos, Cor ou raça é parda|
|Alfabetização|alfabetizacao_V00686|V00686|40 a 44 anos, Cor ou raça é indígena|
|Alfabetização|alfabetizacao_V00687|V00687|45 a 49 anos, Cor ou raça é branca|
|Alfabetização|alfabetizacao_V00688|V00688|45 a 49 anos, Cor ou raça é preta|
|Alfabetização|alfabetizacao_V00689|V00689|45 a 49 anos, Cor ou raça é amarela|
|Alfabetização|alfabetizacao_V00690|V00690|45 a 49 anos, Cor ou raça é parda|
|Alfabetização|alfabetizacao_V00691|V00691|45 a 49 anos, Cor ou raça é indígena|
|Alfabetização|alfabetizacao_V00692|V00692|50 a 54 anos, Cor ou raça é branca|
|Alfabetização|alfabetizacao_V00693|V00693|50 a 54 anos, Cor ou raça é preta|
|Alfabetização|alfabetizacao_V00694|V00694|50 a 54 anos, Cor ou raça é amarela|
|Alfabetização|alfabetizacao_V00695|V00695|50 a 54 anos, Cor ou raça é parda|
|Alfabetização|alfabetizacao_V00696|V00696|50 a 54 anos, Cor ou raça é indígena|
|Alfabetização|alfabetizacao_V00697|V00697|55 a 59 anos, Cor ou raça é branca|
|Alfabetização|alfabetizacao_V00698|V00698|55 a 59 anos, Cor ou raça é preta|
|Alfabetização|alfabetizacao_V00699|V00699|55 a 59 anos, Cor ou raça é amarela|
|Alfabetização|alfabetizacao_V00700|V00700|55 a 59 anos, Cor ou raça é parda|
|Alfabetização|alfabetizacao_V00701|V00701|55 a 59 anos, Cor ou raça é indígena|
|Alfabetização|alfabetizacao_V00702|V00702|60 a 64 anos, Cor ou raça é branca|
|Alfabetização|alfabetizacao_V00703|V00703|60 a 64 anos, Cor ou raça é preta|
|Alfabetização|alfabetizacao_V00704|V00704|60 a 64 anos, Cor ou raça é amarela|
|Alfabetização|alfabetizacao_V00705|V00705|60 a 64 anos, Cor ou raça é parda|
|Alfabetização|alfabetizacao_V00706|V00706|60 a 64 anos, Cor ou raça é indígena|
|Alfabetização|alfabetizacao_V00707|V00707|65 a 69 anos, Cor ou raça é branca|
|Alfabetização|alfabetizacao_V00708|V00708|65 a 69 anos, Cor ou raça é preta|
|Alfabetização|alfabetizacao_V00709|V00709|65 a 69 anos, Cor ou raça é amarela|
|Alfabetização|alfabetizacao_V00710|V00710|65 a 69 anos, Cor ou raça é parda|
|Alfabetização|alfabetizacao_V00711|V00711|65 a 69 anos, Cor ou raça é indígena|
|Alfabetização|alfabetizacao_V00712|V00712|70 a 79 anos, Cor ou raça é branca|
|Alfabetização|alfabetizacao_V00713|V00713|70 a 79 anos, Cor ou raça é preta|
|Alfabetização|alfabetizacao_V00714|V00714|70 a 79 anos, Cor ou raça é amarela|
|Alfabetização|alfabetizacao_V00715|V00715|70 a 79 anos, Cor ou raça é parda|
|Alfabetização|alfabetizacao_V00716|V00716|70 a 79 anos, Cor ou raça é indígena|
|Alfabetização|alfabetizacao_V00717|V00717|80 anos ou mais, Cor ou raça é branca|
|Alfabetização|alfabetizacao_V00718|V00718|80 anos ou mais, Cor ou raça é preta|
|Alfabetização|alfabetizacao_V00719|V00719|80 anos ou mais, Cor ou raça é amarela|
|Alfabetização|alfabetizacao_V00720|V00720|80 anos ou mais, Cor ou raça é parda|
|Alfabetização|alfabetizacao_V00721|V00721|80 anos ou mais, Cor ou raça é indígena|
|Alfabetização|alfabetizacao_V00722|V00722|Sexo masculino, 15 a 19 anos|
|Alfabetização|alfabetizacao_V00723|V00723|Sexo masculino, 20 a 24 anos|
|Alfabetização|alfabetizacao_V00724|V00724|Sexo masculino, 25 a 29 anos|
|Alfabetização|alfabetizacao_V00725|V00725|Sexo masculino, 30 a 34 anos|
|Alfabetização|alfabetizacao_V00726|V00726|Sexo masculino, 35 a 39 anos|
|Alfabetização|alfabetizacao_V00727|V00727|Sexo masculino, 40 a 44 anos|
|Alfabetização|alfabetizacao_V00728|V00728|Sexo masculino, 45 a 49 anos|
|Alfabetização|alfabetizacao_V00729|V00729|Sexo masculino, 50 a 54 anos|
|Alfabetização|alfabetizacao_V00730|V00730|Sexo masculino, 55 a 59 anos|
|Alfabetização|alfabetizacao_V00731|V00731|Sexo masculino, 60 a 64 anos|
|Alfabetização|alfabetizacao_V00732|V00732|Sexo masculino, 65 a 69 anos|
|Alfabetização|alfabetizacao_V00733|V00733|Sexo masculino, 70 a 79 anos|
|Alfabetização|alfabetizacao_V00734|V00734|Sexo masculino, 80 anos ou mais|
|Alfabetização|alfabetizacao_V00735|V00735|Sexo feminino, 15 a 19 anos|
|Alfabetização|alfabetizacao_V00736|V00736|Sexo feminino, 20 a 24 anos|
|Alfabetização|alfabetizacao_V00737|V00737|Sexo feminino, 25 a 29 anos|
|Alfabetização|alfabetizacao_V00738|V00738|Sexo feminino, 30 a 34 anos|
|Alfabetização|alfabetizacao_V00739|V00739|Sexo feminino, 35 a 39 anos|
|Alfabetização|alfabetizacao_V00740|V00740|Sexo feminino, 40 a 44 anos|
|Alfabetização|alfabetizacao_V00741|V00741|Sexo feminino, 45 a 49 anos|
|Alfabetização|alfabetizacao_V00742|V00742|Sexo feminino, 50 a 54 anos|
|Alfabetização|alfabetizacao_V00743|V00743|Sexo feminino, 55 a 59 anos|
|Alfabetização|alfabetizacao_V00744|V00744|Sexo feminino, 60 a 64 anos|
|Alfabetização|alfabetizacao_V00745|V00745|Sexo feminino, 65 a 69 anos|
|Alfabetização|alfabetizacao_V00746|V00746|Sexo feminino, 70 a 79 anos|
|Alfabetização|alfabetizacao_V00747|V00747|Sexo feminino, 80 anos ou mais|
|Alfabetização|alfabetizacao_V00748|V00748|Pessoas alfabetizadas, 15 a 19 anos|
|Alfabetização|alfabetizacao_V00749|V00749|Pessoas alfabetizadas, 20 a 24 anos|
|Alfabetização|alfabetizacao_V00750|V00750|Pessoas alfabetizadas, 25 a 29 anos|
|Alfabetização|alfabetizacao_V00751|V00751|Pessoas alfabetizadas, 30 a 34 anos|
|Alfabetização|alfabetizacao_V00752|V00752|Pessoas alfabetizadas, 35 a 39 anos|
|Alfabetização|alfabetizacao_V00753|V00753|Pessoas alfabetizadas, 40 a 44 anos|
|Alfabetização|alfabetizacao_V00754|V00754|Pessoas alfabetizadas, 45 a 49 anos|
|Alfabetização|alfabetizacao_V00755|V00755|Pessoas alfabetizadas, 50 a 54 anos|
|Alfabetização|alfabetizacao_V00756|V00756|Pessoas alfabetizadas, 55 a 59 anos|
|Alfabetização|alfabetizacao_V00757|V00757|Pessoas alfabetizadas, 60 a 64 anos|
|Alfabetização|alfabetizacao_V00758|V00758|Pessoas alfabetizadas, 65 a 69 anos|
|Alfabetização|alfabetizacao_V00759|V00759|Pessoas alfabetizadas, 70 a 79 anos|
|Alfabetização|alfabetizacao_V00760|V00760|Pessoas alfabetizadas, 80 anos ou mais|
|Alfabetização|alfabetizacao_V00761|V00761|Pessoas alfabetizadas, 15 a 19 anos, Cor ou raça é branca|
|Alfabetização|alfabetizacao_V00762|V00762|Pessoas alfabetizadas, 15 a 19 anos, Cor ou raça é preta|
|Alfabetização|alfabetizacao_V00763|V00763|Pessoas alfabetizadas, 15 a 19 anos, Cor ou raça é amarela|
|Alfabetização|alfabetizacao_V00764|V00764|Pessoas alfabetizadas, 15 a 19 anos, Cor ou raça é parda|
|Alfabetização|alfabetizacao_V00765|V00765|Pessoas alfabetizadas, 15 a 19 anos, Cor ou raça é indígena|
|Alfabetização|alfabetizacao_V00766|V00766|Pessoas alfabetizadas, 20 a 24 anos, Cor ou raça é branca|
|Alfabetização|alfabetizacao_V00767|V00767|Pessoas alfabetizadas, 20 a 24 anos, Cor ou raça é preta|
|Alfabetização|alfabetizacao_V00768|V00768|Pessoas alfabetizadas, 20 a 24 anos, Cor ou raça é amarela|
|Alfabetização|alfabetizacao_V00769|V00769|Pessoas alfabetizadas, 20 a 24 anos, Cor ou raça é parda|
|Alfabetização|alfabetizacao_V00770|V00770|Pessoas alfabetizadas, 20 a 24 anos, Cor ou raça é indígena|
|Alfabetização|alfabetizacao_V00771|V00771|Pessoas alfabetizadas, 25 a 29 anos, Cor ou raça é branca|
|Alfabetização|alfabetizacao_V00772|V00772|Pessoas alfabetizadas, 25 a 29 anos, Cor ou raça é preta|
|Alfabetização|alfabetizacao_V00773|V00773|Pessoas alfabetizadas, 25 a 29 anos, Cor ou raça é amarela|
|Alfabetização|alfabetizacao_V00774|V00774|Pessoas alfabetizadas, 25 a 29 anos, Cor ou raça é parda|
|Alfabetização|alfabetizacao_V00775|V00775|Pessoas alfabetizadas, 25 a 29 anos, Cor ou raça é indígena|
|Alfabetização|alfabetizacao_V00776|V00776|Pessoas alfabetizadas, 30 a 34 anos, Cor ou raça é branca|
|Alfabetização|alfabetizacao_V00777|V00777|Pessoas alfabetizadas, 30 a 34 anos, Cor ou raça é preta|
|Alfabetização|alfabetizacao_V00778|V00778|Pessoas alfabetizadas, 30 a 34 anos, Cor ou raça é amarela|
|Alfabetização|alfabetizacao_V00779|V00779|Pessoas alfabetizadas, 30 a 34 anos, Cor ou raça é parda|
|Alfabetização|alfabetizacao_V00780|V00780|Pessoas alfabetizadas, 30 a 34 anos, Cor ou raça é indígena|
|Alfabetização|alfabetizacao_V00781|V00781|Pessoas alfabetizadas, 35 a 39 anos, Cor ou raça é branca|
|Alfabetização|alfabetizacao_V00782|V00782|Pessoas alfabetizadas, 35 a 39 anos, Cor ou raça é preta|
|Alfabetização|alfabetizacao_V00783|V00783|Pessoas alfabetizadas, 35 a 39 anos, Cor ou raça é amarela|
|Alfabetização|alfabetizacao_V00784|V00784|Pessoas alfabetizadas, 35 a 39 anos, Cor ou raça é parda|
|Alfabetização|alfabetizacao_V00785|V00785|Pessoas alfabetizadas, 35 a 39 anos, Cor ou raça é indígena|
|Alfabetização|alfabetizacao_V00786|V00786|Pessoas alfabetizadas, 40 a 44 anos, Cor ou raça é branca|
|Alfabetização|alfabetizacao_V00787|V00787|Pessoas alfabetizadas, 40 a 44 anos, Cor ou raça é preta|
|Alfabetização|alfabetizacao_V00788|V00788|Pessoas alfabetizadas, 40 a 44 anos, Cor ou raça é amarela|
|Alfabetização|alfabetizacao_V00789|V00789|Pessoas alfabetizadas, 40 a 44 anos, Cor ou raça é parda|
|Alfabetização|alfabetizacao_V00790|V00790|Pessoas alfabetizadas, 40 a 44 anos, Cor ou raça é indígena|
|Alfabetização|alfabetizacao_V00791|V00791|Pessoas alfabetizadas, 45 a 49 anos, Cor ou raça é branca|
|Alfabetização|alfabetizacao_V00792|V00792|Pessoas alfabetizadas, 45 a 49 anos, Cor ou raça é preta|
|Alfabetização|alfabetizacao_V00793|V00793|Pessoas alfabetizadas, 45 a 49 anos, Cor ou raça é amarela|
|Alfabetização|alfabetizacao_V00794|V00794|Pessoas alfabetizadas, 45 a 49 anos, Cor ou raça é parda|
|Alfabetização|alfabetizacao_V00795|V00795|Pessoas alfabetizadas, 45 a 49 anos, Cor ou raça é indígena|
|Alfabetização|alfabetizacao_V00796|V00796|Pessoas alfabetizadas, 50 a 54 anos, Cor ou raça é branca|
|Alfabetização|alfabetizacao_V00797|V00797|Pessoas alfabetizadas, 50 a 54 anos, Cor ou raça é preta|
|Alfabetização|alfabetizacao_V00798|V00798|Pessoas alfabetizadas, 50 a 54 anos, Cor ou raça é amarela|
|Alfabetização|alfabetizacao_V00799|V00799|Pessoas alfabetizadas, 50 a 54 anos, Cor ou raça é parda|
|Alfabetização|alfabetizacao_V00800|V00800|Pessoas alfabetizadas, 50 a 54 anos, Cor ou raça é indígena|
|Alfabetização|alfabetizacao_V00801|V00801|Pessoas alfabetizadas, 55 a 59 anos, Cor ou raça é branca|
|Alfabetização|alfabetizacao_V00802|V00802|Pessoas alfabetizadas, 55 a 59 anos, Cor ou raça é preta|
|Alfabetização|alfabetizacao_V00803|V00803|Pessoas alfabetizadas, 55 a 59 anos, Cor ou raça é amarela|
|Alfabetização|alfabetizacao_V00804|V00804|Pessoas alfabetizadas, 55 a 59 anos, Cor ou raça é parda|
|Alfabetização|alfabetizacao_V00805|V00805|Pessoas alfabetizadas, 55 a 59 anos, Cor ou raça é indígena|
|Alfabetização|alfabetizacao_V00806|V00806|Pessoas alfabetizadas, 60 a 64 anos, Cor ou raça é branca|
|Alfabetização|alfabetizacao_V00807|V00807|Pessoas alfabetizadas, 60 a 64 anos, Cor ou raça é preta|
|Alfabetização|alfabetizacao_V00808|V00808|Pessoas alfabetizadas, 60 a 64 anos, Cor ou raça é amarela|
|Alfabetização|alfabetizacao_V00809|V00809|Pessoas alfabetizadas, 60 a 64 anos, Cor ou raça é parda|
|Alfabetização|alfabetizacao_V00810|V00810|Pessoas alfabetizadas, 60 a 64 anos, Cor ou raça é indígena|
|Alfabetização|alfabetizacao_V00811|V00811|Pessoas alfabetizadas, 65 a 69 anos, Cor ou raça é branca|
|Alfabetização|alfabetizacao_V00812|V00812|Pessoas alfabetizadas, 65 a 69 anos, Cor ou raça é preta|
|Alfabetização|alfabetizacao_V00813|V00813|Pessoas alfabetizadas, 65 a 69 anos, Cor ou raça é amarela|
|Alfabetização|alfabetizacao_V00814|V00814|Pessoas alfabetizadas, 65 a 69 anos, Cor ou raça é parda|
|Alfabetização|alfabetizacao_V00815|V00815|Pessoas alfabetizadas, 65 a 69 anos, Cor ou raça é indígena|
|Alfabetização|alfabetizacao_V00816|V00816|Pessoas alfabetizadas, 70 a 79 anos, Cor ou raça é branca|
|Alfabetização|alfabetizacao_V00817|V00817|Pessoas alfabetizadas, 70 a 79 anos, Cor ou raça é preta|
|Alfabetização|alfabetizacao_V00818|V00818|Pessoas alfabetizadas, 70 a 79 anos, Cor ou raça é amarela|
|Alfabetização|alfabetizacao_V00819|V00819|Pessoas alfabetizadas, 70 a 79 anos, Cor ou raça é parda|
|Alfabetização|alfabetizacao_V00820|V00820|Pessoas alfabetizadas, 70 a 79 anos, Cor ou raça é indígena|
|Alfabetização|alfabetizacao_V00821|V00821|Pessoas alfabetizadas, 80 anos ou mais, Cor ou raça é branca|
|Alfabetização|alfabetizacao_V00822|V00822|Pessoas alfabetizadas, 80 anos ou mais, Cor ou raça é preta|
|Alfabetização|alfabetizacao_V00823|V00823|Pessoas alfabetizadas, 80 anos ou mais, Cor ou raça é amarela|
|Alfabetização|alfabetizacao_V00824|V00824|Pessoas alfabetizadas, 80 anos ou mais, Cor ou raça é parda|
|Alfabetização|alfabetizacao_V00825|V00825|Pessoas alfabetizadas, 80 anos ou mais, Cor ou raça é indígena|
|Alfabetização|alfabetizacao_V00826|V00826|Pessoas alfabetizadas, Sexo masculino, 15 a 19 anos|
|Alfabetização|alfabetizacao_V00827|V00827|Pessoas alfabetizadas, Sexo masculino, 20 a 24 anos|
|Alfabetização|alfabetizacao_V00828|V00828|Pessoas alfabetizadas, Sexo masculino, 25 a 29 anos|
|Alfabetização|alfabetizacao_V00829|V00829|Pessoas alfabetizadas, Sexo masculino, 30 a 34 anos|
|Alfabetização|alfabetizacao_V00830|V00830|Pessoas alfabetizadas, Sexo masculino, 35 a 39 anos|
|Alfabetização|alfabetizacao_V00831|V00831|Pessoas alfabetizadas, Sexo masculino, 40 a 44 anos|
|Alfabetização|alfabetizacao_V00832|V00832|Pessoas alfabetizadas, Sexo masculino, 45 a 49 anos|
|Alfabetização|alfabetizacao_V00833|V00833|Pessoas alfabetizadas, Sexo masculino, 50 a 54 anos|
|Alfabetização|alfabetizacao_V00834|V00834|Pessoas alfabetizadas, Sexo masculino, 55 a 59 anos|
|Alfabetização|alfabetizacao_V00835|V00835|Pessoas alfabetizadas, Sexo masculino, 60 a 64 anos|
|Alfabetização|alfabetizacao_V00836|V00836|Pessoas alfabetizadas, Sexo masculino, 65 a 69 anos|
|Alfabetização|alfabetizacao_V00837|V00837|Pessoas alfabetizadas, Sexo masculino, 70 a 79 anos|
|Alfabetização|alfabetizacao_V00838|V00838|Pessoas alfabetizadas, Sexo masculino, 80 anos ou mais|
|Alfabetização|alfabetizacao_V00839|V00839|Pessoas alfabetizadas, Sexo feminino, 15 a 19 anos|
|Alfabetização|alfabetizacao_V00840|V00840|Pessoas alfabetizadas, Sexo feminino, 20 a 24 anos|
|Alfabetização|alfabetizacao_V00841|V00841|Pessoas alfabetizadas, Sexo feminino, 25 a 29 anos|
|Alfabetização|alfabetizacao_V00842|V00842|Pessoas alfabetizadas, Sexo feminino, 30 a 34 anos|
|Alfabetização|alfabetizacao_V00843|V00843|Pessoas alfabetizadas, Sexo feminino, 35 a 39 anos|
|Alfabetização|alfabetizacao_V00844|V00844|Pessoas alfabetizadas, Sexo feminino, 40 a 44 anos|
|Alfabetização|alfabetizacao_V00845|V00845|Pessoas alfabetizadas, Sexo feminino, 45 a 49 anos|
|Alfabetização|alfabetizacao_V00846|V00846|Pessoas alfabetizadas, Sexo feminino, 50 a 54 anos|
|Alfabetização|alfabetizacao_V00847|V00847|Pessoas alfabetizadas, Sexo feminino, 55 a 59 anos|
|Alfabetização|alfabetizacao_V00848|V00848|Pessoas alfabetizadas, Sexo feminino, 60 a 64 anos|
|Alfabetização|alfabetizacao_V00849|V00849|Pessoas alfabetizadas, Sexo feminino, 65 a 69 anos|
|Alfabetização|alfabetizacao_V00850|V00850|Pessoas alfabetizadas, Sexo feminino, 70 a 79 anos|
|Alfabetização|alfabetizacao_V00851|V00851|Pessoas alfabetizadas, Sexo feminino, 80 anos ou mais|
|Alfabetização|alfabetizacao_V00852|V00852|15 a 29 anos, Morador sabe ler e escrever|
|Alfabetização|alfabetizacao_V00853|V00853|15 a 29 anos, Morador não sabe ler e escrever|
|Alfabetização|alfabetizacao_V00854|V00854|30 a 59 anos, Morador sabe ler e escrever|
|Alfabetização|alfabetizacao_V00855|V00855|30 a 59 anos, Morador não sabe ler e escrever|
|Alfabetização|alfabetizacao_V00856|V00856|60 anos ou mais, Morador sabe ler e escrever|
|Alfabetização|alfabetizacao_V00857|V00857|60 anos ou mais, Morador não sabe ler e escrever|
|Alfabetização|alfabetizacao_V00858|V00858|Sexo masculino, 15 a 29 anos, Morador sabe ler e escrever|
|Alfabetização|alfabetizacao_V00859|V00859|Sexo masculino, 15 a 29 anos, Morador não sabe ler e escrever|
|Alfabetização|alfabetizacao_V00860|V00860|Sexo masculino, 30 a 59 anos, Morador sabe ler e escrever|
|Alfabetização|alfabetizacao_V00861|V00861|Sexo masculino, 30 a 59 anos, Morador não sabe ler e escrever|
|Alfabetização|alfabetizacao_V00862|V00862|Sexo masculino, 60 anos ou mais, Morador sabe ler e escrever|
|Alfabetização|alfabetizacao_V00863|V00863|Sexo masculino, 60 anos ou mais, Morador não sabe ler e escrever|
|Alfabetização|alfabetizacao_V00864|V00864|Sexo feminino, 15 a 29 anos, Morador sabe ler e escrever|
|Alfabetização|alfabetizacao_V00865|V00865|Sexo feminino, 15 a 29 anos, Morador não sabe ler e escrever|
|Alfabetização|alfabetizacao_V00866|V00866|Sexo feminino, 30 a 59 anos, Morador sabe ler e escrever|
|Alfabetização|alfabetizacao_V00867|V00867|Sexo feminino, 30 a 59 anos, Morador não sabe ler e escrever|
|Alfabetização|alfabetizacao_V00868|V00868|Sexo feminino, 60 anos ou mais, Morador sabe ler e escrever|
|Alfabetização|alfabetizacao_V00869|V00869|Sexo feminino, 60 anos ou mais, Morador não sabe ler e escrever|
|Alfabetização|alfabetizacao_V00870|V00870|15 a 29 anos, Cor ou raça é branca, Morador sabe ler e escrever|
|Alfabetização|alfabetizacao_V00871|V00871|15 a 29 anos, Cor ou raça é branca, Morador não sabe ler e escrever|
|Alfabetização|alfabetizacao_V00872|V00872|15 a 29 anos, Cor ou raça é preta, Morador sabe ler e escrever|
|Alfabetização|alfabetizacao_V00873|V00873|15 a 29 anos, Cor ou raça é preta, Morador não sabe ler e escrever|
|Alfabetização|alfabetizacao_V00874|V00874|15 a 29 anos, Cor ou raça é amarela, Morador sabe ler e escrever|
|Alfabetização|alfabetizacao_V00875|V00875|15 a 29 anos, Cor ou raça é amarela, Morador não sabe ler e escrever|
|Alfabetização|alfabetizacao_V00876|V00876|15 a 29 anos, Cor ou raça é parda, Morador sabe ler e escrever|
|Alfabetização|alfabetizacao_V00877|V00877|15 a 29 anos, Cor ou raça é parda, Morador não sabe ler e escrever|
|Alfabetização|alfabetizacao_V00878|V00878|15 a 29 anos, Cor ou raça é indígena, Morador sabe ler e escrever|
|Alfabetização|alfabetizacao_V00879|V00879|15 a 29 anos, Cor ou raça é indígena, Morador não sabe ler e escrever|
|Alfabetização|alfabetizacao_V00880|V00880|30 a 59 anos, Cor ou raça é branca, Morador sabe ler e escrever|
|Alfabetização|alfabetizacao_V00881|V00881|30 a 59 anos, Cor ou raça é branca, Morador não sabe ler e escrever|
|Alfabetização|alfabetizacao_V00882|V00882|30 a 59 anos, Cor ou raça é preta, Morador sabe ler e escrever|
|Alfabetização|alfabetizacao_V00883|V00883|30 a 59 anos, Cor ou raça é preta, Morador não sabe ler e escrever|
|Alfabetização|alfabetizacao_V00884|V00884|30 a 59 anos, Cor ou raça é amarela, Morador sabe ler e escrever|
|Alfabetização|alfabetizacao_V00885|V00885|30 a 59 anos, Cor ou raça é amarela, Morador não sabe ler e escrever|
|Alfabetização|alfabetizacao_V00886|V00886|30 a 59 anos, Cor ou raça é parda, Morador sabe ler e escrever|
|Alfabetização|alfabetizacao_V00887|V00887|30 a 59 anos, Cor ou raça é parda, Morador não sabe ler e escrever|
|Alfabetização|alfabetizacao_V00888|V00888|30 a 59 anos, Cor ou raça é indígena, Morador sabe ler e escrever|
|Alfabetização|alfabetizacao_V00889|V00889|30 a 59 anos, Cor ou raça é indígena, Morador não sabe ler e escrever|
|Alfabetização|alfabetizacao_V00890|V00890|60 anos ou mais, Cor ou raça é branca, Morador sabe ler e escrever|
|Alfabetização|alfabetizacao_V00891|V00891|60 anos ou mais, Cor ou raça é branca, Morador não sabe ler e escrever|
|Alfabetização|alfabetizacao_V00892|V00892|60 anos ou mais, Cor ou raça é preta, Morador sabe ler e escrever|
|Alfabetização|alfabetizacao_V00893|V00893|60 anos ou mais, Cor ou raça é preta, Morador não sabe ler e escrever|
|Alfabetização|alfabetizacao_V00894|V00894|60 anos ou mais, Cor ou raça é amarela, Morador sabe ler e escrever|
|Alfabetização|alfabetizacao_V00895|V00895|60 anos ou mais, Cor ou raça é amarela, Morador não sabe ler e escrever|
|Alfabetização|alfabetizacao_V00896|V00896|60 anos ou mais, Cor ou raça é parda, Morador sabe ler e escrever|
|Alfabetização|alfabetizacao_V00897|V00897|60 anos ou mais, Cor ou raça é parda, Morador não sabe ler e escrever|
|Alfabetização|alfabetizacao_V00898|V00898|60 anos ou mais, Cor ou raça é indígena, Morador sabe ler e escrever|
|Alfabetização|alfabetizacao_V00899|V00899|60 anos ou mais, Cor ou raça é indígena, Morador não sabe ler e escrever|
|Alfabetização|alfabetizacao_V00900|V00900|15 anos ou mais, Morador sabe ler e escrever|
|Alfabetização|alfabetizacao_V00901|V00901|15 anos ou mais, Morador não sabe ler e escrever|
|Alfabetização|alfabetizacao_V00902|V00902|15 anos ou mais, Cor ou raça é branca, Morador sabe ler e escrever|
|Alfabetização|alfabetizacao_V00903|V00903|15 anos ou mais, Cor ou raça é branca, Morador não sabe ler e escrever|
|Alfabetização|alfabetizacao_V00904|V00904|15 anos ou mais, Cor ou raça é preta, Morador sabe ler e escrever|
|Alfabetização|alfabetizacao_V00905|V00905|15 anos ou mais, Cor ou raça é preta, Morador não sabe ler e escrever|
|Alfabetização|alfabetizacao_V00906|V00906|15 anos ou mais, Cor ou raça é amarela, Morador sabe ler e escrever|
|Alfabetização|alfabetizacao_V00907|V00907|15 anos ou mais, Cor ou raça é amarela, Morador não sabe ler e escrever|
|Alfabetização|alfabetizacao_V00908|V00908|15 anos ou mais, Cor ou raça é parda, Morador sabe ler e escrever|
|Alfabetização|alfabetizacao_V00909|V00909|15 anos ou mais, Cor ou raça é parda, Morador não sabe ler e escrever|
|Alfabetização|alfabetizacao_V00910|V00910|15 anos ou mais, Cor ou raça é indígena, Morador sabe ler e escrever|
|Alfabetização|alfabetizacao_V00911|V00911|15 anos ou mais, Cor ou raça é indígena, Morador não sabe ler e escrever|
|Alfabetização|alfabetizacao_V00912|V00912|Sexo masculino, 15 anos ou mais, Morador sabe ler e escrever|
|Alfabetização|alfabetizacao_V00913|V00913|Sexo masculino, 15 anos ou mais, Morador não sabe ler e escrever|
|Alfabetização|alfabetizacao_V00914|V00914|Sexo feminino, 15 anos ou mais, Morador sabe ler e escrever|
|Alfabetização|alfabetizacao_V00915|V00915|Sexo feminino, 15 anos ou mais, Morador não sabe ler e escrever|
|Alfabetização|alfabetizacao_V00916|V00916|Sexo masculino, 15 anos ou mais, Cor ou raça é branca, Morador sabe ler e escrever|
|Alfabetização|alfabetizacao_V00917|V00917|Sexo masculino, 15 anos ou mais, Cor ou raça é branca, Morador não sabe ler e escrever|
|Alfabetização|alfabetizacao_V00918|V00918|Sexo masculino, 15 anos ou mais, Cor ou raça é preta, Morador sabe ler e escrever|
|Alfabetização|alfabetizacao_V00919|V00919|Sexo masculino, 15 anos ou mais, Cor ou raça é preta, Morador não sabe ler e escrever|
|Alfabetização|alfabetizacao_V00920|V00920|Sexo masculino, 15 anos ou mais, Cor ou raça é amarela, Morador sabe ler e escrever|
|Alfabetização|alfabetizacao_V00921|V00921|Sexo masculino, 15 anos ou mais, Cor ou raça é amarela, Morador não sabe ler e escrever|
|Alfabetização|alfabetizacao_V00922|V00922|Sexo masculino, 15 anos ou mais, Cor ou raça é parda, Morador sabe ler e escrever|
|Alfabetização|alfabetizacao_V00923|V00923|Sexo masculino, 15 anos ou mais, Cor ou raça é parda, Morador não sabe ler e escrever|
|Alfabetização|alfabetizacao_V00924|V00924|Sexo masculino, 15 anos ou mais, Cor ou raça é indígena, Morador sabe ler e escrever|
|Alfabetização|alfabetizacao_V00925|V00925|Sexo masculino, 15 anos ou mais, Cor ou raça é indígena, Morador não sabe ler e escrever|
|Alfabetização|alfabetizacao_V00926|V00926|Sexo feminino, 15 anos ou mais, Cor ou raça é branca, Morador sabe ler e escrever|
|Alfabetização|alfabetizacao_V00927|V00927|Sexo feminino, 15 anos ou mais, Cor ou raça é branca, Morador não sabe ler e escrever|
|Alfabetização|alfabetizacao_V00928|V00928|Sexo feminino, 15 anos ou mais, Cor ou raça é preta, Morador sabe ler e escrever|
|Alfabetização|alfabetizacao_V00929|V00929|Sexo feminino, 15 anos ou mais, Cor ou raça é preta, Morador não sabe ler e escrever|
|Alfabetização|alfabetizacao_V00930|V00930|Sexo feminino, 15 anos ou mais, Cor ou raça é amarela, Morador sabe ler e escrever|
|Alfabetização|alfabetizacao_V00931|V00931|Sexo feminino, 15 anos ou mais, Cor ou raça é amarela, Morador não sabe ler e escrever|
|Alfabetização|alfabetizacao_V00932|V00932|Sexo feminino, 15 anos ou mais, Cor ou raça é parda, Morador sabe ler e escrever|
|Alfabetização|alfabetizacao_V00933|V00933|Sexo feminino, 15 anos ou mais, Cor ou raça é parda, Morador não sabe ler e escrever|
|Alfabetização|alfabetizacao_V00934|V00934|Sexo feminino, 15 anos ou mais, Cor ou raça é indígena, Morador sabe ler e escrever|
|Alfabetização|alfabetizacao_V00935|V00935|Sexo feminino, 15 anos ou mais, Cor ou raça é indígena, Morador não sabe ler e escrever|
|Alfabetização|alfabetizacao_V00936|V00936|Pessoa responsável pelo domicílio, 15 a 19 anos, Morador sabe ler e escrever|
|Alfabetização|alfabetizacao_V00937|V00937|Pessoa responsável pelo domicílio, 15 a 19 anos, Morador não sabe ler e escrever|
|Alfabetização|alfabetizacao_V00938|V00938|Pessoa responsável pelo domicílio, 20 a 24 anos, Morador sabe ler e escrever|
|Alfabetização|alfabetizacao_V00939|V00939|Pessoa responsável pelo domicílio, 20 a 24 anos, Morador não sabe ler e escrever|
|Alfabetização|alfabetizacao_V00940|V00940|Pessoa responsável pelo domicílio, 25 a 29 anos, Morador sabe ler e escrever|
|Alfabetização|alfabetizacao_V00941|V00941|Pessoa responsável pelo domicílio, 25 a 29 anos, Morador não sabe ler e escrever|
|Alfabetização|alfabetizacao_V00942|V00942|Pessoa responsável pelo domicílio, 30 a 34 anos, Morador sabe ler e escrever|
|Alfabetização|alfabetizacao_V00943|V00943|Pessoa responsável pelo domicílio, 30 a 34 anos, Morador não sabe ler e escrever|
|Alfabetização|alfabetizacao_V00944|V00944|Pessoa responsável pelo domicílio, 35 a 39 anos, Morador sabe ler e escrever|
|Alfabetização|alfabetizacao_V00945|V00945|Pessoa responsável pelo domicílio, 35 a 39 anos, Morador não sabe ler e escrever|
|Alfabetização|alfabetizacao_V00946|V00946|Pessoa responsável pelo domicílio, 40 a 44 anos, Morador sabe ler e escrever|
|Alfabetização|alfabetizacao_V00947|V00947|Pessoa responsável pelo domicílio, 40 a 44 anos, Morador não sabe ler e escrever|
|Alfabetização|alfabetizacao_V00948|V00948|Pessoa responsável pelo domicílio, 45 a 49 anos, Morador sabe ler e escrever|
|Alfabetização|alfabetizacao_V00949|V00949|Pessoa responsável pelo domicílio, 45 a 49 anos, Morador não sabe ler e escrever|
|Alfabetização|alfabetizacao_V00950|V00950|Pessoa responsável pelo domicílio, 50 a 54 anos, Morador sabe ler e escrever|
|Alfabetização|alfabetizacao_V00951|V00951|Pessoa responsável pelo domicílio, 50 a 54 anos, Morador não sabe ler e escrever|
|Alfabetização|alfabetizacao_V00952|V00952|Pessoa responsável pelo domicílio, 55 a 59 anos, Morador sabe ler e escrever|
|Alfabetização|alfabetizacao_V00953|V00953|Pessoa responsável pelo domicílio, 55 a 59 anos, Morador não sabe ler e escrever|
|Alfabetização|alfabetizacao_V00954|V00954|Pessoa responsável pelo domicílio, 60 a 64 anos, Morador sabe ler e escrever|
|Alfabetização|alfabetizacao_V00955|V00955|Pessoa responsável pelo domicílio, 60 a 64 anos, Morador não sabe ler e escrever|
|Alfabetização|alfabetizacao_V00956|V00956|Pessoa responsável pelo domicílio, 65 a 69 anos, Morador sabe ler e escrever|
|Alfabetização|alfabetizacao_V00957|V00957|Pessoa responsável pelo domicílio, 65 a 69 anos, Morador não sabe ler e escrever|
|Alfabetização|alfabetizacao_V00958|V00958|Pessoa responsável pelo domicílio, 70 a 79 anos, Morador sabe ler e escrever|
|Alfabetização|alfabetizacao_V00959|V00959|Pessoa responsável pelo domicílio, 70 a 79 anos, Morador não sabe ler e escrever|
|Alfabetização|alfabetizacao_V00960|V00960|Pessoa responsável pelo domicílio, 80 anos ou mais, Morador sabe ler e escrever|
|Alfabetização|alfabetizacao_V00961|V00961|Pessoa responsável pelo domicílio, 80 anos ou mais, Morador não sabe ler e escrever|
|Alfabetização|alfabetizacao_V00962|V00962|Pessoa responsável pelo domicílio, 15 anos ou mais, Cor ou raça é branca, Morador sabe ler e escrever|
|Alfabetização|alfabetizacao_V00963|V00963|Pessoa responsável pelo domicílio, 15 anos ou mais, Cor ou raça é branca, Morador não sabe ler e escrever|
|Alfabetização|alfabetizacao_V00964|V00964|Pessoa responsável pelo domicílio, 15 anos ou mais, Cor ou raça é preta, Morador sabe ler e escrever|
|Alfabetização|alfabetizacao_V00965|V00965|Pessoa responsável pelo domicílio, 15 anos ou mais, Cor ou raça é preta, Morador não sabe ler e escrever|
|Alfabetização|alfabetizacao_V00966|V00966|Pessoa responsável pelo domicílio, 15 anos ou mais, Cor ou raça é amarela, Morador sabe ler e escrever|
|Alfabetização|alfabetizacao_V00967|V00967|Pessoa responsável pelo domicílio, 15 anos ou mais, Cor ou raça é amarela, Morador não sabe ler e escrever|
|Alfabetização|alfabetizacao_V00968|V00968|Pessoa responsável pelo domicílio, 15 anos ou mais, Cor ou raça é parda, Morador sabe ler e escrever|
|Alfabetização|alfabetizacao_V00969|V00969|Pessoa responsável pelo domicílio, 15 anos ou mais, Cor ou raça é parda, Morador não sabe ler e escrever|
|Alfabetização|alfabetizacao_V00970|V00970|Pessoa responsável pelo domicílio, 15 anos ou mais, Cor ou raça é indígena, Morador sabe ler e escrever|
|Alfabetização|alfabetizacao_V00971|V00971|Pessoa responsável pelo domicílio, 15 anos ou mais, Cor ou raça é indígena, Morador não sabe ler e escrever|
|Alfabetização|alfabetizacao_V00972|V00972|Pessoa responsável pelo domicílio, Sexo masculino, 15 a 29 anos, Morador sabe ler e escrever|
|Alfabetização|alfabetizacao_V00973|V00973|Pessoa responsável pelo domicílio, Sexo masculino, 15 a 29 anos, Morador não sabe ler e escrever|
|Alfabetização|alfabetizacao_V00974|V00974|Pessoa responsável pelo domicílio, Sexo masculino, 30 a 59 anos, Morador sabe ler e escrever|
|Alfabetização|alfabetizacao_V00975|V00975|Pessoa responsável pelo domicílio, Sexo masculino, 30 a 59 anos, Morador não sabe ler e escrever|
|Alfabetização|alfabetizacao_V00976|V00976|Pessoa responsável pelo domicílio, Sexo masculino, 60 anos ou mais, Morador sabe ler e escrever|
|Alfabetização|alfabetizacao_V00977|V00977|Pessoa responsável pelo domicílio, Sexo masculino, 60 anos ou mais, Morador não sabe ler e escrever|
|Alfabetização|alfabetizacao_V00978|V00978|Pessoa responsável pelo domicílio, Sexo feminino, 15 a 29 anos, Morador sabe ler e escrever|
|Alfabetização|alfabetizacao_V00979|V00979|Pessoa responsável pelo domicílio, Sexo feminino, 15 a 29 anos, Morador não sabe ler e escrever|
|Alfabetização|alfabetizacao_V00980|V00980|Pessoa responsável pelo domicílio, Sexo feminino, 30 a 59 anos, Morador sabe ler e escrever|
|Alfabetização|alfabetizacao_V00981|V00981|Pessoa responsável pelo domicílio, Sexo feminino, 30 a 59 anos, Morador não sabe ler e escrever|
|Alfabetização|alfabetizacao_V00982|V00982|Pessoa responsável pelo domicílio, Sexo feminino, 60 anos ou mais, Morador sabe ler e escrever|
|Alfabetização|alfabetizacao_V00983|V00983|Pessoa responsável pelo domicílio, Sexo feminino, 60 anos ou mais, Morador não sabe ler e escrever|
|Alfabetização|alfabetizacao_V00984|V00984|Pessoa responsável pelo domicílio, 15 anos ou mais, Morador sabe ler e escrever|
|Alfabetização|alfabetizacao_V00985|V00985|Pessoa responsável pelo domicílio, 15 anos ou mais, Morador não sabe ler e escrever|
|Alfabetização|alfabetizacao_V00986|V00986|Pessoa responsável pelo domicílio, Sexo masculino, 15 anos ou mais, Morador sabe ler e escrever|
|Alfabetização|alfabetizacao_V00987|V00987|Pessoa responsável pelo domicílio, Sexo masculino, 15 anos ou mais, Morador não sabe ler e escrever|
|Alfabetização|alfabetizacao_V00988|V00988|Pessoa responsável pelo domicílio, Sexo feminino, 15 anos ou mais, Morador sabe ler e escrever|
|Alfabetização|alfabetizacao_V00989|V00989|Pessoa responsável pelo domicílio, Sexo feminino, 15 anos ou mais, Morador não sabe ler e escrever|
|Alfabetização|alfabetizacao_V00990|V00990|Domicílios Particulares Permanentes Ocupados, Pessoa responsável pelo domicílio, Pessoas alfabetizadas, Sexo masculino, 15 anos ou mais|
|Alfabetização|alfabetizacao_V00991|V00991|Domicílios Particulares Permanentes Ocupados, Pessoa responsável pelo domicílio, Pessoas alfabetizadas, Sexo feminino, 15 anos ou mais|
|Alfabetização|alfabetizacao_V00992|V00992|Domicílios Particulares Permanentes Ocupados, Cônjuges ou companheiros(as) (de sexo diferente e do mesmo sexo da pessoa responsável), Pessoas alfabetizadas, Sexo masculino, 15 anos ou mais|
|Alfabetização|alfabetizacao_V00993|V00993|Domicílios Particulares Permanentes Ocupados, Cônjuges ou companheiros(as) (de sexo diferente e do mesmo sexo da pessoa responsável), Pessoas alfabetizadas, Sexo feminino, 15 anos ou mais|
|Alfabetização|alfabetizacao_V00994|V00994|Domicílios Particulares Permanentes Ocupados, Filhos(as) ou enteados(as), Pessoas alfabetizadas, Sexo masculino, 15 anos ou mais|
|Alfabetização|alfabetizacao_V00995|V00995|Domicílios Particulares Permanentes Ocupados, Filhos(as) ou enteados(as), Pessoas alfabetizadas, Sexo feminino, 15 anos ou mais|
|Alfabetização|alfabetizacao_V00996|V00996|Domicílios Particulares Permanentes Ocupados, Pais, mães ou sogros(as), Pessoas alfabetizadas, Sexo masculino, 15 anos ou mais|
|Alfabetização|alfabetizacao_V00997|V00997|Domicílios Particulares Permanentes Ocupados, Pais, mães ou sogros(as), Pessoas alfabetizadas, Sexo feminino, 15 anos ou mais|
|Alfabetização|alfabetizacao_V00998|V00998|Domicílios Particulares Permanentes Ocupados, Netos(as) ou bisnetos(as), Pessoas alfabetizadas, Sexo masculino, 15 anos ou mais|
|Alfabetização|alfabetizacao_V00999|V00999|Domicílios Particulares Permanentes Ocupados, Netos(as) ou bisnetos(as), Pessoas alfabetizadas, Sexo feminino, 15 anos ou mais|
|Alfabetização|alfabetizacao_V01000|V01000|Domicílios Particulares Permanentes Ocupados, Irmãos ou irmãs, Pessoas alfabetizadas, Sexo masculino, 15 anos ou mais|
|Alfabetização|alfabetizacao_V01001|V01001|Domicílios Particulares Permanentes Ocupados, Irmãos ou irmãs, Pessoas alfabetizadas, Sexo feminino, 15 anos ou mais|
|Alfabetização|alfabetizacao_V01002|V01002|Domicílios Particulares Permanentes Ocupados, Outros parentes, Pessoas alfabetizadas, Sexo masculino, 15 anos ou mais|
|Alfabetização|alfabetizacao_V01003|V01003|Domicílios Particulares Permanentes Ocupados, Outros parentes, Pessoas alfabetizadas, Sexo feminino, 15 anos ou mais|
|Alfabetização|alfabetizacao_V01004|V01004|Domicílios Particulares Permanentes Ocupados, Convivente, Pessoas alfabetizadas, Sexo masculino, 15 anos ou mais|
|Alfabetização|alfabetizacao_V01005|V01005|Domicílios Particulares Permanentes Ocupados, Convivente, Pessoas alfabetizadas, Sexo feminino, 15 anos ou mais|
|Demografia|demografia_V01006|V01006|Quantidade de moradores|
|Demografia|demografia_V01007|V01007|Sexo masculino|
|Demografia|demografia_V01008|V01008|Sexo feminino|
|Demografia|demografia_V01009|V01009|Sexo masculino, 0 a 4 anos|
|Demografia|demografia_V01010|V01010|Sexo masculino, 5 a 9 anos|
|Demografia|demografia_V01011|V01011|Sexo masculino, 10 a 14 anos|
|Demografia|demografia_V01012|V01012|Sexo masculino, 15 a 19 anos|
|Demografia|demografia_V01013|V01013|Sexo masculino, 20 a 24 anos|
|Demografia|demografia_V01014|V01014|Sexo masculino, 25 a 29 anos|
|Demografia|demografia_V01015|V01015|Sexo masculino, 30 a 39 anos|
|Demografia|demografia_V01016|V01016|Sexo masculino, 40 a 49 anos|
|Demografia|demografia_V01017|V01017|Sexo masculino, 50 a 59 anos|
|Demografia|demografia_V01018|V01018|Sexo masculino, 60 a 69 anos|
|Demografia|demografia_V01019|V01019|Sexo masculino, 70 anos ou mais|
|Demografia|demografia_V01020|V01020|Sexo feminino, 0 a 4 anos|
|Demografia|demografia_V01021|V01021|Sexo feminino, 5 a 9 anos|
|Demografia|demografia_V01022|V01022|Sexo feminino, 10 a 14 anos|
|Demografia|demografia_V01023|V01023|Sexo feminino, 15 a 19 anos|
|Demografia|demografia_V01024|V01024|Sexo feminino, 20 a 24 anos|
|Demografia|demografia_V01025|V01025|Sexo feminino, 25 a 29 anos|
|Demografia|demografia_V01026|V01026|Sexo feminino, 30 a 39 anos|
|Demografia|demografia_V01027|V01027|Sexo feminino, 40 a 49 anos|
|Demografia|demografia_V01028|V01028|Sexo feminino, 50 a 59 anos|
|Demografia|demografia_V01029|V01029|Sexo feminino, 60 a 69 anos|
|Demografia|demografia_V01030|V01030|Sexo feminino, 70 anos ou mais|
|Demografia|demografia_V01031|V01031|0 a 4 anos|
|Demografia|demografia_V01032|V01032|5 a 9 anos|
|Demografia|demografia_V01033|V01033|10 a 14 anos|
|Demografia|demografia_V01034|V01034|15 a 19 anos|
|Demografia|demografia_V01035|V01035|20 a 24 anos|
|Demografia|demografia_V01036|V01036|25 a 29 anos|
|Demografia|demografia_V01037|V01037|30 a 39 anos|
|Demografia|demografia_V01038|V01038|40 a 49 anos|
|Demografia|demografia_V01039|V01039|50 a 59 anos|
|Demografia|demografia_V01040|V01040|60 a 69 anos|
|Demografia|demografia_V01041|V01041|70 anos ou mais|
|Parentesco|parentesco_V01042|V01042|Pessoa responsável pelo domicílio|
|Parentesco|parentesco_V01043|V01043|Relação de parentesco ou de convivência com a pessoa responsável pelo domicílio é cônjuge ou companheiro(a) de sexo diferente|
|Parentesco|parentesco_V01044|V01044|Relação de parentesco ou de convivência com a pessoa responsável pelo domicílio é cônjuge ou companheiro(a) do mesmo sexo|
|Parentesco|parentesco_V01045|V01045|Relação de parentesco ou de convivência com a pessoa responsável pelo domicílio é filho(a) do responsável e do cônjuge|
|Parentesco|parentesco_V01046|V01046|Relação de parentesco ou de convivência com a pessoa responsável pelo domicílio é filho(a) somente do responsável|
|Parentesco|parentesco_V01047|V01047|Relação de parentesco ou de convivência com a pessoa responsável pelo domicílio é enteado(a)|
|Parentesco|parentesco_V01048|V01048|Relação de parentesco ou de convivência com a pessoa responsável pelo domicílio é genro ou nora|
|Parentesco|parentesco_V01049|V01049|Relação de parentesco ou de convivência com a pessoa responsável pelo domicílio é pai, mãe, padrasto ou madrasta|
|Parentesco|parentesco_V01050|V01050|Relação de parentesco ou de convivência com a pessoa responsável pelo domicílio é sogro(a)|
|Parentesco|parentesco_V01051|V01051|Relação de parentesco ou de convivência com a pessoa responsável pelo domicílio é neto(a)|
|Parentesco|parentesco_V01052|V01052|Relação de parentesco ou de convivência com a pessoa responsável pelo domicílio é bisneto(a)|
|Parentesco|parentesco_V01053|V01053|Relação de parentesco ou de convivência com a pessoa responsável pelo domicílio é irmão ou irmã|
|Parentesco|parentesco_V01054|V01054|Relação de parentesco ou de convivência com a pessoa responsável pelo domicílio é avô ou avó|
|Parentesco|parentesco_V01055|V01055|Relação de parentesco ou de convivência com a pessoa responsável pelo domicílio é outro parente|
|Parentesco|parentesco_V01056|V01056|Relação de parentesco ou de convivência com a pessoa responsável pelo domicílio é agregado(a)|
|Parentesco|parentesco_V01057|V01057|Relação de parentesco ou de convivência com a pessoa responsável pelo domicílio é convivente|
|Parentesco|parentesco_V01058|V01058|Relação de parentesco ou de convivência com a pessoa responsável pelo domicílio é pensionista|
|Parentesco|parentesco_V01059|V01059|Relação de parentesco ou de convivência com a pessoa responsável pelo domicílio é empregado(a) doméstico(a)|
|Parentesco|parentesco_V01060|V01060|Relação de parentesco ou de convivência com a pessoa responsável pelo domicílio é parente do(a) empregado(a) doméstico(a)|
|Parentesco|parentesco_V01061|V01061|Relação de parentesco ou de convivência com a pessoa responsável pelo domicílio é individual em domicílio coletivo|
|Parentesco|parentesco_V01062|V01062|Pessoa responsável pelo domicílio, Sexo masculino|
|Parentesco|parentesco_V01063|V01063|Pessoa responsável pelo domicílio, Sexo feminino|
|Parentesco|parentesco_V01064|V01064|Pessoa responsável pelo domicílio, 12 a 17 anos|
|Parentesco|parentesco_V01065|V01065|Pessoa responsável pelo domicílio, 18 a 24 anos|
|Parentesco|parentesco_V01066|V01066|Pessoa responsável pelo domicílio, 25 a 39 anos|
|Parentesco|parentesco_V01067|V01067|Pessoa responsável pelo domicílio, 40 a 59 anos|
|Parentesco|parentesco_V01068|V01068|Pessoa responsável pelo domicílio, 60 anos ou mais|
|Parentesco|parentesco_V01069|V01069|Cônjuges ou companheiros(as) de sexo diferente ou cônjuges ou companheiros(as) do mesmo sexo, 10 a 14 anos|
|Parentesco|parentesco_V01070|V01070|Cônjuges ou companheiros(as) de sexo diferente ou cônjuges ou companheiros(as) do mesmo sexo, 15 a 19 anos|
|Parentesco|parentesco_V01071|V01071|Cônjuges ou companheiros(as) de sexo diferente ou cônjuges ou companheiros(as) do mesmo sexo, 20 a 24 anos|
|Parentesco|parentesco_V01072|V01072|Cônjuges ou companheiros(as) de sexo diferente ou cônjuges ou companheiros(as) do mesmo sexo, 25 a 29 anos|
|Parentesco|parentesco_V01073|V01073|Cônjuges ou companheiros(as) de sexo diferente ou cônjuges ou companheiros(as) do mesmo sexo, 30 a 34 anos|
|Parentesco|parentesco_V01074|V01074|Cônjuges ou companheiros(as) de sexo diferente ou cônjuges ou companheiros(as) do mesmo sexo, 35 a 39 anos|
|Parentesco|parentesco_V01075|V01075|Cônjuges ou companheiros(as) de sexo diferente ou cônjuges ou companheiros(as) do mesmo sexo, 40 a 44 anos|
|Parentesco|parentesco_V01076|V01076|Cônjuges ou companheiros(as) de sexo diferente ou cônjuges ou companheiros(as) do mesmo sexo, 45 a 49 anos|
|Parentesco|parentesco_V01077|V01077|Cônjuges ou companheiros(as) de sexo diferente ou cônjuges ou companheiros(as) do mesmo sexo, 50 a 54 anos|
|Parentesco|parentesco_V01078|V01078|Cônjuges ou companheiros(as) de sexo diferente ou cônjuges ou companheiros(as) do mesmo sexo, 55 a 59 anos|
|Parentesco|parentesco_V01079|V01079|Cônjuges ou companheiros(as) de sexo diferente ou cônjuges ou companheiros(as) do mesmo sexo, 60 a 64 anos|
|Parentesco|parentesco_V01080|V01080|Cônjuges ou companheiros(as) de sexo diferente ou cônjuges ou companheiros(as) do mesmo sexo, 65 a 69 anos|
|Parentesco|parentesco_V01081|V01081|Cônjuges ou companheiros(as) de sexo diferente ou cônjuges ou companheiros(as) do mesmo sexo, 70 a 74 anos|
|Parentesco|parentesco_V01082|V01082|Cônjuges ou companheiros(as) de sexo diferente ou cônjuges ou companheiros(as) do mesmo sexo, 75 a 79 anos|
|Parentesco|parentesco_V01083|V01083|Cônjuges ou companheiros(as) de sexo diferente ou cônjuges ou companheiros(as) do mesmo sexo, 80 anos ou mais|
|Parentesco|parentesco_V01084|V01084|Filhos(as) do responsável e do cônjuge, 0 a 4 anos|
|Parentesco|parentesco_V01085|V01085|Filhos(as) do responsável e do cônjuge, 5 a 9 anos|
|Parentesco|parentesco_V01086|V01086|Filhos(as) do responsável e do cônjuge, 10 a 14 anos|
|Parentesco|parentesco_V01087|V01087|Filhos(as) do responsável e do cônjuge, 15 a 19 anos|
|Parentesco|parentesco_V01088|V01088|Filhos(as) do responsável e do cônjuge, 20 a 24 anos|
|Parentesco|parentesco_V01089|V01089|Filhos(as) do responsável e do cônjuge, 25 a 29 anos|
|Parentesco|parentesco_V01090|V01090|Filhos(as) do responsável e do cônjuge, 30 a 39 anos|
|Parentesco|parentesco_V01091|V01091|Filhos(as) do responsável e do cônjuge, 40 a 49 anos|
|Parentesco|parentesco_V01092|V01092|Filhos(as) do responsável e do cônjuge, 50 a 59 anos|
|Parentesco|parentesco_V01093|V01093|Filhos(as) do responsável e do cônjuge, 60 a 69 anos|
|Parentesco|parentesco_V01094|V01094|Filhos(as) do responsável e do cônjuge, 70 anos ou mais|
|Parentesco|parentesco_V01095|V01095|Enteados(as), 0 a 4 anos|
|Parentesco|parentesco_V01096|V01096|Enteados(as), 5 a 9 anos|
|Parentesco|parentesco_V01097|V01097|Enteados(as), 10 a 14 anos|
|Parentesco|parentesco_V01098|V01098|Enteados(as), 15 a 19 anos|
|Parentesco|parentesco_V01099|V01099|Enteados(as), 20 a 24 anos|
|Parentesco|parentesco_V01100|V01100|Enteados(as), 25 a 29 anos|
|Parentesco|parentesco_V01101|V01101|Enteados(as), 30 a 34 anos|
|Parentesco|parentesco_V01102|V01102|Enteados(as), 35 a 39 anos|
|Parentesco|parentesco_V01103|V01103|Enteados(as), 40 a 44 anos|
|Parentesco|parentesco_V01104|V01104|Enteados(as), 45 a 49 anos|
|Parentesco|parentesco_V01105|V01105|Enteados(as), 50 anos ou mais|
|Parentesco|parentesco_V01106|V01106|Genro ou nora, 0 a 4 anos|
|Parentesco|parentesco_V01107|V01107|Genro ou nora, 5 a 9 anos|
|Parentesco|parentesco_V01108|V01108|Genro ou nora, 10 a 14 anos|
|Parentesco|parentesco_V01109|V01109|Genro ou nora, 15 a 19 anos|
|Parentesco|parentesco_V01110|V01110|Genro ou nora, 20 a 24 anos|
|Parentesco|parentesco_V01111|V01111|Genro ou nora, 25 a 29 anos|
|Parentesco|parentesco_V01112|V01112|Genro ou nora, 30 a 34 anos|
|Parentesco|parentesco_V01113|V01113|Genro ou nora, 35 a 39 anos|
|Parentesco|parentesco_V01114|V01114|Genro ou nora, 40 a 44 anos|
|Parentesco|parentesco_V01115|V01115|Genro ou nora, 45 a 49 anos|
|Parentesco|parentesco_V01116|V01116|Genro ou nora, 50 anos ou mais|
|Parentesco|parentesco_V01117|V01117|Pai, mãe, padrasto ou madrasta, 20 a 24 anos|
|Parentesco|parentesco_V01118|V01118|Pai, mãe, padrasto ou madrasta, 25 a 29 anos|
|Parentesco|parentesco_V01119|V01119|Pai, mãe, padrasto ou madrasta, 30 a 34 anos|
|Parentesco|parentesco_V01120|V01120|Pai, mãe, padrasto ou madrasta, 35 a 39 anos|
|Parentesco|parentesco_V01121|V01121|Pai, mãe, padrasto ou madrasta, 40 a 44 anos|
|Parentesco|parentesco_V01122|V01122|Pai, mãe, padrasto ou madrasta, 45 a 49 anos|
|Parentesco|parentesco_V01123|V01123|Pai, mãe, padrasto ou madrasta, 50 a 54 anos|
|Parentesco|parentesco_V01124|V01124|Pai, mãe, padrasto ou madrasta, 55 a 59 anos|
|Parentesco|parentesco_V01125|V01125|Pai, mãe, padrasto ou madrasta, 60 a 64 anos|
|Parentesco|parentesco_V01126|V01126|Pai, mãe, padrasto ou madrasta, 65 a 69 anos|
|Parentesco|parentesco_V01127|V01127|Pai, mãe, padrasto ou madrasta, 70 a 74 anos|
|Parentesco|parentesco_V01128|V01128|Pai, mãe, padrasto ou madrasta, 75 a 79 anos|
|Parentesco|parentesco_V01129|V01129|Pai, mãe, padrasto ou madrasta, 80 anos ou mais|
|Parentesco|parentesco_V01130|V01130|Sogro(a), 20 a 24 anos|
|Parentesco|parentesco_V01131|V01131|Sogro(a), 25 a 29 anos|
|Parentesco|parentesco_V01132|V01132|Sogro(a), 30 a 34 anos|
|Parentesco|parentesco_V01133|V01133|Sogro(a), 35 a 39 anos|
|Parentesco|parentesco_V01134|V01134|Sogro(a), 40 a 44 anos|
|Parentesco|parentesco_V01135|V01135|Sogro(a), 45 a 49 anos|
|Parentesco|parentesco_V01136|V01136|Sogro(a), 50 a 54 anos|
|Parentesco|parentesco_V01137|V01137|Sogro(a), 55 a 59 anos|
|Parentesco|parentesco_V01138|V01138|Sogro(a), 60 a 64 anos|
|Parentesco|parentesco_V01139|V01139|Sogro(a), 65 a 69 anos|
|Parentesco|parentesco_V01140|V01140|Sogro(a), 70 a 74 anos|
|Parentesco|parentesco_V01141|V01141|Sogro(a), 75 a 79 anos|
|Parentesco|parentesco_V01142|V01142|Sogro(a), 80 anos ou mais|
|Parentesco|parentesco_V01143|V01143|Neto(a), 0 a 4 anos|
|Parentesco|parentesco_V01144|V01144|Neto(a), 5 a 9 anos|
|Parentesco|parentesco_V01145|V01145|Neto(a), 10 a 14 anos|
|Parentesco|parentesco_V01146|V01146|Neto(a), 15 a 19 anos|
|Parentesco|parentesco_V01147|V01147|Neto(a), 20 a 24 anos|
|Parentesco|parentesco_V01148|V01148|Neto(a), 25 a 29 anos|
|Parentesco|parentesco_V01149|V01149|Neto(a), 30 a 34 anos|
|Parentesco|parentesco_V01150|V01150|Neto(a), 35 a 39 anos|
|Parentesco|parentesco_V01151|V01151|Neto(a), 40 a 44 anos|
|Parentesco|parentesco_V01152|V01152|Neto(a), 45 a 49 anos|
|Parentesco|parentesco_V01153|V01153|Neto(a), 50 anos ou mais|
|Parentesco|parentesco_V01154|V01154|Bisneto(a), 0 a 4 anos|
|Parentesco|parentesco_V01155|V01155|Bisneto(a), 5 a 9 anos|
|Parentesco|parentesco_V01156|V01156|Bisneto(a), 10 a 14 anos|
|Parentesco|parentesco_V01157|V01157|Bisneto(a), 15 a 19 anos|
|Parentesco|parentesco_V01158|V01158|Bisneto(a), 20 a 24 anos|
|Parentesco|parentesco_V01159|V01159|Bisneto(a), 25 a 29 anos|
|Parentesco|parentesco_V01160|V01160|Bisneto(a), 30 a 34 anos|
|Parentesco|parentesco_V01161|V01161|Bisneto(a), 35 a 39 anos|
|Parentesco|parentesco_V01162|V01162|Bisneto(a), 40 a 44 anos|
|Parentesco|parentesco_V01163|V01163|Bisneto(a), 45 a 49 anos|
|Parentesco|parentesco_V01164|V01164|Bisneto(a), 50 anos ou mais|
|Parentesco|parentesco_V01165|V01165|Irmão ou irmã, 0 a 4 anos|
|Parentesco|parentesco_V01166|V01166|Irmão ou irmã, 5 a 9 anos|
|Parentesco|parentesco_V01167|V01167|Irmão ou irmã, 10 a 14 anos|
|Parentesco|parentesco_V01168|V01168|Irmão ou irmã, 15 a 19 anos|
|Parentesco|parentesco_V01169|V01169|Irmão ou irmã, 20 a 24 anos|
|Parentesco|parentesco_V01170|V01170|Irmão ou irmã, 25 a 29 anos|
|Parentesco|parentesco_V01171|V01171|Irmão ou irmã, 30 a 34 anos|
|Parentesco|parentesco_V01172|V01172|Irmão ou irmã, 35 a 39 anos|
|Parentesco|parentesco_V01173|V01173|Irmão ou irmã, 40 a 44 anos|
|Parentesco|parentesco_V01174|V01174|Irmão ou irmã, 45 a 49 anos|
|Parentesco|parentesco_V01175|V01175|Irmão ou irmã, 50 anos ou mais|
|Parentesco|parentesco_V01176|V01176|Domicílio com pelo menos um cônjuge de sexo diferente e nenhum do mesmo sexo|
|Parentesco|parentesco_V01177|V01177|Domicílio com pelo menos um cônjuge do mesmo sexo e nenhum de sexo diferente|
|Parentesco|parentesco_V01178|V01178|Domicílio com pelo menos um cônjuge de sexo diferente e pelo menos um do mesmo sexo|
|Parentesco|parentesco_V01179|V01179|Domicílio sem cônjuge|
|Parentesco|parentesco_V01180|V01180|Unidade em Domicílio Coletivo Com Morador|
|Parentesco|parentesco_V01181|V01181|Domicílio com pelo menos um cônjuge de sexo diferente e nenhum do mesmo sexo, Sexo da pessoa responsável pelo domicílio é masculino|
|Parentesco|parentesco_V01182|V01182|Domicílio com pelo menos um cônjuge de sexo diferente e nenhum do mesmo sexo, Sexo da pessoa responsável pelo domicílio é feminino|
|Parentesco|parentesco_V01183|V01183|Domicílio com pelo menos um cônjuge do mesmo sexo e nenhum de sexo diferente, Sexo da pessoa responsável pelo domicílio é masculino|
|Parentesco|parentesco_V01184|V01184|Domicílio com pelo menos um cônjuge do mesmo sexo e nenhum de sexo diferente, Sexo da pessoa responsável pelo domicílio é feminino|
|Parentesco|parentesco_V01185|V01185|Domicílio com pelo menos um cônjuge de sexo diferente e pelo menos um do mesmo sexo, Sexo da pessoa responsável pelo domicílio é masculino|
|Parentesco|parentesco_V01186|V01186|Domicílio com pelo menos um cônjuge de sexo diferente e pelo menos um do mesmo sexo, Sexo da pessoa responsável pelo domicílio é feminino|
|Parentesco|parentesco_V01187|V01187|Domicílio sem cônjuge, Sexo da pessoa responsável pelo domicílio é masculino|
|Parentesco|parentesco_V01188|V01188|Domicílio sem cônjuge, Sexo da pessoa responsável pelo domicílio é feminino|
|Parentesco|parentesco_V01189|V01189|Unidade em Domicílio Coletivo Com Morador, Sexo da pessoa responsável pelo domicílio é masculino|
|Parentesco|parentesco_V01190|V01190|Unidade em Domicílio Coletivo Com Morador, Sexo da pessoa responsável pelo domicílio é feminino|
|Parentesco|parentesco_V01191|V01191|Domicílio com responsável e cônjuge(s) sem filhos|
|Parentesco|parentesco_V01192|V01192|Domicílio com responsável e cônjuge com filho de ambos somente|
|Parentesco|parentesco_V01193|V01193|Domicílio com responsável e cônjuge(s) com pelo menos um filho somente do responsável ou somente de um(a) cônjuge|
|Parentesco|parentesco_V01194|V01194|Domicílio com responsável sem cônjuge com filho(s) e/ou enteado(s)|
|Parentesco|parentesco_V01195|V01195|Domicílio com outros tipos de composição|
|Parentesco|parentesco_V01196|V01196|Unidade em Domicílio Coletivo Com Morador|
|Parentesco|parentesco_V01197|V01197|Domicílio com responsável e cônjuge(s) sem filhos, Sexo da pessoa responsável pelo domicílio é masculino|
|Parentesco|parentesco_V01198|V01198|Domicílio com responsável e cônjuge(s) sem filhos, Sexo da pessoa responsável pelo domicílio é feminino|
|Parentesco|parentesco_V01199|V01199|Domicílio com responsável e cônjuge com filho de ambos somente, Sexo da pessoa responsável pelo domicílio é masculino|
|Parentesco|parentesco_V01200|V01200|Domicílio com responsável e cônjuge com filho de ambos somente, Sexo da pessoa responsável pelo domicílio é feminino|
|Parentesco|parentesco_V01201|V01201|Domicílio com responsável e cônjuge(s) com pelo menos um filho somente do responsável ou somente de um(a) cônjuge, Sexo da pessoa responsável pelo domicílio é masculino|
|Parentesco|parentesco_V01202|V01202|Domicílio com responsável e cônjuge(s) com pelo menos um filho somente do responsável ou somente de um(a) cônjuge, Sexo da pessoa responsável pelo domicílio é feminino|
|Parentesco|parentesco_V01203|V01203|Domicílio com responsável sem cônjuge com filho(s) e/ou enteado(s), Sexo da pessoa responsável pelo domicílio é masculino|
|Parentesco|parentesco_V01204|V01204|Domicílio com responsável sem cônjuge com filho(s) e/ou enteado(s), Sexo da pessoa responsável pelo domicílio é feminino|
|Parentesco|parentesco_V01205|V01205|Domicílio com outros tipos de composição, Sexo da pessoa responsável pelo domicílio é masculino|
|Parentesco|parentesco_V01206|V01206|Domicílio com outros tipos de composição, Sexo da pessoa responsável pelo domicílio é feminino|
|Parentesco|parentesco_V01207|V01207|Unidade em Domicílio Coletivo Com Morador, Sexo da pessoa responsável pelo domicílio é masculino|
|Parentesco|parentesco_V01208|V01208|Unidade em Domicílio Coletivo Com Morador, Sexo da pessoa responsável pelo domicílio é feminino|
|Parentesco|parentesco_V01209|V01209|Espécie de unidade doméstica é unipessoal|
|Parentesco|parentesco_V01210|V01210|Espécie de unidade doméstica é nuclear|
|Parentesco|parentesco_V01211|V01211|Espécie de unidade doméstica é estendida|
|Parentesco|parentesco_V01212|V01212|Espécie de unidade doméstica é composta|
|Parentesco|parentesco_V01213|V01213|Espécie de unidade doméstica é unidade em Domicílio Coletivo Com Morador|
|Parentesco|parentesco_V01214|V01214|Espécie de unidade doméstica é unipessoal, Sexo da pessoa responsável pelo domicílio é masculino|
|Parentesco|parentesco_V01215|V01215|Espécie de unidade doméstica é unipessoal, Sexo da pessoa responsável pelo domicílio é feminino|
|Parentesco|parentesco_V01216|V01216|Espécie de unidade doméstica é nuclear, Sexo da pessoa responsável pelo domicílio é masculino|
|Parentesco|parentesco_V01217|V01217|Espécie de unidade doméstica é nuclear, Sexo da pessoa responsável pelo domicílio é feminino|
|Parentesco|parentesco_V01218|V01218|Espécie de unidade doméstica é estendida, Sexo da pessoa responsável pelo domicílio é masculino|
|Parentesco|parentesco_V01219|V01219|Espécie de unidade doméstica é estendida, Sexo da pessoa responsável pelo domicílio é feminino|
|Parentesco|parentesco_V01220|V01220|Espécie de unidade doméstica é composta, Sexo da pessoa responsável pelo domicílio é masculino|
|Parentesco|parentesco_V01221|V01221|Espécie de unidade doméstica é composta, Sexo da pessoa responsável pelo domicílio é feminino|
|Parentesco|parentesco_V01222|V01222|Espécie de unidade doméstica é unidade em Domicílio Coletivo Com Morador, Sexo da pessoa responsável pelo domicílio é masculino|
|Parentesco|parentesco_V01223|V01223|Espécie de unidade doméstica é unidade em Domicílio Coletivo Com Morador, Sexo da pessoa responsável pelo domicílio é feminino|
|Cor ou Raça|raca_V01317|V01317|Cor ou raça é branca|
|Cor ou Raça|raca_V01318|V01318|Cor ou raça é preta|
|Cor ou Raça|raca_V01319|V01319|Cor ou raça é amarela|
|Cor ou Raça|raca_V01320|V01320|Cor ou raça é parda|
|Cor ou Raça|raca_V01321|V01321|Cor ou raça é indígena|
|Cor ou Raça|raca_V01322|V01322|Sexo masculino, Cor ou raça é branca|
|Cor ou Raça|raca_V01323|V01323|Sexo masculino, Cor ou raça é preta|
|Cor ou Raça|raca_V01324|V01324|Sexo masculino, Cor ou raça é amarela|
|Cor ou Raça|raca_V01325|V01325|Sexo masculino, Cor ou raça é parda|
|Cor ou Raça|raca_V01326|V01326|Sexo masculino, Cor ou raça é indígena|
|Cor ou Raça|raca_V01327|V01327|Sexo feminino, Cor ou raça é branca|
|Cor ou Raça|raca_V01328|V01328|Sexo feminino, Cor ou raça é preta|
|Cor ou Raça|raca_V01329|V01329|Sexo feminino, Cor ou raça é amarela|
|Cor ou Raça|raca_V01330|V01330|Sexo feminino, Cor ou raça é parda|
|Cor ou Raça|raca_V01331|V01331|Sexo feminino, Cor ou raça é  indígena|
|Cor ou Raça|raca_V01332|V01332|Cor ou raça da pessoa responsável pelo domicílio é branca|
|Cor ou Raça|raca_V01333|V01333|Cor ou raça da pessoa responsável pelo domicílio é preta|
|Cor ou Raça|raca_V01334|V01334|Cor ou raça da pessoa responsável pelo domicílio é amarela|
|Cor ou Raça|raca_V01335|V01335|Cor ou raça da pessoa responsável pelo domicílio é parda|
|Cor ou Raça|raca_V01336|V01336|Cor ou raça da pessoa responsável pelo domicílio é indígena|
|Cor ou Raça|raca_V01337|V01337|Cor ou raça da pessoa responsável pelo domicílio é branca, Sexo da pessoa responsável pelo domicílio é masculino|
|Cor ou Raça|raca_V01338|V01338|Cor ou raça da pessoa responsável pelo domicílio é branca, Sexo da pessoa responsável pelo domicílio é feminino|
|Cor ou Raça|raca_V01339|V01339|Cor ou raça da pessoa responsável pelo domicílio é preta, Sexo da pessoa responsável pelo domicílio é masculino|
|Cor ou Raça|raca_V01340|V01340|Cor ou raça da pessoa responsável pelo domicílio é preta, Sexo da pessoa responsável pelo domicílio é feminino|
|Cor ou Raça|raca_V01341|V01341|Cor ou raça da pessoa responsável pelo domicílio é amarela, Sexo da pessoa responsável pelo domicílio é masculino|
|Cor ou Raça|raca_V01342|V01342|Cor ou raça da pessoa responsável pelo domicílio é amarela, Sexo da pessoa responsável pelo domicílio é feminino|
|Cor ou Raça|raca_V01343|V01343|Cor ou raça da pessoa responsável pelo domicílio é parda, Sexo da pessoa responsável pelo domicílio é masculino|
|Cor ou Raça|raca_V01344|V01344|Cor ou raça da pessoa responsável pelo domicílio é parda, Sexo da pessoa responsável pelo domicílio é feminino|
|Cor ou Raça|raca_V01345|V01345|Cor ou raça da pessoa responsável pelo domicílio é indígena, Sexo da pessoa responsável pelo domicílio é masculino|
|Cor ou Raça|raca_V01346|V01346|Cor ou raça da pessoa responsável pelo domicílio é indígena, Sexo da pessoa responsável pelo domicílio é feminino|
|Cor ou Raça|raca_V01347|V01347|Cor ou raça da pessoa responsável pelo domicílio é branca, 12 a 17 anos|
|Cor ou Raça|raca_V01348|V01348|Cor ou raça da pessoa responsável pelo domicílio é branca, 18 a 24 anos|
|Cor ou Raça|raca_V01349|V01349|Cor ou raça da pessoa responsável pelo domicílio é branca, 25 a 39 anos|
|Cor ou Raça|raca_V01350|V01350|Cor ou raça da pessoa responsável pelo domicílio é branca, 40 a 59 anos|
|Cor ou Raça|raca_V01351|V01351|Cor ou raça da pessoa responsável pelo domicílio é branca, 60 anos ou mais|
|Cor ou Raça|raca_V01352|V01352|Cor ou raça da pessoa responsável pelo domicílio é preta, 12 a 17 anos|
|Cor ou Raça|raca_V01353|V01353|Cor ou raça da pessoa responsável pelo domicílio é preta, 18 a 24 anos|
|Cor ou Raça|raca_V01354|V01354|Cor ou raça da pessoa responsável pelo domicílio é preta, 25 a 39 anos|
|Cor ou Raça|raca_V01355|V01355|Cor ou raça da pessoa responsável pelo domicílio é preta, 40 a 59 anos|
|Cor ou Raça|raca_V01356|V01356|Cor ou raça da pessoa responsável pelo domicílio é preta, 60 anos ou mais|
|Cor ou Raça|raca_V01357|V01357|Cor ou raça da pessoa responsável pelo domicílio é amarela, 12 a 17 anos|
|Cor ou Raça|raca_V01358|V01358|Cor ou raça da pessoa responsável pelo domicílio é amarela, 18 a 24 anos|
|Cor ou Raça|raca_V01359|V01359|Cor ou raça da pessoa responsável pelo domicílio é amarela, 25 a 39 anos|
|Cor ou Raça|raca_V01360|V01360|Cor ou raça da pessoa responsável pelo domicílio é amarela, 40 a 59 anos|
|Cor ou Raça|raca_V01361|V01361|Cor ou raça da pessoa responsável pelo domicílio é amarela, 60 anos ou mais|
|Cor ou Raça|raca_V01362|V01362|Cor ou raça da pessoa responsável pelo domicílio é parda, 12 a 17 anos|
|Cor ou Raça|raca_V01363|V01363|Cor ou raça da pessoa responsável pelo domicílio é parda, 18 a 24 anos|
|Cor ou Raça|raca_V01364|V01364|Cor ou raça da pessoa responsável pelo domicílio é parda, 25 a 39 anos|
|Cor ou Raça|raca_V01365|V01365|Cor ou raça da pessoa responsável pelo domicílio é parda, 40 a 59 anos|
|Cor ou Raça|raca_V01366|V01366|Cor ou raça da pessoa responsável pelo domicílio é parda, 60 anos ou mais|
|Cor ou Raça|raca_V01367|V01367|Cor ou raça da pessoa responsável pelo domicílio é indígena, 12 a 17 anos|
|Cor ou Raça|raca_V01368|V01368|Cor ou raça da pessoa responsável pelo domicílio é indígena, 18 a 24 anos|
|Cor ou Raça|raca_V01369|V01369|Cor ou raça da pessoa responsável pelo domicílio é indígena, 25 a 39 anos|
|Cor ou Raça|raca_V01370|V01370|Cor ou raça da pessoa responsável pelo domicílio é indígena, 40 a 59 anos|
|Cor ou Raça|raca_V01371|V01371|Cor ou raça da pessoa responsável pelo domicílio é indígena, 60 anos ou mais|
|Cor ou Raça|raca_V01372|V01372|0 a 14 anos, Cor ou raça é branca|
|Cor ou Raça|raca_V01373|V01373|0 a 14 anos, Cor ou raça é preta|
|Cor ou Raça|raca_V01374|V01374|0 a 14 anos, Cor ou raça é amarela|
|Cor ou Raça|raca_V01375|V01375|0 a 14 anos, Cor ou raça é parda|
|Cor ou Raça|raca_V01376|V01376|0 a 14 anos, Cor ou raça é indígena|
|Cor ou Raça|raca_V01377|V01377|15 a 29 anos, Cor ou raça é branca|
|Cor ou Raça|raca_V01378|V01378|15 a 29 anos, Cor ou raça é preta|
|Cor ou Raça|raca_V01379|V01379|15 a 29 anos, Cor ou raça é amarela|
|Cor ou Raça|raca_V01380|V01380|15 a 29 anos, Cor ou raça é parda|
|Cor ou Raça|raca_V01381|V01381|15 a 29 anos, Cor ou raça é indígena|
|Cor ou Raça|raca_V01382|V01382|30 a 59 anos, Cor ou raça é branca|
|Cor ou Raça|raca_V01383|V01383|30 a 59 anos, Cor ou raça é preta|
|Cor ou Raça|raca_V01384|V01384|30 a 59 anos, Cor ou raça é amarela|
|Cor ou Raça|raca_V01385|V01385|30 a 59 anos, Cor ou raça é parda|
|Cor ou Raça|raca_V01386|V01386|30 a 59 anos, Cor ou raça é indígena|
|Cor ou Raça|raca_V01387|V01387|60 anos ou mais, Cor ou raça é branca|
|Cor ou Raça|raca_V01388|V01388|60 anos ou mais, Cor ou raça é preta|
|Cor ou Raça|raca_V01389|V01389|60 anos ou mais, Cor ou raça é amarela|
|Cor ou Raça|raca_V01390|V01390|60 anos ou mais, Cor ou raça é parda|
|Cor ou Raça|raca_V01391|V01391|60 anos ou mais, Cor ou raça é indígena|
|Cor ou Raça|raca_V01392|V01392|Sexo masculino, 0 a 9 anos, Cor ou raça é branca|
|Cor ou Raça|raca_V01393|V01393|Sexo masculino, 0 a 9 anos, Cor ou raça é preta|
|Cor ou Raça|raca_V01394|V01394|Sexo masculino, 0 a 9 anos, Cor ou raça é amarela|
|Cor ou Raça|raca_V01395|V01395|Sexo masculino, 0 a 9 anos, Cor ou raça é parda|
|Cor ou Raça|raca_V01396|V01396|Sexo masculino, 0 a 9 anos, Cor ou raça é indígena|
|Cor ou Raça|raca_V01397|V01397|Sexo masculino, 10 anos ou mais, Cor ou raça é branca|
|Cor ou Raça|raca_V01398|V01398|Sexo masculino, 10 anos ou mais, Cor ou raça é preta|
|Cor ou Raça|raca_V01399|V01399|Sexo masculino, 10 anos ou mais, Cor ou raça é amarela|
|Cor ou Raça|raca_V01400|V01400|Sexo masculino, 10 anos ou mais, Cor ou raça é parda|
|Cor ou Raça|raca_V01401|V01401|Sexo masculino, 10 anos ou mais, Cor ou raça é indígena|
|Cor ou Raça|raca_V01402|V01402|Sexo feminino, 0 a 9 anos, Cor ou raça é branca|
|Cor ou Raça|raca_V01403|V01403|Sexo feminino, 0 a 9 anos, Cor ou raça é preta|
|Cor ou Raça|raca_V01404|V01404|Sexo feminino, 0 a 9 anos, Cor ou raça é amarela|
|Cor ou Raça|raca_V01405|V01405|Sexo feminino, 0 a 9 anos, Cor ou raça é parda|
|Cor ou Raça|raca_V01406|V01406|Sexo feminino, 0 a 9 anos, Cor ou raça é indígena|
|Cor ou Raça|raca_V01407|V01407|Sexo feminino, 10 anos ou mais, Cor ou raça é branca|
|Cor ou Raça|raca_V01408|V01408|Sexo feminino, 10 anos ou mais, Cor ou raça é preta|
|Cor ou Raça|raca_V01409|V01409|Sexo feminino, 10 anos ou mais, Cor ou raça é amarela|
|Cor ou Raça|raca_V01410|V01410|Sexo feminino, 10 anos ou mais, Cor ou raça é parda|
|Cor ou Raça|raca_V01411|V01411|Sexo feminino, 10 anos ou mais, Cor ou raça é indígena|

## 4.3. Arquivo Domicílios {#dic_domicilios}

### Fonte de dados

* Planilha `Domicilios` do arquivo `docs/original/2022_dictionary_tracts.xlsx`

Temas presentes na planilha: `Características do Domicílio - Parte 1`; `Características do Domicílio - Parte 2`; `Características do Domicílio - Parte 3`; `Identificação Geográfica`.

### Dicionário de dados

|Tema|Nome no {censobr}|Nome original|Descrição da variável|
|-|-|-|-|
|Identificação Geográfica|code_tract|CD_SETOR|Geocódigo de Setor Censitário|
|Identificação Geográfica|situacao|SITUACAO|Situação do Setor Censitário Categorias observadas na planilha: `Urbana`; `Rural`.|
|Identificação Geográfica|code_situacao|CD_SIT|Situação detalhada do Setor Censitário Categorias: `1` = Área urbana de alta densidade de edificações de cidade ou vila; `2` = Área urbana de baixa densidade de edificações de cidade ou vila; `3` = Núcleo urbano; `5` = Aglomerado rural - Povoado; `6` = Aglomerado rural - Núcleo rural; `7` = Aglomerado rural - Lugarejo; `8` = Área rural (exclusive aglomerados); `9` = Massas de água.|
|Identificação Geográfica|code_type|CD_TIPO|Tipo do Setor Censitário Categorias: `0` = Não especial; `1` = Favela e Comunidade Urbana; `2` = Quartel e base militar; `3` = Alojamento / acampamento; `4` = Setor com baixo patamar domiciliar; `5` = Agrupamento indígena; `6` = Unidade prisional; `7` = Convento / hospital / ILPI / IACA; `8` = Agrovila do PA; `9` = Agrupamento quilombola.|
|Identificação Geográfica|area_km2|AREA_KM2|Área do Setor Censitário em quilômetros quadrados|
|Identificação Geográfica|code_region|CD_REGIAO|Código das Grandes Regiões (Regiões Geográficas)|
|Identificação Geográfica|name_region|NM_REGIAO|Nome das Grandes Regiões (Regiões Geográficas)|
|Identificação Geográfica|code_state|CD_UF|Código da Unidade da Federação|
|Identificação Geográfica|name_state|NM_UF|Nome da Unidade da Federação|
|Identificação Geográfica|code_muni|CD_MUN|Código do Município|
|Identificação Geográfica|name_muni|NM_MUN|Nome do Município|
|Identificação Geográfica|code_district|CD_DIST|Código do Distrito|
|Identificação Geográfica|name_district|NM_DIST|Nome do Distrito|
|Identificação Geográfica|code_subdistrict|CD_SUBDIST|Código do Subdistrito|
|Identificação Geográfica|name_subdistrict|NM_SUBDIST|Nome do Subdistrito|
|Identificação Geográfica|code_neighborhood|CD_BAIRRO|Código do Bairro|
|Identificação Geográfica|name_neighborhood|NM_BAIRRO|Nome do Bairro|
|Identificação Geográfica|code_nucleo_urbano|CD_NU|Código do Núcleo Urbano|
|Identificação Geográfica|name_nucleo_urbano|NM_NU|Nome do Núcleo Urbano|
|Identificação Geográfica|code_favela|CD_FCU|Código da Favela ou Comunidade Urbana|
|Identificação Geográfica|name_favela|NM_FCU|Nome da Favela ou Comunidade Urbana|
|Identificação Geográfica|code_aglomerado|CD_AGLOM|Código do Aglomerado|
|Identificação Geográfica|name_aglomerado|NM_AGLOM|Nome do Aglomerado|
|Identificação Geográfica|code_intermediate|CD_RGINT|Código da Região Geográfica Intermediária|
|Identificação Geográfica|name_intermediate|NM_RGINT|Nome da Região Geográfica Intermediária|
|Identificação Geográfica|code_immediate|CD_RGI|Código da Região Geográfica Imediata|
|Identificação Geográfica|name_immediate|NM_RGI|Nome da Região Geográfica Imediata|
|Identificação Geográfica|code_urban_concentration|CD_CONCURB|Código da Concentração Urbana|
|Identificação Geográfica|name_urban_concentration|NM_CONCURB|Nome da Concentração Urbana|
|Características do Domicílio - Parte 1|domicilio01_V00001|V00001|Domicílios Particulares Permanentes Ocupados|
|Características do Domicílio - Parte 1|domicilio01_V00002|V00002|Domicílios Particulares Improvisados Ocupados|
|Características do Domicílio - Parte 1|domicilio01_V00003|V00003|Unidades de Habitação em Domicílios Coletivos Com Morador|
|Características do Domicílio - Parte 1|domicilio01_V00004|V00004|Domicílios Particulares Permanentes Ocupados|
|Características do Domicílio - Parte 1|domicilio01_V00005|V00005|Domicílios Particulares Permanentes Ocupados, Quantidade de moradores|
|Características do Domicílio - Parte 1|domicilio01_V00006|V00006|Domicílios Particulares Improvisados Ocupados, Quantidade de moradores|
|Características do Domicílio - Parte 1|domicilio01_V00007|V00007|Domicílios Coletivos Com Morador, Quantidade de moradores|
|Características do Domicílio - Parte 1|domicilio01_V00008|V00008|Domicílios Particulares Permanentes Ocupados, Quantidade de crianças de zero a nove anos de idade|
|Características do Domicílio - Parte 1|domicilio01_V00009|V00009|Domicílios Particulares Improvisados Ocupados, Quantidade de crianças de zero a nove anos de idade|
|Características do Domicílio - Parte 1|domicilio01_V00010|V00010|Domicílios Coletivos Com Morador, Quantidade de crianças de zero a nove anos de idade|
|Características do Domicílio - Parte 1|domicilio01_V00011|V00011|Domicílios Particulares Permanentes Ocupados, Pessoas de sexo masculino no domicílio|
|Características do Domicílio - Parte 1|domicilio01_V00012|V00012|Domicílios Particulares Improvisados Ocupados, Pessoas de sexo masculino no domicílio|
|Características do Domicílio - Parte 1|domicilio01_V00013|V00013|Domicílios Coletivos Com Morador, Pessoas de sexo masculino no domicílio|
|Características do Domicílio - Parte 1|domicilio01_V00014|V00014|Domicílios Particulares Permanentes Ocupados, Pessoas de sexo feminino no domicílio|
|Características do Domicílio - Parte 1|domicilio01_V00015|V00015|Domicílios Particulares Improvisados Ocupados, Pessoas de sexo feminino no domicílio|
|Características do Domicílio - Parte 1|domicilio01_V00016|V00016|Domicílios Coletivos Com Morador, Pessoas de sexo feminino no domicílio|
|Características do Domicílio - Parte 1|domicilio01_V00017|V00017|Domicílios Particulares Permanentes Ocupados, Com 1 morador no domicílio|
|Características do Domicílio - Parte 1|domicilio01_V00018|V00018|Domicílios Particulares Permanentes Ocupados, Com 2 moradores no domicílio|
|Características do Domicílio - Parte 1|domicilio01_V00019|V00019|Domicílios Particulares Permanentes Ocupados, Com 3 moradores no domicílio|
|Características do Domicílio - Parte 1|domicilio01_V00020|V00020|Domicílios Particulares Permanentes Ocupados, Com 4 moradores no domicílio|
|Características do Domicílio - Parte 1|domicilio01_V00021|V00021|Domicílios Particulares Permanentes Ocupados, Com 5 moradores no domicílio|
|Características do Domicílio - Parte 1|domicilio01_V00022|V00022|Domicílios Particulares Permanentes Ocupados, Com 6 moradores no domicílio|
|Características do Domicílio - Parte 1|domicilio01_V00023|V00023|Domicílios Particulares Permanentes Ocupados, Com 7 moradores no domicílio|
|Características do Domicílio - Parte 1|domicilio01_V00024|V00024|Domicílios Particulares Permanentes Ocupados, Com 8 moradores no domicílio|
|Características do Domicílio - Parte 1|domicilio01_V00025|V00025|Domicílios Particulares Permanentes Ocupados, Com 9 moradores no domicílio|
|Características do Domicílio - Parte 1|domicilio01_V00026|V00026|Domicílios Particulares Permanentes Ocupados, Com 10 ou mais moradores no domicílio|
|Características do Domicílio - Parte 1|domicilio01_V00027|V00027|Domicílios Particulares Improvisados Ocupados, Com 1 morador no domicílio|
|Características do Domicílio - Parte 1|domicilio01_V00028|V00028|Domicílios Particulares Improvisados Ocupados, Com 2 moradores no domicílio|
|Características do Domicílio - Parte 1|domicilio01_V00029|V00029|Domicílios Particulares Improvisados Ocupados, Com 3 moradores no domicílio|
|Características do Domicílio - Parte 1|domicilio01_V00030|V00030|Domicílios Particulares Improvisados Ocupados, Com 4 moradores no domicílio|
|Características do Domicílio - Parte 1|domicilio01_V00031|V00031|Domicílios Particulares Improvisados Ocupados, Com 5 moradores no domicílio|
|Características do Domicílio - Parte 1|domicilio01_V00032|V00032|Domicílios Particulares Improvisados Ocupados, Com 6 moradores no domicílio|
|Características do Domicílio - Parte 1|domicilio01_V00033|V00033|Domicílios Particulares Improvisados Ocupados, Com 7 moradores no domicílio|
|Características do Domicílio - Parte 1|domicilio01_V00034|V00034|Domicílios Particulares Improvisados Ocupados, Com 8 moradores no domicílio|
|Características do Domicílio - Parte 1|domicilio01_V00035|V00035|Domicílios Particulares Improvisados Ocupados, Com 9 moradores no domicílio|
|Características do Domicílio - Parte 1|domicilio01_V00036|V00036|Domicílios Particulares Improvisados Ocupados, Com 10 ou mais moradores no domicílio|
|Características do Domicílio - Parte 1|domicilio01_V00037|V00037|Domicílios Coletivos Com Morador, Com 1 morador no domicílio|
|Características do Domicílio - Parte 1|domicilio01_V00038|V00038|Domicílios Coletivos Com Morador, Com 2 moradores no domicílio|
|Características do Domicílio - Parte 1|domicilio01_V00039|V00039|Domicílios Coletivos Com Morador, Com 3 moradores no domicílio|
|Características do Domicílio - Parte 1|domicilio01_V00040|V00040|Domicílios Coletivos Com Morador, Com 4 moradores no domicílio|
|Características do Domicílio - Parte 1|domicilio01_V00041|V00041|Domicílios Coletivos Com Morador, Com 5 moradores no domicílio|
|Características do Domicílio - Parte 1|domicilio01_V00042|V00042|Domicílios Coletivos Com Morador, Com 6 moradores no domicílio|
|Características do Domicílio - Parte 1|domicilio01_V00043|V00043|Domicílios Coletivos Com Morador, Com 7 moradores no domicílio|
|Características do Domicílio - Parte 1|domicilio01_V00044|V00044|Domicílios Coletivos Com Morador, Com 8 moradores no domicílio|
|Características do Domicílio - Parte 1|domicilio01_V00045|V00045|Domicílios Coletivos Com Morador, Com 9 moradores no domicílio|
|Características do Domicílio - Parte 1|domicilio01_V00046|V00046|Domicílios Coletivos Com Morador, Com 10 ou mais moradores no domicílio|
|Características do Domicílio - Parte 1|domicilio01_V00047|V00047|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa|
|Características do Domicílio - Parte 1|domicilio01_V00048|V00048|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa de vila ou em condomínio|
|Características do Domicílio - Parte 1|domicilio01_V00049|V00049|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é apartamento|
|Características do Domicílio - Parte 1|domicilio01_V00050|V00050|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é habitação em casa de cômodos ou cortiço|
|Características do Domicílio - Parte 1|domicilio01_V00051|V00051|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é habitação indígena sem paredes ou maloca|
|Características do Domicílio - Parte 1|domicilio01_V00052|V00052|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é estrutura residencial permanente degradada ou inacabada|
|Características do Domicílio - Parte 1|domicilio01_V00053|V00053|Domicílios Particulares Improvisados Ocupados, Tipo de espécie é tenda ou barraca de lona, plástico ou tecido|
|Características do Domicílio - Parte 1|domicilio01_V00054|V00054|Domicílios Particulares Improvisados Ocupados, Tipo de espécie é dentro de estabelecimento em funcionamento|
|Características do Domicílio - Parte 1|domicilio01_V00055|V00055|Domicílios Particulares Improvisados Ocupados, Tipo de espécie é abrigo natural e outras estruturas improvisadas|
|Características do Domicílio - Parte 1|domicilio01_V00056|V00056|Domicílios Particulares Improvisados Ocupados, Tipo de espécie é estrutura improvisada em logradouro público, exceto tenda ou barraca|
|Características do Domicílio - Parte 1|domicilio01_V00057|V00057|Domicílios Particulares Improvisados Ocupados, Tipo de espécie é estrutura não residencial permanente degradada ou inacabada|
|Características do Domicílio - Parte 1|domicilio01_V00058|V00058|Domicílios Particulares Improvisados Ocupados, Tipo de espécie é veículo (carro, caminhão, trailer, barco etc)|
|Características do Domicílio - Parte 1|domicilio01_V00059|V00059|Domicílios Coletivos Com Morador, Tipo de espécie é asilo ou outra instituição de longa permanência para idosos|
|Características do Domicílio - Parte 1|domicilio01_V00060|V00060|Domicílios Coletivos Com Morador, Tipo de espécie é hotel ou pensão|
|Características do Domicílio - Parte 1|domicilio01_V00061|V00061|Domicílios Coletivos Com Morador, Tipo de espécie é alojamento|
|Características do Domicílio - Parte 1|domicilio01_V00062|V00062|Domicílios Coletivos Com Morador, Tipo de espécie é penitenciária, centro de detenção e similar|
|Características do Domicílio - Parte 1|domicilio01_V00063|V00063|Domicílios Coletivos Com Morador, Tipo de espécie é outros domicílios coletivos com morador|
|Características do Domicílio - Parte 1|domicilio01_V00064|V00064|Domicílios Coletivos Com Morador, Tipo de espécie é abrigo, albergue ou casa de passagem para população em situação de rua|
|Características do Domicílio - Parte 1|domicilio01_V00065|V00065|Domicílios Coletivos Com Morador, Tipo de espécie é abrigo, casas de passagem ou república assistencial para outros grupos vulneráveis|
|Características do Domicílio - Parte 1|domicilio01_V00066|V00066|Domicílios Coletivos Com Morador, Tipo de espécie é clínica psiquiátrica, comunidade terapêutica e similar|
|Características do Domicílio - Parte 1|domicilio01_V00067|V00067|Domicílios Coletivos Com Morador, Tipo de espécie é orfanato e similar|
|Características do Domicílio - Parte 1|domicilio01_V00068|V00068|Domicílios Coletivos Com Morador, Tipo de espécie é unidade de internação de menores|
|Características do Domicílio - Parte 1|domicilio01_V00069|V00069|Domicílios Coletivos Com Morador, Tipo de espécie é quartel ou outra organização militar|
|Características do Domicílio - Parte 1|domicilio01_V00070|V00070|Domicílios Particulares Permanentes Ocupados, Quantidade de moradores|
|Características do Domicílio - Parte 1|domicilio01_V00071|V00071|Domicílios Particulares Permanentes Ocupados, Quantidade de crianças de zero a nove anos de idade|
|Características do Domicílio - Parte 1|domicilio01_V00072|V00072|Domicílios Particulares Permanentes Ocupados, Pessoas de sexo masculino no domicílio|
|Características do Domicílio - Parte 1|domicilio01_V00073|V00073|Domicílios Particulares Permanentes Ocupados, Pessoas de sexo feminino no domicílio|
|Características do Domicílio - Parte 1|domicilio01_V00074|V00074|Domicílios Particulares Permanentes Ocupados, Com 1 morador no domicílio|
|Características do Domicílio - Parte 1|domicilio01_V00075|V00075|Domicílios Particulares Permanentes Ocupados, Com 2 moradores no domicílio|
|Características do Domicílio - Parte 1|domicilio01_V00076|V00076|Domicílios Particulares Permanentes Ocupados, Com 3 moradores no domicílio|
|Características do Domicílio - Parte 1|domicilio01_V00077|V00077|Domicílios Particulares Permanentes Ocupados, Com 4 moradores no domicílio|
|Características do Domicílio - Parte 1|domicilio01_V00078|V00078|Domicílios Particulares Permanentes Ocupados, Com 5 moradores no domicílio|
|Características do Domicílio - Parte 1|domicilio01_V00079|V00079|Domicílios Particulares Permanentes Ocupados, Com 6 moradores no domicílio|
|Características do Domicílio - Parte 1|domicilio01_V00080|V00080|Domicílios Particulares Permanentes Ocupados, Com 7 moradores no domicílio|
|Características do Domicílio - Parte 1|domicilio01_V00081|V00081|Domicílios Particulares Permanentes Ocupados, Com 8 moradores no domicílio|
|Características do Domicílio - Parte 1|domicilio01_V00082|V00082|Domicílios Particulares Permanentes Ocupados, Com 9 moradores no domicílio|
|Características do Domicílio - Parte 1|domicilio01_V00083|V00083|Domicílios Particulares Permanentes Ocupados, Com 10 ou mais moradores no domicílio|
|Características do Domicílio - Parte 1|domicilio01_V00084|V00084|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa, Quantidade de moradores|
|Características do Domicílio - Parte 1|domicilio01_V00085|V00085|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa de vila ou em condomínio, Quantidade de moradores|
|Características do Domicílio - Parte 1|domicilio01_V00086|V00086|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é apartamento, Quantidade de moradores|
|Características do Domicílio - Parte 1|domicilio01_V00087|V00087|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa, Quantidade de crianças de zero a nove anos de idade|
|Características do Domicílio - Parte 1|domicilio01_V00088|V00088|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa de vila ou em condomínio, Quantidade de crianças de zero a nove anos de idade|
|Características do Domicílio - Parte 1|domicilio01_V00089|V00089|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é apartamento, Quantidade de crianças de zero a nove anos de idade|
|Características do Domicílio - Parte 2|domicilio02_V00090|V00090|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa, Cor ou raça da pessoa responsável pelo domicílio é branca|
|Características do Domicílio - Parte 2|domicilio02_V00091|V00091|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa, Cor ou raça da pessoa responsável pelo domicílio é preta|
|Características do Domicílio - Parte 2|domicilio02_V00092|V00092|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa, Cor ou raça da pessoa responsável pelo domicílio é amarela|
|Características do Domicílio - Parte 2|domicilio02_V00093|V00093|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa, Cor ou raça da pessoa responsável pelo domicílio é parda|
|Características do Domicílio - Parte 2|domicilio02_V00094|V00094|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa, Cor ou raça da pessoa responsável pelo domicílio é indígena|
|Características do Domicílio - Parte 2|domicilio02_V00095|V00095|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa de vila ou em condomínio, Cor ou raça da pessoa responsável pelo domicílio é branca|
|Características do Domicílio - Parte 2|domicilio02_V00096|V00096|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa de vila ou em condomínio, Cor ou raça da pessoa responsável pelo domicílio é preta|
|Características do Domicílio - Parte 2|domicilio02_V00097|V00097|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa de vila ou em condomínio, Cor ou raça da pessoa responsável pelo domicílio é amarela|
|Características do Domicílio - Parte 2|domicilio02_V00098|V00098|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa de vila ou em condomínio, Cor ou raça da pessoa responsável pelo domicílio é parda|
|Características do Domicílio - Parte 2|domicilio02_V00099|V00099|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa de vila ou em condomínio, Cor ou raça da pessoa responsável pelo domicílio é indígena|
|Características do Domicílio - Parte 2|domicilio02_V00100|V00100|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é apartamento, Cor ou raça da pessoa responsável pelo domicílio é branca|
|Características do Domicílio - Parte 2|domicilio02_V00101|V00101|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é apartamento, Cor ou raça da pessoa responsável pelo domicílio é preta|
|Características do Domicílio - Parte 2|domicilio02_V00102|V00102|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é apartamento, Cor ou raça da pessoa responsável pelo domicílio é amarela|
|Características do Domicílio - Parte 2|domicilio02_V00103|V00103|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é apartamento, Cor ou raça da pessoa responsável pelo domicílio é parda|
|Características do Domicílio - Parte 2|domicilio02_V00104|V00104|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é apartamento, Cor ou raça da pessoa responsável pelo domicílio é indígena|
|Características do Domicílio - Parte 2|domicilio02_V00105|V00105|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa, Sexo da pessoa responsável pelo domicílio é masculino|
|Características do Domicílio - Parte 2|domicilio02_V00106|V00106|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa, Sexo da pessoa responsável pelo domicílio é feminino|
|Características do Domicílio - Parte 2|domicilio02_V00107|V00107|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa de vila ou em condomínio, Sexo da pessoa responsável pelo domicílio é masculino|
|Características do Domicílio - Parte 2|domicilio02_V00108|V00108|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa de vila ou em condomínio, Sexo da pessoa responsável pelo domicílio é feminino|
|Características do Domicílio - Parte 2|domicilio02_V00109|V00109|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é apartamento, Sexo da pessoa responsável pelo domicílio é masculino|
|Características do Domicílio - Parte 2|domicilio02_V00110|V00110|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é apartamento, Sexo da pessoa responsável pelo domicílio é feminino|
|Características do Domicílio - Parte 2|domicilio02_V00111|V00111|Domicílios Particulares Permanentes Ocupados, Utiliza rede geral de distribuição|
|Características do Domicílio - Parte 2|domicilio02_V00112|V00112|Domicílios Particulares Permanentes Ocupados, Utiliza poço profundo ou artesiano|
|Características do Domicílio - Parte 2|domicilio02_V00113|V00113|Domicílios Particulares Permanentes Ocupados, Utiliza poço raso, freático ou cacimba|
|Características do Domicílio - Parte 2|domicilio02_V00114|V00114|Domicílios Particulares Permanentes Ocupados, Utiliza fonte, nascente ou mina|
|Características do Domicílio - Parte 2|domicilio02_V00115|V00115|Domicílios Particulares Permanentes Ocupados, Utiliza carro-pipa|
|Características do Domicílio - Parte 2|domicilio02_V00116|V00116|Domicílios Particulares Permanentes Ocupados, Utiliza água da chuva armazenada|
|Características do Domicílio - Parte 2|domicilio02_V00117|V00117|Domicílios Particulares Permanentes Ocupados, Utiliza rios, açudes, córregos, lagos e igarapés|
|Características do Domicílio - Parte 2|domicilio02_V00118|V00118|Domicílios Particulares Permanentes Ocupados, Utiliza outra forma de abastecimento de água|
|Características do Domicílio - Parte 2|domicilio02_V00119|V00119|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa, Utiliza rede geral de distribuição|
|Características do Domicílio - Parte 2|domicilio02_V00120|V00120|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa, Utiliza poço profundo ou artesiano|
|Características do Domicílio - Parte 2|domicilio02_V00121|V00121|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa, Utiliza poço raso, freático ou cacimba|
|Características do Domicílio - Parte 2|domicilio02_V00122|V00122|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa, Utiliza fonte, nascente ou mina|
|Características do Domicílio - Parte 2|domicilio02_V00123|V00123|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa, Utiliza carro-pipa|
|Características do Domicílio - Parte 2|domicilio02_V00124|V00124|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa, Utiliza água da chuva armazenada|
|Características do Domicílio - Parte 2|domicilio02_V00125|V00125|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa, Utiliza rios, açudes, córregos, lagos e igarapés|
|Características do Domicílio - Parte 2|domicilio02_V00126|V00126|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa, Utiliza outra forma de abastecimento de água|
|Características do Domicílio - Parte 2|domicilio02_V00127|V00127|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa de vila ou em condomínio, Utiliza rede geral de distribuição|
|Características do Domicílio - Parte 2|domicilio02_V00128|V00128|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa de vila ou em condomínio, Utiliza poço profundo ou artesiano|
|Características do Domicílio - Parte 2|domicilio02_V00129|V00129|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa de vila ou em condomínio, Utiliza poço raso, freático ou cacimba|
|Características do Domicílio - Parte 2|domicilio02_V00130|V00130|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa de vila ou em condomínio, Utiliza fonte, nascente ou mina|
|Características do Domicílio - Parte 2|domicilio02_V00131|V00131|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa de vila ou em condomínio, Utiliza carro-pipa|
|Características do Domicílio - Parte 2|domicilio02_V00132|V00132|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa de vila ou em condomínio, Utiliza água da chuva armazenada|
|Características do Domicílio - Parte 2|domicilio02_V00133|V00133|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa de vila ou em condomínio, Utiliza rios, açudes, córregos, lagos e igarapés|
|Características do Domicílio - Parte 2|domicilio02_V00134|V00134|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa de vila ou em condomínio, Utiliza outra forma de abastecimento de água|
|Características do Domicílio - Parte 2|domicilio02_V00135|V00135|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é apartamento, Utiliza rede geral de distribuição|
|Características do Domicílio - Parte 2|domicilio02_V00136|V00136|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é apartamento, Utiliza poço profundo ou artesiano|
|Características do Domicílio - Parte 2|domicilio02_V00137|V00137|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é apartamento, Utiliza poço raso, freático ou cacimba|
|Características do Domicílio - Parte 2|domicilio02_V00138|V00138|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é apartamento, Utiliza fonte, nascente ou mina|
|Características do Domicílio - Parte 2|domicilio02_V00139|V00139|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é apartamento, Utiliza carro-pipa|
|Características do Domicílio - Parte 2|domicilio02_V00140|V00140|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é apartamento, Utiliza água da chuva armazenada|
|Características do Domicílio - Parte 2|domicilio02_V00141|V00141|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é apartamento, Utiliza rios, açudes, córregos, lagos e igarapés|
|Características do Domicílio - Parte 2|domicilio02_V00142|V00142|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é apartamento, Utiliza outra forma de abastecimento de água|
|Características do Domicílio - Parte 2|domicilio02_V00143|V00143|Domicílios Particulares Permanentes Ocupados, Utiliza rede geral de distribuição, Cor ou raça da pessoa responsável pelo domicílio é branca|
|Características do Domicílio - Parte 2|domicilio02_V00144|V00144|Domicílios Particulares Permanentes Ocupados, Utiliza rede geral de distribuição, Cor ou raça da pessoa responsável pelo domicílio é preta|
|Características do Domicílio - Parte 2|domicilio02_V00145|V00145|Domicílios Particulares Permanentes Ocupados, Utiliza rede geral de distribuição, Cor ou raça da pessoa responsável pelo domicílio é amarela|
|Características do Domicílio - Parte 2|domicilio02_V00146|V00146|Domicílios Particulares Permanentes Ocupados, Utiliza rede geral de distribuição, Cor ou raça da pessoa responsável pelo domicílio é parda|
|Características do Domicílio - Parte 2|domicilio02_V00147|V00147|Domicílios Particulares Permanentes Ocupados, Utiliza rede geral de distribuição, Cor ou raça da pessoa responsável pelo domicílio é indígena|
|Características do Domicílio - Parte 2|domicilio02_V00148|V00148|Domicílios Particulares Permanentes Ocupados, Utiliza poço profundo ou artesiano, Cor ou raça da pessoa responsável pelo domicílio é branca|
|Características do Domicílio - Parte 2|domicilio02_V00149|V00149|Domicílios Particulares Permanentes Ocupados, Utiliza poço profundo ou artesiano, Cor ou raça da pessoa responsável pelo domicílio é preta|
|Características do Domicílio - Parte 2|domicilio02_V00150|V00150|Domicílios Particulares Permanentes Ocupados, Utiliza poço profundo ou artesiano, Cor ou raça da pessoa responsável pelo domicílio é amarela|
|Características do Domicílio - Parte 2|domicilio02_V00151|V00151|Domicílios Particulares Permanentes Ocupados, Utiliza poço profundo ou artesiano, Cor ou raça da pessoa responsável pelo domicílio é parda|
|Características do Domicílio - Parte 2|domicilio02_V00152|V00152|Domicílios Particulares Permanentes Ocupados, Utiliza poço profundo ou artesiano, Cor ou raça da pessoa responsável pelo domicílio é indígena|
|Características do Domicílio - Parte 2|domicilio02_V00153|V00153|Domicílios Particulares Permanentes Ocupados, Utiliza poço raso, freático ou cacimba, Cor ou raça da pessoa responsável pelo domicílio é branca|
|Características do Domicílio - Parte 2|domicilio02_V00154|V00154|Domicílios Particulares Permanentes Ocupados, Utiliza poço raso, freático ou cacimba, Cor ou raça da pessoa responsável pelo domicílio é preta|
|Características do Domicílio - Parte 2|domicilio02_V00155|V00155|Domicílios Particulares Permanentes Ocupados, Utiliza poço raso, freático ou cacimba, Cor ou raça da pessoa responsável pelo domicílio é amarela|
|Características do Domicílio - Parte 2|domicilio02_V00156|V00156|Domicílios Particulares Permanentes Ocupados, Utiliza poço raso, freático ou cacimba, Cor ou raça da pessoa responsável pelo domicílio é parda|
|Características do Domicílio - Parte 2|domicilio02_V00157|V00157|Domicílios Particulares Permanentes Ocupados, Utiliza poço raso, freático ou cacimba, Cor ou raça da pessoa responsável pelo domicílio é indígena|
|Características do Domicílio - Parte 2|domicilio02_V00158|V00158|Domicílios Particulares Permanentes Ocupados, Utiliza fonte, nascente ou mina, Cor ou raça da pessoa responsável pelo domicílio é branca|
|Características do Domicílio - Parte 2|domicilio02_V00159|V00159|Domicílios Particulares Permanentes Ocupados, Utiliza fonte, nascente ou mina, Cor ou raça da pessoa responsável pelo domicílio é preta|
|Características do Domicílio - Parte 2|domicilio02_V00160|V00160|Domicílios Particulares Permanentes Ocupados, Utiliza fonte, nascente ou mina, Cor ou raça da pessoa responsável pelo domicílio é amarela|
|Características do Domicílio - Parte 2|domicilio02_V00161|V00161|Domicílios Particulares Permanentes Ocupados, Utiliza fonte, nascente ou mina, Cor ou raça da pessoa responsável pelo domicílio é parda|
|Características do Domicílio - Parte 2|domicilio02_V00162|V00162|Domicílios Particulares Permanentes Ocupados, Utiliza fonte, nascente ou mina, Cor ou raça da pessoa responsável pelo domicílio é indígena|
|Características do Domicílio - Parte 2|domicilio02_V00163|V00163|Domicílios Particulares Permanentes Ocupados, Utiliza carro-pipa, Cor ou raça da pessoa responsável pelo domicílio é branca|
|Características do Domicílio - Parte 2|domicilio02_V00164|V00164|Domicílios Particulares Permanentes Ocupados, Utiliza carro-pipa, Cor ou raça da pessoa responsável pelo domicílio é preta|
|Características do Domicílio - Parte 2|domicilio02_V00165|V00165|Domicílios Particulares Permanentes Ocupados, Utiliza carro-pipa, Cor ou raça da pessoa responsável pelo domicílio é amarela|
|Características do Domicílio - Parte 2|domicilio02_V00166|V00166|Domicílios Particulares Permanentes Ocupados, Utiliza carro-pipa, Cor ou raça da pessoa responsável pelo domicílio é parda|
|Características do Domicílio - Parte 2|domicilio02_V00167|V00167|Domicílios Particulares Permanentes Ocupados, Utiliza carro-pipa, Cor ou raça da pessoa responsável pelo domicílio é indígena|
|Características do Domicílio - Parte 2|domicilio02_V00168|V00168|Domicílios Particulares Permanentes Ocupados, Utiliza água da chuva armazenada, Cor ou raça da pessoa responsável pelo domicílio é branca|
|Características do Domicílio - Parte 2|domicilio02_V00169|V00169|Domicílios Particulares Permanentes Ocupados, Utiliza água da chuva armazenada, Cor ou raça da pessoa responsável pelo domicílio é preta|
|Características do Domicílio - Parte 2|domicilio02_V00170|V00170|Domicílios Particulares Permanentes Ocupados, Utiliza água da chuva armazenada, Cor ou raça da pessoa responsável pelo domicílio é amarela|
|Características do Domicílio - Parte 2|domicilio02_V00171|V00171|Domicílios Particulares Permanentes Ocupados, Utiliza água da chuva armazenada, Cor ou raça da pessoa responsável pelo domicílio é parda|
|Características do Domicílio - Parte 2|domicilio02_V00172|V00172|Domicílios Particulares Permanentes Ocupados, Utiliza água da chuva armazenada, Cor ou raça da pessoa responsável pelo domicílio é indígena|
|Características do Domicílio - Parte 2|domicilio02_V00173|V00173|Domicílios Particulares Permanentes Ocupados, Utiliza rios, açudes, córregos, lagos e igarapés, Cor ou raça da pessoa responsável pelo domicílio é branca|
|Características do Domicílio - Parte 2|domicilio02_V00174|V00174|Domicílios Particulares Permanentes Ocupados, Utiliza rios, açudes, córregos, lagos e igarapés, Cor ou raça da pessoa responsável pelo domicílio é preta|
|Características do Domicílio - Parte 2|domicilio02_V00175|V00175|Domicílios Particulares Permanentes Ocupados, Utiliza rios, açudes, córregos, lagos e igarapés, Cor ou raça da pessoa responsável pelo domicílio é amarela|
|Características do Domicílio - Parte 2|domicilio02_V00176|V00176|Domicílios Particulares Permanentes Ocupados, Utiliza rios, açudes, córregos, lagos e igarapés, Cor ou raça da pessoa responsável pelo domicílio é parda|
|Características do Domicílio - Parte 2|domicilio02_V00177|V00177|Domicílios Particulares Permanentes Ocupados, Utiliza rios, açudes, córregos, lagos e igarapés, Cor ou raça da pessoa responsável pelo domicílio é indígena|
|Características do Domicílio - Parte 2|domicilio02_V00178|V00178|Domicílios Particulares Permanentes Ocupados, Utiliza outra forma de abastecimento de água, Cor ou raça da pessoa responsável pelo domicílio é branca|
|Características do Domicílio - Parte 2|domicilio02_V00179|V00179|Domicílios Particulares Permanentes Ocupados, Utiliza outra forma de abastecimento de água, Cor ou raça da pessoa responsável pelo domicílio é preta|
|Características do Domicílio - Parte 2|domicilio02_V00180|V00180|Domicílios Particulares Permanentes Ocupados, Utiliza outra forma de abastecimento de água, Cor ou raça da pessoa responsável pelo domicílio é amarela|
|Características do Domicílio - Parte 2|domicilio02_V00181|V00181|Domicílios Particulares Permanentes Ocupados, Utiliza outra forma de abastecimento de água, Cor ou raça da pessoa responsável pelo domicílio é parda|
|Características do Domicílio - Parte 2|domicilio02_V00182|V00182|Domicílios Particulares Permanentes Ocupados, Utiliza outra forma de abastecimento de água, Cor ou raça da pessoa responsável pelo domicílio é indígena|
|Características do Domicílio - Parte 2|domicilio02_V00183|V00183|Domicílios Particulares Permanentes Ocupados, Utiliza rede geral de distribuição, Sexo da pessoa responsável pelo domicílio é masculino|
|Características do Domicílio - Parte 2|domicilio02_V00184|V00184|Domicílios Particulares Permanentes Ocupados, Utiliza rede geral de distribuição, Sexo da pessoa responsável pelo domicílio é feminino|
|Características do Domicílio - Parte 2|domicilio02_V00185|V00185|Domicílios Particulares Permanentes Ocupados, Utiliza poço profundo ou artesiano, Sexo da pessoa responsável pelo domicílio é masculino|
|Características do Domicílio - Parte 2|domicilio02_V00186|V00186|Domicílios Particulares Permanentes Ocupados, Utiliza poço profundo ou artesiano, Sexo da pessoa responsável pelo domicílio é feminino|
|Características do Domicílio - Parte 2|domicilio02_V00187|V00187|Domicílios Particulares Permanentes Ocupados, Utiliza poço raso, freático ou cacimba, Sexo da pessoa responsável pelo domicílio é masculino|
|Características do Domicílio - Parte 2|domicilio02_V00188|V00188|Domicílios Particulares Permanentes Ocupados, Utiliza poço raso, freático ou cacimba, Sexo da pessoa responsável pelo domicílio é feminino|
|Características do Domicílio - Parte 2|domicilio02_V00189|V00189|Domicílios Particulares Permanentes Ocupados, Utiliza fonte, nascente ou mina, Sexo da pessoa responsável pelo domicílio é masculino|
|Características do Domicílio - Parte 2|domicilio02_V00190|V00190|Domicílios Particulares Permanentes Ocupados, Utiliza fonte, nascente ou mina, Sexo da pessoa responsável pelo domicílio é feminino|
|Características do Domicílio - Parte 2|domicilio02_V00191|V00191|Domicílios Particulares Permanentes Ocupados, Utiliza carro-pipa, Sexo da pessoa responsável pelo domicílio é masculino|
|Características do Domicílio - Parte 2|domicilio02_V00192|V00192|Domicílios Particulares Permanentes Ocupados, Utiliza carro-pipa, Sexo da pessoa responsável pelo domicílio é feminino|
|Características do Domicílio - Parte 2|domicilio02_V00193|V00193|Domicílios Particulares Permanentes Ocupados, Utiliza água da chuva armazenada, Sexo da pessoa responsável pelo domicílio é masculino|
|Características do Domicílio - Parte 2|domicilio02_V00194|V00194|Domicílios Particulares Permanentes Ocupados, Utiliza água da chuva armazenada, Sexo da pessoa responsável pelo domicílio é feminino|
|Características do Domicílio - Parte 2|domicilio02_V00195|V00195|Domicílios Particulares Permanentes Ocupados, Utiliza rios, açudes, córregos, lagos e igarapés, Sexo da pessoa responsável pelo domicílio é masculino|
|Características do Domicílio - Parte 2|domicilio02_V00196|V00196|Domicílios Particulares Permanentes Ocupados, Utiliza rios, açudes, córregos, lagos e igarapés, Sexo da pessoa responsável pelo domicílio é feminino|
|Características do Domicílio - Parte 2|domicilio02_V00197|V00197|Domicílios Particulares Permanentes Ocupados, Utiliza outra forma de abastecimento de água, Sexo da pessoa responsável pelo domicílio é masculino|
|Características do Domicílio - Parte 2|domicilio02_V00198|V00198|Domicílios Particulares Permanentes Ocupados, Utiliza outra forma de abastecimento de água, Sexo da pessoa responsável pelo domicílio é feminino|
|Características do Domicílio - Parte 2|domicilio02_V00199|V00199|Domicílios Particulares Permanentes Ocupados, Água chega encanada até dentro da casa, apartamento ou habitação|
|Características do Domicílio - Parte 2|domicilio02_V00200|V00200|Domicílios Particulares Permanentes Ocupados, Água chega encanada, mas apenas ao terreno|
|Características do Domicílio - Parte 2|domicilio02_V00201|V00201|Domicílios Particulares Permanentes Ocupados, Água não chega encanada ao domicílio|
|Características do Domicílio - Parte 2|domicilio02_V00202|V00202|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa, Água chega encanada até dentro da casa, apartamento ou habitação|
|Características do Domicílio - Parte 2|domicilio02_V00203|V00203|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa, Água chega encanada, mas apenas ao terreno|
|Características do Domicílio - Parte 2|domicilio02_V00204|V00204|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa, Água não chega encanada ao domicílio|
|Características do Domicílio - Parte 2|domicilio02_V00205|V00205|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa de vila ou em condomínio, Água chega encanada até dentro da casa, apartamento ou habitação|
|Características do Domicílio - Parte 2|domicilio02_V00206|V00206|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa de vila ou em condomínio, Água chega encanada, mas apenas ao terreno|
|Características do Domicílio - Parte 2|domicilio02_V00207|V00207|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa de vila ou em condomínio, Água não chega encanada ao domicílio|
|Características do Domicílio - Parte 2|domicilio02_V00208|V00208|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é apartamento, Água chega encanada até dentro da casa, apartamento ou habitação|
|Características do Domicílio - Parte 2|domicilio02_V00209|V00209|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é apartamento, Água chega encanada, mas apenas ao terreno|
|Características do Domicílio - Parte 2|domicilio02_V00210|V00210|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é apartamento, Água não chega encanada ao domicílio|
|Características do Domicílio - Parte 2|domicilio02_V00211|V00211|Domicílios Particulares Permanentes Ocupados, Água chega encanada até dentro da casa, apartamento ou habitação, Cor ou raça da pessoa responsável pelo domicílio é branca|
|Características do Domicílio - Parte 2|domicilio02_V00212|V00212|Domicílios Particulares Permanentes Ocupados, Água chega encanada até dentro da casa, apartamento ou habitação, Cor ou raça da pessoa responsável pelo domicílio é preta|
|Características do Domicílio - Parte 2|domicilio02_V00213|V00213|Domicílios Particulares Permanentes Ocupados, Água chega encanada até dentro da casa, apartamento ou habitação, Cor ou raça da pessoa responsável pelo domicílio é amarela|
|Características do Domicílio - Parte 2|domicilio02_V00214|V00214|Domicílios Particulares Permanentes Ocupados, Água chega encanada até dentro da casa, apartamento ou habitação, Cor ou raça da pessoa responsável pelo domicílio é parda|
|Características do Domicílio - Parte 2|domicilio02_V00215|V00215|Domicílios Particulares Permanentes Ocupados, Água chega encanada até dentro da casa, apartamento ou habitação, Cor ou raça da pessoa responsável pelo domicílio é indígena|
|Características do Domicílio - Parte 2|domicilio02_V00216|V00216|Domicílios Particulares Permanentes Ocupados, Água chega encanada, mas apenas ao terreno, Cor ou raça da pessoa responsável pelo domicílio é branca|
|Características do Domicílio - Parte 2|domicilio02_V00217|V00217|Domicílios Particulares Permanentes Ocupados, Água chega encanada, mas apenas ao terreno, Cor ou raça da pessoa responsável pelo domicílio é preta|
|Características do Domicílio - Parte 2|domicilio02_V00218|V00218|Domicílios Particulares Permanentes Ocupados, Água chega encanada, mas apenas ao terreno, Cor ou raça da pessoa responsável pelo domicílio é amarela|
|Características do Domicílio - Parte 2|domicilio02_V00219|V00219|Domicílios Particulares Permanentes Ocupados, Água chega encanada, mas apenas ao terreno, Cor ou raça da pessoa responsável pelo domicílio é parda|
|Características do Domicílio - Parte 2|domicilio02_V00220|V00220|Domicílios Particulares Permanentes Ocupados, Água chega encanada, mas apenas ao terreno, Cor ou raça da pessoa responsável pelo domicílio é indígena|
|Características do Domicílio - Parte 2|domicilio02_V00221|V00221|Domicílios Particulares Permanentes Ocupados, Água não chega encanada ao domicílio, Cor ou raça da pessoa responsável pelo domicílio é branca|
|Características do Domicílio - Parte 2|domicilio02_V00222|V00222|Domicílios Particulares Permanentes Ocupados, Água não chega encanada ao domicílio, Cor ou raça da pessoa responsável pelo domicílio é preta|
|Características do Domicílio - Parte 2|domicilio02_V00223|V00223|Domicílios Particulares Permanentes Ocupados, Água não chega encanada ao domicílio, Cor ou raça da pessoa responsável pelo domicílio é amarela|
|Características do Domicílio - Parte 2|domicilio02_V00224|V00224|Domicílios Particulares Permanentes Ocupados, Água não chega encanada ao domicílio, Cor ou raça da pessoa responsável pelo domicílio é parda|
|Características do Domicílio - Parte 2|domicilio02_V00225|V00225|Domicílios Particulares Permanentes Ocupados, Água não chega encanada ao domicílio, Cor ou raça da pessoa responsável pelo domicílio é indígena|
|Características do Domicílio - Parte 2|domicilio02_V00226|V00226|Domicílios Particulares Permanentes Ocupados, Água chega encanada até dentro da casa, apartamento ou habitação, Sexo da pessoa responsável pelo domicílio é masculino|
|Características do Domicílio - Parte 2|domicilio02_V00227|V00227|Domicílios Particulares Permanentes Ocupados, Água chega encanada até dentro da casa, apartamento ou habitação, Sexo da pessoa responsável pelo domicílio é feminino|
|Características do Domicílio - Parte 2|domicilio02_V00228|V00228|Domicílios Particulares Permanentes Ocupados, Água chega encanada, mas apenas ao terreno, Sexo da pessoa responsável pelo domicílio é masculino|
|Características do Domicílio - Parte 2|domicilio02_V00229|V00229|Domicílios Particulares Permanentes Ocupados, Água chega encanada, mas apenas ao terreno, Sexo da pessoa responsável pelo domicílio é feminino|
|Características do Domicílio - Parte 2|domicilio02_V00230|V00230|Domicílios Particulares Permanentes Ocupados, Água não chega encanada ao domicílio, Sexo da pessoa responsável pelo domicílio é masculino|
|Características do Domicílio - Parte 2|domicilio02_V00231|V00231|Domicílios Particulares Permanentes Ocupados, Água não chega encanada ao domicílio, Sexo da pessoa responsável pelo domicílio é feminino|
|Características do Domicílio - Parte 2|domicilio02_V00232|V00232|Domicílios Particulares Permanentes Ocupados, 1 banheiro de uso exclusivo com chuveiro e vaso sanitário existentes no domicílio|
|Características do Domicílio - Parte 2|domicilio02_V00233|V00233|Domicílios Particulares Permanentes Ocupados, 2 banheiros de uso exclusivo com chuveiro e vaso sanitário existentes no domicílio|
|Características do Domicílio - Parte 2|domicilio02_V00234|V00234|Domicílios Particulares Permanentes Ocupados, 3 banheiros de uso exclusivo com chuveiro e vaso sanitário existentes no domicílio|
|Características do Domicílio - Parte 2|domicilio02_V00235|V00235|Domicílios Particulares Permanentes Ocupados, 4 ou mais banheiros de uso exclusivo com chuveiro e vaso sanitário existentes no domicílio|
|Características do Domicílio - Parte 2|domicilio02_V00236|V00236|Domicílios Particulares Permanentes Ocupados, Apenas banheiro de uso comum a mais de um domicílio|
|Características do Domicílio - Parte 2|domicilio02_V00237|V00237|Domicílios Particulares Permanentes Ocupados, Apenas sanitário ou buraco para dejeções, inclusive os localizados no terreno|
|Características do Domicílio - Parte 2|domicilio02_V00238|V00238|Domicílios Particulares Permanentes Ocupados, Não tinham banheiro nem sanitário|
|Características do Domicílio - Parte 2|domicilio02_V00239|V00239|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa, 1 banheiro de uso exclusivo com chuveiro e vaso sanitário existentes no domicílio|
|Características do Domicílio - Parte 2|domicilio02_V00240|V00240|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa, 2 banheiros de uso exclusivo com chuveiro e vaso sanitário existentes no domicílio|
|Características do Domicílio - Parte 2|domicilio02_V00241|V00241|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa, 3 banheiros de uso exclusivo com chuveiro e vaso sanitário existentes no domicílio|
|Características do Domicílio - Parte 2|domicilio02_V00242|V00242|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa, 4 ou mais banheiros de uso exclusivo com chuveiro e vaso sanitário existentes no domicílio|
|Características do Domicílio - Parte 2|domicilio02_V00243|V00243|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa, Apenas banheiro de uso comum a mais de um domicílio|
|Características do Domicílio - Parte 2|domicilio02_V00244|V00244|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa, Apenas sanitário ou buraco para dejeções, inclusive os localizados no terreno|
|Características do Domicílio - Parte 2|domicilio02_V00245|V00245|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa, Não tinham banheiro nem sanitário|
|Características do Domicílio - Parte 2|domicilio02_V00246|V00246|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa de vila ou em condomínio, 1 banheiro de uso exclusivo com chuveiro e vaso sanitário existentes no domicílio|
|Características do Domicílio - Parte 2|domicilio02_V00247|V00247|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa de vila ou em condomínio, 2 banheiros de uso exclusivo com chuveiro e vaso sanitário existentes no domicílio|
|Características do Domicílio - Parte 2|domicilio02_V00248|V00248|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa de vila ou em condomínio, 3 banheiros de uso exclusivo com chuveiro e vaso sanitário existentes no domicílio|
|Características do Domicílio - Parte 2|domicilio02_V00249|V00249|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa de vila ou em condomínio, 4 ou mais banheiros de uso exclusivo com chuveiro e vaso sanitário existentes no domicílio|
|Características do Domicílio - Parte 2|domicilio02_V00250|V00250|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa de vila ou em condomínio, Apenas banheiro de uso comum a mais de um domicílio|
|Características do Domicílio - Parte 2|domicilio02_V00251|V00251|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa de vila ou em condomínio, Apenas sanitário ou buraco para dejeções, inclusive os localizados no terreno|
|Características do Domicílio - Parte 2|domicilio02_V00252|V00252|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa de vila ou em condomínio, Não tinham banheiro nem sanitário|
|Características do Domicílio - Parte 2|domicilio02_V00253|V00253|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é apartamento, 1 banheiro de uso exclusivo com chuveiro e vaso sanitário existentes no domicílio|
|Características do Domicílio - Parte 2|domicilio02_V00254|V00254|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é apartamento, 2 banheiros de uso exclusivo com chuveiro e vaso sanitário existentes no domicílio|
|Características do Domicílio - Parte 2|domicilio02_V00255|V00255|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é apartamento, 3 banheiros de uso exclusivo com chuveiro e vaso sanitário existentes no domicílio|
|Características do Domicílio - Parte 2|domicilio02_V00256|V00256|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é apartamento, 4 ou mais banheiros de uso exclusivo com chuveiro e vaso sanitário existentes no domicílio|
|Características do Domicílio - Parte 2|domicilio02_V00257|V00257|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é apartamento, Apenas banheiro de uso comum a mais de um domicílio|
|Características do Domicílio - Parte 2|domicilio02_V00258|V00258|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é apartamento, Apenas sanitário ou buraco para dejeções, inclusive os localizados no terreno|
|Características do Domicílio - Parte 2|domicilio02_V00259|V00259|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é apartamento, Não tinham banheiro nem sanitário|
|Características do Domicílio - Parte 2|domicilio02_V00260|V00260|Domicílios Particulares Permanentes Ocupados, 1 banheiro de uso exclusivo com chuveiro e vaso sanitário existentes no domicílio, Cor ou raça da pessoa responsável pelo domicílio é branca|
|Características do Domicílio - Parte 2|domicilio02_V00261|V00261|Domicílios Particulares Permanentes Ocupados, 1 banheiro de uso exclusivo com chuveiro e vaso sanitário existentes no domicílio, Cor ou raça da pessoa responsável pelo domicílio é preta|
|Características do Domicílio - Parte 2|domicilio02_V00262|V00262|Domicílios Particulares Permanentes Ocupados, 1 banheiro de uso exclusivo com chuveiro e vaso sanitário existentes no domicílio, Cor ou raça da pessoa responsável pelo domicílio é amarela|
|Características do Domicílio - Parte 2|domicilio02_V00263|V00263|Domicílios Particulares Permanentes Ocupados, 1 banheiro de uso exclusivo com chuveiro e vaso sanitário existentes no domicílio, Cor ou raça da pessoa responsável pelo domicílio é parda|
|Características do Domicílio - Parte 2|domicilio02_V00264|V00264|Domicílios Particulares Permanentes Ocupados, 1 banheiro de uso exclusivo com chuveiro e vaso sanitário existentes no domicílio, Cor ou raça da pessoa responsável pelo domicílio é indígena|
|Características do Domicílio - Parte 2|domicilio02_V00265|V00265|Domicílios Particulares Permanentes Ocupados, 2 banheiros de uso exclusivo com chuveiro e vaso sanitário existentes no domicílio, Cor ou raça da pessoa responsável pelo domicílio é branca|
|Características do Domicílio - Parte 2|domicilio02_V00266|V00266|Domicílios Particulares Permanentes Ocupados, 2 banheiros de uso exclusivo com chuveiro e vaso sanitário existentes no domicílio, Cor ou raça da pessoa responsável pelo domicílio é preta|
|Características do Domicílio - Parte 2|domicilio02_V00267|V00267|Domicílios Particulares Permanentes Ocupados, 2 banheiros de uso exclusivo com chuveiro e vaso sanitário existentes no domicílio, Cor ou raça da pessoa responsável pelo domicílio é amarela|
|Características do Domicílio - Parte 2|domicilio02_V00268|V00268|Domicílios Particulares Permanentes Ocupados, 2 banheiros de uso exclusivo com chuveiro e vaso sanitário existentes no domicílio, Cor ou raça da pessoa responsável pelo domicílio é parda|
|Características do Domicílio - Parte 2|domicilio02_V00269|V00269|Domicílios Particulares Permanentes Ocupados, 2 banheiros de uso exclusivo com chuveiro e vaso sanitário existentes no domicílio, Cor ou raça da pessoa responsável pelo domicílio é indígena|
|Características do Domicílio - Parte 2|domicilio02_V00270|V00270|Domicílios Particulares Permanentes Ocupados, 3 banheiros de uso exclusivo com chuveiro e vaso sanitário existentes no domicílio, Cor ou raça da pessoa responsável pelo domicílio é branca|
|Características do Domicílio - Parte 2|domicilio02_V00271|V00271|Domicílios Particulares Permanentes Ocupados, 3 banheiros de uso exclusivo com chuveiro e vaso sanitário existentes no domicílio, Cor ou raça da pessoa responsável pelo domicílio é preta|
|Características do Domicílio - Parte 2|domicilio02_V00272|V00272|Domicílios Particulares Permanentes Ocupados, 3 banheiros de uso exclusivo com chuveiro e vaso sanitário existentes no domicílio, Cor ou raça da pessoa responsável pelo domicílio é amarela|
|Características do Domicílio - Parte 2|domicilio02_V00273|V00273|Domicílios Particulares Permanentes Ocupados, 3 banheiros de uso exclusivo com chuveiro e vaso sanitário existentes no domicílio, Cor ou raça da pessoa responsável pelo domicílio é parda|
|Características do Domicílio - Parte 2|domicilio02_V00274|V00274|Domicílios Particulares Permanentes Ocupados, 3 banheiros de uso exclusivo com chuveiro e vaso sanitário existentes no domicílio, Cor ou raça da pessoa responsável pelo domicílio é indígena|
|Características do Domicílio - Parte 2|domicilio02_V00275|V00275|Domicílios Particulares Permanentes Ocupados, 4 ou mais banheiros de uso exclusivo com chuveiro e vaso sanitário existentes no domicílio, Cor ou raça da pessoa responsável pelo domicílio é branca|
|Características do Domicílio - Parte 2|domicilio02_V00276|V00276|Domicílios Particulares Permanentes Ocupados, 4 ou mais banheiros de uso exclusivo com chuveiro e vaso sanitário existentes no domicílio, Cor ou raça da pessoa responsável pelo domicílio é preta|
|Características do Domicílio - Parte 2|domicilio02_V00277|V00277|Domicílios Particulares Permanentes Ocupados, 4 ou mais banheiros de uso exclusivo com chuveiro e vaso sanitário existentes no domicílio, Cor ou raça da pessoa responsável pelo domicílio é amarela|
|Características do Domicílio - Parte 2|domicilio02_V00278|V00278|Domicílios Particulares Permanentes Ocupados, 4 ou mais banheiros de uso exclusivo com chuveiro e vaso sanitário existentes no domicílio, Cor ou raça da pessoa responsável pelo domicílio é parda|
|Características do Domicílio - Parte 2|domicilio02_V00279|V00279|Domicílios Particulares Permanentes Ocupados, 4 ou mais banheiros de uso exclusivo com chuveiro e vaso sanitário existentes no domicílio, Cor ou raça da pessoa responsável pelo domicílio é indígena|
|Características do Domicílio - Parte 2|domicilio02_V00280|V00280|Domicílios Particulares Permanentes Ocupados, Apenas banheiro de uso comum a mais de um domicílio, Cor ou raça da pessoa responsável pelo domicílio é branca|
|Características do Domicílio - Parte 2|domicilio02_V00281|V00281|Domicílios Particulares Permanentes Ocupados, Apenas banheiro de uso comum a mais de um domicílio, Cor ou raça da pessoa responsável pelo domicílio é preta|
|Características do Domicílio - Parte 2|domicilio02_V00282|V00282|Domicílios Particulares Permanentes Ocupados, Apenas banheiro de uso comum a mais de um domicílio, Cor ou raça da pessoa responsável pelo domicílio é amarela|
|Características do Domicílio - Parte 2|domicilio02_V00283|V00283|Domicílios Particulares Permanentes Ocupados, Apenas banheiro de uso comum a mais de um domicílio, Cor ou raça da pessoa responsável pelo domicílio é parda|
|Características do Domicílio - Parte 2|domicilio02_V00284|V00284|Domicílios Particulares Permanentes Ocupados, Apenas banheiro de uso comum a mais de um domicílio, Cor ou raça da pessoa responsável pelo domicílio é indígena|
|Características do Domicílio - Parte 2|domicilio02_V00285|V00285|Domicílios Particulares Permanentes Ocupados, Apenas sanitário ou buraco para dejeções, inclusive os localizados no terreno, Cor ou raça da pessoa responsável pelo domicílio é branca|
|Características do Domicílio - Parte 2|domicilio02_V00286|V00286|Domicílios Particulares Permanentes Ocupados, Apenas sanitário ou buraco para dejeções, inclusive os localizados no terreno, Cor ou raça da pessoa responsável pelo domicílio é preta|
|Características do Domicílio - Parte 2|domicilio02_V00287|V00287|Domicílios Particulares Permanentes Ocupados, Apenas sanitário ou buraco para dejeções, inclusive os localizados no terreno, Cor ou raça da pessoa responsável pelo domicílio é amarela|
|Características do Domicílio - Parte 2|domicilio02_V00288|V00288|Domicílios Particulares Permanentes Ocupados, Apenas sanitário ou buraco para dejeções, inclusive os localizados no terreno, Cor ou raça da pessoa responsável pelo domicílio é parda|
|Características do Domicílio - Parte 2|domicilio02_V00289|V00289|Domicílios Particulares Permanentes Ocupados, Apenas sanitário ou buraco para dejeções, inclusive os localizados no terreno, Cor ou raça da pessoa responsável pelo domicílio é indígena|
|Características do Domicílio - Parte 2|domicilio02_V00290|V00290|Domicílios Particulares Permanentes Ocupados, Não tinham banheiro nem sanitário, Cor ou raça da pessoa responsável pelo domicílio é branca|
|Características do Domicílio - Parte 2|domicilio02_V00291|V00291|Domicílios Particulares Permanentes Ocupados, Não tinham banheiro nem sanitário, Cor ou raça da pessoa responsável pelo domicílio é preta|
|Características do Domicílio - Parte 2|domicilio02_V00292|V00292|Domicílios Particulares Permanentes Ocupados, Não tinham banheiro nem sanitário, Cor ou raça da pessoa responsável pelo domicílio é amarela|
|Características do Domicílio - Parte 2|domicilio02_V00293|V00293|Domicílios Particulares Permanentes Ocupados, Não tinham banheiro nem sanitário, Cor ou raça da pessoa responsável pelo domicílio é parda|
|Características do Domicílio - Parte 2|domicilio02_V00294|V00294|Domicílios Particulares Permanentes Ocupados, Não tinham banheiro nem sanitário, Cor ou raça da pessoa responsável pelo domicílio é indígena|
|Características do Domicílio - Parte 2|domicilio02_V00295|V00295|Domicílios Particulares Permanentes Ocupados, 1 banheiro de uso exclusivo com chuveiro e vaso sanitário existentes no domicílio, Sexo da pessoa responsável pelo domicílio é masculino|
|Características do Domicílio - Parte 2|domicilio02_V00296|V00296|Domicílios Particulares Permanentes Ocupados, 1 banheiro de uso exclusivo com chuveiro e vaso sanitário existentes no domicílio, Sexo da pessoa responsável pelo domicílio é feminino|
|Características do Domicílio - Parte 2|domicilio02_V00297|V00297|Domicílios Particulares Permanentes Ocupados, 2 banheiros de uso exclusivo com chuveiro e vaso sanitário existentes no domicílio, Sexo da pessoa responsável pelo domicílio é masculino|
|Características do Domicílio - Parte 2|domicilio02_V00298|V00298|Domicílios Particulares Permanentes Ocupados, 2 banheiros de uso exclusivo com chuveiro e vaso sanitário existentes no domicílio, Sexo da pessoa responsável pelo domicílio é feminino|
|Características do Domicílio - Parte 2|domicilio02_V00299|V00299|Domicílios Particulares Permanentes Ocupados, 3 banheiros de uso exclusivo com chuveiro e vaso sanitário existentes no domicílio, Sexo da pessoa responsável pelo domicílio é masculino|
|Características do Domicílio - Parte 2|domicilio02_V00300|V00300|Domicílios Particulares Permanentes Ocupados, 3 banheiros de uso exclusivo com chuveiro e vaso sanitário existentes no domicílio, Sexo da pessoa responsável pelo domicílio é feminino|
|Características do Domicílio - Parte 2|domicilio02_V00301|V00301|Domicílios Particulares Permanentes Ocupados, 4 ou mais banheiros de uso exclusivo com chuveiro e vaso sanitário existentes no domicílio, Sexo da pessoa responsável pelo domicílio é masculino|
|Características do Domicílio - Parte 2|domicilio02_V00302|V00302|Domicílios Particulares Permanentes Ocupados, 4 ou mais banheiros de uso exclusivo com chuveiro e vaso sanitário existentes no domicílio, Sexo da pessoa responsável pelo domicílio é feminino|
|Características do Domicílio - Parte 2|domicilio02_V00303|V00303|Domicílios Particulares Permanentes Ocupados, Apenas banheiro de uso comum a mais de um domicílio, Sexo da pessoa responsável pelo domicílio é masculino|
|Características do Domicílio - Parte 2|domicilio02_V00304|V00304|Domicílios Particulares Permanentes Ocupados, Apenas banheiro de uso comum a mais de um domicílio, Sexo da pessoa responsável pelo domicílio é feminino|
|Características do Domicílio - Parte 2|domicilio02_V00305|V00305|Domicílios Particulares Permanentes Ocupados, Apenas sanitário ou buraco para dejeções, inclusive os localizados no terreno, Sexo da pessoa responsável pelo domicílio é masculino|
|Características do Domicílio - Parte 2|domicilio02_V00306|V00306|Domicílios Particulares Permanentes Ocupados, Apenas sanitário ou buraco para dejeções, inclusive os localizados no terreno, Sexo da pessoa responsável pelo domicílio é feminino|
|Características do Domicílio - Parte 2|domicilio02_V00307|V00307|Domicílios Particulares Permanentes Ocupados, Não tinham banheiro nem sanitário, Sexo da pessoa responsável pelo domicílio é masculino|
|Características do Domicílio - Parte 2|domicilio02_V00308|V00308|Domicílios Particulares Permanentes Ocupados, Não tinham banheiro nem sanitário, Sexo da pessoa responsável pelo domicílio é feminino|
|Características do Domicílio - Parte 2|domicilio02_V00309|V00309|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é rede geral ou pluvial|
|Características do Domicílio - Parte 2|domicilio02_V00310|V00310|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é fossa séptica ou fossa filtro ligada à rede|
|Características do Domicílio - Parte 2|domicilio02_V00311|V00311|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é fossa séptica ou fossa filtro não ligada à rede|
|Características do Domicílio - Parte 2|domicilio02_V00312|V00312|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é fossa rudimentar ou buraco|
|Características do Domicílio - Parte 2|domicilio02_V00313|V00313|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é vala|
|Características do Domicílio - Parte 2|domicilio02_V00314|V00314|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é rio, lago, córrego ou mar|
|Características do Domicílio - Parte 2|domicilio02_V00315|V00315|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é outra forma|
|Características do Domicílio - Parte 2|domicilio02_V00316|V00316|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto inexistente, pois não tinham banheiro nem sanitário|
|Características do Domicílio - Parte 2|domicilio02_V00317|V00317|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é rede geral ou pluvial|
|Características do Domicílio - Parte 2|domicilio02_V00318|V00318|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é fossa séptica ou fossa filtro ligada à rede|
|Características do Domicílio - Parte 2|domicilio02_V00319|V00319|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é fossa séptica ou fossa filtro não ligada à rede|
|Características do Domicílio - Parte 2|domicilio02_V00320|V00320|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é fossa rudimentar ou buraco|
|Características do Domicílio - Parte 2|domicilio02_V00321|V00321|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é vala|
|Características do Domicílio - Parte 2|domicilio02_V00322|V00322|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é rio, lago, córrego ou mar|
|Características do Domicílio - Parte 2|domicilio02_V00323|V00323|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é outra forma|
|Características do Domicílio - Parte 2|domicilio02_V00324|V00324|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa, Destinação do esgoto inexistente, pois não tinham banheiro nem sanitário|
|Características do Domicílio - Parte 2|domicilio02_V00325|V00325|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa de vila ou em condomínio, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é rede geral ou pluvial|
|Características do Domicílio - Parte 2|domicilio02_V00326|V00326|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa de vila ou em condomínio, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é fossa séptica ou fossa filtro ligada à rede|
|Características do Domicílio - Parte 2|domicilio02_V00327|V00327|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa de vila ou em condomínio, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é fossa séptica ou fossa filtro não ligada à rede|
|Características do Domicílio - Parte 2|domicilio02_V00328|V00328|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa de vila ou em condomínio, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é fossa rudimentar ou buraco|
|Características do Domicílio - Parte 2|domicilio02_V00329|V00329|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa de vila ou em condomínio, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é vala|
|Características do Domicílio - Parte 2|domicilio02_V00330|V00330|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa de vila ou em condomínio, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é rio, lago, córrego ou mar|
|Características do Domicílio - Parte 2|domicilio02_V00331|V00331|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa de vila ou em condomínio, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é outra forma|
|Características do Domicílio - Parte 2|domicilio02_V00332|V00332|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa de vila ou em condomínio, Destinação do esgoto inexistente, pois não tinham banheiro nem sanitário|
|Características do Domicílio - Parte 2|domicilio02_V00333|V00333|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é apartamento, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é rede geral ou pluvial|
|Características do Domicílio - Parte 2|domicilio02_V00334|V00334|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é apartamento, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é fossa séptica ou fossa filtro ligada à rede|
|Características do Domicílio - Parte 2|domicilio02_V00335|V00335|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é apartamento, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é fossa séptica ou fossa filtro não ligada à rede|
|Características do Domicílio - Parte 2|domicilio02_V00336|V00336|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é apartamento, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é fossa rudimentar ou buraco|
|Características do Domicílio - Parte 2|domicilio02_V00337|V00337|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é apartamento, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é vala|
|Características do Domicílio - Parte 2|domicilio02_V00338|V00338|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é apartamento, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é rio, lago, córrego ou mar|
|Características do Domicílio - Parte 2|domicilio02_V00339|V00339|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é apartamento, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é outra forma|
|Características do Domicílio - Parte 2|domicilio02_V00340|V00340|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é apartamento, Destinação do esgoto inexistente, pois não tinham banheiro nem sanitário|
|Características do Domicílio - Parte 2|domicilio02_V00341|V00341|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é rede geral ou pluvial, Cor ou raça da pessoa responsável pelo domicílio é branca|
|Características do Domicílio - Parte 2|domicilio02_V00342|V00342|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é rede geral ou pluvial, Cor ou raça da pessoa responsável pelo domicílio é preta|
|Características do Domicílio - Parte 2|domicilio02_V00343|V00343|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é rede geral ou pluvial, Cor ou raça da pessoa responsável pelo domicílio é amarela|
|Características do Domicílio - Parte 2|domicilio02_V00344|V00344|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é rede geral ou pluvial, Cor ou raça da pessoa responsável pelo domicílio é parda|
|Características do Domicílio - Parte 2|domicilio02_V00345|V00345|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é rede geral ou pluvial, Cor ou raça da pessoa responsável pelo domicílio é indígena|
|Características do Domicílio - Parte 2|domicilio02_V00346|V00346|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é fossa séptica ou fossa filtro ligada à rede, Cor ou raça da pessoa responsável pelo domicílio é branca|
|Características do Domicílio - Parte 2|domicilio02_V00347|V00347|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é fossa séptica ou fossa filtro ligada à rede, Cor ou raça da pessoa responsável pelo domicílio é preta|
|Características do Domicílio - Parte 2|domicilio02_V00348|V00348|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é fossa séptica ou fossa filtro ligada à rede, Cor ou raça da pessoa responsável pelo domicílio é amarela|
|Características do Domicílio - Parte 2|domicilio02_V00349|V00349|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é fossa séptica ou fossa filtro ligada à rede, Cor ou raça da pessoa responsável pelo domicílio é parda|
|Características do Domicílio - Parte 2|domicilio02_V00350|V00350|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é fossa séptica ou fossa filtro ligada à rede, Cor ou raça da pessoa responsável pelo domicílio é indígena|
|Características do Domicílio - Parte 2|domicilio02_V00351|V00351|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é fossa séptica ou fossa filtro não ligada à rede, Cor ou raça da pessoa responsável pelo domicílio é branca|
|Características do Domicílio - Parte 2|domicilio02_V00352|V00352|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é fossa séptica ou fossa filtro não ligada à rede, Cor ou raça da pessoa responsável pelo domicílio é preta|
|Características do Domicílio - Parte 2|domicilio02_V00353|V00353|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é fossa séptica ou fossa filtro não ligada à rede, Cor ou raça da pessoa responsável pelo domicílio é amarela|
|Características do Domicílio - Parte 2|domicilio02_V00354|V00354|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é fossa séptica ou fossa filtro não ligada à rede, Cor ou raça da pessoa responsável pelo domicílio é parda|
|Características do Domicílio - Parte 2|domicilio02_V00355|V00355|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é fossa séptica ou fossa filtro não ligada à rede, Cor ou raça da pessoa responsável pelo domicílio é indígena|
|Características do Domicílio - Parte 2|domicilio02_V00356|V00356|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é fossa rudimentar ou buraco, Cor ou raça da pessoa responsável pelo domicílio é branca|
|Características do Domicílio - Parte 2|domicilio02_V00357|V00357|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é fossa rudimentar ou buraco, Cor ou raça da pessoa responsável pelo domicílio é preta|
|Características do Domicílio - Parte 2|domicilio02_V00358|V00358|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é fossa rudimentar ou buraco, Cor ou raça da pessoa responsável pelo domicílio é amarela|
|Características do Domicílio - Parte 2|domicilio02_V00359|V00359|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é fossa rudimentar ou buraco, Cor ou raça da pessoa responsável pelo domicílio é parda|
|Características do Domicílio - Parte 2|domicilio02_V00360|V00360|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é fossa rudimentar ou buraco, Cor ou raça da pessoa responsável pelo domicílio é indígena|
|Características do Domicílio - Parte 2|domicilio02_V00361|V00361|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é vala, Cor ou raça da pessoa responsável pelo domicílio é branca|
|Características do Domicílio - Parte 2|domicilio02_V00362|V00362|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é vala, Cor ou raça da pessoa responsável pelo domicílio é preta|
|Características do Domicílio - Parte 2|domicilio02_V00363|V00363|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é vala, Cor ou raça da pessoa responsável pelo domicílio é amarela|
|Características do Domicílio - Parte 2|domicilio02_V00364|V00364|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é vala, Cor ou raça da pessoa responsável pelo domicílio é parda|
|Características do Domicílio - Parte 2|domicilio02_V00365|V00365|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é vala, Cor ou raça da pessoa responsável pelo domicílio é indígena|
|Características do Domicílio - Parte 2|domicilio02_V00366|V00366|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é rio, lago, córrego ou mar, Cor ou raça da pessoa responsável pelo domicílio é branca|
|Características do Domicílio - Parte 2|domicilio02_V00367|V00367|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é rio, lago, córrego ou mar, Cor ou raça da pessoa responsável pelo domicílio é preta|
|Características do Domicílio - Parte 2|domicilio02_V00368|V00368|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é rio, lago, córrego ou mar, Cor ou raça da pessoa responsável pelo domicílio é amarela|
|Características do Domicílio - Parte 2|domicilio02_V00369|V00369|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é rio, lago, córrego ou mar, Cor ou raça da pessoa responsável pelo domicílio é parda|
|Características do Domicílio - Parte 2|domicilio02_V00370|V00370|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é rio, lago, córrego ou mar, Cor ou raça da pessoa responsável pelo domicílio é indígena|
|Características do Domicílio - Parte 2|domicilio02_V00371|V00371|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é outra forma, Cor ou raça da pessoa responsável pelo domicílio é branca|
|Características do Domicílio - Parte 2|domicilio02_V00372|V00372|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é outra forma, Cor ou raça da pessoa responsável pelo domicílio é preta|
|Características do Domicílio - Parte 2|domicilio02_V00373|V00373|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é outra forma, Cor ou raça da pessoa responsável pelo domicílio é amarela|
|Características do Domicílio - Parte 2|domicilio02_V00374|V00374|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é outra forma, Cor ou raça da pessoa responsável pelo domicílio é parda|
|Características do Domicílio - Parte 2|domicilio02_V00375|V00375|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é outra forma, Cor ou raça da pessoa responsável pelo domicílio é indígena|
|Características do Domicílio - Parte 2|domicilio02_V00376|V00376|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto inexistente, pois não tinham banheiro nem sanitário, Cor ou raça da pessoa responsável pelo domicílio é branca|
|Características do Domicílio - Parte 2|domicilio02_V00377|V00377|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto inexistente, pois não tinham banheiro nem sanitário, Cor ou raça da pessoa responsável pelo domicílio é preta|
|Características do Domicílio - Parte 2|domicilio02_V00378|V00378|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto inexistente, pois não tinham banheiro nem sanitário, Cor ou raça da pessoa responsável pelo domicílio é amarela|
|Características do Domicílio - Parte 2|domicilio02_V00379|V00379|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto inexistente, pois não tinham banheiro nem sanitário, Cor ou raça da pessoa responsável pelo domicílio é parda|
|Características do Domicílio - Parte 2|domicilio02_V00380|V00380|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto inexistente, pois não tinham banheiro nem sanitário, Cor ou raça da pessoa responsável pelo domicílio é indígena|
|Características do Domicílio - Parte 2|domicilio02_V00381|V00381|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é rede geral ou pluvial, Sexo da pessoa responsável pelo domicílio é masculino|
|Características do Domicílio - Parte 2|domicilio02_V00382|V00382|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é rede geral ou pluvial, Sexo da pessoa responsável pelo domicílio é feminino|
|Características do Domicílio - Parte 2|domicilio02_V00383|V00383|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é fossa séptica ou fossa filtro ligada à rede, Sexo da pessoa responsável pelo domicílio é masculino|
|Características do Domicílio - Parte 2|domicilio02_V00384|V00384|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é fossa séptica ou fossa filtro ligada à rede, Sexo da pessoa responsável pelo domicílio é feminino|
|Características do Domicílio - Parte 2|domicilio02_V00385|V00385|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é fossa séptica ou fossa filtro não ligada à rede, Sexo da pessoa responsável pelo domicílio é masculino|
|Características do Domicílio - Parte 2|domicilio02_V00386|V00386|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é fossa séptica ou fossa filtro não ligada à rede, Sexo da pessoa responsável pelo domicílio é feminino|
|Características do Domicílio - Parte 2|domicilio02_V00387|V00387|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é fossa rudimentar ou buraco, Sexo da pessoa responsável pelo domicílio é masculino|
|Características do Domicílio - Parte 2|domicilio02_V00388|V00388|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é fossa rudimentar ou buraco, Sexo da pessoa responsável pelo domicílio é feminino|
|Características do Domicílio - Parte 2|domicilio02_V00389|V00389|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é vala, Sexo da pessoa responsável pelo domicílio é masculino|
|Características do Domicílio - Parte 2|domicilio02_V00390|V00390|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é vala, Sexo da pessoa responsável pelo domicílio é feminino|
|Características do Domicílio - Parte 2|domicilio02_V00391|V00391|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é rio, lago, córrego ou mar, Sexo da pessoa responsável pelo domicílio é masculino|
|Características do Domicílio - Parte 2|domicilio02_V00392|V00392|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é rio, lago, córrego ou mar, Sexo da pessoa responsável pelo domicílio é feminino|
|Características do Domicílio - Parte 2|domicilio02_V00393|V00393|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é outra forma, Sexo da pessoa responsável pelo domicílio é masculino|
|Características do Domicílio - Parte 2|domicilio02_V00394|V00394|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é outra forma, Sexo da pessoa responsável pelo domicílio é feminino|
|Características do Domicílio - Parte 2|domicilio02_V00395|V00395|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto inexistente, pois não tinham banheiro nem sanitário, Sexo da pessoa responsável pelo domicílio é masculino|
|Características do Domicílio - Parte 2|domicilio02_V00396|V00396|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto inexistente, pois não tinham banheiro nem sanitário, Sexo da pessoa responsável pelo domicílio é feminino|
|Características do Domicílio - Parte 2|domicilio02_V00397|V00397|Domicílios Particulares Permanentes Ocupados, Lixo coletado no domicílio por serviço de limpeza|
|Características do Domicílio - Parte 2|domicilio02_V00398|V00398|Domicílios Particulares Permanentes Ocupados, Lixo depositado em caçamba de serviço de limpeza|
|Características do Domicílio - Parte 2|domicilio02_V00399|V00399|Domicílios Particulares Permanentes Ocupados, Lixo queimado na propriedade|
|Características do Domicílio - Parte 2|domicilio02_V00400|V00400|Domicílios Particulares Permanentes Ocupados, Lixo enterrado na propriedade|
|Características do Domicílio - Parte 2|domicilio02_V00401|V00401|Domicílios Particulares Permanentes Ocupados, Lixo jogado em terreno baldio, encosta ou área pública|
|Características do Domicílio - Parte 2|domicilio02_V00402|V00402|Domicílios Particulares Permanentes Ocupados, Outro destino do lixo|
|Características do Domicílio - Parte 2|domicilio02_V00403|V00403|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa, Lixo coletado no domicílio por serviço de limpeza|
|Características do Domicílio - Parte 2|domicilio02_V00404|V00404|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa, Lixo depositado em caçamba de serviço de limpeza|
|Características do Domicílio - Parte 2|domicilio02_V00405|V00405|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa, Lixo queimado na propriedade|
|Características do Domicílio - Parte 2|domicilio02_V00406|V00406|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa, Lixo enterrado na propriedade|
|Características do Domicílio - Parte 2|domicilio02_V00407|V00407|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa, Lixo jogado em terreno baldio, encosta ou área pública|
|Características do Domicílio - Parte 2|domicilio02_V00408|V00408|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa, Outro destino do lixo|
|Características do Domicílio - Parte 2|domicilio02_V00409|V00409|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa de vila ou em condomínio, Lixo coletado no domicílio por serviço de limpeza|
|Características do Domicílio - Parte 2|domicilio02_V00410|V00410|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa de vila ou em condomínio, Lixo depositado em caçamba de serviço de limpeza|
|Características do Domicílio - Parte 2|domicilio02_V00411|V00411|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa de vila ou em condomínio, Lixo queimado na propriedade|
|Características do Domicílio - Parte 2|domicilio02_V00412|V00412|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa de vila ou em condomínio, Lixo enterrado na propriedade|
|Características do Domicílio - Parte 2|domicilio02_V00413|V00413|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa de vila ou em condomínio, Lixo jogado em terreno baldio, encosta ou área pública|
|Características do Domicílio - Parte 2|domicilio02_V00414|V00414|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa de vila ou em condomínio, Outro destino do lixo|
|Características do Domicílio - Parte 2|domicilio02_V00415|V00415|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é apartamento, Lixo coletado no domicílio por serviço de limpeza|
|Características do Domicílio - Parte 2|domicilio02_V00416|V00416|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é apartamento, Lixo depositado em caçamba de serviço de limpeza|
|Características do Domicílio - Parte 2|domicilio02_V00417|V00417|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é apartamento, Lixo queimado na propriedade|
|Características do Domicílio - Parte 2|domicilio02_V00418|V00418|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é apartamento, Lixo enterrado na propriedade|
|Características do Domicílio - Parte 2|domicilio02_V00419|V00419|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é apartamento, Lixo jogado em terreno baldio, encosta ou área pública|
|Características do Domicílio - Parte 2|domicilio02_V00420|V00420|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é apartamento, Outro destino do lixo|
|Características do Domicílio - Parte 2|domicilio02_V00421|V00421|Domicílios Particulares Permanentes Ocupados, Lixo coletado no domicílio por serviço de limpeza, Cor ou raça da pessoa responsável pelo domicílio é branca|
|Características do Domicílio - Parte 2|domicilio02_V00422|V00422|Domicílios Particulares Permanentes Ocupados, Lixo coletado no domicílio por serviço de limpeza, Cor ou raça da pessoa responsável pelo domicílio é preta|
|Características do Domicílio - Parte 2|domicilio02_V00423|V00423|Domicílios Particulares Permanentes Ocupados, Lixo coletado no domicílio por serviço de limpeza, Cor ou raça da pessoa responsável pelo domicílio é amarela|
|Características do Domicílio - Parte 2|domicilio02_V00424|V00424|Domicílios Particulares Permanentes Ocupados, Lixo coletado no domicílio por serviço de limpeza, Cor ou raça da pessoa responsável pelo domicílio é parda|
|Características do Domicílio - Parte 2|domicilio02_V00425|V00425|Domicílios Particulares Permanentes Ocupados, Lixo coletado no domicílio por serviço de limpeza, Cor ou raça da pessoa responsável pelo domicílio é indígena|
|Características do Domicílio - Parte 2|domicilio02_V00426|V00426|Domicílios Particulares Permanentes Ocupados, Lixo depositado em caçamba de serviço de limpeza, Cor ou raça da pessoa responsável pelo domicílio é branca|
|Características do Domicílio - Parte 2|domicilio02_V00427|V00427|Domicílios Particulares Permanentes Ocupados, Lixo depositado em caçamba de serviço de limpeza, Cor ou raça da pessoa responsável pelo domicílio é preta|
|Características do Domicílio - Parte 2|domicilio02_V00428|V00428|Domicílios Particulares Permanentes Ocupados, Lixo depositado em caçamba de serviço de limpeza, Cor ou raça da pessoa responsável pelo domicílio é amarela|
|Características do Domicílio - Parte 2|domicilio02_V00429|V00429|Domicílios Particulares Permanentes Ocupados, Lixo depositado em caçamba de serviço de limpeza, Cor ou raça da pessoa responsável pelo domicílio é parda|
|Características do Domicílio - Parte 2|domicilio02_V00430|V00430|Domicílios Particulares Permanentes Ocupados, Lixo depositado em caçamba de serviço de limpeza, Cor ou raça da pessoa responsável pelo domicílio é indígena|
|Características do Domicílio - Parte 2|domicilio02_V00431|V00431|Domicílios Particulares Permanentes Ocupados, Lixo queimado na propriedade, Cor ou raça da pessoa responsável pelo domicílio é branca|
|Características do Domicílio - Parte 2|domicilio02_V00432|V00432|Domicílios Particulares Permanentes Ocupados, Lixo queimado na propriedade, Cor ou raça da pessoa responsável pelo domicílio é preta|
|Características do Domicílio - Parte 2|domicilio02_V00433|V00433|Domicílios Particulares Permanentes Ocupados, Lixo queimado na propriedade, Cor ou raça da pessoa responsável pelo domicílio é amarela|
|Características do Domicílio - Parte 2|domicilio02_V00434|V00434|Domicílios Particulares Permanentes Ocupados, Lixo queimado na propriedade, Cor ou raça da pessoa responsável pelo domicílio é parda|
|Características do Domicílio - Parte 2|domicilio02_V00435|V00435|Domicílios Particulares Permanentes Ocupados, Lixo queimado na propriedade, Cor ou raça da pessoa responsável pelo domicílio é indígena|
|Características do Domicílio - Parte 2|domicilio02_V00436|V00436|Domicílios Particulares Permanentes Ocupados, Lixo enterrado na propriedade, Cor ou raça da pessoa responsável pelo domicílio é branca|
|Características do Domicílio - Parte 2|domicilio02_V00437|V00437|Domicílios Particulares Permanentes Ocupados, Lixo enterrado na propriedade, Cor ou raça da pessoa responsável pelo domicílio é preta|
|Características do Domicílio - Parte 2|domicilio02_V00438|V00438|Domicílios Particulares Permanentes Ocupados, Lixo enterrado na propriedade, Cor ou raça da pessoa responsável pelo domicílio é amarela|
|Características do Domicílio - Parte 2|domicilio02_V00439|V00439|Domicílios Particulares Permanentes Ocupados, Lixo enterrado na propriedade, Cor ou raça da pessoa responsável pelo domicílio é parda|
|Características do Domicílio - Parte 2|domicilio02_V00440|V00440|Domicílios Particulares Permanentes Ocupados, Lixo enterrado na propriedade, Cor ou raça da pessoa responsável pelo domicílio é indígena|
|Características do Domicílio - Parte 2|domicilio02_V00441|V00441|Domicílios Particulares Permanentes Ocupados, Lixo jogado em terreno baldio, encosta ou área pública, Cor ou raça da pessoa responsável pelo domicílio é branca|
|Características do Domicílio - Parte 2|domicilio02_V00442|V00442|Domicílios Particulares Permanentes Ocupados, Lixo jogado em terreno baldio, encosta ou área pública, Cor ou raça da pessoa responsável pelo domicílio é preta|
|Características do Domicílio - Parte 2|domicilio02_V00443|V00443|Domicílios Particulares Permanentes Ocupados, Lixo jogado em terreno baldio, encosta ou área pública, Cor ou raça da pessoa responsável pelo domicílio é amarela|
|Características do Domicílio - Parte 2|domicilio02_V00444|V00444|Domicílios Particulares Permanentes Ocupados, Lixo jogado em terreno baldio, encosta ou área pública, Cor ou raça da pessoa responsável pelo domicílio é parda|
|Características do Domicílio - Parte 2|domicilio02_V00445|V00445|Domicílios Particulares Permanentes Ocupados, Lixo jogado em terreno baldio, encosta ou área pública, Cor ou raça da pessoa responsável pelo domicílio é indígena|
|Características do Domicílio - Parte 2|domicilio02_V00446|V00446|Domicílios Particulares Permanentes Ocupados, Outro destino do lixo, Cor ou raça da pessoa responsável pelo domicílio é branca|
|Características do Domicílio - Parte 2|domicilio02_V00447|V00447|Domicílios Particulares Permanentes Ocupados, Outro destino do lixo, Cor ou raça da pessoa responsável pelo domicílio é preta|
|Características do Domicílio - Parte 2|domicilio02_V00448|V00448|Domicílios Particulares Permanentes Ocupados, Outro destino do lixo, Cor ou raça da pessoa responsável pelo domicílio é amarela|
|Características do Domicílio - Parte 2|domicilio02_V00449|V00449|Domicílios Particulares Permanentes Ocupados, Outro destino do lixo, Cor ou raça da pessoa responsável pelo domicílio é parda|
|Características do Domicílio - Parte 2|domicilio02_V00450|V00450|Domicílios Particulares Permanentes Ocupados, Outro destino do lixo, Cor ou raça da pessoa responsável pelo domicílio é indígena|
|Características do Domicílio - Parte 2|domicilio02_V00451|V00451|Domicílios Particulares Permanentes Ocupados, Lixo coletado no domicílio por serviço de limpeza, Sexo da pessoa responsável pelo domicílio é masculino|
|Características do Domicílio - Parte 2|domicilio02_V00452|V00452|Domicílios Particulares Permanentes Ocupados, Lixo coletado no domicílio por serviço de limpeza, Sexo da pessoa responsável pelo domicílio é feminino|
|Características do Domicílio - Parte 2|domicilio02_V00453|V00453|Domicílios Particulares Permanentes Ocupados, Lixo depositado em caçamba de serviço de limpeza, Sexo da pessoa responsável pelo domicílio é masculino|
|Características do Domicílio - Parte 2|domicilio02_V00454|V00454|Domicílios Particulares Permanentes Ocupados, Lixo depositado em caçamba de serviço de limpeza, Sexo da pessoa responsável pelo domicílio é feminino|
|Características do Domicílio - Parte 2|domicilio02_V00455|V00455|Domicílios Particulares Permanentes Ocupados, Lixo queimado na propriedade, Sexo da pessoa responsável pelo domicílio é masculino|
|Características do Domicílio - Parte 2|domicilio02_V00456|V00456|Domicílios Particulares Permanentes Ocupados, Lixo queimado na propriedade, Sexo da pessoa responsável pelo domicílio é feminino|
|Características do Domicílio - Parte 2|domicilio02_V00457|V00457|Domicílios Particulares Permanentes Ocupados, Lixo enterrado na propriedade, Sexo da pessoa responsável pelo domicílio é masculino|
|Características do Domicílio - Parte 2|domicilio02_V00458|V00458|Domicílios Particulares Permanentes Ocupados, Lixo enterrado na propriedade, Sexo da pessoa responsável pelo domicílio é feminino|
|Características do Domicílio - Parte 2|domicilio02_V00459|V00459|Domicílios Particulares Permanentes Ocupados, Lixo jogado em terreno baldio, encosta ou área pública, Sexo da pessoa responsável pelo domicílio é masculino|
|Características do Domicílio - Parte 2|domicilio02_V00460|V00460|Domicílios Particulares Permanentes Ocupados, Lixo jogado em terreno baldio, encosta ou área pública, Sexo da pessoa responsável pelo domicílio é feminino|
|Características do Domicílio - Parte 2|domicilio02_V00461|V00461|Domicílios Particulares Permanentes Ocupados, Outro destino do lixo, Sexo da pessoa responsável pelo domicílio é masculino|
|Características do Domicílio - Parte 2|domicilio02_V00462|V00462|Domicílios Particulares Permanentes Ocupados, Outro destino do lixo, Sexo da pessoa responsável pelo domicílio é feminino|
|Características do Domicílio - Parte 2|domicilio02_V00463|V00463|Domicílios Particulares Permanentes Ocupados, Domicílio possui ligação à rede geral de distribuição de água, mas utiliza principalmente outra forma|
|Características do Domicílio - Parte 2|domicilio02_V00464|V00464|Domicílios Particulares Permanentes Ocupados, Domicílio não possui ligação à rede geral de distribuição de água|
|Características do Domicílio - Parte 2|domicilio02_V00465|V00465|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa, Domicílio possui ligação à rede geral de distribuição de água, mas utiliza principalmente outra forma|
|Características do Domicílio - Parte 2|domicilio02_V00466|V00466|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa, Domicílio não possui ligação à rede geral de distribuição de água|
|Características do Domicílio - Parte 2|domicilio02_V00467|V00467|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa de vila ou em condomínio, Domicílio possui ligação à rede geral de distribuição de água, mas utiliza principalmente outra forma|
|Características do Domicílio - Parte 2|domicilio02_V00468|V00468|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa de vila ou em condomínio, Domicílio não possui ligação à rede geral de distribuição de água|
|Características do Domicílio - Parte 2|domicilio02_V00469|V00469|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é apartamento, Domicílio possui ligação à rede geral de distribuição de água, mas utiliza principalmente outra forma|
|Características do Domicílio - Parte 2|domicilio02_V00470|V00470|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é apartamento, Domicílio não possui ligação à rede geral de distribuição de água|
|Características do Domicílio - Parte 2|domicilio02_V00471|V00471|Domicílios Particulares Permanentes Ocupados, Domicílio possui ligação à rede geral de distribuição de água, mas utiliza principalmente outra forma, Cor ou raça da pessoa responsável pelo domicílio é branca|
|Características do Domicílio - Parte 2|domicilio02_V00472|V00472|Domicílios Particulares Permanentes Ocupados, Domicílio possui ligação à rede geral de distribuição de água, mas utiliza principalmente outra forma, Cor ou raça da pessoa responsável pelo domicílio é preta|
|Características do Domicílio - Parte 2|domicilio02_V00473|V00473|Domicílios Particulares Permanentes Ocupados, Domicílio possui ligação à rede geral de distribuição de água, mas utiliza principalmente outra forma, Cor ou raça da pessoa responsável pelo domicílio é amarela|
|Características do Domicílio - Parte 2|domicilio02_V00474|V00474|Domicílios Particulares Permanentes Ocupados, Domicílio possui ligação à rede geral de distribuição de água, mas utiliza principalmente outra forma, Cor ou raça da pessoa responsável pelo domicílio é parda|
|Características do Domicílio - Parte 2|domicilio02_V00475|V00475|Domicílios Particulares Permanentes Ocupados, Domicílio possui ligação à rede geral de distribuição de água, mas utiliza principalmente outra forma, Cor ou raça da pessoa responsável pelo domicílio é indígena|
|Características do Domicílio - Parte 2|domicilio02_V00476|V00476|Domicílios Particulares Permanentes Ocupados, Domicílio não possui ligação à rede geral de distribuição de água, Cor ou raça da pessoa responsável pelo domicílio é branca|
|Características do Domicílio - Parte 2|domicilio02_V00477|V00477|Domicílios Particulares Permanentes Ocupados, Domicílio não possui ligação à rede geral de distribuição de água, Cor ou raça da pessoa responsável pelo domicílio é preta|
|Características do Domicílio - Parte 2|domicilio02_V00478|V00478|Domicílios Particulares Permanentes Ocupados, Domicílio não possui ligação à rede geral de distribuição de água, Cor ou raça da pessoa responsável pelo domicílio é amarela|
|Características do Domicílio - Parte 2|domicilio02_V00479|V00479|Domicílios Particulares Permanentes Ocupados, Domicílio não possui ligação à rede geral de distribuição de água, Cor ou raça da pessoa responsável pelo domicílio é parda|
|Características do Domicílio - Parte 2|domicilio02_V00480|V00480|Domicílios Particulares Permanentes Ocupados, Domicílio não possui ligação à rede geral de distribuição de água, Cor ou raça da pessoa responsável pelo domicílio é indígena|
|Características do Domicílio - Parte 2|domicilio02_V00481|V00481|Domicílios Particulares Permanentes Ocupados, Domicílio possui ligação à rede geral de distribuição de água, mas utiliza principalmente outra forma, Sexo da pessoa responsável pelo domicílio é masculino|
|Características do Domicílio - Parte 2|domicilio02_V00482|V00482|Domicílios Particulares Permanentes Ocupados, Domicílio possui ligação à rede geral de distribuição de água, mas utiliza principalmente outra forma, Sexo da pessoa responsável pelo domicílio é feminino|
|Características do Domicílio - Parte 2|domicilio02_V00483|V00483|Domicílios Particulares Permanentes Ocupados, Domicílio não possui ligação à rede geral de distribuição de água, Sexo da pessoa responsável pelo domicílio é masculino|
|Características do Domicílio - Parte 2|domicilio02_V00484|V00484|Domicílios Particulares Permanentes Ocupados, Domicílio não possui ligação à rede geral de distribuição de água, Sexo da pessoa responsável pelo domicílio é feminino|
|Características do Domicílio - Parte 2|domicilio02_V00485|V00485|Domicílios Particulares Permanentes Ocupados, 1 banheiro de uso exclusivo com chuveiro e vaso sanitário existentes no domicílio|
|Características do Domicílio - Parte 2|domicilio02_V00486|V00486|Domicílios Particulares Permanentes Ocupados, 2 banheiros de uso exclusivo com chuveiro e vaso sanitário existentes no domicílio|
|Características do Domicílio - Parte 2|domicilio02_V00487|V00487|Domicílios Particulares Permanentes Ocupados, 3 banheiros de uso exclusivo com chuveiro e vaso sanitário existentes no domicílio|
|Características do Domicílio - Parte 2|domicilio02_V00488|V00488|Domicílios Particulares Permanentes Ocupados, 4 banheiros de uso exclusivo com chuveiro e vaso sanitário existentes no domicílio|
|Características do Domicílio - Parte 2|domicilio02_V00489|V00489|Domicílios Particulares Permanentes Ocupados, 5 banheiros de uso exclusivo com chuveiro e vaso sanitário existentes no domicílio|
|Características do Domicílio - Parte 2|domicilio02_V00490|V00490|Domicílios Particulares Permanentes Ocupados, 6 banheiros de uso exclusivo com chuveiro e vaso sanitário existentes no domicílio|
|Características do Domicílio - Parte 2|domicilio02_V00491|V00491|Domicílios Particulares Permanentes Ocupados, 7 banheiros de uso exclusivo com chuveiro e vaso sanitário existentes no domicílio|
|Características do Domicílio - Parte 2|domicilio02_V00492|V00492|Domicílios Particulares Permanentes Ocupados, 8 banheiros de uso exclusivo com chuveiro e vaso sanitário existentes no domicílio|
|Características do Domicílio - Parte 2|domicilio02_V00493|V00493|Domicílios Particulares Permanentes Ocupados, 9 ou mais banheiros de uso exclusivo com chuveiro e vaso sanitário existentes no domicílio|
|Características do Domicílio - Parte 2|domicilio02_V00494|V00494|Domicílios Particulares Permanentes Ocupados, Com banheiro de uso exclusivo com chuveiro e vaso sanitário|
|Características do Domicílio - Parte 2|domicilio02_V00495|V00495|Domicílios Particulares Permanentes Ocupados, Sem banheiro de uso exclusivo com chuveiro e vaso sanitário|
|Características do Domicílio - Parte 3|domicilio03_V00496|V00496|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa, Quantidade de moradores|
|Características do Domicílio - Parte 3|domicilio03_V00497|V00497|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa de vila ou em condomínio, Quantidade de moradores|
|Características do Domicílio - Parte 3|domicilio03_V00498|V00498|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é apartamento, Quantidade de moradores|
|Características do Domicílio - Parte 3|domicilio03_V00499|V00499|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa, Quantidade de crianças de zero a nove anos de idade|
|Características do Domicílio - Parte 3|domicilio03_V00500|V00500|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa de vila ou em condomínio, Quantidade de crianças de zero a nove anos de idade|
|Características do Domicílio - Parte 3|domicilio03_V00501|V00501|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é apartamento, Quantidade de crianças de zero a nove anos de idade|
|Características do Domicílio - Parte 3|domicilio03_V00502|V00502|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa, Pessoas de sexo masculino no domicílio|
|Características do Domicílio - Parte 3|domicilio03_V00503|V00503|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa de vila ou em condomínio, Pessoas de sexo masculino no domicílio|
|Características do Domicílio - Parte 3|domicilio03_V00504|V00504|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é apartamento, Pessoas de sexo masculino no domicílio|
|Características do Domicílio - Parte 3|domicilio03_V00505|V00505|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa, Pessoas de sexo feminino no domicílio|
|Características do Domicílio - Parte 3|domicilio03_V00506|V00506|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa de vila ou em condomínio, Pessoas de sexo feminino no domicílio|
|Características do Domicílio - Parte 3|domicilio03_V00507|V00507|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é apartamento, Pessoas de sexo feminino no domicílio|
|Características do Domicílio - Parte 3|domicilio03_V00508|V00508|Domicílios Particulares Permanentes Ocupados, Utiliza rede geral de distribuição, Quantidade de moradores|
|Características do Domicílio - Parte 3|domicilio03_V00509|V00509|Domicílios Particulares Permanentes Ocupados, Utiliza poço profundo ou artesiano, Quantidade de moradores|
|Características do Domicílio - Parte 3|domicilio03_V00510|V00510|Domicílios Particulares Permanentes Ocupados, Utiliza poço raso, freático ou cacimba, Quantidade de moradores|
|Características do Domicílio - Parte 3|domicilio03_V00511|V00511|Domicílios Particulares Permanentes Ocupados, Utiliza fonte, nascente ou mina, Quantidade de moradores|
|Características do Domicílio - Parte 3|domicilio03_V00512|V00512|Domicílios Particulares Permanentes Ocupados, Utiliza carro-pipa, Quantidade de moradores|
|Características do Domicílio - Parte 3|domicilio03_V00513|V00513|Domicílios Particulares Permanentes Ocupados, Utiliza água da chuva armazenada, Quantidade de moradores|
|Características do Domicílio - Parte 3|domicilio03_V00514|V00514|Domicílios Particulares Permanentes Ocupados, Utiliza rios, açudes, córregos, lagos e igarapés, Quantidade de moradores|
|Características do Domicílio - Parte 3|domicilio03_V00515|V00515|Domicílios Particulares Permanentes Ocupados, Utiliza outra forma de abastecimento de água, Quantidade de moradores|
|Características do Domicílio - Parte 3|domicilio03_V00516|V00516|Domicílios Particulares Permanentes Ocupados, Utiliza rede geral de distribuição, Quantidade de crianças de zero a nove anos de idade|
|Características do Domicílio - Parte 3|domicilio03_V00517|V00517|Domicílios Particulares Permanentes Ocupados, Utiliza poço profundo ou artesiano, Quantidade de crianças de zero a nove anos de idade|
|Características do Domicílio - Parte 3|domicilio03_V00518|V00518|Domicílios Particulares Permanentes Ocupados, Utiliza poço raso, freático ou cacimba, Quantidade de crianças de zero a nove anos de idade|
|Características do Domicílio - Parte 3|domicilio03_V00519|V00519|Domicílios Particulares Permanentes Ocupados, Utiliza fonte, nascente ou mina, Quantidade de crianças de zero a nove anos de idade|
|Características do Domicílio - Parte 3|domicilio03_V00520|V00520|Domicílios Particulares Permanentes Ocupados, Utiliza carro-pipa, Quantidade de crianças de zero a nove anos de idade|
|Características do Domicílio - Parte 3|domicilio03_V00521|V00521|Domicílios Particulares Permanentes Ocupados, Utiliza água da chuva armazenada, Quantidade de crianças de zero a nove anos de idade|
|Características do Domicílio - Parte 3|domicilio03_V00522|V00522|Domicílios Particulares Permanentes Ocupados, Utiliza rios, açudes, córregos, lagos e igarapés, Quantidade de crianças de zero a nove anos de idade|
|Características do Domicílio - Parte 3|domicilio03_V00523|V00523|Domicílios Particulares Permanentes Ocupados, Utiliza outra forma de abastecimento de água, Quantidade de crianças de zero a nove anos de idade|
|Características do Domicílio - Parte 3|domicilio03_V00524|V00524|Domicílios Particulares Permanentes Ocupados, Utiliza rede geral de distribuição, Pessoas de sexo masculino no domicílio|
|Características do Domicílio - Parte 3|domicilio03_V00525|V00525|Domicílios Particulares Permanentes Ocupados, Utiliza poço profundo ou artesiano, Pessoas de sexo masculino no domicílio|
|Características do Domicílio - Parte 3|domicilio03_V00526|V00526|Domicílios Particulares Permanentes Ocupados, Utiliza poço raso, freático ou cacimba, Pessoas de sexo masculino no domicílio|
|Características do Domicílio - Parte 3|domicilio03_V00527|V00527|Domicílios Particulares Permanentes Ocupados, Utiliza fonte, nascente ou mina, Pessoas de sexo masculino no domicílio|
|Características do Domicílio - Parte 3|domicilio03_V00528|V00528|Domicílios Particulares Permanentes Ocupados, Utiliza carro-pipa, Pessoas de sexo masculino no domicílio|
|Características do Domicílio - Parte 3|domicilio03_V00529|V00529|Domicílios Particulares Permanentes Ocupados, Utiliza água da chuva armazenada, Pessoas de sexo masculino no domicílio|
|Características do Domicílio - Parte 3|domicilio03_V00530|V00530|Domicílios Particulares Permanentes Ocupados, Utiliza rios, açudes, córregos, lagos e igarapés, Pessoas de sexo masculino no domicílio|
|Características do Domicílio - Parte 3|domicilio03_V00531|V00531|Domicílios Particulares Permanentes Ocupados, Utiliza outra forma de abastecimento de água, Pessoas de sexo masculino no domicílio|
|Características do Domicílio - Parte 3|domicilio03_V00532|V00532|Domicílios Particulares Permanentes Ocupados, Utiliza rede geral de distribuição, Pessoas de sexo feminino no domicílio|
|Características do Domicílio - Parte 3|domicilio03_V00533|V00533|Domicílios Particulares Permanentes Ocupados, Utiliza poço profundo ou artesiano, Pessoas de sexo feminino no domicílio|
|Características do Domicílio - Parte 3|domicilio03_V00534|V00534|Domicílios Particulares Permanentes Ocupados, Utiliza poço raso, freático ou cacimba, Pessoas de sexo feminino no domicílio|
|Características do Domicílio - Parte 3|domicilio03_V00535|V00535|Domicílios Particulares Permanentes Ocupados, Utiliza fonte, nascente ou mina, Pessoas de sexo feminino no domicílio|
|Características do Domicílio - Parte 3|domicilio03_V00536|V00536|Domicílios Particulares Permanentes Ocupados, Utiliza carro-pipa, Pessoas de sexo feminino no domicílio|
|Características do Domicílio - Parte 3|domicilio03_V00537|V00537|Domicílios Particulares Permanentes Ocupados, Utiliza água da chuva armazenada, Pessoas de sexo feminino no domicílio|
|Características do Domicílio - Parte 3|domicilio03_V00538|V00538|Domicílios Particulares Permanentes Ocupados, Utiliza rios, açudes, córregos, lagos e igarapés, Pessoas de sexo feminino no domicílio|
|Características do Domicílio - Parte 3|domicilio03_V00539|V00539|Domicílios Particulares Permanentes Ocupados, Utiliza outra forma de abastecimento de água, Pessoas de sexo feminino no domicílio|
|Características do Domicílio - Parte 3|domicilio03_V00540|V00540|Domicílios Particulares Permanentes Ocupados, Água chega encanada até dentro da casa, apartamento ou habitação, Quantidade de moradores|
|Características do Domicílio - Parte 3|domicilio03_V00541|V00541|Domicílios Particulares Permanentes Ocupados, Água chega encanada, mas apenas ao terreno, Quantidade de moradores|
|Características do Domicílio - Parte 3|domicilio03_V00542|V00542|Domicílios Particulares Permanentes Ocupados, Água não chega encanada ao domicílio, Quantidade de moradores|
|Características do Domicílio - Parte 3|domicilio03_V00543|V00543|Domicílios Particulares Permanentes Ocupados, Água chega encanada até dentro da casa, apartamento ou habitação, Quantidade de crianças de zero a nove anos de idade|
|Características do Domicílio - Parte 3|domicilio03_V00544|V00544|Domicílios Particulares Permanentes Ocupados, Água chega encanada, mas apenas ao terreno, Quantidade de crianças de zero a nove anos de idade|
|Características do Domicílio - Parte 3|domicilio03_V00545|V00545|Domicílios Particulares Permanentes Ocupados, Água não chega encanada ao domicílio, Quantidade de crianças de zero a nove anos de idade|
|Características do Domicílio - Parte 3|domicilio03_V00546|V00546|Domicílios Particulares Permanentes Ocupados, Água chega encanada até dentro da casa, apartamento ou habitação, Pessoas de sexo masculino no domicílio|
|Características do Domicílio - Parte 3|domicilio03_V00547|V00547|Domicílios Particulares Permanentes Ocupados, Água chega encanada, mas apenas ao terreno, Pessoas de sexo masculino no domicílio|
|Características do Domicílio - Parte 3|domicilio03_V00548|V00548|Domicílios Particulares Permanentes Ocupados, Água não chega encanada ao domicílio, Pessoas de sexo masculino no domicílio|
|Características do Domicílio - Parte 3|domicilio03_V00549|V00549|Domicílios Particulares Permanentes Ocupados, Água chega encanada até dentro da casa, apartamento ou habitação, Pessoas de sexo feminino no domicílio|
|Características do Domicílio - Parte 3|domicilio03_V00550|V00550|Domicílios Particulares Permanentes Ocupados, Água chega encanada, mas apenas ao terreno, Pessoas de sexo feminino no domicílio|
|Características do Domicílio - Parte 3|domicilio03_V00551|V00551|Domicílios Particulares Permanentes Ocupados, Água não chega encanada ao domicílio, Pessoas de sexo feminino no domicílio|
|Características do Domicílio - Parte 3|domicilio03_V00552|V00552|Domicílios Particulares Permanentes Ocupados, 1 banheiro de uso exclusivo com chuveiro e vaso sanitário existentes no domicílio, Quantidade de moradores|
|Características do Domicílio - Parte 3|domicilio03_V00553|V00553|Domicílios Particulares Permanentes Ocupados, 2 banheiros de uso exclusivo com chuveiro e vaso sanitário existentes no domicílio, Quantidade de moradores|
|Características do Domicílio - Parte 3|domicilio03_V00554|V00554|Domicílios Particulares Permanentes Ocupados, 3 banheiros de uso exclusivo com chuveiro e vaso sanitário existentes no domicílio, Quantidade de moradores|
|Características do Domicílio - Parte 3|domicilio03_V00555|V00555|Domicílios Particulares Permanentes Ocupados, 4 ou mais banheiros de uso exclusivo com chuveiro e vaso sanitário existentes no domicílio, Quantidade de moradores|
|Características do Domicílio - Parte 3|domicilio03_V00556|V00556|Domicílios Particulares Permanentes Ocupados, Apenas banheiro de uso comum a mais de um domicílio, Quantidade de moradores|
|Características do Domicílio - Parte 3|domicilio03_V00557|V00557|Domicílios Particulares Permanentes Ocupados, Apenas sanitário ou buraco para dejeções, inclusive os localizados no terreno, Quantidade de moradores|
|Características do Domicílio - Parte 3|domicilio03_V00558|V00558|Domicílios Particulares Permanentes Ocupados, Não tinham banheiro nem sanitário, Quantidade de moradores|
|Características do Domicílio - Parte 3|domicilio03_V00559|V00559|Domicílios Particulares Permanentes Ocupados, 1 banheiro de uso exclusivo com chuveiro e vaso sanitário existentes no domicílio, Quantidade de crianças de zero a nove anos de idade|
|Características do Domicílio - Parte 3|domicilio03_V00560|V00560|Domicílios Particulares Permanentes Ocupados, 2 banheiros de uso exclusivo com chuveiro e vaso sanitário existentes no domicílio, Quantidade de crianças de zero a nove anos de idade|
|Características do Domicílio - Parte 3|domicilio03_V00561|V00561|Domicílios Particulares Permanentes Ocupados, 3 banheiros de uso exclusivo com chuveiro e vaso sanitário existentes no domicílio, Quantidade de crianças de zero a nove anos de idade|
|Características do Domicílio - Parte 3|domicilio03_V00562|V00562|Domicílios Particulares Permanentes Ocupados, 4 ou mais banheiros de uso exclusivo com chuveiro e vaso sanitário existentes no domicílio, Quantidade de crianças de zero a nove anos de idade|
|Características do Domicílio - Parte 3|domicilio03_V00563|V00563|Domicílios Particulares Permanentes Ocupados, Apenas banheiro de uso comum a mais de um domicílio, Quantidade de crianças de zero a nove anos de idade|
|Características do Domicílio - Parte 3|domicilio03_V00564|V00564|Domicílios Particulares Permanentes Ocupados, Apenas sanitário ou buraco para dejeções, inclusive os localizados no terreno, Quantidade de crianças de zero a nove anos de idade|
|Características do Domicílio - Parte 3|domicilio03_V00565|V00565|Domicílios Particulares Permanentes Ocupados, Não tinham banheiro nem sanitário, Quantidade de crianças de zero a nove anos de idade|
|Características do Domicílio - Parte 3|domicilio03_V00566|V00566|Domicílios Particulares Permanentes Ocupados, 1 banheiro de uso exclusivo com chuveiro e vaso sanitário existentes no domicílio, Pessoas de sexo masculino no domicílio|
|Características do Domicílio - Parte 3|domicilio03_V00567|V00567|Domicílios Particulares Permanentes Ocupados, 2 banheiros de uso exclusivo com chuveiro e vaso sanitário existentes no domicílio, Pessoas de sexo masculino no domicílio|
|Características do Domicílio - Parte 3|domicilio03_V00568|V00568|Domicílios Particulares Permanentes Ocupados, 3 banheiros de uso exclusivo com chuveiro e vaso sanitário existentes no domicílio, Pessoas de sexo masculino no domicílio|
|Características do Domicílio - Parte 3|domicilio03_V00569|V00569|Domicílios Particulares Permanentes Ocupados, 4 ou mais banheiros de uso exclusivo com chuveiro e vaso sanitário existentes no domicílio, Pessoas de sexo masculino no domicílio|
|Características do Domicílio - Parte 3|domicilio03_V00570|V00570|Domicílios Particulares Permanentes Ocupados, Apenas banheiro de uso comum a mais de um domicílio, Pessoas de sexo masculino no domicílio|
|Características do Domicílio - Parte 3|domicilio03_V00571|V00571|Domicílios Particulares Permanentes Ocupados, Apenas sanitário ou buraco para dejeções, inclusive os localizados no terreno, Pessoas de sexo masculino no domicílio|
|Características do Domicílio - Parte 3|domicilio03_V00572|V00572|Domicílios Particulares Permanentes Ocupados, Não tinham banheiro nem sanitário, Pessoas de sexo masculino no domicílio|
|Características do Domicílio - Parte 3|domicilio03_V00573|V00573|Domicílios Particulares Permanentes Ocupados, 1 banheiro de uso exclusivo com chuveiro e vaso sanitário existentes no domicílio, Pessoas de sexo feminino no domicílio|
|Características do Domicílio - Parte 3|domicilio03_V00574|V00574|Domicílios Particulares Permanentes Ocupados, 2 banheiros de uso exclusivo com chuveiro e vaso sanitário existentes no domicílio, Pessoas de sexo feminino no domicílio|
|Características do Domicílio - Parte 3|domicilio03_V00575|V00575|Domicílios Particulares Permanentes Ocupados, 3 banheiros de uso exclusivo com chuveiro e vaso sanitário existentes no domicílio, Pessoas de sexo feminino no domicílio|
|Características do Domicílio - Parte 3|domicilio03_V00576|V00576|Domicílios Particulares Permanentes Ocupados, 4 ou mais banheiros de uso exclusivo com chuveiro e vaso sanitário existentes no domicílio, Pessoas de sexo feminino no domicílio|
|Características do Domicílio - Parte 3|domicilio03_V00577|V00577|Domicílios Particulares Permanentes Ocupados, Apenas banheiro de uso comum a mais de um domicílio, Pessoas de sexo feminino no domicílio|
|Características do Domicílio - Parte 3|domicilio03_V00578|V00578|Domicílios Particulares Permanentes Ocupados, Apenas sanitário ou buraco para dejeções, inclusive os localizados no terreno, Pessoas de sexo feminino no domicílio|
|Características do Domicílio - Parte 3|domicilio03_V00579|V00579|Domicílios Particulares Permanentes Ocupados, Não tinham banheiro nem sanitário, Pessoas de sexo feminino no domicílio|
|Características do Domicílio - Parte 3|domicilio03_V00580|V00580|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é rede geral ou pluvial, Quantidade de moradores|
|Características do Domicílio - Parte 3|domicilio03_V00581|V00581|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é fossa séptica ou fossa filtro ligada à rede, Quantidade de moradores|
|Características do Domicílio - Parte 3|domicilio03_V00582|V00582|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é fossa séptica ou fossa filtro não ligada à rede, Quantidade de moradores|
|Características do Domicílio - Parte 3|domicilio03_V00583|V00583|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é fossa rudimentar ou buraco, Quantidade de moradores|
|Características do Domicílio - Parte 3|domicilio03_V00584|V00584|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é vala, Quantidade de moradores|
|Características do Domicílio - Parte 3|domicilio03_V00585|V00585|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é rio, lago, córrego ou mar, Quantidade de moradores|
|Características do Domicílio - Parte 3|domicilio03_V00586|V00586|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é outra forma, Quantidade de moradores|
|Características do Domicílio - Parte 3|domicilio03_V00587|V00587|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto inexistente, pois não tinham banheiro nem sanitário, Quantidade de moradores|
|Características do Domicílio - Parte 3|domicilio03_V00588|V00588|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é rede geral ou pluvial, Quantidade de crianças de zero a nove anos de idade|
|Características do Domicílio - Parte 3|domicilio03_V00589|V00589|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é fossa séptica ou fossa filtro ligada à rede, Quantidade de crianças de zero a nove anos de idade|
|Características do Domicílio - Parte 3|domicilio03_V00590|V00590|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é fossa séptica ou fossa filtro não ligada à rede, Quantidade de crianças de zero a nove anos de idade|
|Características do Domicílio - Parte 3|domicilio03_V00591|V00591|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é fossa rudimentar ou buraco, Quantidade de crianças de zero a nove anos de idade|
|Características do Domicílio - Parte 3|domicilio03_V00592|V00592|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é vala, Quantidade de crianças de zero a nove anos de idade|
|Características do Domicílio - Parte 3|domicilio03_V00593|V00593|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é rio, lago, córrego ou mar, Quantidade de crianças de zero a nove anos de idade|
|Características do Domicílio - Parte 3|domicilio03_V00594|V00594|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é outra forma, Quantidade de crianças de zero a nove anos de idade|
|Características do Domicílio - Parte 3|domicilio03_V00595|V00595|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto inexistente, pois não tinham banheiro nem sanitário, Quantidade de crianças de zero a nove anos de idade|
|Características do Domicílio - Parte 3|domicilio03_V00596|V00596|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é rede geral ou pluvial, Pessoas de sexo masculino no domicílio|
|Características do Domicílio - Parte 3|domicilio03_V00597|V00597|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é fossa séptica ou fossa filtro ligada à rede, Pessoas de sexo masculino no domicílio|
|Características do Domicílio - Parte 3|domicilio03_V00598|V00598|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é fossa séptica ou fossa filtro não ligada à rede, Pessoas de sexo masculino no domicílio|
|Características do Domicílio - Parte 3|domicilio03_V00599|V00599|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é fossa rudimentar ou buraco, Pessoas de sexo masculino no domicílio|
|Características do Domicílio - Parte 3|domicilio03_V00600|V00600|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é vala, Pessoas de sexo masculino no domicílio|
|Características do Domicílio - Parte 3|domicilio03_V00601|V00601|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é rio, lago, córrego ou mar, Pessoas de sexo masculino no domicílio|
|Características do Domicílio - Parte 3|domicilio03_V00602|V00602|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é outra forma, Pessoas de sexo masculino no domicílio|
|Características do Domicílio - Parte 3|domicilio03_V00603|V00603|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto inexistente, pois não tinham banheiro nem sanitário, Pessoas de sexo masculino no domicílio|
|Características do Domicílio - Parte 3|domicilio03_V00604|V00604|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é rede geral ou pluvial, Pessoas de sexo feminino no domicílio|
|Características do Domicílio - Parte 3|domicilio03_V00605|V00605|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é fossa séptica ou fossa filtro ligada à rede, Pessoas de sexo feminino no domicílio|
|Características do Domicílio - Parte 3|domicilio03_V00606|V00606|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é fossa séptica ou fossa filtro não ligada à rede, Pessoas de sexo feminino no domicílio|
|Características do Domicílio - Parte 3|domicilio03_V00607|V00607|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é fossa rudimentar ou buraco, Pessoas de sexo feminino no domicílio|
|Características do Domicílio - Parte 3|domicilio03_V00608|V00608|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é vala, Pessoas de sexo feminino no domicílio|
|Características do Domicílio - Parte 3|domicilio03_V00609|V00609|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é rio, lago, córrego ou mar, Pessoas de sexo feminino no domicílio|
|Características do Domicílio - Parte 3|domicilio03_V00610|V00610|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é outra forma, Pessoas de sexo feminino no domicílio|
|Características do Domicílio - Parte 3|domicilio03_V00611|V00611|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto inexistente, pois não tinham banheiro nem sanitário, Pessoas de sexo feminino no domicílio|
|Características do Domicílio - Parte 3|domicilio03_V00612|V00612|Domicílios Particulares Permanentes Ocupados, Lixo coletado no domicílio por serviço de limpeza, Quantidade de moradores|
|Características do Domicílio - Parte 3|domicilio03_V00613|V00613|Domicílios Particulares Permanentes Ocupados, Lixo depositado em caçamba de serviço de limpeza, Quantidade de moradores|
|Características do Domicílio - Parte 3|domicilio03_V00614|V00614|Domicílios Particulares Permanentes Ocupados, Lixo queimado na propriedade, Quantidade de moradores|
|Características do Domicílio - Parte 3|domicilio03_V00615|V00615|Domicílios Particulares Permanentes Ocupados, Lixo enterrado na propriedade, Quantidade de moradores|
|Características do Domicílio - Parte 3|domicilio03_V00616|V00616|Domicílios Particulares Permanentes Ocupados, Lixo jogado em terreno baldio, encosta ou área pública, Quantidade de moradores|
|Características do Domicílio - Parte 3|domicilio03_V00617|V00617|Domicílios Particulares Permanentes Ocupados, Outro destino do lixo, Quantidade de moradores|
|Características do Domicílio - Parte 3|domicilio03_V00618|V00618|Domicílios Particulares Permanentes Ocupados, Lixo coletado no domicílio por serviço de limpeza, Quantidade de crianças de zero a nove anos de idade|
|Características do Domicílio - Parte 3|domicilio03_V00619|V00619|Domicílios Particulares Permanentes Ocupados, Lixo depositado em caçamba de serviço de limpeza, Quantidade de crianças de zero a nove anos de idade|
|Características do Domicílio - Parte 3|domicilio03_V00620|V00620|Domicílios Particulares Permanentes Ocupados, Lixo queimado na propriedade, Quantidade de crianças de zero a nove anos de idade|
|Características do Domicílio - Parte 3|domicilio03_V00621|V00621|Domicílios Particulares Permanentes Ocupados, Lixo enterrado na propriedade, Quantidade de crianças de zero a nove anos de idade|
|Características do Domicílio - Parte 3|domicilio03_V00622|V00622|Domicílios Particulares Permanentes Ocupados, Lixo jogado em terreno baldio, encosta ou área pública, Quantidade de crianças de zero a nove anos de idade|
|Características do Domicílio - Parte 3|domicilio03_V00623|V00623|Domicílios Particulares Permanentes Ocupados, Outro destino do lixo, Quantidade de crianças de zero a nove anos de idade|
|Características do Domicílio - Parte 3|domicilio03_V00624|V00624|Domicílios Particulares Permanentes Ocupados, Lixo coletado no domicílio por serviço de limpeza, Pessoas de sexo masculino no domicílio|
|Características do Domicílio - Parte 3|domicilio03_V00625|V00625|Domicílios Particulares Permanentes Ocupados, Lixo depositado em caçamba de serviço de limpeza, Pessoas de sexo masculino no domicílio|
|Características do Domicílio - Parte 3|domicilio03_V00626|V00626|Domicílios Particulares Permanentes Ocupados, Lixo queimado na propriedade, Pessoas de sexo masculino no domicílio|
|Características do Domicílio - Parte 3|domicilio03_V00627|V00627|Domicílios Particulares Permanentes Ocupados, Lixo enterrado na propriedade, Pessoas de sexo masculino no domicílio|
|Características do Domicílio - Parte 3|domicilio03_V00628|V00628|Domicílios Particulares Permanentes Ocupados, Lixo jogado em terreno baldio, encosta ou área pública, Pessoas de sexo masculino no domicílio|
|Características do Domicílio - Parte 3|domicilio03_V00629|V00629|Domicílios Particulares Permanentes Ocupados, Outro destino do lixo, Pessoas de sexo masculino no domicílio|
|Características do Domicílio - Parte 3|domicilio03_V00630|V00630|Domicílios Particulares Permanentes Ocupados, Lixo coletado no domicílio por serviço de limpeza, Pessoas de sexo feminino no domicílio|
|Características do Domicílio - Parte 3|domicilio03_V00631|V00631|Domicílios Particulares Permanentes Ocupados, Lixo depositado em caçamba de serviço de limpeza, Pessoas de sexo feminino no domicílio|
|Características do Domicílio - Parte 3|domicilio03_V00632|V00632|Domicílios Particulares Permanentes Ocupados, Lixo queimado na propriedade, Pessoas de sexo feminino no domicílio|
|Características do Domicílio - Parte 3|domicilio03_V00633|V00633|Domicílios Particulares Permanentes Ocupados, Lixo enterrado na propriedade, Pessoas de sexo feminino no domicílio|
|Características do Domicílio - Parte 3|domicilio03_V00634|V00634|Domicílios Particulares Permanentes Ocupados, Lixo jogado em terreno baldio, encosta ou área pública, Pessoas de sexo feminino no domicílio|
|Características do Domicílio - Parte 3|domicilio03_V00635|V00635|Domicílios Particulares Permanentes Ocupados, Outro destino do lixo, Pessoas de sexo feminino no domicílio|
|Características do Domicílio - Parte 3|domicilio03_V00636|V00636|Domicílios Particulares Permanentes Ocupados, Domicílio possui ligação à rede geral de distribuição de água, mas utiliza principalmente outra forma, Quantidade de moradores|
|Características do Domicílio - Parte 3|domicilio03_V00637|V00637|Domicílios Particulares Permanentes Ocupados, Domicílio não possui ligação à rede geral de distribuição de água, Quantidade de moradores|
|Características do Domicílio - Parte 3|domicilio03_V00638|V00638|Domicílios Particulares Permanentes Ocupados, Domicílio possui ligação à rede geral de distribuição de água, mas utiliza principalmente outra forma, Quantidade de crianças de zero a nove anos de idade|
|Características do Domicílio - Parte 3|domicilio03_V00639|V00639|Domicílios Particulares Permanentes Ocupados, Domicílio não possui ligação à rede geral de distribuição de água, Quantidade de crianças de zero a nove anos de idade|
|Características do Domicílio - Parte 3|domicilio03_V00640|V00640|Domicílios Particulares Permanentes Ocupados, Domicílio possui ligação à rede geral de distribuição de água, mas utiliza principalmente outra forma, Pessoas de sexo masculino no domicílio|
|Características do Domicílio - Parte 3|domicilio03_V00641|V00641|Domicílios Particulares Permanentes Ocupados, Domicílio não possui ligação à rede geral de distribuição de água, Pessoas de sexo masculino no domicílio|
|Características do Domicílio - Parte 3|domicilio03_V00642|V00642|Domicílios Particulares Permanentes Ocupados, Domicílio possui ligação à rede geral de distribuição de água, mas utiliza principalmente outra forma, Pessoas de sexo feminino no domicílio|
|Características do Domicílio - Parte 3|domicilio03_V00643|V00643|Domicílios Particulares Permanentes Ocupados, Domicílio não possui ligação à rede geral de distribuição de água, Pessoas de sexo feminino no domicílio|

## 4.4. Arquivo Óbitos {#dic_obitos}

### Fonte de dados

* Planilha `Obitos` do arquivo `docs/original/2022_dictionary_tracts.xlsx`

Temas presentes na planilha: `Identificação Geográfica`; `Mortalidade`.

### Dicionário de dados

|Tema|Nome no {censobr}|Nome original|Descrição da variável|
|-|-|-|-|
|Identificação Geográfica|code_tract|CD_SETOR|Geocódigo de Setor Censitário|
|Identificação Geográfica|situacao|SITUACAO|Situação do Setor Censitário Categorias observadas na planilha: `Urbana`; `Rural`.|
|Identificação Geográfica|code_situacao|CD_SIT|Situação detalhada do Setor Censitário Categorias: `1` = Área urbana de alta densidade de edificações de cidade ou vila; `2` = Área urbana de baixa densidade de edificações de cidade ou vila; `3` = Núcleo urbano; `5` = Aglomerado rural - Povoado; `6` = Aglomerado rural - Núcleo rural; `7` = Aglomerado rural - Lugarejo; `8` = Área rural (exclusive aglomerados); `9` = Massas de água.|
|Identificação Geográfica|code_type|CD_TIPO|Tipo do Setor Censitário Categorias: `0` = Não especial; `1` = Favela e Comunidade Urbana; `2` = Quartel e base militar; `3` = Alojamento / acampamento; `4` = Setor com baixo patamar domiciliar; `5` = Agrupamento indígena; `6` = Unidade prisional; `7` = Convento / hospital / ILPI / IACA; `8` = Agrovila do PA; `9` = Agrupamento quilombola.|
|Identificação Geográfica|area_km2|AREA_KM2|Área do Setor Censitário em quilômetros quadrados|
|Identificação Geográfica|code_region|CD_REGIAO|Código das Grandes Regiões (Regiões Geográficas)|
|Identificação Geográfica|name_region|NM_REGIAO|Nome das Grandes Regiões (Regiões Geográficas)|
|Identificação Geográfica|code_state|CD_UF|Código da Unidade da Federação|
|Identificação Geográfica|name_state|NM_UF|Nome da Unidade da Federação|
|Identificação Geográfica|code_muni|CD_MUN|Código do Município|
|Identificação Geográfica|name_muni|NM_MUN|Nome do Município|
|Identificação Geográfica|code_district|CD_DIST|Código do Distrito|
|Identificação Geográfica|name_district|NM_DIST|Nome do Distrito|
|Identificação Geográfica|code_subdistrict|CD_SUBDIST|Código do Subdistrito|
|Identificação Geográfica|name_subdistrict|NM_SUBDIST|Nome do Subdistrito|
|Identificação Geográfica|code_neighborhood|CD_BAIRRO|Código do Bairro|
|Identificação Geográfica|name_neighborhood|NM_BAIRRO|Nome do Bairro|
|Identificação Geográfica|code_nucleo_urbano|CD_NU|Código do Núcleo Urbano|
|Identificação Geográfica|name_nucleo_urbano|NM_NU|Nome do Núcleo Urbano|
|Identificação Geográfica|code_favela|CD_FCU|Código da Favela ou Comunidade Urbana|
|Identificação Geográfica|name_favela|NM_FCU|Nome da Favela ou Comunidade Urbana|
|Identificação Geográfica|code_aglomerado|CD_AGLOM|Código do Aglomerado|
|Identificação Geográfica|name_aglomerado|NM_AGLOM|Nome do Aglomerado|
|Identificação Geográfica|code_intermediate|CD_RGINT|Código da Região Geográfica Intermediária|
|Identificação Geográfica|name_intermediate|NM_RGINT|Nome da Região Geográfica Intermediária|
|Identificação Geográfica|code_immediate|CD_RGI|Código da Região Geográfica Imediata|
|Identificação Geográfica|name_immediate|NM_RGI|Nome da Região Geográfica Imediata|
|Identificação Geográfica|code_urban_concentration|CD_CONCURB|Código da Concentração Urbana|
|Identificação Geográfica|name_urban_concentration|NM_CONCURB|Nome da Concentração Urbana|
|Mortalidade|V01224|V01224|Existe pessoa falecida, no período de janeiro de 2019 a julho de 2022, que morava no domicílio|
|Mortalidade|V01225|V01225|Não existe pessoa falecida, no período de janeiro de 2019 a julho de 2022, que morava no domicílio|
|Mortalidade|V01226|V01226|Sexo da pessoa falecida é masculino|
|Mortalidade|V01227|V01227|Sexo da pessoa falecida é feminino|
|Mortalidade|V01228|V01228|Sexo da pessoa falecida é masculino, Idade em anos ao falecer é 0 a 4 anos|
|Mortalidade|V01229|V01229|Sexo da pessoa falecida é masculino, Idade em anos ao falecer é 5 a 9 anos|
|Mortalidade|V01230|V01230|Sexo da pessoa falecida é masculino, Idade em anos ao falecer é 10 a 14 anos|
|Mortalidade|V01231|V01231|Sexo da pessoa falecida é masculino, Idade em anos ao falecer é 15 a 19 anos|
|Mortalidade|V01232|V01232|Sexo da pessoa falecida é masculino, Idade em anos ao falecer é 20 a 24 anos|
|Mortalidade|V01233|V01233|Sexo da pessoa falecida é masculino, Idade em anos ao falecer é 25 a 29 anos|
|Mortalidade|V01234|V01234|Sexo da pessoa falecida é masculino, Idade em anos ao falecer é 30 a 39 anos|
|Mortalidade|V01235|V01235|Sexo da pessoa falecida é masculino, Idade em anos ao falecer é 40 a 49 anos|
|Mortalidade|V01236|V01236|Sexo da pessoa falecida é masculino, Idade em anos ao falecer é 50 a 59 anos|
|Mortalidade|V01237|V01237|Sexo da pessoa falecida é masculino, Idade em anos ao falecer é 60 a 69 anos|
|Mortalidade|V01238|V01238|Sexo da pessoa falecida é masculino, Idade em anos ao falecer é 70 anos ou mais|
|Mortalidade|V01239|V01239|Sexo da pessoa falecida é feminino, Idade em anos ao falecer é 0 a 4 anos|
|Mortalidade|V01240|V01240|Sexo da pessoa falecida é feminino, Idade em anos ao falecer é 5 a 9 anos|
|Mortalidade|V01241|V01241|Sexo da pessoa falecida é feminino, Idade em anos ao falecer é 10 a 14 anos|
|Mortalidade|V01242|V01242|Sexo da pessoa falecida é feminino, Idade em anos ao falecer é 15 a 19 anos|
|Mortalidade|V01243|V01243|Sexo da pessoa falecida é feminino, Idade em anos ao falecer é 20 a 24 anos|
|Mortalidade|V01244|V01244|Sexo da pessoa falecida é feminino, Idade em anos ao falecer é 25 a 29 anos|
|Mortalidade|V01245|V01245|Sexo da pessoa falecida é feminino, Idade em anos ao falecer é 30 a 39 anos|
|Mortalidade|V01246|V01246|Sexo da pessoa falecida é feminino, Idade em anos ao falecer é 40 a 49 anos|
|Mortalidade|V01247|V01247|Sexo da pessoa falecida é feminino, Idade em anos ao falecer é 50 a 59 anos|
|Mortalidade|V01248|V01248|Sexo da pessoa falecida é feminino, Idade em anos ao falecer é 60 a 69 anos|
|Mortalidade|V01249|V01249|Sexo da pessoa falecida é feminino, Idade em anos ao falecer é 70 anos ou mais|
|Mortalidade|V01250|V01250|Sexo da pessoa falecida é masculino, Morador com 1 ano ou mais ao falecer|
|Mortalidade|V01251|V01251|Sexo da pessoa falecida é masculino, Morador com menos de 1 ano ao falecer|
|Mortalidade|V01252|V01252|Sexo da pessoa falecida é feminino, Morador com 1 ano ou mais ao falecer|
|Mortalidade|V01253|V01253|Sexo da pessoa falecida é feminino, Morador com menos de 1 ano ao falecer|
|Mortalidade|V01254|V01254|Cor ou raça da pessoa responsável pelo domicílio é branca, Existe pessoa falecida, no período de janeiro de 2019 a julho de 2022, que morava no domicílio|
|Mortalidade|V01255|V01255|Cor ou raça da pessoa responsável pelo domicílio é branca, Não existe pessoa falecida, no período de janeiro de 2019 a julho de 2022, que morava no domicílio|
|Mortalidade|V01256|V01256|Cor ou raça da pessoa responsável pelo domicílio é preta, Existe pessoa falecida, no período de janeiro de 2019 a julho de 2022, que morava no domicílio|
|Mortalidade|V01257|V01257|Cor ou raça da pessoa responsável pelo domicílio é preta, Não existe pessoa falecida, no período de janeiro de 2019 a julho de 2022, que morava no domicílio|
|Mortalidade|V01258|V01258|Cor ou raça da pessoa responsável pelo domicílio é amarela, Existe pessoa falecida, no período de janeiro de 2019 a julho de 2022, que morava no domicílio|
|Mortalidade|V01259|V01259|Cor ou raça da pessoa responsável pelo domicílio é amarela, Não existe pessoa falecida, no período de janeiro de 2019 a julho de 2022, que morava no domicílio|
|Mortalidade|V01260|V01260|Cor ou raça da pessoa responsável pelo domicílio é parda, Existe pessoa falecida, no período de janeiro de 2019 a julho de 2022, que morava no domicílio|
|Mortalidade|V01261|V01261|Cor ou raça da pessoa responsável pelo domicílio é parda, Não existe pessoa falecida, no período de janeiro de 2019 a julho de 2022, que morava no domicílio|
|Mortalidade|V01262|V01262|Cor ou raça da pessoa responsável pelo domicílio é indígena, Existe pessoa falecida, no período de janeiro de 2019 a julho de 2022, que morava no domicílio|
|Mortalidade|V01263|V01263|Cor ou raça da pessoa responsável pelo domicílio é indígena, Não existe pessoa falecida, no período de janeiro de 2019 a julho de 2022, que morava no domicílio|
|Mortalidade|V01264|V01264|Mês e ano de falecimento entre janeiro de 2019 a junho de 2019|
|Mortalidade|V01265|V01265|Mês e ano de falecimento entre julho de 2019 a dezembro de 2019|
|Mortalidade|V01266|V01266|Mês e ano de falecimento entre janeiro de 2020 a junho de 2020|
|Mortalidade|V01267|V01267|Mês e ano de falecimento entre julho de 2020 a dezembro de 2020|
|Mortalidade|V01268|V01268|Mês e ano de falecimento entre janeiro de 2021 a junho de 2021|
|Mortalidade|V01269|V01269|Mês e ano de falecimento entre julho de 2021 a dezembro de 2021|
|Mortalidade|V01270|V01270|Mês e ano de falecimento entre janeiro de 2022 a julho de 2022|
|Mortalidade|V01271|V01271|Mês e ano de falecimento entre janeiro de 2019 a junho de 2019, Sexo da pessoa falecida é masculino|
|Mortalidade|V01272|V01272|Mês e ano de falecimento entre janeiro de 2019 a junho de 2019, Sexo da pessoa falecida é feminino|
|Mortalidade|V01273|V01273|Mês e ano de falecimento entre julho de 2019 a dezembro de 2019, Sexo da pessoa falecida é masculino|
|Mortalidade|V01274|V01274|Mês e ano de falecimento entre julho de 2019 a dezembro de 2019, Sexo da pessoa falecida é feminino|
|Mortalidade|V01275|V01275|Mês e ano de falecimento entre janeiro de 2020 a junho de 2020, Sexo da pessoa falecida é masculino|
|Mortalidade|V01276|V01276|Mês e ano de falecimento entre janeiro de 2020 a junho de 2020, Sexo da pessoa falecida é feminino|
|Mortalidade|V01277|V01277|Mês e ano de falecimento entre julho de 2020 a dezembro de 2020, Sexo da pessoa falecida é masculino|
|Mortalidade|V01278|V01278|Mês e ano de falecimento entre julho de 2020 a dezembro de 2020, Sexo da pessoa falecida é feminino|
|Mortalidade|V01279|V01279|Mês e ano de falecimento entre janeiro de 2021 a junho de 2021, Sexo da pessoa falecida é masculino|
|Mortalidade|V01280|V01280|Mês e ano de falecimento entre janeiro de 2021 a junho de 2021, Sexo da pessoa falecida é feminino|
|Mortalidade|V01281|V01281|Mês e ano de falecimento entre julho de 2021 a dezembro de 2021, Sexo da pessoa falecida é masculino|
|Mortalidade|V01282|V01282|Mês e ano de falecimento entre julho de 2021 a dezembro de 2021, Sexo da pessoa falecida é feminino|
|Mortalidade|V01283|V01283|Mês e ano de falecimento entre janeiro de 2022 a julho de 2022, Sexo da pessoa falecida é masculino|
|Mortalidade|V01284|V01284|Mês e ano de falecimento entre janeiro de 2022 a julho de 2022, Sexo da pessoa falecida é feminino|
|Mortalidade|V01285|V01285|Mês e ano de falecimento entre janeiro de 2019 a dezembro de 2019, Sexo da pessoa falecida é masculino, 0 a 14 anos|
|Mortalidade|V01286|V01286|Mês e ano de falecimento entre janeiro de 2019 a dezembro de 2019, Sexo da pessoa falecida é masculino, 15 a 29 anos|
|Mortalidade|V01287|V01287|Mês e ano de falecimento entre janeiro de 2019 a dezembro de 2019, Sexo da pessoa falecida é masculino, 30 a 59 anos|
|Mortalidade|V01288|V01288|Mês e ano de falecimento entre janeiro de 2019 a dezembro de 2019, Sexo da pessoa falecida é masculino, 60 anos ou mais|
|Mortalidade|V01289|V01289|Mês e ano de falecimento entre janeiro de 2019 a dezembro de 2019, Sexo da pessoa falecida é feminino, 0 a 14 anos|
|Mortalidade|V01290|V01290|Mês e ano de falecimento entre janeiro de 2019 a dezembro de 2019, Sexo da pessoa falecida é feminino, 15 a 29 anos|
|Mortalidade|V01291|V01291|Mês e ano de falecimento entre janeiro de 2019 a dezembro de 2019, Sexo da pessoa falecida é feminino, 30 a 59 anos|
|Mortalidade|V01292|V01292|Mês e ano de falecimento entre janeiro de 2019 a dezembro de 2019, Sexo da pessoa falecida é feminino, 60 anos ou mais|
|Mortalidade|V01293|V01293|Mês e ano de falecimento entre janeiro de 2020 a dezembro de 2020, Sexo da pessoa falecida é masculino, 0 a 14 anos|
|Mortalidade|V01294|V01294|Mês e ano de falecimento entre janeiro de 2020 a dezembro de 2020, Sexo da pessoa falecida é masculino, 15 a 29 anos|
|Mortalidade|V01295|V01295|Mês e ano de falecimento entre janeiro de 2020 a dezembro de 2020, Sexo da pessoa falecida é masculino, 30 a 59 anos|
|Mortalidade|V01296|V01296|Mês e ano de falecimento entre janeiro de 2020 a dezembro de 2020, Sexo da pessoa falecida é masculino, 60 anos ou mais|
|Mortalidade|V01297|V01297|Mês e ano de falecimento entre janeiro de 2020 a dezembro de 2020, Sexo da pessoa falecida é feminino, 0 a 14 anos|
|Mortalidade|V01298|V01298|Mês e ano de falecimento entre janeiro de 2020 a dezembro de 2020, Sexo da pessoa falecida é feminino, 15 a 29 anos|
|Mortalidade|V01299|V01299|Mês e ano de falecimento entre janeiro de 2020 a dezembro de 2020, Sexo da pessoa falecida é feminino, 30 a 59 anos|
|Mortalidade|V01300|V01300|Mês e ano de falecimento entre janeiro de 2020 a dezembro de 2020, Sexo da pessoa falecida é feminino, 60 anos ou mais|
|Mortalidade|V01301|V01301|Mês e ano de falecimento entre janeiro de 2021 a dezembro de 2021, Sexo da pessoa falecida é masculino, 0 a 14 anos|
|Mortalidade|V01302|V01302|Mês e ano de falecimento entre janeiro de 2021 a dezembro de 2021, Sexo da pessoa falecida é masculino, 15 a 29 anos|
|Mortalidade|V01303|V01303|Mês e ano de falecimento entre janeiro de 2021 a dezembro de 2021, Sexo da pessoa falecida é masculino, 30 a 59 anos|
|Mortalidade|V01304|V01304|Mês e ano de falecimento entre janeiro de 2021 a dezembro de 2021, Sexo da pessoa falecida é masculino, 60 anos ou mais|
|Mortalidade|V01305|V01305|Mês e ano de falecimento entre janeiro de 2021 a dezembro de 2021, Sexo da pessoa falecida é feminino, 0 a 14 anos|
|Mortalidade|V01306|V01306|Mês e ano de falecimento entre janeiro de 2021 a dezembro de 2021, Sexo da pessoa falecida é feminino, 15 a 29 anos|
|Mortalidade|V01307|V01307|Mês e ano de falecimento entre janeiro de 2021 a dezembro de 2021, Sexo da pessoa falecida é feminino, 30 a 59 anos|
|Mortalidade|V01308|V01308|Mês e ano de falecimento entre janeiro de 2021 a dezembro de 2021, Sexo da pessoa falecida é feminino, 60 anos ou mais|
|Mortalidade|V01309|V01309|Mês e ano de falecimento entre janeiro de 2022 a julho de 2022, Sexo da pessoa falecida é masculino, 0 a 14 anos|
|Mortalidade|V01310|V01310|Mês e ano de falecimento entre janeiro de 2022 a julho de 2022, Sexo da pessoa falecida é masculino, 15 a 29 anos|
|Mortalidade|V01311|V01311|Mês e ano de falecimento entre janeiro de 2022 a julho de 2022, Sexo da pessoa falecida é masculino, 30 a 59 anos|
|Mortalidade|V01312|V01312|Mês e ano de falecimento entre janeiro de 2022 a julho de 2022, Sexo da pessoa falecida é masculino, 60 anos ou mais|
|Mortalidade|V01313|V01313|Mês e ano de falecimento entre janeiro de 2022 a julho de 2022, Sexo da pessoa falecida é feminino, 0 a 14 anos|
|Mortalidade|V01314|V01314|Mês e ano de falecimento entre janeiro de 2022 a julho de 2022, Sexo da pessoa falecida é feminino, 15 a 29 anos|
|Mortalidade|V01315|V01315|Mês e ano de falecimento entre janeiro de 2022 a julho de 2022, Sexo da pessoa falecida é feminino, 30 a 59 anos|
|Mortalidade|V01316|V01316|Mês e ano de falecimento entre janeiro de 2022 a julho de 2022, Sexo da pessoa falecida é feminino, 60 anos ou mais|

## 4.5. Arquivo Indígenas {#dic_indigenas}

### Fonte de dados

* Planilha `Indigenas` do arquivo `docs/original/2022_dictionary_tracts.xlsx`

Temas presentes na planilha: `Domicílio`; `Identificação Geográfica`; `Pessoas`.

### Dicionário de dados

|Tema|Nome no {censobr}|Nome original|Descrição da variável|
|-|-|-|-|
|Identificação Geográfica|code_tract|CD_SETOR|Geocódigo de Setor Censitário|
|Identificação Geográfica|situacao|SITUACAO|Situação do Setor Censitário Categorias observadas na planilha: `Urbana`; `Rural`.|
|Identificação Geográfica|code_situacao|CD_SIT|Situação detalhada do Setor Censitário Categorias: `1` = Área urbana de alta densidade de edificações de cidade ou vila; `2` = Área urbana de baixa densidade de edificações de cidade ou vila; `3` = Núcleo urbano; `5` = Aglomerado rural - Povoado; `6` = Aglomerado rural - Núcleo rural; `7` = Aglomerado rural - Lugarejo; `8` = Área rural (exclusive aglomerados); `9` = Massas de água.|
|Identificação Geográfica|code_type|CD_TIPO|Tipo do Setor Censitário Categorias: `0` = Não especial; `1` = Favela e Comunidade Urbana; `2` = Quartel e base militar; `3` = Alojamento / acampamento; `4` = Setor com baixo patamar domiciliar; `5` = Agrupamento indígena; `6` = Unidade prisional; `7` = Convento / hospital / ILPI / IACA; `8` = Agrovila do PA; `9` = Agrupamento quilombola.|
|Identificação Geográfica|area_km2|AREA_KM2|Área do Setor Censitário em quilômetros quadrados|
|Identificação Geográfica|code_region|CD_REGIAO|Código das Grandes Regiões (Regiões Geográficas)|
|Identificação Geográfica|name_region|NM_REGIAO|Nome das Grandes Regiões (Regiões Geográficas)|
|Identificação Geográfica|code_state|CD_UF|Código da Unidade da Federação|
|Identificação Geográfica|name_state|NM_UF|Nome da Unidade da Federação|
|Identificação Geográfica|code_muni|CD_MUN|Código do Município|
|Identificação Geográfica|name_muni|NM_MUN|Nome do Município|
|Identificação Geográfica|code_district|CD_DIST|Código do Distrito|
|Identificação Geográfica|name_district|NM_DIST|Nome do Distrito|
|Identificação Geográfica|code_subdistrict|CD_SUBDIST|Código do Subdistrito|
|Identificação Geográfica|name_subdistrict|NM_SUBDIST|Nome do Subdistrito|
|Identificação Geográfica|code_neighborhood|CD_BAIRRO|Código do Bairro|
|Identificação Geográfica|name_neighborhood|NM_BAIRRO|Nome do Bairro|
|Identificação Geográfica|code_nucleo_urbano|CD_NU|Código do Núcleo Urbano|
|Identificação Geográfica|name_nucleo_urbano|NM_NU|Nome do Núcleo Urbano|
|Identificação Geográfica|code_favela|CD_FCU|Código da Favela ou Comunidade Urbana|
|Identificação Geográfica|name_favela|NM_FCU|Nome da Favela ou Comunidade Urbana|
|Identificação Geográfica|code_aglomerado|CD_AGLOM|Código do Aglomerado|
|Identificação Geográfica|name_aglomerado|NM_AGLOM|Nome do Aglomerado|
|Identificação Geográfica|code_intermediate|CD_RGINT|Código da Região Geográfica Intermediária|
|Identificação Geográfica|name_intermediate|NM_RGINT|Nome da Região Geográfica Intermediária|
|Identificação Geográfica|code_immediate|CD_RGI|Código da Região Geográfica Imediata|
|Identificação Geográfica|name_immediate|NM_RGI|Nome da Região Geográfica Imediata|
|Identificação Geográfica|code_urban_concentration|CD_CONCURB|Código da Concentração Urbana|
|Identificação Geográfica|name_urban_concentration|NM_CONCURB|Nome da Concentração Urbana|
|Domicílio|domicilios_V01500|V01500|Domicílio com pelo menos um morador indígena|
|Domicílio|domicilios_V01501|V01501|Domicílios Particulares Permanentes Ocupados, Moradores indígenas no domicílio|
|Domicílio|domicilios_V01502|V01502|Domicílios Particulares Improvisados Ocupados, Moradores indígenas no domicílio|
|Domicílio|domicilios_V01503|V01503|Domicílios Coletivos Com Morador, Moradores indígenas no domicílio|
|Domicílio|domicilios_V01504|V01504|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa, Moradores indígenas no domicílio|
|Domicílio|domicilios_V01505|V01505|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa de vila ou em condomínio, Moradores indígenas no domicílio|
|Domicílio|domicilios_V01506|V01506|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é apartamento, Moradores indígenas no domicílio|
|Domicílio|domicilios_V01507|V01507|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é habitação em casa de cômodos ou cortiço, Moradores indígenas no domicílio|
|Domicílio|domicilios_V01508|V01508|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é habitação indígena sem paredes ou maloca, Moradores indígenas no domicílio|
|Domicílio|domicilios_V01509|V01509|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é estrutura residencial permanente degradada ou inacabada, Moradores indígenas no domicílio|
|Domicílio|domicilios_V01510|V01510|Domicílios Particulares Improvisados Ocupados, Tipo de espécie é tenda ou barraca de lona, plástico ou tecido, Moradores indígenas no domicílio|
|Domicílio|domicilios_V01511|V01511|Domicílios Particulares Improvisados Ocupados, Tipo de espécie é dentro de estabelecimento em funcionamento, Moradores indígenas no domicílio|
|Domicílio|domicilios_V01512|V01512|Domicílios Particulares Improvisados Ocupados, Outros tipos de espécie (abrigos naturais e outras estruturas improvisadas), Moradores indígenas no domicílio|
|Domicílio|domicilios_V01513|V01513|Domicílios Particulares Improvisados Ocupados, Tipo de espécie é estrutura improvisada em logradouro público, exceto tenda ou barraca, Moradores indígenas no domicílio|
|Domicílio|domicilios_V01514|V01514|Domicílios Particulares Improvisados Ocupados, Tipo de espécie é estrutura não residencial permanente degradada ou inacabada, Moradores indígenas no domicílio|
|Domicílio|domicilios_V01515|V01515|Domicílios Particulares Improvisados Ocupados, Tipo de espécie é veículo (carro, caminhão, trailer, barco etc), Moradores indígenas no domicílio|
|Domicílio|domicilios_V01516|V01516|Domicílios Coletivos Com Morador, Tipo de espécie é asilo ou outra instituição de longa permanência para idosos, Moradores indígenas no domicílio|
|Domicílio|domicilios_V01517|V01517|Domicílios Coletivos Com Morador, Tipo de espécie é hotel ou pensão, Moradores indígenas no domicílio|
|Domicílio|domicilios_V01518|V01518|Domicílios Coletivos Com Morador, Tipo de espécie é alojamento, Moradores indígenas no domicílio|
|Domicílio|domicilios_V01519|V01519|Domicílios Coletivos Com Morador, Tipo de espécie é penitenciária, centro de detenção e similar, Moradores indígenas no domicílio|
|Domicílio|domicilios_V01520|V01520|Domicílios Coletivos Com Morador, Outros tipos de espécie, Moradores indígenas no domicílio|
|Domicílio|domicilios_V01521|V01521|Domicílios Coletivos Com Morador, Tipo de espécie é abrigo, albergue ou casa de passagem para população em situação de rua, Moradores indígenas no domicílio|
|Domicílio|domicilios_V01522|V01522|Domicílios Coletivos Com Morador, Tipo de espécie é abrigo, casas de passagem ou república assistencial para outros grupos vulneráveis, Moradores indígenas no domicílio|
|Domicílio|domicilios_V01523|V01523|Domicílios Coletivos Com Morador, Tipo de espécie é clínica psiquiátrica, comunidade terapêutica e similar, Moradores indígenas no domicílio|
|Domicílio|domicilios_V01524|V01524|Domicílios Coletivos Com Morador, Tipo de espécie é orfanato e similar, Moradores indígenas no domicílio|
|Domicílio|domicilios_V01525|V01525|Domicílios Coletivos Com Morador, Tipo de espécie é unidade de internação de menores, Moradores indígenas no domicílio|
|Domicílio|domicilios_V01526|V01526|Domicílios Coletivos Com Morador, Tipo de espécie é quartel ou outra organização militar, Moradores indígenas no domicílio|
|Domicílio|domicilios_V01527|V01527|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa, Domicílio com pelo menos um morador indígena|
|Domicílio|domicilios_V01528|V01528|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa de vila ou em condomínio, Domicílio com pelo menos um morador indígena|
|Domicílio|domicilios_V01529|V01529|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é apartamento, Domicílio com pelo menos um morador indígena|
|Domicílio|domicilios_V01530|V01530|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é habitação em casa de cômodos ou cortiço, Domicílio com pelo menos um morador indígena|
|Domicílio|domicilios_V01531|V01531|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é habitação indígena sem paredes ou maloca, Domicílio com pelo menos um morador indígena|
|Domicílio|domicilios_V01532|V01532|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é estrutura residencial permanente degradada ou inacabada, Domicílio com pelo menos um morador indígena|
|Domicílio|domicilios_V01533|V01533|Domicílios Particulares Improvisados Ocupados, Tipo de espécie é tenda ou barraca de lona, plástico ou tecido, Domicílio com pelo menos um morador indígena|
|Domicílio|domicilios_V01534|V01534|Domicílios Particulares Improvisados Ocupados, Tipo de espécie é dentro de estabelecimento em funcionamento, Domicílio com pelo menos um morador indígena|
|Domicílio|domicilios_V01535|V01535|Domicílios Particulares Improvisados Ocupados, Outros tipos de espécie (abrigos naturais e outras estruturas improvisadas), Domicílio com pelo menos um morador indígena|
|Domicílio|domicilios_V01536|V01536|Domicílios Particulares Improvisados Ocupados, Tipo de espécie é estrutura improvisada em logradouro público, exceto tenda ou barraca, Domicílio com pelo menos um morador indígena|
|Domicílio|domicilios_V01537|V01537|Domicílios Particulares Improvisados Ocupados, Tipo de espécie é estrutura não residencial permanente degradada ou inacabada, Domicílio com pelo menos um morador indígena|
|Domicílio|domicilios_V01538|V01538|Domicílios Particulares Improvisados Ocupados, Tipo de espécie é veículo (carro, caminhão, trailer, barco etc), Domicílio com pelo menos um morador indígena|
|Domicílio|domicilios_V01539|V01539|Domicílios Coletivos Com Morador, Tipo de espécie é asilo ou outra instituição de longa permanência para idosos, Domicílio com pelo menos um morador indígena|
|Domicílio|domicilios_V01540|V01540|Domicílios Coletivos Com Morador, Tipo de espécie é hotel ou pensão, Domicílio com pelo menos um morador indígena|
|Domicílio|domicilios_V01541|V01541|Domicílios Coletivos Com Morador, Tipo de espécie é alojamento, Domicílio com pelo menos um morador indígena|
|Domicílio|domicilios_V01542|V01542|Domicílios Coletivos Com Morador, Tipo de espécie é penitenciária, centro de detenção e similar, Domicílio com pelo menos um morador indígena|
|Domicílio|domicilios_V01543|V01543|Domicílios Coletivos Com Morador, Outros tipos de espécie, Domicílio com pelo menos um morador indígena|
|Domicílio|domicilios_V01544|V01544|Domicílios Coletivos Com Morador, Tipo de espécie é abrigo, albergue ou casa de passagem para população em situação de rua, Domicílio com pelo menos um morador indígena|
|Domicílio|domicilios_V01545|V01545|Domicílios Coletivos Com Morador, Tipo de espécie é abrigo, casas de passagem ou república assistencial para outros grupos vulneráveis, Domicílio com pelo menos um morador indígena|
|Domicílio|domicilios_V01546|V01546|Domicílios Coletivos Com Morador, Tipo de espécie é clínica psiquiátrica, comunidade terapêutica e similar, Domicílio com pelo menos Um morador indígena|
|Domicílio|domicilios_V01547|V01547|Domicílios Coletivos Com Morador, Tipo de espécie é orfanato e similar, Domicílio com pelo menos um morador indígena|
|Domicílio|domicilios_V01548|V01548|Domicílios Coletivos Com Morador, Tipo de espécie é unidade de internação de menores, Domicílio com pelo menos um morador indígena|
|Domicílio|domicilios_V01549|V01549|Domicílios Coletivos Com Morador, Tipo de espécie é quartel ou outra organização militar, Domicílio com pelo menos um morador indígena|
|Domicílio|domicilios_V01550|V01550|Domicílios Particulares Permanentes Ocupados, Utiliza rede geral de distribuição, Moradores indígenas no domicílio|
|Domicílio|domicilios_V01551|V01551|Domicílios Particulares Permanentes Ocupados, Utiliza poço profundo ou artesiano, Moradores indígenas no domicílio|
|Domicílio|domicilios_V01552|V01552|Domicílios Particulares Permanentes Ocupados, Utiliza poço raso, freático ou cacimba, Moradores indígenas no domicílio|
|Domicílio|domicilios_V01553|V01553|Domicílios Particulares Permanentes Ocupados, Utiliza fonte, nascente ou mina, Moradores indígenas no domicílio|
|Domicílio|domicilios_V01554|V01554|Domicílios Particulares Permanentes Ocupados, Utiliza carro-pipa, Moradores indígenas no domicílio|
|Domicílio|domicilios_V01555|V01555|Domicílios Particulares Permanentes Ocupados, Utiliza água da chuva armazenada, Moradores indígenas no domicílio|
|Domicílio|domicilios_V01556|V01556|Domicílios Particulares Permanentes Ocupados, Utiliza rios, açudes, córregos, lagos e igarapés, Moradores indígenas no domicílio|
|Domicílio|domicilios_V01557|V01557|Domicílios Particulares Permanentes Ocupados, Utiliza outra forma de abastecimento de água, Moradores indígenas no domicílio|
|Domicílio|domicilios_V01558|V01558|Domicílios Particulares Permanentes Ocupados, Utiliza rede geral de distribuição, Domicílio com pelo menos um morador indígena|
|Domicílio|domicilios_V01559|V01559|Domicílios Particulares Permanentes Ocupados, Utiliza poço profundo ou artesiano, Domicílio com pelo menos um morador indígena|
|Domicílio|domicilios_V01560|V01560|Domicílios Particulares Permanentes Ocupados, Utiliza poço raso, freático ou cacimba, Domicílio com pelo menos um morador indígena|
|Domicílio|domicilios_V01561|V01561|Domicílios Particulares Permanentes Ocupados, Utiliza fonte, nascente ou mina, Domicílio com pelo menos um morador indígena|
|Domicílio|domicilios_V01562|V01562|Domicílios Particulares Permanentes Ocupados, Utiliza carro-pipa, Domicílio com pelo menos um morador indígena|
|Domicílio|domicilios_V01563|V01563|Domicílios Particulares Permanentes Ocupados, Utiliza água da chuva armazenada, Domicílio com pelo menos um morador indígena|
|Domicílio|domicilios_V01564|V01564|Domicílios Particulares Permanentes Ocupados, Utiliza rios, açudes, córregos, lagos e igarapés, Domicílio com pelo menos um morador indígena|
|Domicílio|domicilios_V01565|V01565|Domicílios Particulares Permanentes Ocupados, Utiliza outra forma de abastecimento de água, Domicílio com pelo menos um morador indígena|
|Domicílio|domicilios_V01566|V01566|Domicílios Particulares Permanentes Ocupados, Água chega encanada até dentro da casa, apartamento ou habitação, Moradores indígenas no domicílio|
|Domicílio|domicilios_V01567|V01567|Domicílios Particulares Permanentes Ocupados, Água chega encanada, mas apenas ao terreno, Moradores indígenas no domicílio|
|Domicílio|domicilios_V01568|V01568|Domicílios Particulares Permanentes Ocupados, Água não chega encanada ao domicílio, Moradores indígenas no domicílio|
|Domicílio|domicilios_V01569|V01569|Domicílios Particulares Permanentes Ocupados, Água chega encanada até dentro da casa, apartamento ou habitação, Domicílio com pelo menos um morador indígena|
|Domicílio|domicilios_V01570|V01570|Domicílios Particulares Permanentes Ocupados, Água chega encanada, mas apenas ao terreno, Domicílio com pelo menos um morador indígena|
|Domicílio|domicilios_V01571|V01571|Domicílios Particulares Permanentes Ocupados, Água não chega encanada ao domicílio, Domicílio com pelo menos um morador indígena|
|Domicílio|domicilios_V01572|V01572|Domicílios Particulares Permanentes Ocupados, Utiliza rede geral de distribuição, Água chega encanada até dentro da casa, apartamento ou habitação, Moradores indígenas no domicílio|
|Domicílio|domicilios_V01573|V01573|Domicílios Particulares Permanentes Ocupados, Utiliza rede geral de distribuição, Água chega encanada, mas apenas ao terreno, Moradores indígenas no domicílio|
|Domicílio|domicilios_V01574|V01574|Domicílios Particulares Permanentes Ocupados, Utiliza rede geral de distribuição, Água não chega encanada ao domicílio, Moradores indígenas no domicílio|
|Domicílio|domicilios_V01575|V01575|Domicílios Particulares Permanentes Ocupados, Utiliza poço profundo ou artesiano, Água chega encanada até dentro da casa, apartamento ou habitação, Moradores indígenas no domicílio|
|Domicílio|domicilios_V01576|V01576|Domicílios Particulares Permanentes Ocupados, Utiliza poço profundo ou artesiano, Água chega encanada, mas apenas ao terreno, Moradores indígenas no domicílio|
|Domicílio|domicilios_V01577|V01577|Domicílios Particulares Permanentes Ocupados, Utiliza poço profundo ou artesiano, Água não chega encanada ao domicílio, Moradores indígenas no domicílio|
|Domicílio|domicilios_V01578|V01578|Domicílios Particulares Permanentes Ocupados, Utiliza poço raso, freático ou cacimba, Água chega encanada até dentro da casa, apartamento ou habitação, Moradores indígenas no domicílio|
|Domicílio|domicilios_V01579|V01579|Domicílios Particulares Permanentes Ocupados, Utiliza poço raso, freático ou cacimba, Água chega encanada, mas apenas ao terreno, Moradores indígenas no domicílio|
|Domicílio|domicilios_V01580|V01580|Domicílios Particulares Permanentes Ocupados, Utiliza poço raso, freático ou cacimba, Água não chega encanada ao domicílio, Moradores indígenas no domicílio|
|Domicílio|domicilios_V01581|V01581|Domicílios Particulares Permanentes Ocupados, Utiliza fonte, nascente ou mina, Água chega encanada até dentro da casa, apartamento ou habitação, Moradores indígenas no domicílio|
|Domicílio|domicilios_V01582|V01582|Domicílios Particulares Permanentes Ocupados, Utiliza fonte, nascente ou mina, Água chega encanada, mas apenas ao terreno, Moradores indígenas no domicílio|
|Domicílio|domicilios_V01583|V01583|Domicílios Particulares Permanentes Ocupados, Utiliza fonte, nascente ou mina, Água não chega encanada ao domicílio, Moradores indígenas no domicílio|
|Domicílio|domicilios_V01584|V01584|Domicílios Particulares Permanentes Ocupados, Utiliza carro-pipa, Água chega encanada até dentro da casa, apartamento ou habitação, Moradores indígenas no domicílio|
|Domicílio|domicilios_V01585|V01585|Domicílios Particulares Permanentes Ocupados, Utiliza carro-pipa, Água chega encanada, mas apenas ao terreno, Moradores indígenas no domicílio|
|Domicílio|domicilios_V01586|V01586|Domicílios Particulares Permanentes Ocupados, Utiliza carro-pipa, Água não chega encanada ao domicílio, Moradores indígenas no domicílio|
|Domicílio|domicilios_V01587|V01587|Domicílios Particulares Permanentes Ocupados, Utiliza água da chuva armazenada, Água chega encanada até dentro da casa, apartamento ou habitação, Moradores indígenas no domicílio|
|Domicílio|domicilios_V01588|V01588|Domicílios Particulares Permanentes Ocupados, Utiliza água da chuva armazenada, Água chega encanada, mas apenas ao terreno, Moradores indígenas no domicílio|
|Domicílio|domicilios_V01589|V01589|Domicílios Particulares Permanentes Ocupados, Utiliza água da chuva armazenada, Água não chega encanada ao domicílio, Moradores indígenas no domicílio|
|Domicílio|domicilios_V01590|V01590|Domicílios Particulares Permanentes Ocupados, Utiliza rios, açudes, córregos, lagos e igarapés, Água chega encanada até dentro da casa, apartamento ou habitação, Moradores indígenas no domicílio|
|Domicílio|domicilios_V01591|V01591|Domicílios Particulares Permanentes Ocupados, Utiliza rios, açudes, córregos, lagos e igarapés, Água chega encanada, mas apenas ao terreno, Moradores indígenas no domicílio|
|Domicílio|domicilios_V01592|V01592|Domicílios Particulares Permanentes Ocupados, Utiliza rios, açudes, córregos, lagos e igarapés, Água não chega encanada ao domicílio, Moradores indígenas no domicílio|
|Domicílio|domicilios_V01593|V01593|Domicílios Particulares Permanentes Ocupados, Utiliza outra forma de abastecimento de água, Água chega encanada até dentro da casa, apartamento ou habitação, Moradores indígenas no domicílio|
|Domicílio|domicilios_V01594|V01594|Domicílios Particulares Permanentes Ocupados, Utiliza outra forma de abastecimento de água, Água chega encanada, mas apenas ao terreno, Moradores indígenas no domicílio|
|Domicílio|domicilios_V01595|V01595|Domicílios Particulares Permanentes Ocupados, Utiliza outra forma de abastecimento de água, Água não chega encanada ao domicílio, Moradores indígenas no domicílio|
|Domicílio|domicilios_V01596|V01596|Domicílios Particulares Permanentes Ocupados, Utiliza rede geral de distribuição, Água chega encanada até dentro da casa, apartamento ou habitação, Domicílio com pelo menos um morador indígena|
|Domicílio|domicilios_V01597|V01597|Domicílios Particulares Permanentes Ocupados, Utiliza rede geral de distribuição, Água chega encanada, mas apenas ao terreno, Domicílio com pelo menos um morador indígena|
|Domicílio|domicilios_V01598|V01598|Domicílios Particulares Permanentes Ocupados, Utiliza rede geral de distribuição, Água não chega encanada ao domicílio, Domicílio com pelo menos um morador indígena|
|Domicílio|domicilios_V01599|V01599|Domicílios Particulares Permanentes Ocupados, Utiliza poço profundo ou artesiano, Água chega encanada até dentro da casa, apartamento ou habitação, Domicílio com pelo menos um morador indígena|
|Domicílio|domicilios_V01600|V01600|Domicílios Particulares Permanentes Ocupados, Utiliza poço profundo ou artesiano, Água chega encanada, mas apenas ao terreno, Domicílio com pelo menos um morador indígena|
|Domicílio|domicilios_V01601|V01601|Domicílios Particulares Permanentes Ocupados, Utiliza poço profundo ou artesiano, Água não chega encanada ao domicílio, Domicílio com pelo menos um morador indígena|
|Domicílio|domicilios_V01602|V01602|Domicílios Particulares Permanentes Ocupados, Utiliza poço raso, freático ou cacimba, Água chega encanada até dentro da casa, apartamento ou habitação, Domicílio com pelo menos um morador indígena|
|Domicílio|domicilios_V01603|V01603|Domicílios Particulares Permanentes Ocupados, Utiliza poço raso, freático ou cacimba, Água chega encanada, mas apenas ao terreno, Domicílio com pelo menos um morador indígena|
|Domicílio|domicilios_V01604|V01604|Domicílios Particulares Permanentes Ocupados, Utiliza poço raso, freático ou cacimba, Água não chega encanada ao domicílio, Domicílio com pelo menos um morador indígena|
|Domicílio|domicilios_V01605|V01605|Domicílios Particulares Permanentes Ocupados, Utiliza fonte, nascente ou mina, Água chega encanada até dentro da casa, apartamento ou habitação, Domicílio com pelo menos um morador indígena|
|Domicílio|domicilios_V01606|V01606|Domicílios Particulares Permanentes Ocupados, Utiliza fonte, nascente ou mina, Água chega encanada, mas apenas ao terreno, Domicílio com pelo menos um morador indígena|
|Domicílio|domicilios_V01607|V01607|Domicílios Particulares Permanentes Ocupados, Utiliza fonte, nascente ou mina, Água não chega encanada ao domicílio, Domicílio com pelo menos um morador indígena|
|Domicílio|domicilios_V01608|V01608|Domicílios Particulares Permanentes Ocupados, Utiliza carro-pipa, Água chega encanada até dentro da casa, apartamento ou habitação, Domicílio com pelo menos um morador indígena|
|Domicílio|domicilios_V01609|V01609|Domicílios Particulares Permanentes Ocupados, Utiliza carro-pipa, Água chega encanada, mas apenas ao terreno, Domicílio com pelo menos um morador indígena|
|Domicílio|domicilios_V01610|V01610|Domicílios Particulares Permanentes Ocupados, Utiliza carro-pipa, Água não chega encanada ao domicílio, Domicílio com pelo menos um morador indígena|
|Domicílio|domicilios_V01611|V01611|Domicílios Particulares Permanentes Ocupados, Utiliza água da chuva armazenada, Água chega encanada até dentro da casa, apartamento ou habitação, Domicílio com pelo menos um morador indígena|
|Domicílio|domicilios_V01612|V01612|Domicílios Particulares Permanentes Ocupados, Utiliza água da chuva armazenada, Água chega encanada, mas apenas ao terreno, Domicílio com pelo menos um morador indígena|
|Domicílio|domicilios_V01613|V01613|Domicílios Particulares Permanentes Ocupados, Utiliza água da chuva armazenada, Água não chega encanada ao domicílio, Domicílio com pelo menos um morador indígena|
|Domicílio|domicilios_V01614|V01614|Domicílios Particulares Permanentes Ocupados, Utiliza rios, açudes, córregos, lagos e igarapés, Água chega encanada até dentro da casa, apartamento ou habitação, Domicílio com pelo menos um morador indígena|
|Domicílio|domicilios_V01615|V01615|Domicílios Particulares Permanentes Ocupados, Utiliza rios, açudes, córregos, lagos e igarapés, Água chega encanada, mas apenas ao terreno, Domicílio com pelo menos um morador indígena|
|Domicílio|domicilios_V01616|V01616|Domicílios Particulares Permanentes Ocupados, Utiliza rios, açudes, córregos, lagos e igarapés, Água não chega encanada ao domicílio, Domicílio com pelo menos um morador indígena|
|Domicílio|domicilios_V01617|V01617|Domicílios Particulares Permanentes Ocupados, Utiliza outra forma de abastecimento de água, Água chega encanada até dentro da casa, apartamento ou habitação, Domicílio com pelo menos um morador indígena|
|Domicílio|domicilios_V01618|V01618|Domicílios Particulares Permanentes Ocupados, Utiliza outra forma de abastecimento de água, Água chega encanada, mas apenas ao terreno, Domicílio com pelo menos um morador indígena|
|Domicílio|domicilios_V01619|V01619|Domicílios Particulares Permanentes Ocupados, Utiliza outra forma de abastecimento de água, Água não chega encanada ao domicílio, Domicílio com pelo menos um morador indígena|
|Domicílio|domicilios_V01620|V01620|Domicílios Particulares Permanentes Ocupados, Domicílio possui ligação à rede geral de distribuição de água, mas utiliza principalmente outra forma, Moradores indígenas no domicílio|
|Domicílio|domicilios_V01621|V01621|Domicílios Particulares Permanentes Ocupados, Domicílio não possui ligação à rede geral de distribuição de água, Moradores indígenas no domicílio|
|Domicílio|domicilios_V01622|V01622|Domicílios Particulares Permanentes Ocupados, Domicílio possui ligação à rede geral de distribuição de água, mas utiliza principalmente outra forma, Domicílio com pelo menos um morador indígena|
|Domicílio|domicilios_V01623|V01623|Domicílios Particulares Permanentes Ocupados, Domicílio não possui ligação à rede geral de distribuição de água, Domicílio com pelo menos um morador indígena|
|Domicílio|domicilios_V01624|V01624|Domicílios Particulares Permanentes Ocupados, Domicílio possui ligação à rede geral de distribuição de água, mas utiliza principalmente outra forma, Água chega encanada até dentro da casa, apartamento ou habitação, Moradores indígenas no domicílio|
|Domicílio|domicilios_V01625|V01625|Domicílios Particulares Permanentes Ocupados, Domicílio possui ligação à rede geral de distribuição de água, mas utiliza principalmente outra forma, Água chega encanada, mas apenas ao terreno, Moradores indígenas no domicílio|
|Domicílio|domicilios_V01626|V01626|Domicílios Particulares Permanentes Ocupados, Domicílio possui ligação à rede geral de distribuição de água, mas utiliza principalmente outra forma, Água não chega encanada ao domicílio, Moradores indígenas no domicílio|
|Domicílio|domicilios_V01627|V01627|Domicílios Particulares Permanentes Ocupados, Domicílio não possui ligação à rede geral de distribuição de água, Água chega encanada até dentro da casa, apartamento ou habitação, Moradores indígenas no domicílio|
|Domicílio|domicilios_V01628|V01628|Domicílios Particulares Permanentes Ocupados, Domicílio não possui ligação à rede geral de distribuição de água, Água chega encanada, mas apenas ao terreno, Moradores indígenas no domicílio|
|Domicílio|domicilios_V01629|V01629|Domicílios Particulares Permanentes Ocupados, Domicílio não possui ligação à rede geral de distribuição de água, Água não chega encanada ao domicílio, Moradores indígenas no domicílio|
|Domicílio|domicilios_V01630|V01630|Domicílios Particulares Permanentes Ocupados, Domicílio possui ligação à rede geral de distribuição de água, mas utiliza principalmente outra forma, Água chega encanada até dentro da casa, apartamento ou habitação, Domicílio com pelo menos um morador indígena|
|Domicílio|domicilios_V01631|V01631|Domicílios Particulares Permanentes Ocupados, Domicílio possui ligação à rede geral de distribuição de água, mas utiliza principalmente outra forma, Água chega encanada, mas apenas ao terreno, Domicílio com pelo menos um morador indígena|
|Domicílio|domicilios_V01632|V01632|Domicílios Particulares Permanentes Ocupados, Domicílio possui ligação à rede geral de distribuição de água, mas utiliza principalmente outra forma, Água não chega encanada ao domicílio, Domicílio com pelo menos um morador indígena|
|Domicílio|domicilios_V01633|V01633|Domicílios Particulares Permanentes Ocupados, Domicílio não possui ligação à rede geral de distribuição de água, Água chega encanada até dentro da casa, apartamento ou habitação, Domicílio com pelo menos um morador indígena|
|Domicílio|domicilios_V01634|V01634|Domicílios Particulares Permanentes Ocupados, Domicílio não possui ligação à rede geral de distribuição de água, Água chega encanada, mas apenas ao terreno, Domicílio com pelo menos um morador indígena|
|Domicílio|domicilios_V01635|V01635|Domicílios Particulares Permanentes Ocupados, Domicílio não possui ligação à rede geral de distribuição de água, Água não chega encanada ao domicílio, Domicílio com pelo menos um morador indígena|
|Domicílio|domicilios_V01636|V01636|Domicílios Particulares Permanentes Ocupados, Com banheiro de uso exclusivo com chuveiro e vaso sanitário, Moradores indígenas no domicílio|
|Domicílio|domicilios_V01637|V01637|Domicílios Particulares Permanentes Ocupados, Sem banheiro de uso exclusivo com chuveiro e vaso sanitário, Moradores indígenas no domicílio|
|Domicílio|domicilios_V01638|V01638|Domicílios Particulares Permanentes Ocupados, Com banheiro de uso exclusivo com chuveiro e vaso sanitário, Domicílio com pelo menos um morador indígena|
|Domicílio|domicilios_V01639|V01639|Domicílios Particulares Permanentes Ocupados, Sem banheiro de uso exclusivo com chuveiro e vaso sanitário, Domicílio com pelo menos um morador indígena|
|Domicílio|domicilios_V01640|V01640|Domicílios Particulares Permanentes Ocupados, Utiliza banheiro de uso comum a mais de um domicílio, com chuveiro e vaso sanitário, inclusive os localizados no terreno, Moradores indígenas no domicílio|
|Domicílio|domicilios_V01641|V01641|Domicílios Particulares Permanentes Ocupados, Não utiliza banheiro de uso comum a mais de um domicílio, com chuveiro e vaso sanitário, inclusive os localizados no terreno, Moradores indígenas no domicílio|
|Domicílio|domicilios_V01642|V01642|Domicílios Particulares Permanentes Ocupados, Utiliza banheiro de uso comum a mais de um domicílio, com chuveiro e vaso sanitário, inclusive os localizados no terreno, Domicílio com pelo menos um morador indígena|
|Domicílio|domicilios_V01643|V01643|Domicílios Particulares Permanentes Ocupados, Não utiliza banheiro de uso comum a mais de um domicílio, com chuveiro e vaso sanitário, inclusive os localizados no terreno, Domicílio com pelo menos um morador indígena|
|Domicílio|domicilios_V01644|V01644|Domicílios Particulares Permanentes Ocupados, 1 banheiro de uso exclusivo com chuveiro e vaso sanitário existentes no domicílio, Moradores indígenas no domicílio|
|Domicílio|domicilios_V01645|V01645|Domicílios Particulares Permanentes Ocupados, 2 banheiros de uso exclusivo com chuveiro e vaso sanitário existentes no domicílio, Moradores indígenas no domicílio|
|Domicílio|domicilios_V01646|V01646|Domicílios Particulares Permanentes Ocupados, 3 banheiros de uso exclusivo com chuveiro e vaso sanitário existentes no domicílio, Moradores indígenas no domicílio|
|Domicílio|domicilios_V01647|V01647|Domicílios Particulares Permanentes Ocupados, 4 ou mais banheiros de uso exclusivo com chuveiro e vaso sanitário existentes no domicílio, Moradores indígenas no domicílio|
|Domicílio|domicilios_V01648|V01648|Domicílios Particulares Permanentes Ocupados, 1 banheiro de uso exclusivo com chuveiro e vaso sanitário existentes no domicílio, Domicílio com pelo menos um morador indígena|
|Domicílio|domicilios_V01649|V01649|Domicílios Particulares Permanentes Ocupados, 2 banheiros de uso exclusivo com chuveiro e vaso sanitário existentes no domicílio, Domicílio com pelo menos um morador indígena|
|Domicílio|domicilios_V01650|V01650|Domicílios Particulares Permanentes Ocupados, 3 banheiros de uso exclusivo com chuveiro e vaso sanitário existentes no domicílio, Domicílio com pelo menos um morador indígena|
|Domicílio|domicilios_V01651|V01651|Domicílios Particulares Permanentes Ocupados, 4 ou mais banheiros de uso exclusivo com chuveiro e vaso sanitário existentes no domicílio, Domicílio com pelo menos um morador indígena|
|Domicílio|domicilios_V01652|V01652|Domicílios Particulares Permanentes Ocupados, Utiliza sanitário ou buraco para dejeções, inclusive os localizados no terreno, Moradores indígenas no domicílio|
|Domicílio|domicilios_V01653|V01653|Domicílios Particulares Permanentes Ocupados, Não utiliza sanitário ou buraco para dejeções, inclusive os localizados no terreno, Moradores indígenas no domicílio|
|Domicílio|domicilios_V01654|V01654|Domicílios Particulares Permanentes Ocupados, Utiliza sanitário ou buraco para dejeções, inclusive os localizados no terreno, Domicílio com pelo menos um morador indígena|
|Domicílio|domicilios_V01655|V01655|Domicílios Particulares Permanentes Ocupados, Não utiliza sanitário ou buraco para dejeções, inclusive os localizados no terreno, Domicílio com pelo menos um morador indígena|
|Domicílio|domicilios_V01656|V01656|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é rede geral ou pluvial, Moradores indígenas no domicílio|
|Domicílio|domicilios_V01657|V01657|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é fossa séptica ou fossa filtro ligada à rede, Moradores indígenas no domicílio|
|Domicílio|domicilios_V01658|V01658|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é fossa séptica ou fossa filtro não ligada à rede, Moradores indígenas no domicílio|
|Domicílio|domicilios_V01659|V01659|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é fossa rudimentar ou buraco, Moradores indígenas no domicílio|
|Domicílio|domicilios_V01660|V01660|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é vala, Moradores indígenas no domicílio|
|Domicílio|domicilios_V01661|V01661|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é rio, lago, córrego ou mar, Moradores indígenas no domicílio|
|Domicílio|domicilios_V01662|V01662|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é outra forma, Moradores indígenas no domicílio|
|Domicílio|domicilios_V01663|V01663|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto inexistente, pois não tinham banheiro nem sanitário, Moradores indígenas no domicílio|
|Domicílio|domicilios_V01664|V01664|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é rede geral ou pluvial, Domicílio com pelo menos um morador indígena|
|Domicílio|domicilios_V01665|V01665|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é fossa séptica ou fossa filtro ligada à rede, Domicílio com pelo menos um morador indígena|
|Domicílio|domicilios_V01666|V01666|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é fossa séptica ou fossa filtro não ligada à rede, Domicílio com pelo menos um morador indígena|
|Domicílio|domicilios_V01667|V01667|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é fossa rudimentar ou buraco, Domicílio com pelo menos um morador indígena|
|Domicílio|domicilios_V01668|V01668|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é vala, Domicílio com pelo menos um morador indígena|
|Domicílio|domicilios_V01669|V01669|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é rio, lago, córrego ou mar, Domicílio com pelo menos um morador indígena|
|Domicílio|domicilios_V01670|V01670|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é outra forma, Domicílio com pelo menos um morador indígena|
|Domicílio|domicilios_V01671|V01671|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto inexistente, pois não tinham banheiro nem sanitário, Domicílio com pelo menos um morador indígena|
|Domicílio|domicilios_V01672|V01672|Domicílios Particulares Permanentes Ocupados, Lixo coletado no domicílio por serviço de limpeza, Moradores indígenas no domicílio|
|Domicílio|domicilios_V01673|V01673|Domicílios Particulares Permanentes Ocupados, Lixo depositado em caçamba de serviço de limpeza, Moradores indígenas no domicílio|
|Domicílio|domicilios_V01674|V01674|Domicílios Particulares Permanentes Ocupados, Lixo queimado na propriedade, Moradores indígenas no domicílio|
|Domicílio|domicilios_V01675|V01675|Domicílios Particulares Permanentes Ocupados, Lixo enterrado na propriedade, Moradores indígenas no domicílio|
|Domicílio|domicilios_V01676|V01676|Domicílios Particulares Permanentes Ocupados, Lixo jogado em terreno baldio, encosta ou área pública, Moradores indígenas no domicílio|
|Domicílio|domicilios_V01677|V01677|Domicílios Particulares Permanentes Ocupados, Outro destino do lixo, Moradores indígenas no domicílio|
|Domicílio|domicilios_V01678|V01678|Domicílios Particulares Permanentes Ocupados, Lixo coletado no domicílio por serviço de limpeza, Domicílio com pelo menos um morador indígena|
|Domicílio|domicilios_V01679|V01679|Domicílios Particulares Permanentes Ocupados, Lixo depositado em caçamba de serviço de limpeza, Domicílio com pelo menos um morador indígena|
|Domicílio|domicilios_V01680|V01680|Domicílios Particulares Permanentes Ocupados, Lixo queimado na propriedade, Domicílio com pelo menos um morador indígena|
|Domicílio|domicilios_V01681|V01681|Domicílios Particulares Permanentes Ocupados, Lixo enterrado na propriedade, Domicílio com pelo menos um morador indígena|
|Domicílio|domicilios_V01682|V01682|Domicílios Particulares Permanentes Ocupados, Lixo jogado em terreno baldio, encosta ou área pública, Domicílio com pelo menos um morador indígena|
|Domicílio|domicilios_V01683|V01683|Domicílios Particulares Permanentes Ocupados, Outro destino do lixo, Domicílio com pelo menos um morador indígena|
|Domicílio|domicilios_V01684|V01684|Domicílios Particulares Permanentes Ocupados, Lixo coletado, Moradores indígenas no domicílio|
|Domicílio|domicilios_V01685|V01685|Domicílios Particulares Permanentes Ocupados, Lixo não coletado, Moradores indígenas no domicílio|
|Domicílio|domicilios_V01686|V01686|Domicílios Particulares Permanentes Ocupados, Lixo coletado, Domicílio com pelo menos um morador indígena|
|Domicílio|domicilios_V01687|V01687|Domicílios Particulares Permanentes Ocupados, Lixo não coletado, Domicílio com pelo menos um morador indígena|
|Domicílio|domicilios_V01688|V01688|Domicílios Particulares Permanentes Ocupados, Domicílio com pelo menos um morador indígena, Existe pessoa falecida, no período de janeiro de 2019 a julho de 2022, que morava no domicílio|
|Domicílio|domicilios_V01689|V01689|Domicílios Particulares Permanentes Ocupados, Domicílio com pelo menos um morador indígena, Não existe pessoa falecida, no período de janeiro de 2019 a julho de 2022, que morava no domicílio|
|Pessoas|pessoas_V01690|V01690|Pessoa indígena|
|Pessoas|pessoas_V01691|V01691|Sexo masculino, Pessoa indígena|
|Pessoas|pessoas_V01692|V01692|Sexo feminino, Pessoa indígena|
|Pessoas|pessoas_V01693|V01693|0 a 29 anos, Pessoa indígena|
|Pessoas|pessoas_V01694|V01694|30 a 59 anos, Pessoa indígena|
|Pessoas|pessoas_V01695|V01695|60 anos ou mais, Pessoa indígena|
|Pessoas|pessoas_V01696|V01696|0 a 14 anos, Pessoa indígena|
|Pessoas|pessoas_V01697|V01697|15 a 29 anos, Pessoa indígena|
|Pessoas|pessoas_V01698|V01698|30 a 59 anos, Pessoa indígena|
|Pessoas|pessoas_V01699|V01699|60 anos ou mais, Pessoa indígena|
|Pessoas|pessoas_V01700|V01700|0 a 14 anos, Pessoa indígena|
|Pessoas|pessoas_V01701|V01701|15 a 29 anos, Pessoa indígena|
|Pessoas|pessoas_V01702|V01702|30 a 49 anos, Pessoa indígena|
|Pessoas|pessoas_V01703|V01703|50 anos ou mais, Pessoa indígena|
|Pessoas|pessoas_V01704|V01704|Sexo masculino, 0 a 29 anos, Pessoa indígena|
|Pessoas|pessoas_V01705|V01705|Sexo masculino, 30 a 59 anos, Pessoa indígena|
|Pessoas|pessoas_V01706|V01706|Sexo masculino, 60 anos ou mais, Pessoa indígena|
|Pessoas|pessoas_V01707|V01707|Sexo feminino, 0 a 29 anos, Pessoa indígena|
|Pessoas|pessoas_V01708|V01708|Sexo feminino, 30 a 59 anos, Pessoa indígena|
|Pessoas|pessoas_V01709|V01709|Sexo feminino, 60 anos ou mais, Pessoa indígena|
|Pessoas|pessoas_V01710|V01710|Sexo masculino, 0 a 14 anos, Pessoa indígena|
|Pessoas|pessoas_V01711|V01711|Sexo masculino, 15 a 29 anos, Pessoa indígena|
|Pessoas|pessoas_V01712|V01712|Sexo masculino, 30 a 59 anos, Pessoa indígena|
|Pessoas|pessoas_V01713|V01713|Sexo masculino, 60 anos ou mais, Pessoa indígena|
|Pessoas|pessoas_V01714|V01714|Sexo feminino, 0 a 14 anos, Pessoa indígena|
|Pessoas|pessoas_V01715|V01715|Sexo feminino, 15 a 29 anos, Pessoa indígena|
|Pessoas|pessoas_V01716|V01716|Sexo feminino, 30 a 59 anos, Pessoa indígena|
|Pessoas|pessoas_V01717|V01717|Sexo feminino, 60 anos ou mais, Pessoa indígena|
|Pessoas|pessoas_V01718|V01718|Sexo masculino, 0 a 14 anos, Pessoa indígena|
|Pessoas|pessoas_V01719|V01719|Sexo masculino, 15 a 29 anos, Pessoa indígena|
|Pessoas|pessoas_V01720|V01720|Sexo masculino, 30 a 49 anos, Pessoa indígena|
|Pessoas|pessoas_V01721|V01721|Sexo masculino, 50 anos ou mais, Pessoa indígena|
|Pessoas|pessoas_V01722|V01722|Sexo feminino, 0 a 14 anos, Pessoa indígena|
|Pessoas|pessoas_V01723|V01723|Sexo feminino, 15 a 29 anos, Pessoa indígena|
|Pessoas|pessoas_V01724|V01724|Sexo feminino, 30 a 49 anos, Pessoa indígena|
|Pessoas|pessoas_V01725|V01725|Sexo feminino, 50 anos ou mais, Pessoa indígena|
|Pessoas|pessoas_V01726|V01726|15 a 19 anos, Pessoa indígena|
|Pessoas|pessoas_V01727|V01727|20 a 24 anos, Pessoa indígena|
|Pessoas|pessoas_V01728|V01728|25 a 29 anos, Pessoa indígena|
|Pessoas|pessoas_V01729|V01729|30 a 34 anos, Pessoa indígena|
|Pessoas|pessoas_V01730|V01730|35 a 39 anos, Pessoa indígena|
|Pessoas|pessoas_V01731|V01731|40 a 44 anos, Pessoa indígena|
|Pessoas|pessoas_V01732|V01732|45 a 49 anos, Pessoa indígena|
|Pessoas|pessoas_V01733|V01733|50 a 54 anos, Pessoa indígena|
|Pessoas|pessoas_V01734|V01734|55 a 59 anos, Pessoa indígena|
|Pessoas|pessoas_V01735|V01735|60 a 64 anos, Pessoa indígena|
|Pessoas|pessoas_V01736|V01736|65 a 69 anos, Pessoa indígena|
|Pessoas|pessoas_V01737|V01737|70 a 79 anos, Pessoa indígena|
|Pessoas|pessoas_V01738|V01738|80 anos ou mais, Pessoa indígena|
|Pessoas|pessoas_V01739|V01739|Sexo masculino, 15 a 19 anos, Pessoa indígena|
|Pessoas|pessoas_V01740|V01740|Sexo masculino, 20 a 24 anos, Pessoa indígena|
|Pessoas|pessoas_V01741|V01741|Sexo masculino, 25 a 29 anos, Pessoa indígena|
|Pessoas|pessoas_V01742|V01742|Sexo masculino, 30 a 34 anos, Pessoa indígena|
|Pessoas|pessoas_V01743|V01743|Sexo masculino, 35 a 39 anos, Pessoa indígena|
|Pessoas|pessoas_V01744|V01744|Sexo masculino, 40 a 44 anos, Pessoa indígena|
|Pessoas|pessoas_V01745|V01745|Sexo masculino, 45 a 49 anos, Pessoa indígena|
|Pessoas|pessoas_V01746|V01746|Sexo masculino, 50 a 54 anos, Pessoa indígena|
|Pessoas|pessoas_V01747|V01747|Sexo masculino, 55 a 59 anos, Pessoa indígena|
|Pessoas|pessoas_V01748|V01748|Sexo masculino, 60 a 64 anos, Pessoa indígena|
|Pessoas|pessoas_V01749|V01749|Sexo masculino, 65 a 69 anos, Pessoa indígena|
|Pessoas|pessoas_V01750|V01750|Sexo masculino, 70 a 79 anos, Pessoa indígena|
|Pessoas|pessoas_V01751|V01751|Sexo masculino, 80 anos ou mais, Pessoa indígena|
|Pessoas|pessoas_V01752|V01752|Sexo feminino, 15 a 19 anos, Pessoa indígena|
|Pessoas|pessoas_V01753|V01753|Sexo feminino, 20 a 24 anos, Pessoa indígena|
|Pessoas|pessoas_V01754|V01754|Sexo feminino, 25 a 29 anos, Pessoa indígena|
|Pessoas|pessoas_V01755|V01755|Sexo feminino, 30 a 34 anos, Pessoa indígena|
|Pessoas|pessoas_V01756|V01756|Sexo feminino, 35 a 39 anos, Pessoa indígena|
|Pessoas|pessoas_V01757|V01757|Sexo feminino, 40 a 44 anos, Pessoa indígena|
|Pessoas|pessoas_V01758|V01758|Sexo feminino, 45 a 49 anos, Pessoa indígena|
|Pessoas|pessoas_V01759|V01759|Sexo feminino, 50 a 54 anos, Pessoa indígena|
|Pessoas|pessoas_V01760|V01760|Sexo feminino, 55 a 59 anos, Pessoa indígena|
|Pessoas|pessoas_V01761|V01761|Sexo feminino, 60 a 64 anos, Pessoa indígena|
|Pessoas|pessoas_V01762|V01762|Sexo feminino, 65 a 69 anos, Pessoa indígena|
|Pessoas|pessoas_V01763|V01763|Sexo feminino, 70 a 79 anos, Pessoa indígena|
|Pessoas|pessoas_V01764|V01764|Sexo feminino, 80 anos ou mais, Pessoa indígena|
|Pessoas|pessoas_V01765|V01765|0 anos, Pessoa indígena|
|Pessoas|pessoas_V01766|V01766|1 ano, Pessoa indígena|
|Pessoas|pessoas_V01767|V01767|2 anos, Pessoa indígena|
|Pessoas|pessoas_V01768|V01768|3 anos, Pessoa indígena|
|Pessoas|pessoas_V01769|V01769|4 anos, Pessoa indígena|
|Pessoas|pessoas_V01770|V01770|5 anos, Pessoa indígena|
|Pessoas|pessoas_V01771|V01771|6 anos, Pessoa indígena|
|Pessoas|pessoas_V01772|V01772|7 anos, Pessoa indígena|
|Pessoas|pessoas_V01773|V01773|8 anos, Pessoa indígena|
|Pessoas|pessoas_V01774|V01774|9 anos, Pessoa indígena|
|Pessoas|pessoas_V01775|V01775|10 anos, Pessoa indígena|
|Pessoas|pessoas_V01776|V01776|11 anos, Pessoa indígena|
|Pessoas|pessoas_V01777|V01777|12 anos, Pessoa indígena|
|Pessoas|pessoas_V01778|V01778|13 anos, Pessoa indígena|
|Pessoas|pessoas_V01779|V01779|14 anos, Pessoa indígena|
|Pessoas|pessoas_V01780|V01780|15 anos, Pessoa indígena|
|Pessoas|pessoas_V01781|V01781|16 anos, Pessoa indígena|
|Pessoas|pessoas_V01782|V01782|17 anos, Pessoa indígena|
|Pessoas|pessoas_V01783|V01783|18 anos, Pessoa indígena|
|Pessoas|pessoas_V01784|V01784|19 anos, Pessoa indígena|
|Pessoas|pessoas_V01785|V01785|20 anos, Pessoa indígena|
|Pessoas|pessoas_V01786|V01786|21 anos, Pessoa indígena|
|Pessoas|pessoas_V01787|V01787|22 anos, Pessoa indígena|
|Pessoas|pessoas_V01788|V01788|23 anos, Pessoa indígena|
|Pessoas|pessoas_V01789|V01789|24 anos, Pessoa indígena|
|Pessoas|pessoas_V01790|V01790|25 anos, Pessoa indígena|
|Pessoas|pessoas_V01791|V01791|26 anos, Pessoa indígena|
|Pessoas|pessoas_V01792|V01792|27 anos, Pessoa indígena|
|Pessoas|pessoas_V01793|V01793|28 anos, Pessoa indígena|
|Pessoas|pessoas_V01794|V01794|29 anos, Pessoa indígena|
|Pessoas|pessoas_V01795|V01795|30 anos, Pessoa indígena|
|Pessoas|pessoas_V01796|V01796|31 anos, Pessoa indígena|
|Pessoas|pessoas_V01797|V01797|32 anos, Pessoa indígena|
|Pessoas|pessoas_V01798|V01798|33 anos, Pessoa indígena|
|Pessoas|pessoas_V01799|V01799|34 anos, Pessoa indígena|
|Pessoas|pessoas_V01800|V01800|35 anos, Pessoa indígena|
|Pessoas|pessoas_V01801|V01801|36 anos, Pessoa indígena|
|Pessoas|pessoas_V01802|V01802|37 anos, Pessoa indígena|
|Pessoas|pessoas_V01803|V01803|38 anos, Pessoa indígena|
|Pessoas|pessoas_V01804|V01804|39 anos, Pessoa indígena|
|Pessoas|pessoas_V01805|V01805|40 anos, Pessoa indígena|
|Pessoas|pessoas_V01806|V01806|41 anos, Pessoa indígena|
|Pessoas|pessoas_V01807|V01807|42 anos, Pessoa indígena|
|Pessoas|pessoas_V01808|V01808|43 anos, Pessoa indígena|
|Pessoas|pessoas_V01809|V01809|44 anos, Pessoa indígena|
|Pessoas|pessoas_V01810|V01810|45 anos, Pessoa indígena|
|Pessoas|pessoas_V01811|V01811|46 anos, Pessoa indígena|
|Pessoas|pessoas_V01812|V01812|47 anos, Pessoa indígena|
|Pessoas|pessoas_V01813|V01813|48 anos, Pessoa indígena|
|Pessoas|pessoas_V01814|V01814|49 anos, Pessoa indígena|
|Pessoas|pessoas_V01815|V01815|50 anos, Pessoa indígena|
|Pessoas|pessoas_V01816|V01816|51 anos, Pessoa indígena|
|Pessoas|pessoas_V01817|V01817|52 anos, Pessoa indígena|
|Pessoas|pessoas_V01818|V01818|53 anos, Pessoa indígena|
|Pessoas|pessoas_V01819|V01819|54 anos, Pessoa indígena|
|Pessoas|pessoas_V01820|V01820|55 anos, Pessoa indígena|
|Pessoas|pessoas_V01821|V01821|56 anos, Pessoa indígena|
|Pessoas|pessoas_V01822|V01822|57 anos, Pessoa indígena|
|Pessoas|pessoas_V01823|V01823|58 anos, Pessoa indígena|
|Pessoas|pessoas_V01824|V01824|59 anos, Pessoa indígena|
|Pessoas|pessoas_V01825|V01825|60 anos, Pessoa indígena|
|Pessoas|pessoas_V01826|V01826|61 anos, Pessoa indígena|
|Pessoas|pessoas_V01827|V01827|62 anos, Pessoa indígena|
|Pessoas|pessoas_V01828|V01828|63 anos, Pessoa indígena|
|Pessoas|pessoas_V01829|V01829|64 anos, Pessoa indígena|
|Pessoas|pessoas_V01830|V01830|65 anos, Pessoa indígena|
|Pessoas|pessoas_V01831|V01831|66 anos, Pessoa indígena|
|Pessoas|pessoas_V01832|V01832|67 anos, Pessoa indígena|
|Pessoas|pessoas_V01833|V01833|68 anos, Pessoa indígena|
|Pessoas|pessoas_V01834|V01834|69 anos, Pessoa indígena|
|Pessoas|pessoas_V01835|V01835|70 anos, Pessoa indígena|
|Pessoas|pessoas_V01836|V01836|71 anos, Pessoa indígena|
|Pessoas|pessoas_V01837|V01837|72 anos, Pessoa indígena|
|Pessoas|pessoas_V01838|V01838|73 anos, Pessoa indígena|
|Pessoas|pessoas_V01839|V01839|74 anos, Pessoa indígena|
|Pessoas|pessoas_V01840|V01840|75 anos, Pessoa indígena|
|Pessoas|pessoas_V01841|V01841|76 anos, Pessoa indígena|
|Pessoas|pessoas_V01842|V01842|77 anos, Pessoa indígena|
|Pessoas|pessoas_V01843|V01843|78 anos, Pessoa indígena|
|Pessoas|pessoas_V01844|V01844|79 anos, Pessoa indígena|
|Pessoas|pessoas_V01845|V01845|80 anos, Pessoa indígena|
|Pessoas|pessoas_V01846|V01846|81 anos, Pessoa indígena|
|Pessoas|pessoas_V01847|V01847|82 anos, Pessoa indígena|
|Pessoas|pessoas_V01848|V01848|83 anos, Pessoa indígena|
|Pessoas|pessoas_V01849|V01849|84 anos, Pessoa indígena|
|Pessoas|pessoas_V01850|V01850|85 anos, Pessoa indígena|
|Pessoas|pessoas_V01851|V01851|86 anos, Pessoa indígena|
|Pessoas|pessoas_V01852|V01852|87 anos, Pessoa indígena|
|Pessoas|pessoas_V01853|V01853|88 anos, Pessoa indígena|
|Pessoas|pessoas_V01854|V01854|89 anos, Pessoa indígena|
|Pessoas|pessoas_V01855|V01855|90 anos, Pessoa indígena|
|Pessoas|pessoas_V01856|V01856|91 anos, Pessoa indígena|
|Pessoas|pessoas_V01857|V01857|92 anos, Pessoa indígena|
|Pessoas|pessoas_V01858|V01858|93 anos, Pessoa indígena|
|Pessoas|pessoas_V01859|V01859|94 anos, Pessoa indígena|
|Pessoas|pessoas_V01860|V01860|95 anos, Pessoa indígena|
|Pessoas|pessoas_V01861|V01861|96 anos, Pessoa indígena|
|Pessoas|pessoas_V01862|V01862|97 anos, Pessoa indígena|
|Pessoas|pessoas_V01863|V01863|98 anos, Pessoa indígena|
|Pessoas|pessoas_V01864|V01864|99 anos, Pessoa indígena|
|Pessoas|pessoas_V01865|V01865|100 anos ou mais, Pessoa indígena|
|Pessoas|pessoas_V01866|V01866|Sexo masculino, 0 anos, Pessoa indígena|
|Pessoas|pessoas_V01867|V01867|Sexo masculino, 1 ano, Pessoa indígena|
|Pessoas|pessoas_V01868|V01868|Sexo masculino, 2 anos, Pessoa indígena|
|Pessoas|pessoas_V01869|V01869|Sexo masculino, 3 anos, Pessoa indígena|
|Pessoas|pessoas_V01870|V01870|Sexo masculino, 4 anos, Pessoa indígena|
|Pessoas|pessoas_V01871|V01871|Sexo masculino, 5 anos, Pessoa indígena|
|Pessoas|pessoas_V01872|V01872|Sexo masculino, 6 anos, Pessoa indígena|
|Pessoas|pessoas_V01873|V01873|Sexo masculino, 7 anos, Pessoa indígena|
|Pessoas|pessoas_V01874|V01874|Sexo masculino, 8 anos, Pessoa indígena|
|Pessoas|pessoas_V01875|V01875|Sexo masculino, 9 anos, Pessoa indígena|
|Pessoas|pessoas_V01876|V01876|Sexo masculino, 10 anos, Pessoa indígena|
|Pessoas|pessoas_V01877|V01877|Sexo masculino, 11 anos, Pessoa indígena|
|Pessoas|pessoas_V01878|V01878|Sexo masculino, 12 anos, Pessoa indígena|
|Pessoas|pessoas_V01879|V01879|Sexo masculino, 13 anos, Pessoa indígena|
|Pessoas|pessoas_V01880|V01880|Sexo masculino, 14 anos, Pessoa indígena|
|Pessoas|pessoas_V01881|V01881|Sexo masculino, 15 anos, Pessoa indígena|
|Pessoas|pessoas_V01882|V01882|Sexo masculino, 16 anos, Pessoa indígena|
|Pessoas|pessoas_V01883|V01883|Sexo masculino, 17 anos, Pessoa indígena|
|Pessoas|pessoas_V01884|V01884|Sexo masculino, 18 anos, Pessoa indígena|
|Pessoas|pessoas_V01885|V01885|Sexo masculino, 19 anos, Pessoa indígena|
|Pessoas|pessoas_V01886|V01886|Sexo masculino, 20 anos, Pessoa indígena|
|Pessoas|pessoas_V01887|V01887|Sexo masculino, 21 anos, Pessoa indígena|
|Pessoas|pessoas_V01888|V01888|Sexo masculino, 22 anos, Pessoa indígena|
|Pessoas|pessoas_V01889|V01889|Sexo masculino, 23 anos, Pessoa indígena|
|Pessoas|pessoas_V01890|V01890|Sexo masculino, 24 anos, Pessoa indígena|
|Pessoas|pessoas_V01891|V01891|Sexo masculino, 25 anos, Pessoa indígena|
|Pessoas|pessoas_V01892|V01892|Sexo masculino, 26 anos, Pessoa indígena|
|Pessoas|pessoas_V01893|V01893|Sexo masculino, 27 anos, Pessoa indígena|
|Pessoas|pessoas_V01894|V01894|Sexo masculino, 28 anos, Pessoa indígena|
|Pessoas|pessoas_V01895|V01895|Sexo masculino, 29 anos, Pessoa indígena|
|Pessoas|pessoas_V01896|V01896|Sexo masculino, 30 anos, Pessoa indígena|
|Pessoas|pessoas_V01897|V01897|Sexo masculino, 31 anos, Pessoa indígena|
|Pessoas|pessoas_V01898|V01898|Sexo masculino, 32 anos, Pessoa indígena|
|Pessoas|pessoas_V01899|V01899|Sexo masculino, 33 anos, Pessoa indígena|
|Pessoas|pessoas_V01900|V01900|Sexo masculino, 34 anos, Pessoa indígena|
|Pessoas|pessoas_V01901|V01901|Sexo masculino, 35 anos, Pessoa indígena|
|Pessoas|pessoas_V01902|V01902|Sexo masculino, 36 anos, Pessoa indígena|
|Pessoas|pessoas_V01903|V01903|Sexo masculino, 37 anos, Pessoa indígena|
|Pessoas|pessoas_V01904|V01904|Sexo masculino, 38 anos, Pessoa indígena|
|Pessoas|pessoas_V01905|V01905|Sexo masculino, 39 anos, Pessoa indígena|
|Pessoas|pessoas_V01906|V01906|Sexo masculino, 40 anos, Pessoa indígena|
|Pessoas|pessoas_V01907|V01907|Sexo masculino, 41 anos, Pessoa indígena|
|Pessoas|pessoas_V01908|V01908|Sexo masculino, 42 anos, Pessoa indígena|
|Pessoas|pessoas_V01909|V01909|Sexo masculino, 43 anos, Pessoa indígena|
|Pessoas|pessoas_V01910|V01910|Sexo masculino, 44 anos, Pessoa indígena|
|Pessoas|pessoas_V01911|V01911|Sexo masculino, 45 anos, Pessoa indígena|
|Pessoas|pessoas_V01912|V01912|Sexo masculino, 46 anos, Pessoa indígena|
|Pessoas|pessoas_V01913|V01913|Sexo masculino, 47 anos, Pessoa indígena|
|Pessoas|pessoas_V01914|V01914|Sexo masculino, 48 anos, Pessoa indígena|
|Pessoas|pessoas_V01915|V01915|Sexo masculino, 49 anos, Pessoa indígena|
|Pessoas|pessoas_V01916|V01916|Sexo masculino, 50 anos, Pessoa indígena|
|Pessoas|pessoas_V01917|V01917|Sexo masculino, 51 anos, Pessoa indígena|
|Pessoas|pessoas_V01918|V01918|Sexo masculino, 52 anos, Pessoa indígena|
|Pessoas|pessoas_V01919|V01919|Sexo masculino, 53 anos, Pessoa indígena|
|Pessoas|pessoas_V01920|V01920|Sexo masculino, 54 anos, Pessoa indígena|
|Pessoas|pessoas_V01921|V01921|Sexo masculino, 55 anos, Pessoa indígena|
|Pessoas|pessoas_V01922|V01922|Sexo masculino, 56 anos, Pessoa indígena|
|Pessoas|pessoas_V01923|V01923|Sexo masculino, 57 anos, Pessoa indígena|
|Pessoas|pessoas_V01924|V01924|Sexo masculino, 58 anos, Pessoa indígena|
|Pessoas|pessoas_V01925|V01925|Sexo masculino, 59 anos, Pessoa indígena|
|Pessoas|pessoas_V01926|V01926|Sexo masculino, 60 anos, Pessoa indígena|
|Pessoas|pessoas_V01927|V01927|Sexo masculino, 61 anos, Pessoa indígena|
|Pessoas|pessoas_V01928|V01928|Sexo masculino, 62 anos, Pessoa indígena|
|Pessoas|pessoas_V01929|V01929|Sexo masculino, 63 anos, Pessoa indígena|
|Pessoas|pessoas_V01930|V01930|Sexo masculino, 64 anos, Pessoa indígena|
|Pessoas|pessoas_V01931|V01931|Sexo masculino, 65 anos, Pessoa indígena|
|Pessoas|pessoas_V01932|V01932|Sexo masculino, 66 anos, Pessoa indígena|
|Pessoas|pessoas_V01933|V01933|Sexo masculino, 67 anos, Pessoa indígena|
|Pessoas|pessoas_V01934|V01934|Sexo masculino, 68 anos, Pessoa indígena|
|Pessoas|pessoas_V01935|V01935|Sexo masculino, 69 anos, Pessoa indígena|
|Pessoas|pessoas_V01936|V01936|Sexo masculino, 70 anos, Pessoa indígena|
|Pessoas|pessoas_V01937|V01937|Sexo masculino, 71 anos, Pessoa indígena|
|Pessoas|pessoas_V01938|V01938|Sexo masculino, 72 anos, Pessoa indígena|
|Pessoas|pessoas_V01939|V01939|Sexo masculino, 73 anos, Pessoa indígena|
|Pessoas|pessoas_V01940|V01940|Sexo masculino, 74 anos, Pessoa indígena|
|Pessoas|pessoas_V01941|V01941|Sexo masculino, 75 anos, Pessoa indígena|
|Pessoas|pessoas_V01942|V01942|Sexo masculino, 76 anos, Pessoa indígena|
|Pessoas|pessoas_V01943|V01943|Sexo masculino, 77 anos, Pessoa indígena|
|Pessoas|pessoas_V01944|V01944|Sexo masculino, 78 anos, Pessoa indígena|
|Pessoas|pessoas_V01945|V01945|Sexo masculino, 79 anos, Pessoa indígena|
|Pessoas|pessoas_V01946|V01946|Sexo masculino, 80 anos, Pessoa indígena|
|Pessoas|pessoas_V01947|V01947|Sexo masculino, 81 anos, Pessoa indígena|
|Pessoas|pessoas_V01948|V01948|Sexo masculino, 82 anos, Pessoa indígena|
|Pessoas|pessoas_V01949|V01949|Sexo masculino, 83 anos, Pessoa indígena|
|Pessoas|pessoas_V01950|V01950|Sexo masculino, 84 anos, Pessoa indígena|
|Pessoas|pessoas_V01951|V01951|Sexo masculino, 85 anos, Pessoa indígena|
|Pessoas|pessoas_V01952|V01952|Sexo masculino, 86 anos, Pessoa indígena|
|Pessoas|pessoas_V01953|V01953|Sexo masculino, 87 anos, Pessoa indígena|
|Pessoas|pessoas_V01954|V01954|Sexo masculino, 88 anos, Pessoa indígena|
|Pessoas|pessoas_V01955|V01955|Sexo masculino, 89 anos, Pessoa indígena|
|Pessoas|pessoas_V01956|V01956|Sexo masculino, 90 anos, Pessoa indígena|
|Pessoas|pessoas_V01957|V01957|Sexo masculino, 91 anos, Pessoa indígena|
|Pessoas|pessoas_V01958|V01958|Sexo masculino, 92 anos, Pessoa indígena|
|Pessoas|pessoas_V01959|V01959|Sexo masculino, 93 anos, Pessoa indígena|
|Pessoas|pessoas_V01960|V01960|Sexo masculino, 94 anos, Pessoa indígena|
|Pessoas|pessoas_V01961|V01961|Sexo masculino, 95 anos, Pessoa indígena|
|Pessoas|pessoas_V01962|V01962|Sexo masculino, 96 anos, Pessoa indígena|
|Pessoas|pessoas_V01963|V01963|Sexo masculino, 97 anos, Pessoa indígena|
|Pessoas|pessoas_V01964|V01964|Sexo masculino, 98 anos, Pessoa indígena|
|Pessoas|pessoas_V01965|V01965|Sexo masculino, 99 anos, Pessoa indígena|
|Pessoas|pessoas_V01966|V01966|Sexo masculino, 100 anos ou mais, Pessoa indígena|
|Pessoas|pessoas_V01967|V01967|Sexo feminino, 0 anos, Pessoa indígena|
|Pessoas|pessoas_V01968|V01968|Sexo feminino, 1 ano, Pessoa indígena|
|Pessoas|pessoas_V01969|V01969|Sexo feminino, 2 anos, Pessoa indígena|
|Pessoas|pessoas_V01970|V01970|Sexo feminino, 3 anos, Pessoa indígena|
|Pessoas|pessoas_V01971|V01971|Sexo feminino, 4 anos, Pessoa indígena|
|Pessoas|pessoas_V01972|V01972|Sexo feminino, 5 anos, Pessoa indígena|
|Pessoas|pessoas_V01973|V01973|Sexo feminino, 6 anos, Pessoa indígena|
|Pessoas|pessoas_V01974|V01974|Sexo feminino, 7 anos, Pessoa indígena|
|Pessoas|pessoas_V01975|V01975|Sexo feminino, 8 anos, Pessoa indígena|
|Pessoas|pessoas_V01976|V01976|Sexo feminino, 9 anos, Pessoa indígena|
|Pessoas|pessoas_V01977|V01977|Sexo feminino, 10 anos, Pessoa indígena|
|Pessoas|pessoas_V01978|V01978|Sexo feminino, 11 anos, Pessoa indígena|
|Pessoas|pessoas_V01979|V01979|Sexo feminino, 12 anos, Pessoa indígena|
|Pessoas|pessoas_V01980|V01980|Sexo feminino, 13 anos, Pessoa indígena|
|Pessoas|pessoas_V01981|V01981|Sexo feminino, 14 anos, Pessoa indígena|
|Pessoas|pessoas_V01982|V01982|Sexo feminino, 15 anos, Pessoa indígena|
|Pessoas|pessoas_V01983|V01983|Sexo feminino, 16 anos, Pessoa indígena|
|Pessoas|pessoas_V01984|V01984|Sexo feminino, 17 anos, Pessoa indígena|
|Pessoas|pessoas_V01985|V01985|Sexo feminino, 18 anos, Pessoa indígena|
|Pessoas|pessoas_V01986|V01986|Sexo feminino, 19 anos, Pessoa indígena|
|Pessoas|pessoas_V01987|V01987|Sexo feminino, 20 anos, Pessoa indígena|
|Pessoas|pessoas_V01988|V01988|Sexo feminino, 21 anos, Pessoa indígena|
|Pessoas|pessoas_V01989|V01989|Sexo feminino, 22 anos, Pessoa indígena|
|Pessoas|pessoas_V01990|V01990|Sexo feminino, 23 anos, Pessoa indígena|
|Pessoas|pessoas_V01991|V01991|Sexo feminino, 24 anos, Pessoa indígena|
|Pessoas|pessoas_V01992|V01992|Sexo feminino, 25 anos, Pessoa indígena|
|Pessoas|pessoas_V01993|V01993|Sexo feminino, 26 anos, Pessoa indígena|
|Pessoas|pessoas_V01994|V01994|Sexo feminino, 27 anos, Pessoa indígena|
|Pessoas|pessoas_V01995|V01995|Sexo feminino, 28 anos, Pessoa indígena|
|Pessoas|pessoas_V01996|V01996|Sexo feminino, 29 anos, Pessoa indígena|
|Pessoas|pessoas_V01997|V01997|Sexo feminino, 30 anos, Pessoa indígena|
|Pessoas|pessoas_V01998|V01998|Sexo feminino, 31 anos, Pessoa indígena|
|Pessoas|pessoas_V01999|V01999|Sexo feminino, 32 anos, Pessoa indígena|
|Pessoas|pessoas_V02000|V02000|Sexo feminino, 33 anos, Pessoa indígena|
|Pessoas|pessoas_V02001|V02001|Sexo feminino, 34 anos, Pessoa indígena|
|Pessoas|pessoas_V02002|V02002|Sexo feminino, 35 anos, Pessoa indígena|
|Pessoas|pessoas_V02003|V02003|Sexo feminino, 36 anos, Pessoa indígena|
|Pessoas|pessoas_V02004|V02004|Sexo feminino, 37 anos, Pessoa indígena|
|Pessoas|pessoas_V02005|V02005|Sexo feminino, 38 anos, Pessoa indígena|
|Pessoas|pessoas_V02006|V02006|Sexo feminino, 39 anos, Pessoa indígena|
|Pessoas|pessoas_V02007|V02007|Sexo feminino, 40 anos, Pessoa indígena|
|Pessoas|pessoas_V02008|V02008|Sexo feminino, 41 anos, Pessoa indígena|
|Pessoas|pessoas_V02009|V02009|Sexo feminino, 42 anos, Pessoa indígena|
|Pessoas|pessoas_V02010|V02010|Sexo feminino, 43 anos, Pessoa indígena|
|Pessoas|pessoas_V02011|V02011|Sexo feminino, 44 anos, Pessoa indígena|
|Pessoas|pessoas_V02012|V02012|Sexo feminino, 45 anos, Pessoa indígena|
|Pessoas|pessoas_V02013|V02013|Sexo feminino, 46 anos, Pessoa indígena|
|Pessoas|pessoas_V02014|V02014|Sexo feminino, 47 anos, Pessoa indígena|
|Pessoas|pessoas_V02015|V02015|Sexo feminino, 48 anos, Pessoa indígena|
|Pessoas|pessoas_V02016|V02016|Sexo feminino, 49 anos, Pessoa indígena|
|Pessoas|pessoas_V02017|V02017|Sexo feminino, 50 anos, Pessoa indígena|
|Pessoas|pessoas_V02018|V02018|Sexo feminino, 51 anos, Pessoa indígena|
|Pessoas|pessoas_V02019|V02019|Sexo feminino, 52 anos, Pessoa indígena|
|Pessoas|pessoas_V02020|V02020|Sexo feminino, 53 anos, Pessoa indígena|
|Pessoas|pessoas_V02021|V02021|Sexo feminino, 54 anos, Pessoa indígena|
|Pessoas|pessoas_V02022|V02022|Sexo feminino, 55 anos, Pessoa indígena|
|Pessoas|pessoas_V02023|V02023|Sexo feminino, 56 anos, Pessoa indígena|
|Pessoas|pessoas_V02024|V02024|Sexo feminino, 57 anos, Pessoa indígena|
|Pessoas|pessoas_V02025|V02025|Sexo feminino, 58 anos, Pessoa indígena|
|Pessoas|pessoas_V02026|V02026|Sexo feminino, 59 anos, Pessoa indígena|
|Pessoas|pessoas_V02027|V02027|Sexo feminino, 60 anos, Pessoa indígena|
|Pessoas|pessoas_V02028|V02028|Sexo feminino, 61 anos, Pessoa indígena|
|Pessoas|pessoas_V02029|V02029|Sexo feminino, 62 anos, Pessoa indígena|
|Pessoas|pessoas_V02030|V02030|Sexo feminino, 63 anos, Pessoa indígena|
|Pessoas|pessoas_V02031|V02031|Sexo feminino, 64 anos, Pessoa indígena|
|Pessoas|pessoas_V02032|V02032|Sexo feminino, 65 anos, Pessoa indígena|
|Pessoas|pessoas_V02033|V02033|Sexo feminino, 66 anos, Pessoa indígena|
|Pessoas|pessoas_V02034|V02034|Sexo feminino, 67 anos, Pessoa indígena|
|Pessoas|pessoas_V02035|V02035|Sexo feminino, 68 anos, Pessoa indígena|
|Pessoas|pessoas_V02036|V02036|Sexo feminino, 69 anos, Pessoa indígena|
|Pessoas|pessoas_V02037|V02037|Sexo feminino, 70 anos, Pessoa indígena|
|Pessoas|pessoas_V02038|V02038|Sexo feminino, 71 anos, Pessoa indígena|
|Pessoas|pessoas_V02039|V02039|Sexo feminino, 72 anos, Pessoa indígena|
|Pessoas|pessoas_V02040|V02040|Sexo feminino, 73 anos, Pessoa indígena|
|Pessoas|pessoas_V02041|V02041|Sexo feminino, 74 anos, Pessoa indígena|
|Pessoas|pessoas_V02042|V02042|Sexo feminino, 75 anos, Pessoa indígena|
|Pessoas|pessoas_V02043|V02043|Sexo feminino, 76 anos, Pessoa indígena|
|Pessoas|pessoas_V02044|V02044|Sexo feminino, 77 anos, Pessoa indígena|
|Pessoas|pessoas_V02045|V02045|Sexo feminino, 78 anos, Pessoa indígena|
|Pessoas|pessoas_V02046|V02046|Sexo feminino, 79 anos, Pessoa indígena|
|Pessoas|pessoas_V02047|V02047|Sexo feminino, 80 anos, Pessoa indígena|
|Pessoas|pessoas_V02048|V02048|Sexo feminino, 81 anos, Pessoa indígena|
|Pessoas|pessoas_V02049|V02049|Sexo feminino, 82 anos, Pessoa indígena|
|Pessoas|pessoas_V02050|V02050|Sexo feminino, 83 anos, Pessoa indígena|
|Pessoas|pessoas_V02051|V02051|Sexo feminino, 84 anos, Pessoa indígena|
|Pessoas|pessoas_V02052|V02052|Sexo feminino, 85 anos, Pessoa indígena|
|Pessoas|pessoas_V02053|V02053|Sexo feminino, 86 anos, Pessoa indígena|
|Pessoas|pessoas_V02054|V02054|Sexo feminino, 87 anos, Pessoa indígena|
|Pessoas|pessoas_V02055|V02055|Sexo feminino, 88 anos, Pessoa indígena|
|Pessoas|pessoas_V02056|V02056|Sexo feminino, 89 anos, Pessoa indígena|
|Pessoas|pessoas_V02057|V02057|Sexo feminino, 90 anos, Pessoa indígena|
|Pessoas|pessoas_V02058|V02058|Sexo feminino, 91 anos, Pessoa indígena|
|Pessoas|pessoas_V02059|V02059|Sexo feminino, 92 anos, Pessoa indígena|
|Pessoas|pessoas_V02060|V02060|Sexo feminino, 93 anos, Pessoa indígena|
|Pessoas|pessoas_V02061|V02061|Sexo feminino, 94 anos, Pessoa indígena|
|Pessoas|pessoas_V02062|V02062|Sexo feminino, 95 anos, Pessoa indígena|
|Pessoas|pessoas_V02063|V02063|Sexo feminino, 96 anos, Pessoa indígena|
|Pessoas|pessoas_V02064|V02064|Sexo feminino, 97 anos, Pessoa indígena|
|Pessoas|pessoas_V02065|V02065|Sexo feminino, 98 anos, Pessoa indígena|
|Pessoas|pessoas_V02066|V02066|Sexo feminino, 99 anos, Pessoa indígena|
|Pessoas|pessoas_V02067|V02067|Sexo feminino, 100 anos ou mais, Pessoa indígena|
|Pessoas|pessoas_V02068|V02068|0 a 4 anos, Pessoa indígena|
|Pessoas|pessoas_V02069|V02069|5 a 9 anos, Pessoa indígena|
|Pessoas|pessoas_V02070|V02070|10 a 14 anos, Pessoa indígena|
|Pessoas|pessoas_V02071|V02071|15 a 19 anos, Pessoa indígena|
|Pessoas|pessoas_V02072|V02072|20 a 24 anos, Pessoa indígena|
|Pessoas|pessoas_V02073|V02073|25 a 29 anos, Pessoa indígena|
|Pessoas|pessoas_V02074|V02074|30 a 39 anos, Pessoa indígena|
|Pessoas|pessoas_V02075|V02075|40 a 49 anos, Pessoa indígena|
|Pessoas|pessoas_V02076|V02076|50 a 59 anos, Pessoa indígena|
|Pessoas|pessoas_V02077|V02077|60 a 69 anos, Pessoa indígena|
|Pessoas|pessoas_V02078|V02078|70 anos ou mais, Pessoa indígena|
|Pessoas|pessoas_V02079|V02079|Sexo masculino, 0 a 4 anos, Pessoa indígena|
|Pessoas|pessoas_V02080|V02080|Sexo masculino, 5 a 9 anos, Pessoa indígena|
|Pessoas|pessoas_V02081|V02081|Sexo masculino, 10 a 14 anos, Pessoa indígena|
|Pessoas|pessoas_V02082|V02082|Sexo masculino, 15 a 19 anos, Pessoa indígena|
|Pessoas|pessoas_V02083|V02083|Sexo masculino, 20 a 24 anos, Pessoa indígena|
|Pessoas|pessoas_V02084|V02084|Sexo masculino, 25 a 29 anos, Pessoa indígena|
|Pessoas|pessoas_V02085|V02085|Sexo masculino, 30 a 39 anos, Pessoa indígena|
|Pessoas|pessoas_V02086|V02086|Sexo masculino, 40 a 49 anos, Pessoa indígena|
|Pessoas|pessoas_V02087|V02087|Sexo masculino, 50 a 59 anos, Pessoa indígena|
|Pessoas|pessoas_V02088|V02088|Sexo masculino, 60 a 69 anos, Pessoa indígena|
|Pessoas|pessoas_V02089|V02089|Sexo masculino, 70 anos ou mais, Pessoa indígena|
|Pessoas|pessoas_V02090|V02090|Sexo feminino, 0 a 4 anos, Pessoa indígena|
|Pessoas|pessoas_V02091|V02091|Sexo feminino, 5 a 9 anos, Pessoa indígena|
|Pessoas|pessoas_V02092|V02092|Sexo feminino, 10 a 14 anos, Pessoa indígena|
|Pessoas|pessoas_V02093|V02093|Sexo feminino, 15 a 19 anos, Pessoa indígena|
|Pessoas|pessoas_V02094|V02094|Sexo feminino, 20 a 24 anos, Pessoa indígena|
|Pessoas|pessoas_V02095|V02095|Sexo feminino, 25 a 29 anos, Pessoa indígena|
|Pessoas|pessoas_V02096|V02096|Sexo feminino, 30 a 39 anos, Pessoa indígena|
|Pessoas|pessoas_V02097|V02097|Sexo feminino, 40 a 49 anos, Pessoa indígena|
|Pessoas|pessoas_V02098|V02098|Sexo feminino, 50 a 59 anos, Pessoa indígena|
|Pessoas|pessoas_V02099|V02099|Sexo feminino, 60 a 69 anos, Pessoa indígena|
|Pessoas|pessoas_V02100|V02100|Sexo feminino, 70 anos ou mais, Pessoa indígena|
|Pessoas|pessoas_V02101|V02101|15 anos ou mais, Pessoa indígena|
|Pessoas|pessoas_V02102|V02102|Sexo masculino, 15 anos ou mais, Pessoa indígena|
|Pessoas|pessoas_V02103|V02103|Sexo feminino, 15 anos ou mais, Pessoa indígena|
|Pessoas|pessoas_V02104|V02104|Pessoa responsável pelo domicílio, Pessoa indígena|
|Pessoas|pessoas_V02105|V02105|Pessoa responsável pelo domicílio, Sexo do morador responsável é masculino, Pessoa indígena|
|Pessoas|pessoas_V02106|V02106|Pessoa responsável pelo domicílio, Sexo do morador responsável é feminino, Pessoa indígena|
|Pessoas|pessoas_V02107|V02107|Pessoa responsável pelo domicílio, 15 anos ou mais, Pessoa indígena|
|Pessoas|pessoas_V02108|V02108|Pessoa responsável pelo domicílio, Sexo do morador responsável é masculino, 15 anos ou mais, Pessoa indígena|
|Pessoas|pessoas_V02109|V02109|Pessoa responsável pelo domicílio, Sexo do morador responsável é feminino, 15 anos ou mais, Pessoa indígena|
|Pessoas|pessoas_V02110|V02110|Pessoa responsável pelo domicílio, 12 a 14 anos, Pessoa indígena|
|Pessoas|pessoas_V02111|V02111|Pessoa responsável pelo domicílio, 15 a 29 anos, Pessoa indígena|
|Pessoas|pessoas_V02112|V02112|Pessoa responsável pelo domicílio, 30 a 59 anos, Pessoa indígena|
|Pessoas|pessoas_V02113|V02113|Pessoa responsável pelo domicílio, 60 anos ou mais, Pessoa indígena|
|Pessoas|pessoas_V02114|V02114|Pessoa responsável pelo domicílio, Sexo do morador responsável é masculino, 12 a 14 anos, Pessoa indígena|
|Pessoas|pessoas_V02115|V02115|Pessoa responsável pelo domicílio, Sexo do morador responsável é masculino, 15 a 29 anos, Pessoa indígena|
|Pessoas|pessoas_V02116|V02116|Pessoa responsável pelo domicílio, Sexo do morador responsável é masculino, 30 a 59 anos, Pessoa indígena|
|Pessoas|pessoas_V02117|V02117|Pessoa responsável pelo domicílio, Sexo do morador responsável é masculino, 60 anos ou mais, Pessoa indígena|
|Pessoas|pessoas_V02118|V02118|Pessoa responsável pelo domicílio, Sexo do morador responsável é feminino, 12 a 14 anos, Pessoa indígena|
|Pessoas|pessoas_V02119|V02119|Pessoa responsável pelo domicílio, Sexo do morador responsável é feminino, 15 a 29 anos, Pessoa indígena|
|Pessoas|pessoas_V02120|V02120|Pessoa responsável pelo domicílio, Sexo do morador responsável é feminino, 30 a 59 anos, Pessoa indígena|
|Pessoas|pessoas_V02121|V02121|Pessoa responsável pelo domicílio, Sexo do morador responsável é feminino, 60 anos ou mais, Pessoa indígena|
|Pessoas|pessoas_V02122|V02122|Pessoa responsável pelo domicílio, 12 a 17 anos, Pessoa indígena|
|Pessoas|pessoas_V02123|V02123|Pessoa responsável pelo domicílio, 18 a 24 anos, Pessoa indígena|
|Pessoas|pessoas_V02124|V02124|Pessoa responsável pelo domicílio, 25 a 39 anos, Pessoa indígena|
|Pessoas|pessoas_V02125|V02125|Pessoa responsável pelo domicílio, 40 a 59 anos, Pessoa indígena|
|Pessoas|pessoas_V02126|V02126|Pessoa responsável pelo domicílio, 60 anos ou mais, Pessoa indígena|
|Pessoas|pessoas_V02127|V02127|Pessoa responsável pelo domicílio, Sexo do morador responsável é masculino, 12 a 17 anos, Pessoa indígena|
|Pessoas|pessoas_V02128|V02128|Pessoa responsável pelo domicílio, Sexo do morador responsável é masculino, 18 a 24 anos, Pessoa indígena|
|Pessoas|pessoas_V02129|V02129|Pessoa responsável pelo domicílio, Sexo do morador responsável é masculino, 25 a 39 anos, Pessoa indígena|
|Pessoas|pessoas_V02130|V02130|Pessoa responsável pelo domicílio, Sexo do morador responsável é masculino, 40 a 59 anos, Pessoa indígena|
|Pessoas|pessoas_V02131|V02131|Pessoa responsável pelo domicílio, Sexo do morador responsável é masculino, 60 anos ou mais, Pessoa indígena|
|Pessoas|pessoas_V02132|V02132|Pessoa responsável pelo domicílio, Sexo do morador responsável é feminino, 12 a 17 anos, Pessoa indígena|
|Pessoas|pessoas_V02133|V02133|Pessoa responsável pelo domicílio, Sexo do morador responsável é feminino, 18 a 24 anos, Pessoa indígena|
|Pessoas|pessoas_V02134|V02134|Pessoa responsável pelo domicílio, Sexo do morador responsável é feminino, 25 a 39 anos, Pessoa indígena|
|Pessoas|pessoas_V02135|V02135|Pessoa responsável pelo domicílio, Sexo do morador responsável é feminino, 40 a 59 anos, Pessoa indígena|
|Pessoas|pessoas_V02136|V02136|Pessoa responsável pelo domicílio, Sexo do morador responsável é feminino, 60 anos ou mais, Pessoa indígena|
|Pessoas|pessoas_V02137|V02137|Pessoas alfabetizadas, 15 anos ou mais, Pessoa indígena|
|Pessoas|pessoas_V02138|V02138|Pessoas alfabetizadas, Sexo masculino, 15 anos ou mais, Pessoa indígena|
|Pessoas|pessoas_V02139|V02139|Pessoas alfabetizadas, Sexo feminino, 15 anos ou mais, Pessoa indígena|
|Pessoas|pessoas_V02140|V02140|Pessoas alfabetizadas, 15 a 19 anos, Pessoa indígena|
|Pessoas|pessoas_V02141|V02141|Pessoas alfabetizadas, 20 a 24 anos, Pessoa indígena|
|Pessoas|pessoas_V02142|V02142|Pessoas alfabetizadas, 25 a 29 anos, Pessoa indígena|
|Pessoas|pessoas_V02143|V02143|Pessoas alfabetizadas, 30 a 34 anos, Pessoa indígena|
|Pessoas|pessoas_V02144|V02144|Pessoas alfabetizadas, 35 a 39 anos, Pessoa indígena|
|Pessoas|pessoas_V02145|V02145|Pessoas alfabetizadas, 40 a 44 anos, Pessoa indígena|
|Pessoas|pessoas_V02146|V02146|Pessoas alfabetizadas, 45 a 49 anos, Pessoa indígena|
|Pessoas|pessoas_V02147|V02147|Pessoas alfabetizadas, 50 a 54 anos, Pessoa indígena|
|Pessoas|pessoas_V02148|V02148|Pessoas alfabetizadas, 55 a 59 anos, Pessoa indígena|
|Pessoas|pessoas_V02149|V02149|Pessoas alfabetizadas, 60 a 64 anos, Pessoa indígena|
|Pessoas|pessoas_V02150|V02150|Pessoas alfabetizadas, 65 a 69 anos, Pessoa indígena|
|Pessoas|pessoas_V02151|V02151|Pessoas alfabetizadas, 70 a 79 anos, Pessoa indígena|
|Pessoas|pessoas_V02152|V02152|Pessoas alfabetizadas, 80 anos ou mais, Pessoa indígena|
|Pessoas|pessoas_V02153|V02153|Pessoas alfabetizadas, Sexo masculino, 15 a 19 anos, Pessoa indígena|
|Pessoas|pessoas_V02154|V02154|Pessoas alfabetizadas, Sexo masculino, 20 a 24 anos, Pessoa indígena|
|Pessoas|pessoas_V02155|V02155|Pessoas alfabetizadas, Sexo masculino, 25 a 29 anos, Pessoa indígena|
|Pessoas|pessoas_V02156|V02156|Pessoas alfabetizadas, Sexo masculino, 30 a 34 anos, Pessoa indígena|
|Pessoas|pessoas_V02157|V02157|Pessoas alfabetizadas, Sexo masculino, 35 a 39 anos, Pessoa indígena|
|Pessoas|pessoas_V02158|V02158|Pessoas alfabetizadas, Sexo masculino, 40 a 44 anos, Pessoa indígena|
|Pessoas|pessoas_V02159|V02159|Pessoas alfabetizadas, Sexo masculino, 45 a 49 anos, Pessoa indígena|
|Pessoas|pessoas_V02160|V02160|Pessoas alfabetizadas, Sexo masculino, 50 a 54 anos, Pessoa indígena|
|Pessoas|pessoas_V02161|V02161|Pessoas alfabetizadas, Sexo masculino, 55 a 59 anos, Pessoa indígena|
|Pessoas|pessoas_V02162|V02162|Pessoas alfabetizadas, Sexo masculino, 60 a 64 anos, Pessoa indígena|
|Pessoas|pessoas_V02163|V02163|Pessoas alfabetizadas, Sexo masculino, 65 a 69 anos, Pessoa indígena,|
|Pessoas|pessoas_V02164|V02164|Pessoas alfabetizadas, Sexo masculino, 70 a 79 anos, Pessoa indígena|
|Pessoas|pessoas_V02165|V02165|Pessoas alfabetizadas, Sexo masculino, 80 anos ou mais, Pessoa indígena|
|Pessoas|pessoas_V02166|V02166|Pessoas alfabetizadas, Sexo feminino, 15 a 19 anos, Pessoa indígena|
|Pessoas|pessoas_V02167|V02167|Pessoas alfabetizadas, Sexo feminino, 20 a 24 anos, Pessoa indígena|
|Pessoas|pessoas_V02168|V02168|Pessoas alfabetizadas, Sexo feminino, 25 a 29 anos, Pessoa indígena|
|Pessoas|pessoas_V02169|V02169|Pessoas alfabetizadas, Sexo feminino, 30 a 34 anos, Pessoa indígena|
|Pessoas|pessoas_V02170|V02170|Pessoas alfabetizadas, Sexo feminino, 35 a 39 anos, Pessoa indígena|
|Pessoas|pessoas_V02171|V02171|Pessoas alfabetizadas, Sexo feminino, 40 a 44 anos, Pessoa indígena|
|Pessoas|pessoas_V02172|V02172|Pessoas alfabetizadas, Sexo feminino, 45 a 49 anos, Pessoa indígena|
|Pessoas|pessoas_V02173|V02173|Pessoas alfabetizadas, Sexo feminino, 50 a 54 anos, Pessoa indígena|
|Pessoas|pessoas_V02174|V02174|Pessoas alfabetizadas, Sexo feminino, 55 a 59 anos, Pessoa indígena|
|Pessoas|pessoas_V02175|V02175|Pessoas alfabetizadas, Sexo feminino, 60 a 64 anos, Pessoa indígena|
|Pessoas|pessoas_V02176|V02176|Pessoas alfabetizadas, Sexo feminino, 65 a 69 anos, Pessoa indígena|
|Pessoas|pessoas_V02177|V02177|Pessoas alfabetizadas, Sexo feminino, 70 a 79 anos, Pessoa indígena|
|Pessoas|pessoas_V02178|V02178|Pessoas alfabetizadas, Sexo feminino, 80 anos ou mais, Pessoa indígena|
|Pessoas|pessoas_V02179|V02179|Pessoas alfabetizadas, 15 a 29 anos, Pessoa indígena|
|Pessoas|pessoas_V02180|V02180|Pessoas alfabetizadas, 30 a 59 anos, Pessoa indígena|
|Pessoas|pessoas_V02181|V02181|Pessoas alfabetizadas, 60 anos ou mais, Pessoa indígena|
|Pessoas|pessoas_V02182|V02182|Pessoas alfabetizadas, Sexo masculino, 15 a 29 anos, Pessoa indígena|
|Pessoas|pessoas_V02183|V02183|Pessoas alfabetizadas, Sexo masculino, 30 a 59 anos, Pessoa indígena|
|Pessoas|pessoas_V02184|V02184|Pessoas alfabetizadas, Sexo masculino, 60 anos ou mais, Pessoa indígena|
|Pessoas|pessoas_V02185|V02185|Pessoas alfabetizadas, Sexo feminino, 15 a 29 anos, Pessoa indígena|
|Pessoas|pessoas_V02186|V02186|Pessoas alfabetizadas, Sexo feminino, 30 a 59 anos, Pessoa indígena|
|Pessoas|pessoas_V02187|V02187|Pessoas alfabetizadas, Sexo feminino, 60 anos ou mais, Pessoa indígena|
|Pessoas|pessoas_V02188|V02188|Pessoa responsável pelo domicílio, Pessoas alfabetizadas, Pessoa indígena|
|Pessoas|pessoas_V02189|V02189|Pessoa responsável pelo domicílio, Pessoas alfabetizadas, Sexo do morador responsável é masculino, 15 anos ou mais, Pessoa indígena|
|Pessoas|pessoas_V02190|V02190|Pessoa responsável pelo domicílio, Pessoas alfabetizadas, Sexo do morador responsável é feminino, 15 anos ou mais, Pessoa indígena|
|Pessoas|pessoas_V02191|V02191|Pessoa responsável pelo domicílio, Pessoas alfabetizadas, 15 a 29 anos, Pessoa indígena|
|Pessoas|pessoas_V02192|V02192|Pessoa responsável pelo domicílio, Pessoas alfabetizadas, 30 a 59 anos, Pessoa indígena|
|Pessoas|pessoas_V02193|V02193|Pessoa responsável pelo domicílio, Pessoas alfabetizadas, 60 anos ou mais, Pessoa indígena|
|Pessoas|pessoas_V02194|V02194|Pessoa responsável pelo domicílio, Pessoas alfabetizadas, Sexo masculino, 15 a 29 anos, Pessoas indígena|
|Pessoas|pessoas_V02195|V02195|Pessoa responsável pelo domicílio, Pessoas alfabetizadas, Sexo masculino, 30 a 59 anos, Pessoas indígena|
|Pessoas|pessoas_V02196|V02196|Pessoa responsável pelo domicílio, Pessoas alfabetizadas, Sexo masculino, 60 anos ou mais, Pessoas indígena|
|Pessoas|pessoas_V02197|V02197|Pessoa responsável pelo domicílio, Pessoas alfabetizadas, Sexo feminino, 15 a 29 anos, Pessoas indígena|
|Pessoas|pessoas_V02198|V02198|Pessoa responsável pelo domicílio, Pessoas alfabetizadas, Sexo feminino, 30 a 59 anos, Pessoas indígena|
|Pessoas|pessoas_V02199|V02199|Pessoa responsável pelo domicílio, Pessoas alfabetizadas, Sexo feminino, 60 anos ou mais, Pessoas indígena|
|Pessoas|pessoas_V02200|V02200|0 a 5 anos, Pessoa indígena, Morador tem registro de nascimento|
|Pessoas|pessoas_V02201|V02201|0 a 5 anos, Pessoa indígena, Morador não tem registro de nascimento|
|Pessoas|pessoas_V02202|V02202|0 a 5 anos, Pessoa indígena, Morador não sabe se tem registro de nascimento|
|Pessoas|pessoas_V02203|V02203|Sexo masculino, 0 a 5 anos, Pessoa indígena, Morador tem registro de nascimento|
|Pessoas|pessoas_V02204|V02204|Sexo masculino, 0 a 5 anos, Pessoa indígena, Morador não tem registro de nascimento|
|Pessoas|pessoas_V02205|V02205|Sexo masculino, 0 a 5 anos, Pessoa indígena, Morador não sabe se tem registro de nascimento|
|Pessoas|pessoas_V02206|V02206|Sexo feminino, 0 a 5 anos, Pessoa indígena, Morador tem registro de nascimento|
|Pessoas|pessoas_V02207|V02207|Sexo feminino, 0 a 5 anos, Pessoa indígena, Morador não tem registro de nascimento|
|Pessoas|pessoas_V02208|V02208|Sexo feminino, 0 a 5 anos, Pessoa indígena, Morador não sabe se tem registro de nascimento|
|Pessoas|pessoas_V02209|V02209|Menos de 1 ano, Pessoa indígena, Morador tem registro de nascimento|
|Pessoas|pessoas_V02210|V02210|Menos de 1 ano, Pessoa indígena, Morador não tem registro de nascimento|
|Pessoas|pessoas_V02211|V02211|Menos de 1 ano, Pessoa indígena, Morador não sabe se tem registro de nascimento|
|Pessoas|pessoas_V02212|V02212|1 ano, Pessoa indígena, Morador tem registro de nascimento|
|Pessoas|pessoas_V02213|V02213|1 ano, Pessoa indígena, Morador não tem registro de nascimento|
|Pessoas|pessoas_V02214|V02214|1 ano, Pessoa indígena, Morador não sabe se tem registro de nascimento|
|Pessoas|pessoas_V02215|V02215|2 anos, Pessoa indígena, Morador tem registro de nascimento|
|Pessoas|pessoas_V02216|V02216|2 anos, Pessoa indígena, Morador não tem registro de nascimento|
|Pessoas|pessoas_V02217|V02217|2 anos, Pessoa indígena, Morador não sabe se tem registro de nascimento|
|Pessoas|pessoas_V02218|V02218|3 anos, Pessoa indígena, Morador tem registro de nascimento|
|Pessoas|pessoas_V02219|V02219|3 anos, Pessoa indígena, Morador não tem registro de nascimento|
|Pessoas|pessoas_V02220|V02220|3 anos, Pessoa indígena, Morador não sabe se tem registro de nascimento|
|Pessoas|pessoas_V02221|V02221|4 anos, Pessoa indígena, Morador tem registro de nascimento|
|Pessoas|pessoas_V02222|V02222|4 anos, Pessoa indígena, Morador não tem registro de nascimento|
|Pessoas|pessoas_V02223|V02223|4 anos, Pessoa indígena, Morador não sabe se tem registro de nascimento|
|Pessoas|pessoas_V02224|V02224|5 anos, Pessoa indígena, Morador tem registro de nascimento|
|Pessoas|pessoas_V02225|V02225|5 anos, Pessoa indígena, Morador não tem registro de nascimento|
|Pessoas|pessoas_V02226|V02226|5 anos, Pessoa indígena, Morador não sabe se tem registro de nascimento|
|Pessoas|pessoas_V02227|V02227|Sexo masculino, Menos de 1 ano, Pessoa indígena, Morador tem registro de nascimento|
|Pessoas|pessoas_V02228|V02228|Sexo masculino, Menos de 1 ano, Pessoa indígena, Morador não tem registro de nascimento|
|Pessoas|pessoas_V02229|V02229|Sexo masculino, Menos de 1 ano, Pessoa indígena, Morador não sabe se tem registro de nascimento|
|Pessoas|pessoas_V02230|V02230|Sexo masculino, 1 ano, Pessoa indígena, Morador tem registro de nascimento|
|Pessoas|pessoas_V02231|V02231|Sexo masculino, 1 ano, Pessoa indígena, Morador não tem registro de nascimento|
|Pessoas|pessoas_V02232|V02232|Sexo masculino, 1 ano, Pessoa indígena, Morador não sabe se tem registro de nascimento|
|Pessoas|pessoas_V02233|V02233|Sexo masculino, 2 anos, Pessoa indígena, Morador tem registro de nascimento|
|Pessoas|pessoas_V02234|V02234|Sexo masculino, 2 anos, Pessoa indígena, Morador não tem registro de nascimento|
|Pessoas|pessoas_V02235|V02235|Sexo masculino, 2 anos, Pessoa indígena, Morador não sabe se tem registro de nascimento|
|Pessoas|pessoas_V02236|V02236|Sexo masculino, 3 anos, Pessoa indígena, Morador tem registro de nascimento|
|Pessoas|pessoas_V02237|V02237|Sexo masculino, 3 anos, Pessoa indígena, Morador não tem registro de nascimento|
|Pessoas|pessoas_V02238|V02238|Sexo masculino, 3 anos, Pessoa indígena, Morador não sabe se tem registro de nascimento|
|Pessoas|pessoas_V02239|V02239|Sexo masculino, 4 anos, Pessoa indígena, Morador tem registro de nascimento|
|Pessoas|pessoas_V02240|V02240|Sexo masculino, 4 anos, Pessoa indígena, Morador não tem registro de nascimento|
|Pessoas|pessoas_V02241|V02241|Sexo masculino, 4 anos, Pessoa indígena, Morador não sabe se tem registro de nascimento|
|Pessoas|pessoas_V02242|V02242|Sexo masculino, 5 anos, Pessoa indígena, Morador tem registro de nascimento|
|Pessoas|pessoas_V02243|V02243|Sexo masculino, 5 anos, Pessoa indígena, Morador não tem registro de nascimento|
|Pessoas|pessoas_V02244|V02244|Sexo masculino, 5 anos, Pessoa indígena, Morador não sabe se tem registro de nascimento|
|Pessoas|pessoas_V02245|V02245|Sexo feminino, Menos de 1 ano, Pessoa indígena, Morador tem registro de nascimento|
|Pessoas|pessoas_V02246|V02246|Sexo feminino, Menos de 1 ano, Pessoa indígena, Morador não tem registro de nascimento|
|Pessoas|pessoas_V02247|V02247|Sexo feminino, Menos de 1 ano, Pessoa indígena, Morador não sabe se tem registro de nascimento|
|Pessoas|pessoas_V02248|V02248|Sexo feminino, 1 ano, Pessoa indígena, Morador tem registro de nascimento|
|Pessoas|pessoas_V02249|V02249|Sexo feminino, 1 ano, Pessoa indígena, Morador não tem registro de nascimento|
|Pessoas|pessoas_V02250|V02250|Sexo feminino, 1 ano, Pessoa indígena, Morador não sabe se tem registro de nascimento|
|Pessoas|pessoas_V02251|V02251|Sexo feminino, 2 anos, Pessoa indígena, Morador tem registro de nascimento|
|Pessoas|pessoas_V02252|V02252|Sexo feminino, 2 anos, Pessoa indígena, Morador não tem registro de nascimento|
|Pessoas|pessoas_V02253|V02253|Sexo feminino, 2 anos, Pessoa indígena, Morador não sabe se tem registro de nascimento|
|Pessoas|pessoas_V02254|V02254|Sexo feminino, 3 anos, Pessoa indígena, Morador tem registro de nascimento|
|Pessoas|pessoas_V02255|V02255|Sexo feminino, 3 anos, Pessoa indígena, Morador não tem registro de nascimento|
|Pessoas|pessoas_V02256|V02256|Sexo feminino, 3 anos, Pessoa indígena, Morador não sabe se tem registro de nascimento|
|Pessoas|pessoas_V02257|V02257|Sexo feminino, 4 anos, Pessoa indígena, Morador tem registro de nascimento|
|Pessoas|pessoas_V02258|V02258|Sexo feminino, 4 anos, Pessoa indígena, Morador não tem registro de nascimento|
|Pessoas|pessoas_V02259|V02259|Sexo feminino, 4 anos, Pessoa indígena, Morador não sabe se tem registro de nascimento|
|Pessoas|pessoas_V02260|V02260|Sexo feminino, 5 anos, Pessoa indígena, Morador tem registro de nascimento|
|Pessoas|pessoas_V02261|V02261|Sexo feminino, 5 anos, Pessoa indígena, Morador não tem registro de nascimento|
|Pessoas|pessoas_V02262|V02262|Sexo feminino, 5 anos, Pessoa indígena, Morador não sabe se tem registro de nascimento|
|Pessoas|pessoas_V02263|V02263|0 a 5 anos, Pessoa indígena, Morador tem registro de nascimento do cartório|
|Pessoas|pessoas_V02264|V02264|0 a 5 anos, Pessoa indígena, Morador tem Registro Administrativo de Nascimento Indígena (RANI)|
|Pessoas|pessoas_V02265|V02265|0 a 5 anos, Pessoa indígena, Morador não tem registro de nascimento|
|Pessoas|pessoas_V02266|V02266|0 a 5 anos, Pessoa indígena, Morador não sabe se tem registro de nascimento|
|Pessoas|pessoas_V02267|V02267|Sexo masculino, 0 a 5 anos, Pessoa indígena, Morador tem registro de nascimento do cartório|
|Pessoas|pessoas_V02268|V02268|Sexo masculino, 0 a 5 anos, Pessoa indígena, Morador tem Registro Administrativo de Nascimento Indígena (RANI)|
|Pessoas|pessoas_V02269|V02269|Sexo masculino, 0 a 5 anos, Pessoa indígena, Morador não tem registro de nascimento|
|Pessoas|pessoas_V02270|V02270|Sexo masculino, 0 a 5 anos, Pessoa indígena, Morador não sabe se tem registro de nascimento|
|Pessoas|pessoas_V02271|V02271|Sexo feminino, 0 a 5 anos, Pessoa indígena, Morador tem registro de nascimento do cartório|
|Pessoas|pessoas_V02272|V02272|Sexo feminino, 0 a 5 anos, Pessoa indígena, Morador tem Registro Administrativo de Nascimento Indígena (RANI)|
|Pessoas|pessoas_V02273|V02273|Sexo feminino, 0 a 5 anos, Pessoa indígena, Morador não tem registro de nascimento|
|Pessoas|pessoas_V02274|V02274|Sexo feminino, 0 a 5 anos, Pessoa indígena, Morador não sabe se tem registro de nascimento|
|Pessoas|pessoas_V02275|V02275|Menos de 1 ano, Pessoa indígena, Morador tem registro de nascimento do cartório|
|Pessoas|pessoas_V02276|V02276|Menos de 1 ano, Pessoa indígena, Morador tem Registro Administrativo de Nascimento Indígena (RANI)|
|Pessoas|pessoas_V02277|V02277|Menos de 1 ano, Pessoa indígena, Morador não tem registro de nascimento|
|Pessoas|pessoas_V02278|V02278|Menos de 1 ano, Pessoa indígena, Morador não sabe se tem registro de nascimento|
|Pessoas|pessoas_V02279|V02279|1 ano, Pessoa indígena, Morador tem registro de nascimento do cartório|
|Pessoas|pessoas_V02280|V02280|1 ano, Pessoa indígena, Morador tem Registro Administrativo de Nascimento Indígena (RANI)|
|Pessoas|pessoas_V02281|V02281|1 ano, Pessoa indígena, Morador não tem registro de nascimento|
|Pessoas|pessoas_V02282|V02282|1 ano, Pessoa indígena, Morador não sabe se tem registro de nascimento|
|Pessoas|pessoas_V02283|V02283|2 anos, Pessoa indígena, Morador tem registro de nascimento do cartório|
|Pessoas|pessoas_V02284|V02284|2 anos, Pessoa indígena, Morador tem Registro Administrativo de Nascimento Indígena (RANI)|
|Pessoas|pessoas_V02285|V02285|2 anos, Pessoa indígena, Morador não tem registro de nascimento|
|Pessoas|pessoas_V02286|V02286|2 anos, Pessoa indígena, Morador não sabe se tem registro de nascimento|
|Pessoas|pessoas_V02287|V02287|3 anos, Pessoa indígena, Morador tem registro de nascimento do cartório|
|Pessoas|pessoas_V02288|V02288|3 anos, Pessoa indígena, Morador tem Registro Administrativo de Nascimento Indígena (RANI)|
|Pessoas|pessoas_V02289|V02289|3 anos, Pessoa indígena, Morador não tem registro de nascimento|
|Pessoas|pessoas_V02290|V02290|3 anos, Pessoa indígena, Morador não sabe se tem registro de nascimento|
|Pessoas|pessoas_V02291|V02291|4 anos, Pessoa indígena, Morador tem registro de nascimento do cartório|
|Pessoas|pessoas_V02292|V02292|4 anos, Pessoa indígena, Morador tem Registro Administrativo de Nascimento Indígena (RANI)|
|Pessoas|pessoas_V02293|V02293|4 anos, Pessoa indígena, Morador não tem registro de nascimento|
|Pessoas|pessoas_V02294|V02294|4 anos, Pessoa indígena, Morador não sabe se tem registro de nascimento|
|Pessoas|pessoas_V02295|V02295|5 anos, Pessoa indígena, Morador tem registro de nascimento do cartório|
|Pessoas|pessoas_V02296|V02296|5 anos, Pessoa indígena, Morador tem Registro Administrativo de Nascimento Indígena (RANI)|
|Pessoas|pessoas_V02297|V02297|5 anos, Pessoa indígena, Morador não tem registro de nascimento|
|Pessoas|pessoas_V02298|V02298|5 anos, Pessoa indígena, Morador não sabe se tem registro de nascimento|
|Pessoas|pessoas_V02299|V02299|Sexo masculino, Menos de 1 ano, Pessoa indígena, Morador tem registro de nascimento do cartório|
|Pessoas|pessoas_V02300|V02300|Sexo masculino, Menos de 1 ano, Pessoa indígena, Morador tem Registro Administrativo de Nascimento Indígena (RANI)|
|Pessoas|pessoas_V02301|V02301|Sexo masculino, Menos de 1 ano, Pessoa indígena, Morador não tem registro de nascimento|
|Pessoas|pessoas_V02302|V02302|Sexo masculino, Menos de 1 ano, Pessoa indígena, Morador não sabe se tem registro de nascimento|
|Pessoas|pessoas_V02303|V02303|Sexo masculino, 1 ano, Pessoa indígena, Morador tem registro de nascimento do cartório|
|Pessoas|pessoas_V02304|V02304|Sexo masculino, 1 ano, Pessoa indígena, Morador tem Registro Administrativo de Nascimento Indígena (RANI)|
|Pessoas|pessoas_V02305|V02305|Sexo masculino, 1 ano, Pessoa indígena, Morador não tem registro de nascimento|
|Pessoas|pessoas_V02306|V02306|Sexo masculino, 1 ano, Pessoa indígena, Morador não sabe se tem registro de nascimento|
|Pessoas|pessoas_V02307|V02307|Sexo masculino, 2 anos, Pessoa indígena, Morador tem registro de nascimento do cartório|
|Pessoas|pessoas_V02308|V02308|Sexo masculino, 2 anos, Pessoa indígena, Morador tem Registro Administrativo de Nascimento Indígena (RANI)|
|Pessoas|pessoas_V02309|V02309|Sexo masculino, 2 anos, Pessoa indígena, Morador não tem registro de nascimento|
|Pessoas|pessoas_V02310|V02310|Sexo masculino, 2 anos, Pessoa indígena, Morador não sabe se tem registro de nascimento|
|Pessoas|pessoas_V02311|V02311|Sexo masculino, 3 anos, Pessoa indígena, Morador tem registro de nascimento do cartório|
|Pessoas|pessoas_V02312|V02312|Sexo masculino, 3 anos, Pessoa indígena, Morador tem Registro Administrativo de Nascimento Indígena (RANI)|
|Pessoas|pessoas_V02313|V02313|Sexo masculino, 3 anos, Pessoa indígena, Morador não tem registro de nascimento|
|Pessoas|pessoas_V02314|V02314|Sexo masculino, 3 anos, Pessoa indígena, Morador não sabe se tem registro de nascimento|
|Pessoas|pessoas_V02315|V02315|Sexo masculino, 4 anos, Pessoa indígena, Morador tem registro de nascimento do cartório|
|Pessoas|pessoas_V02316|V02316|Sexo masculino, 4 anos, Pessoa indígena, Morador tem Registro Administrativo de Nascimento Indígena (RANI)|
|Pessoas|pessoas_V02317|V02317|Sexo masculino, 4 anos, Pessoa indígena, Morador não tem registro de nascimento|
|Pessoas|pessoas_V02318|V02318|Sexo masculino, 4 anos, Pessoa indígena, Morador não sabe se tem registro de nascimento|
|Pessoas|pessoas_V02319|V02319|Sexo masculino, 5 anos, Pessoa indígena, Morador tem registro de nascimento do cartório|
|Pessoas|pessoas_V02320|V02320|Sexo masculino, 5 anos, Pessoa indígena, Morador tem Registro Administrativo de Nascimento Indígena (RANI)|
|Pessoas|pessoas_V02321|V02321|Sexo masculino, 5 anos, Pessoa indígena, Morador não tem registro de nascimento|
|Pessoas|pessoas_V02322|V02322|Sexo masculino, 5 anos, Pessoa indígena, Morador não sabe se tem registro de nascimento|
|Pessoas|pessoas_V02323|V02323|Sexo feminino, Menos de 1 ano, Pessoa indígena, Morador tem registro de nascimento do cartório|
|Pessoas|pessoas_V02324|V02324|Sexo feminino, Menos de 1 ano, Pessoa indígena, Morador tem Registro Administrativo de Nascimento Indígena (RANI)|
|Pessoas|pessoas_V02325|V02325|Sexo feminino, Menos de 1 ano, Pessoa indígena, Morador não tem registro de nascimento|
|Pessoas|pessoas_V02326|V02326|Sexo feminino, Menos de 1 ano, Pessoa indígena, Morador não sabe se tem registro de nascimento|
|Pessoas|pessoas_V02327|V02327|Sexo feminino, 1 ano, Pessoa indígena, Morador tem registro de nascimento do cartório|
|Pessoas|pessoas_V02328|V02328|Sexo feminino, 1 ano, Pessoa indígena, Morador tem Registro Administrativo de Nascimento Indígena (RANI)|
|Pessoas|pessoas_V02329|V02329|Sexo feminino, 1 ano, Pessoa indígena, Morador não tem registro de nascimento|
|Pessoas|pessoas_V02330|V02330|Sexo feminino, 1 ano, Pessoa indígena, Morador não sabe se tem registro de nascimento|
|Pessoas|pessoas_V02331|V02331|Sexo feminino, 2 anos, Pessoa indígena, Morador tem registro de nascimento do cartório|
|Pessoas|pessoas_V02332|V02332|Sexo feminino, 2 anos, Pessoa indígena, Morador tem Registro Administrativo de Nascimento Indígena (RANI)|
|Pessoas|pessoas_V02333|V02333|Sexo feminino, 2 anos, Pessoa indígena, Morador não tem registro de nascimento|
|Pessoas|pessoas_V02334|V02334|Sexo feminino, 2 anos, Pessoa indígena, Morador não sabe se tem registro de nascimento|
|Pessoas|pessoas_V02335|V02335|Sexo feminino, 3 anos, Pessoa indígena, Morador tem registro de nascimento do cartório|
|Pessoas|pessoas_V02336|V02336|Sexo feminino, 3 anos, Pessoa indígena, Morador tem Registro Administrativo de Nascimento Indígena (RANI)|
|Pessoas|pessoas_V02337|V02337|Sexo feminino, 3 anos, Pessoa indígena, Morador não tem registro de nascimento|
|Pessoas|pessoas_V02338|V02338|Sexo feminino, 3 anos, Pessoa indígena, Morador não sabe se tem registro de nascimento|
|Pessoas|pessoas_V02339|V02339|Sexo feminino, 4 anos, Pessoa indígena, Morador tem registro de nascimento do cartório|
|Pessoas|pessoas_V02340|V02340|Sexo feminino, 4 anos, Pessoa indígena, Morador tem Registro Administrativo de Nascimento Indígena (RANI)|
|Pessoas|pessoas_V02341|V02341|Sexo feminino, 4 anos, Pessoa indígena, Morador não tem registro de nascimento|
|Pessoas|pessoas_V02342|V02342|Sexo feminino, 4 anos, Pessoa indígena, Morador não sabe se tem registro de nascimento|
|Pessoas|pessoas_V02343|V02343|Sexo feminino, 5 anos, Pessoa indígena, Morador tem registro de nascimento do cartório|
|Pessoas|pessoas_V02344|V02344|Sexo feminino, 5 anos, Pessoa indígena, Morador tem Registro Administrativo de Nascimento Indígena (RANI)|
|Pessoas|pessoas_V02345|V02345|Sexo feminino, 5 anos, Pessoa indígena, Morador não tem registro de nascimento|
|Pessoas|pessoas_V02346|V02346|Sexo feminino, 5 anos, Pessoa indígena, Morador não sabe se tem registro de nascimento|
|Pessoas|pessoas_V02347|V02347|Domicílio com pelo menos um morador indígena, Existe pessoa falecida, no período de janeiro de 2019 a julho de 2022, que morava no domicílio|
|Pessoas|pessoas_V02348|V02348|Domicílio com pelo menos um morador indígena, Não existe pessoa falecida, no período de janeiro de 2019 a julho de 2022, que morava no domicílio|
|Pessoas|pessoas_V02349|V02349|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2019 a dezembro de 2019, Idade ao falecer é 0 a 4 anos|
|Pessoas|pessoas_V02350|V02350|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2019 a dezembro de 2019, Idade ao falecer é 5 a 9 anos|
|Pessoas|pessoas_V02351|V02351|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2019 a dezembro de 2019, Idade ao falecer é 10 a 14 anos|
|Pessoas|pessoas_V02352|V02352|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2019 a dezembro de 2019, Idade ao falecer é 15 a 19 anos|
|Pessoas|pessoas_V02353|V02353|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2019 a dezembro de 2019, Idade ao falecer é 20 a 24 anos|
|Pessoas|pessoas_V02354|V02354|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2019 a dezembro de 2019, Idade ao falecer é 25 a 29 anos|
|Pessoas|pessoas_V02355|V02355|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2019 a dezembro de 2019, Idade ao falecer é 30 a 39 anos|
|Pessoas|pessoas_V02356|V02356|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2019 a dezembro de 2019, Idade ao falecer é 40 a 49 anos|
|Pessoas|pessoas_V02357|V02357|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2019 a dezembro de 2019, Idade ao falecer é 50 a 59 anos|
|Pessoas|pessoas_V02358|V02358|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2019 a dezembro de 2019, Idade ao falecer é 60 a 69 anos|
|Pessoas|pessoas_V02359|V02359|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2019 a dezembro de 2019, Idade ao falecer é 70 anos ou mais|
|Pessoas|pessoas_V02360|V02360|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2020 a dezembro de 2020, Idade ao falecer é 0 a 4 anos|
|Pessoas|pessoas_V02361|V02361|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2020 a dezembro de 2020, Idade ao falecer é 5 a 9 anos|
|Pessoas|pessoas_V02362|V02362|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2020 a dezembro de 2020, Idade ao falecer é 10 a 14 anos|
|Pessoas|pessoas_V02363|V02363|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2020 a dezembro de 2020, Idade ao falecer é 15 a 19 anos|
|Pessoas|pessoas_V02364|V02364|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2020 a dezembro de 2020, Idade ao falecer é 20 a 24 anos|
|Pessoas|pessoas_V02365|V02365|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2020 a dezembro de 2020, Idade ao falecer é 25 a 29 anos|
|Pessoas|pessoas_V02366|V02366|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2020 a dezembro de 2020, Idade ao falecer é 30 a 39 anos|
|Pessoas|pessoas_V02367|V02367|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2020 a dezembro de 2020, Idade ao falecer é 40 a 49 anos|
|Pessoas|pessoas_V02368|V02368|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2020 a dezembro de 2020, Idade ao falecer é 50 a 59 anos|
|Pessoas|pessoas_V02369|V02369|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2020 a dezembro de 2020, Idade ao falecer é 60 a 69 anos|
|Pessoas|pessoas_V02370|V02370|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2020 a dezembro de 2020, Idade ao falecer é 70 anos ou mais|
|Pessoas|pessoas_V02371|V02371|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2021 a dezembro de 2021, Idade ao falecer é 0 a 4 anos|
|Pessoas|pessoas_V02372|V02372|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2021 a dezembro de 2021, Idade ao falecer é 5 a 9 anos|
|Pessoas|pessoas_V02373|V02373|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2021 a dezembro de 2021, Idade ao falecer é 10 a 14 anos|
|Pessoas|pessoas_V02374|V02374|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2021 a dezembro de 2021, Idade ao falecer é 15 a 19 anos|
|Pessoas|pessoas_V02375|V02375|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2021 a dezembro de 2021, Idade ao falecer é 20 a 24 anos|
|Pessoas|pessoas_V02376|V02376|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2021 a dezembro de 2021, Idade ao falecer é 25 a 29 anos|
|Pessoas|pessoas_V02377|V02377|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2021 a dezembro de 2021, Idade ao falecer é 30 a 39 anos|
|Pessoas|pessoas_V02378|V02378|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2021 a dezembro de 2021, Idade ao falecer é 40 a 49 anos|
|Pessoas|pessoas_V02379|V02379|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2021 a dezembro de 2021, Idade ao falecer é 50 a 59 anos|
|Pessoas|pessoas_V02380|V02380|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2021 a dezembro de 2021, Idade ao falecer é 60 a 69 anos|
|Pessoas|pessoas_V02381|V02381|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2021 a dezembro de 2021, Idade ao falecer é 70 anos ou mais|
|Pessoas|pessoas_V02382|V02382|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2022 a julho de 2022, Idade ao falecer é 0 a 4 anos|
|Pessoas|pessoas_V02383|V02383|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2022 a julho de 2022, Idade ao falecer é 5 a 9 anos|
|Pessoas|pessoas_V02384|V02384|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2022 a julho de 2022, Idade ao falecer é 10 a 14 anos|
|Pessoas|pessoas_V02385|V02385|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2022 a julho de 2022, Idade ao falecer é 15 a 19 anos|
|Pessoas|pessoas_V02386|V02386|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2022 a julho de 2022, Idade ao falecer é 20 a 24 anos|
|Pessoas|pessoas_V02387|V02387|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2022 a julho de 2022, Idade ao falecer é 25 a 29 anos|
|Pessoas|pessoas_V02388|V02388|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2022 a julho de 2022, Idade ao falecer é 30 a 39 anos|
|Pessoas|pessoas_V02389|V02389|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2022 a julho de 2022, Idade ao falecer é 40 a 49 anos|
|Pessoas|pessoas_V02390|V02390|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2022 a julho de 2022, Idade ao falecer é 50 a 59 anos|
|Pessoas|pessoas_V02391|V02391|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2022 a julho de 2022, Idade ao falecer é 60 a 69 anos|
|Pessoas|pessoas_V02392|V02392|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2022 a julho de 2022, Idade ao falecer é 70 anos ou mais|
|Pessoas|pessoas_V02393|V02393|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2019 a dezembro de 2019, 0 a 14 anos|
|Pessoas|pessoas_V02394|V02394|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2019 a dezembro de 2019, 15 a 29 anos|
|Pessoas|pessoas_V02395|V02395|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2019 a dezembro de 2019, 30 a 59 anos|
|Pessoas|pessoas_V02396|V02396|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2019 a dezembro de 2019, 60 anos ou mais|
|Pessoas|pessoas_V02397|V02397|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2020 a dezembro de 2020, 0 a 14 anos|
|Pessoas|pessoas_V02398|V02398|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2020 a dezembro de 2020, 15 a 29 anos|
|Pessoas|pessoas_V02399|V02399|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2020 a dezembro de 2020, 30 a 59 anos|
|Pessoas|pessoas_V02400|V02400|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2020 a dezembro de 2020, 60 anos ou mais|
|Pessoas|pessoas_V02401|V02401|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2021 a dezembro de 2021, 0 a 14 anos|
|Pessoas|pessoas_V02402|V02402|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2021 a dezembro de 2021, 15 a 29 anos|
|Pessoas|pessoas_V02403|V02403|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2021 a dezembro de 2021, 30 a 59 anos|
|Pessoas|pessoas_V02404|V02404|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2021 a dezembro de 2021, 60 anos ou mais|
|Pessoas|pessoas_V02405|V02405|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2022 a julho de 2022, 0 a 14 anos|
|Pessoas|pessoas_V02406|V02406|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2022 a julho de 2022, 15 a 29 anos|
|Pessoas|pessoas_V02407|V02407|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2022 a julho de 2022, 30 a 59 anos|
|Pessoas|pessoas_V02408|V02408|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2022 a julho de 2022, 60 anos ou mais|
|Pessoas|pessoas_V02409|V02409|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2019 a dezembro de 2019, Sexo da pessoa falecida é masculino, Idade ao falecer é 0 a 4 anos|
|Pessoas|pessoas_V02410|V02410|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2019 a dezembro de 2019, Sexo da pessoa falecida é masculino, Idade ao falecer é 5 a 9 anos|
|Pessoas|pessoas_V02411|V02411|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2019 a dezembro de 2019, Sexo da pessoa falecida é masculino, Idade ao falecer é 10 a 14 anos|
|Pessoas|pessoas_V02412|V02412|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2019 a dezembro de 2019, Sexo da pessoa falecida é masculino, Idade ao falecer é 15 a 19 anos|
|Pessoas|pessoas_V02413|V02413|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2019 a dezembro de 2019, Sexo da pessoa falecida é masculino, Idade ao falecer é 20 a 24 anos|
|Pessoas|pessoas_V02414|V02414|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2019 a dezembro de 2019, Sexo da pessoa falecida é masculino, Idade ao falecer é 25 a 29 anos|
|Pessoas|pessoas_V02415|V02415|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2019 a dezembro de 2019, Sexo da pessoa falecida é masculino, Idade ao falecer é 30 a 39 anos|
|Pessoas|pessoas_V02416|V02416|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2019 a dezembro de 2019, Sexo da pessoa falecida é masculino, Idade ao falecer é 40 a 49 anos|
|Pessoas|pessoas_V02417|V02417|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2019 a dezembro de 2019, Sexo da pessoa falecida é masculino, Idade ao falecer é 50 a 59 anos|
|Pessoas|pessoas_V02418|V02418|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2019 a dezembro de 2019, Sexo da pessoa falecida é masculino, Idade ao falecer é 60 a 69 anos|
|Pessoas|pessoas_V02419|V02419|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2019 a dezembro de 2019, Sexo da pessoa falecida é masculino, Idade ao falecer é 70 anos ou mais|
|Pessoas|pessoas_V02420|V02420|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2019 a dezembro de 2019, Sexo da pessoa falecida é feminino, Idade ao falecer é 0 a 4 anos|
|Pessoas|pessoas_V02421|V02421|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2019 a dezembro de 2019, Sexo da pessoa falecida é feminino, Idade ao falecer é 5 a 9 anos|
|Pessoas|pessoas_V02422|V02422|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2019 a dezembro de 2019, Sexo da pessoa falecida é feminino, Idade ao falecer é 10 a 14 anos|
|Pessoas|pessoas_V02423|V02423|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2019 a dezembro de 2019, Sexo da pessoa falecida é feminino, Idade ao falecer é 15 a 19 anos|
|Pessoas|pessoas_V02424|V02424|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2019 a dezembro de 2019, Sexo da pessoa falecida é feminino, Idade ao falecer é 20 a 24 anos|
|Pessoas|pessoas_V02425|V02425|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2019 a dezembro de 2019, Sexo da pessoa falecida é feminino, Idade ao falecer é 25 a 29 anos|
|Pessoas|pessoas_V02426|V02426|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2019 a dezembro de 2019, Sexo da pessoa falecida é feminino, Idade ao falecer é 30 a 39 anos|
|Pessoas|pessoas_V02427|V02427|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2019 a dezembro de 2019, Sexo da pessoa falecida é feminino, Idade ao falecer é 40 a 49 anos|
|Pessoas|pessoas_V02428|V02428|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2019 a dezembro de 2019, Sexo da pessoa falecida é feminino, Idade ao falecer é 50 a 59 anos|
|Pessoas|pessoas_V02429|V02429|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2019 a dezembro de 2019, Sexo da pessoa falecida é feminino, Idade ao falecer é 60 a 69 anos|
|Pessoas|pessoas_V02430|V02430|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2019 a dezembro de 2019, Sexo da pessoa falecida é feminino, Idade ao falecer é 70 anos ou mais|
|Pessoas|pessoas_V02431|V02431|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2020 a dezembro de 2020, Sexo da pessoa falecida é masculino, Idade ao falecer é 0 a 4 anos|
|Pessoas|pessoas_V02432|V02432|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2020 a dezembro de 2020, Sexo da pessoa falecida é masculino, Idade ao falecer é 5 a 9 anos|
|Pessoas|pessoas_V02433|V02433|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2020 a dezembro de 2020, Sexo da pessoa falecida é masculino, Idade ao falecer é 10 a 14 anos|
|Pessoas|pessoas_V02434|V02434|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2020 a dezembro de 2020, Sexo da pessoa falecida é masculino, Idade ao falecer é 15 a 19 anos|
|Pessoas|pessoas_V02435|V02435|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2020 a dezembro de 2020, Sexo da pessoa falecida é masculino, Idade ao falecer é 20 a 24 anos|
|Pessoas|pessoas_V02436|V02436|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2020 a dezembro de 2020, Sexo da pessoa falecida é masculino, Idade ao falecer é 25 a 29 anos|
|Pessoas|pessoas_V02437|V02437|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2020 a dezembro de 2020, Sexo da pessoa falecida é masculino, Idade ao falecer é 30 a 39 anos|
|Pessoas|pessoas_V02438|V02438|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2020 a dezembro de 2020, Sexo da pessoa falecida é masculino, Idade ao falecer é 40 a 49 anos|
|Pessoas|pessoas_V02439|V02439|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2020 a dezembro de 2020, Sexo da pessoa falecida é masculino, Idade ao falecer é 50 a 59 anos|
|Pessoas|pessoas_V02440|V02440|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2020 a dezembro de 2020, Sexo da pessoa falecida é masculino, Idade ao falecer é 60 a 69 anos|
|Pessoas|pessoas_V02441|V02441|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2020 a dezembro de 2020, Sexo da pessoa falecida é masculino, Idade ao falecer é 70 anos ou mais|
|Pessoas|pessoas_V02442|V02442|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2020 a dezembro de 2020, Sexo da pessoa falecida é feminino, Idade ao falecer é 0 a 4 anos|
|Pessoas|pessoas_V02443|V02443|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2020 a dezembro de 2020, Sexo da pessoa falecida é feminino, Idade ao falecer é 5 a 9 anos|
|Pessoas|pessoas_V02444|V02444|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2020 a dezembro de 2020, Sexo da pessoa falecida é feminino, Idade ao falecer é 10 a 14 anos|
|Pessoas|pessoas_V02445|V02445|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2020 a dezembro de 2020, Sexo da pessoa falecida é feminino, Idade ao falecer é 15 a 19 anos|
|Pessoas|pessoas_V02446|V02446|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2020 a dezembro de 2020, Sexo da pessoa falecida é feminino, Idade ao falecer é 20 a 24 anos|
|Pessoas|pessoas_V02447|V02447|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2020 a dezembro de 2020, Sexo da pessoa falecida é feminino, Idade ao falecer é 25 a 29 anos|
|Pessoas|pessoas_V02448|V02448|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2020 a dezembro de 2020, Sexo da pessoa falecida é feminino, Idade ao falecer é 30 a 39 anos|
|Pessoas|pessoas_V02449|V02449|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2020 a dezembro de 2020, Sexo da pessoa falecida é feminino, Idade ao falecer é 40 a 49 anos|
|Pessoas|pessoas_V02450|V02450|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2020 a dezembro de 2020, Sexo da pessoa falecida é feminino, Idade ao falecer é 50 a 59 anos|
|Pessoas|pessoas_V02451|V02451|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2020 a dezembro de 2020, Sexo da pessoa falecida é feminino, Idade ao falecer é 60 a 69 anos|
|Pessoas|pessoas_V02452|V02452|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2020 a dezembro de 2020, Sexo da pessoa falecida é feminino, Idade ao falecer é 70 anos ou mais|
|Pessoas|pessoas_V02453|V02453|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2021 a dezembro de 2021, Sexo da pessoa falecida é masculino, Idade ao falecer é 0 a 4 anos|
|Pessoas|pessoas_V02454|V02454|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2021 a dezembro de 2021, Sexo da pessoa falecida é masculino, Idade ao falecer é 5 a 9 anos|
|Pessoas|pessoas_V02455|V02455|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2021 a dezembro de 2021, Sexo da pessoa falecida é masculino, Idade ao falecer é 10 a 14 anos|
|Pessoas|pessoas_V02456|V02456|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2021 a dezembro de 2021, Sexo da pessoa falecida é masculino, Idade ao falecer é 15 a 19 anos|
|Pessoas|pessoas_V02457|V02457|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2021 a dezembro de 2021, Sexo da pessoa falecida é masculino, Idade ao falecer é 20 a 24 anos|
|Pessoas|pessoas_V02458|V02458|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2021 a dezembro de 2021, Sexo da pessoa falecida é masculino, Idade ao falecer é 25 a 29 anos|
|Pessoas|pessoas_V02459|V02459|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2021 a dezembro de 2021, Sexo da pessoa falecida é masculino, Idade ao falecer é 30 a 39 anos|
|Pessoas|pessoas_V02460|V02460|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2021 a dezembro de 2021, Sexo da pessoa falecida é masculino, Idade ao falecer é 40 a 49 anos|
|Pessoas|pessoas_V02461|V02461|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2021 a dezembro de 2021, Sexo da pessoa falecida é masculino, Idade ao falecer é 50 a 59 anos|
|Pessoas|pessoas_V02462|V02462|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2021 a dezembro de 2021, Sexo da pessoa falecida é masculino, Idade ao falecer é 60 a 69 anos|
|Pessoas|pessoas_V02463|V02463|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2021 a dezembro de 2021, Sexo da pessoa falecida é masculino, Idade ao falecer é 70 anos ou mais|
|Pessoas|pessoas_V02464|V02464|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2021 a dezembro de 2021, Sexo da pessoa falecida é feminino, Idade ao falecer é 0 a 4 anos|
|Pessoas|pessoas_V02465|V02465|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2021 a dezembro de 2021, Sexo da pessoa falecida é feminino, Idade ao falecer é 5 a 9 anos|
|Pessoas|pessoas_V02466|V02466|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2021 a dezembro de 2021, Sexo da pessoa falecida é feminino, Idade ao falecer é 10 a 14 anos|
|Pessoas|pessoas_V02467|V02467|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2021 a dezembro de 2021, Sexo da pessoa falecida é feminino, Idade ao falecer é 15 a 19 anos|
|Pessoas|pessoas_V02468|V02468|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2021 a dezembro de 2021, Sexo da pessoa falecida é feminino, Idade ao falecer é 20 a 24 anos|
|Pessoas|pessoas_V02469|V02469|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2021 a dezembro de 2021, Sexo da pessoa falecida é feminino, Idade ao falecer é 25 a 29 anos|
|Pessoas|pessoas_V02470|V02470|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2021 a dezembro de 2021, Sexo da pessoa falecida é feminino, Idade ao falecer é 30 a 39 anos|
|Pessoas|pessoas_V02471|V02471|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2021 a dezembro de 2021, Sexo da pessoa falecida é feminino, Idade ao falecer é 40 a 49 anos|
|Pessoas|pessoas_V02472|V02472|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2021 a dezembro de 2021, Sexo da pessoa falecida é feminino, Idade ao falecer é 50 a 59 anos|
|Pessoas|pessoas_V02473|V02473|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2021 a dezembro de 2021, Sexo da pessoa falecida é feminino, Idade ao falecer é 60 a 69 anos|
|Pessoas|pessoas_V02474|V02474|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2021 a dezembro de 2021, Sexo da pessoa falecida é feminino, Idade ao falecer é 70 anos ou mais|
|Pessoas|pessoas_V02475|V02475|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2022 a julho de 2022, Sexo da pessoa falecida é masculino, Idade ao falecer é 0 a 4 anos|
|Pessoas|pessoas_V02476|V02476|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2022 a julho de 2022, Sexo da pessoa falecida é masculino, Idade ao falecer é 5 a 9 anos|
|Pessoas|pessoas_V02477|V02477|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2022 a julho de 2022, Sexo da pessoa falecida é masculino, Idade ao falecer é 10 a 14 anos|
|Pessoas|pessoas_V02478|V02478|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2022 a julho de 2022, Sexo da pessoa falecida é masculino, Idade ao falecer é 15 a 19 anos|
|Pessoas|pessoas_V02479|V02479|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2022 a julho de 2022, Sexo da pessoa falecida é masculino, Idade ao falecer é 20 a 24 anos|
|Pessoas|pessoas_V02480|V02480|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2022 a julho de 2022, Sexo da pessoa falecida é masculino, Idade ao falecer é 25 a 29 anos|
|Pessoas|pessoas_V02481|V02481|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2022 a julho de 2022, Sexo da pessoa falecida é masculino, Idade ao falecer é 30 a 39 anos|
|Pessoas|pessoas_V02482|V02482|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2022 a julho de 2022, Sexo da pessoa falecida é masculino, Idade ao falecer é 40 a 49 anos|
|Pessoas|pessoas_V02483|V02483|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2022 a julho de 2022, Sexo da pessoa falecida é masculino, Idade ao falecer é 50 a 59 anos|
|Pessoas|pessoas_V02484|V02484|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2022 a julho de 2022, Sexo da pessoa falecida é masculino, Idade ao falecer é 60 a 69 anos|
|Pessoas|pessoas_V02485|V02485|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2022 a julho de 2022, Sexo da pessoa falecida é masculino, Idade ao falecer é 70 anos ou mais|
|Pessoas|pessoas_V02486|V02486|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2022 a julho de 2022, Sexo da pessoa falecida é feminino, Idade ao falecer é 0 a 4 anos|
|Pessoas|pessoas_V02487|V02487|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2022 a julho de 2022, Sexo da pessoa falecida é feminino, Idade ao falecer é 5 a 9 anos|
|Pessoas|pessoas_V02488|V02488|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2022 a julho de 2022, Sexo da pessoa falecida é feminino, Idade ao falecer é 10 a 14 anos|
|Pessoas|pessoas_V02489|V02489|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2022 a julho de 2022, Sexo da pessoa falecida é feminino, Idade ao falecer é 15 a 19 anos|
|Pessoas|pessoas_V02490|V02490|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2022 a julho de 2022, Sexo da pessoa falecida é feminino, Idade ao falecer é 20 a 24 anos|
|Pessoas|pessoas_V02491|V02491|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2022 a julho de 2022, Sexo da pessoa falecida é feminino, Idade ao falecer é 25 a 29 anos|
|Pessoas|pessoas_V02492|V02492|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2022 a julho de 2022, Sexo da pessoa falecida é feminino, Idade ao falecer é 30 a 39 anos|
|Pessoas|pessoas_V02493|V02493|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2022 a julho de 2022, Sexo da pessoa falecida é feminino, Idade ao falecer é 40 a 49 anos|
|Pessoas|pessoas_V02494|V02494|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2022 a julho de 2022, Sexo da pessoa falecida é feminino, Idade ao falecer é 50 a 59 anos|
|Pessoas|pessoas_V02495|V02495|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2022 a julho de 2022, Sexo da pessoa falecida é feminino, Idade ao falecer é 60 a 69 anos|
|Pessoas|pessoas_V02496|V02496|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2022 a julho de 2022, Sexo da pessoa falecida é feminino, Idade ao falecer é 70 anos ou mais|
|Pessoas|pessoas_V02497|V02497|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2019 a dezembro de 2019, Sexo da pessoa falecida é masculino, 0 a 14 anos|
|Pessoas|pessoas_V02498|V02498|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2019 a dezembro de 2019, Sexo da pessoa falecida é masculino, 15 a 29 anos|
|Pessoas|pessoas_V02499|V02499|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2019 a dezembro de 2019, Sexo da pessoa falecida é masculino, 30 a 59 anos|
|Pessoas|pessoas_V02500|V02500|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2019 a dezembro de 2019, Sexo da pessoa falecida é masculino, 60 anos ou mais|
|Pessoas|pessoas_V02501|V02501|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2019 a dezembro de 2019, Sexo da pessoa falecida é feminino, 0 a 14 anos|
|Pessoas|pessoas_V02502|V02502|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2019 a dezembro de 2019, Sexo da pessoa falecida é feminino, 15 a 29 anos|
|Pessoas|pessoas_V02503|V02503|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2019 a dezembro de 2019, Sexo da pessoa falecida é feminino, 30 a 59 anos|
|Pessoas|pessoas_V02504|V02504|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2019 a dezembro de 2019, Sexo da pessoa falecida é feminino, 60 anos ou mais|
|Pessoas|pessoas_V02505|V02505|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2020 a dezembro de 2020, Sexo da pessoa falecida é masculino, 0 a 14 anos|
|Pessoas|pessoas_V02506|V02506|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2020 a dezembro de 2020, Sexo da pessoa falecida é masculino, 15 a 29 anos|
|Pessoas|pessoas_V02507|V02507|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2020 a dezembro de 2020, Sexo da pessoa falecida é masculino, 30 a 59 anos|
|Pessoas|pessoas_V02508|V02508|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2020 a dezembro de 2020, Sexo da pessoa falecida é masculino, 60 anos ou mais|
|Pessoas|pessoas_V02509|V02509|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2020 a dezembro de 2020, Sexo da pessoa falecida é feminino, 0 a 14 anos|
|Pessoas|pessoas_V02510|V02510|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2020 a dezembro de 2020, Sexo da pessoa falecida é feminino, 15 a 29 anos|
|Pessoas|pessoas_V02511|V02511|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2020 a dezembro de 2020, Sexo da pessoa falecida é feminino, 30 a 59 anos|
|Pessoas|pessoas_V02512|V02512|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2020 a dezembro de 2020, Sexo da pessoa falecida é feminino, 60 anos ou mais|
|Pessoas|pessoas_V02513|V02513|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2021 a dezembro de 2021, Sexo da pessoa falecida é masculino, 0 a 14 anos|
|Pessoas|pessoas_V02514|V02514|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2021 a dezembro de 2021, Sexo da pessoa falecida é masculino, 15 a 29 anos|
|Pessoas|pessoas_V02515|V02515|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2021 a dezembro de 2021, Sexo da pessoa falecida é masculino, 30 a 59 anos|
|Pessoas|pessoas_V02516|V02516|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2021 a dezembro de 2021, Sexo da pessoa falecida é masculino, 60 anos ou mais|
|Pessoas|pessoas_V02517|V02517|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2021 a dezembro de 2021, Sexo da pessoa falecida é feminino, 0 a 14 anos|
|Pessoas|pessoas_V02518|V02518|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2021 a dezembro de 2021, Sexo da pessoa falecida é feminino, 15 a 29 anos|
|Pessoas|pessoas_V02519|V02519|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2021 a dezembro de 2021, Sexo da pessoa falecida é feminino, 30 a 59 anos|
|Pessoas|pessoas_V02520|V02520|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2021 a dezembro de 2021, Sexo da pessoa falecida é feminino, 60 anos ou mais|
|Pessoas|pessoas_V02521|V02521|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2022 a julho de 2022, Sexo da pessoa falecida é masculino, 0 a 14 anos|
|Pessoas|pessoas_V02522|V02522|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2022 a julho de 2022, Sexo da pessoa falecida é masculino, 15 a 29 anos|
|Pessoas|pessoas_V02523|V02523|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2022 a julho de 2022, Sexo da pessoa falecida é masculino, 30 a 59 anos|
|Pessoas|pessoas_V02524|V02524|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2022 a julho de 2022, Sexo da pessoa falecida é masculino, 60 anos ou mais|
|Pessoas|pessoas_V02525|V02525|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2022 a julho de 2022, Sexo da pessoa falecida é feminino, 0 a 14 anos|
|Pessoas|pessoas_V02526|V02526|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2022 a julho de 2022, Sexo da pessoa falecida é feminino, 15 a 29 anos|
|Pessoas|pessoas_V02527|V02527|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2022 a julho de 2022, Sexo da pessoa falecida é feminino, 30 a 59 anos|
|Pessoas|pessoas_V02528|V02528|Domicílio com pelo menos um morador indígena, Mês e ano de falecimento entre janeiro de 2022 a julho de 2022, Sexo da pessoa falecida é feminino, 60 anos ou mais|

## 4.6. Arquivo Quilombolas {#dic_quilombolas}

### Fonte de dados

* Planilha `Quilombolas` do arquivo `docs/original/2022_dictionary_tracts.xlsx`

Temas presentes na planilha: `Domicílio`; `Identificação Geográfica`; `Pessoas`.

### Dicionário de dados

|Tema|Nome no {censobr}|Nome original|Descrição da variável|
|-|-|-|-|
|Identificação Geográfica|code_tract|CD_SETOR|Geocódigo de Setor Censitário|
|Identificação Geográfica|situacao|SITUACAO|Situação do Setor Censitário Categorias observadas na planilha: `Urbana`; `Rural`.|
|Identificação Geográfica|code_situacao|CD_SIT|Situação detalhada do Setor Censitário Categorias: `1` = Área urbana de alta densidade de edificações de cidade ou vila; `2` = Área urbana de baixa densidade de edificações de cidade ou vila; `3` = Núcleo urbano; `5` = Aglomerado rural - Povoado; `6` = Aglomerado rural - Núcleo rural; `7` = Aglomerado rural - Lugarejo; `8` = Área rural (exclusive aglomerados); `9` = Massas de água.|
|Identificação Geográfica|code_type|CD_TIPO|Tipo do Setor Censitário Categorias: `0` = Não especial; `1` = Favela e Comunidade Urbana; `2` = Quartel e base militar; `3` = Alojamento / acampamento; `4` = Setor com baixo patamar domiciliar; `5` = Agrupamento indígena; `6` = Unidade prisional; `7` = Convento / hospital / ILPI / IACA; `8` = Agrovila do PA; `9` = Agrupamento quilombola.|
|Identificação Geográfica|area_km2|AREA_KM2|Área do Setor Censitário em quilômetros quadrados|
|Identificação Geográfica|code_region|CD_REGIAO|Código das Grandes Regiões (Regiões Geográficas)|
|Identificação Geográfica|name_region|NM_REGIAO|Nome das Grandes Regiões (Regiões Geográficas)|
|Identificação Geográfica|code_state|CD_UF|Código da Unidade da Federação|
|Identificação Geográfica|name_state|NM_UF|Nome da Unidade da Federação|
|Identificação Geográfica|code_muni|CD_MUN|Código do Município|
|Identificação Geográfica|name_muni|NM_MUN|Nome do Município|
|Identificação Geográfica|code_district|CD_DIST|Código do Distrito|
|Identificação Geográfica|name_district|NM_DIST|Nome do Distrito|
|Identificação Geográfica|code_subdistrict|CD_SUBDIST|Código do Subdistrito|
|Identificação Geográfica|name_subdistrict|NM_SUBDIST|Nome do Subdistrito|
|Identificação Geográfica|code_neighborhood|CD_BAIRRO|Código do Bairro|
|Identificação Geográfica|name_neighborhood|NM_BAIRRO|Nome do Bairro|
|Identificação Geográfica|code_nucleo_urbano|CD_NU|Código do Núcleo Urbano|
|Identificação Geográfica|name_nucleo_urbano|NM_NU|Nome do Núcleo Urbano|
|Identificação Geográfica|code_favela|CD_FCU|Código da Favela ou Comunidade Urbana|
|Identificação Geográfica|name_favela|NM_FCU|Nome da Favela ou Comunidade Urbana|
|Identificação Geográfica|code_aglomerado|CD_AGLOM|Código do Aglomerado|
|Identificação Geográfica|name_aglomerado|NM_AGLOM|Nome do Aglomerado|
|Identificação Geográfica|code_intermediate|CD_RGINT|Código da Região Geográfica Intermediária|
|Identificação Geográfica|name_intermediate|NM_RGINT|Nome da Região Geográfica Intermediária|
|Identificação Geográfica|code_immediate|CD_RGI|Código da Região Geográfica Imediata|
|Identificação Geográfica|name_immediate|NM_RGI|Nome da Região Geográfica Imediata|
|Identificação Geográfica|code_urban_concentration|CD_CONCURB|Código da Concentração Urbana|
|Identificação Geográfica|name_urban_concentration|NM_CONCURB|Nome da Concentração Urbana|
|Domicílio|domicilios_V03000|V03000|Domicílio com pelo menos um morador quilombola|
|Domicílio|domicilios_V03001|V03001|Domicílios Particulares Permanentes Ocupados, Moradores quilombolas no domicílio|
|Domicílio|domicilios_V03002|V03002|Domicílios Particulares Improvisados Ocupados, Moradores quilombolas no domicílio|
|Domicílio|domicilios_V03003|V03003|Domicílios Coletivos Com Morador, Moradores quilombolas no domicílio|
|Domicílio|domicilios_V03004|V03004|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa, Moradores quilombolas no domicílio|
|Domicílio|domicilios_V03005|V03005|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa de vila ou em condomínio, Moradores quilombolas no domicílio|
|Domicílio|domicilios_V03006|V03006|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é apartamento, Moradores quilombolas no domicílio|
|Domicílio|domicilios_V03007|V03007|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é habitação em casa de cômodos ou cortiço, Moradores quilombolas no domicílio|
|Domicílio|domicilios_V03008|V03008|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é habitação indígena sem paredes ou maloca, Moradores quilombolas no domicílio|
|Domicílio|domicilios_V03009|V03009|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é estrutura residencial permanente degradada ou inacabada, Moradores quilombolas no domicílio|
|Domicílio|domicilios_V03010|V03010|Domicílios Particulares Improvisados Ocupados, Tipo de espécie é tenda ou barraca de lona, plástico ou tecido, Moradores quilombolas no domicílio|
|Domicílio|domicilios_V03011|V03011|Domicílios Particulares Improvisados Ocupados, Tipo de espécie é dentro de estabelecimento em funcionamento, Moradores quilombolas no domicílio|
|Domicílio|domicilios_V03012|V03012|Domicílios Particulares Improvisados Ocupados, Outros tipos de espécie (abrigos naturais e outras estruturas improvisadas), Moradores quilombolas no domicílio|
|Domicílio|domicilios_V03013|V03013|Domicílios Particulares Improvisados Ocupados, Tipo de espécie é estrutura improvisada em logradouro público, exceto tenda ou barraca, Moradores quilombolas no domicílio|
|Domicílio|domicilios_V03014|V03014|Domicílios Particulares Improvisados Ocupados, Tipo de espécie é estrutura não residencial permanente degradada ou inacabada, Moradores quilombolas no domicílio|
|Domicílio|domicilios_V03015|V03015|Domicílios Particulares Improvisados Ocupados, Tipo de espécie é veículo (carro, caminhão, trailer, barco etc), Moradores quilombolas no domicílio|
|Domicílio|domicilios_V03016|V03016|Domicílios Coletivos Com Morador, Tipo de espécie é asilo ou outra instituição de longa permanência para idosos, Moradores quilombolas no domicílio|
|Domicílio|domicilios_V03017|V03017|Domicílios Coletivos Com Morador, Tipo de espécie é hotel ou pensão, Moradores quilombolas no domicílio|
|Domicílio|domicilios_V03018|V03018|Domicílios Coletivos Com Morador, Tipo de espécie é alojamento, Moradores quilombolas no domicílio|
|Domicílio|domicilios_V03019|V03019|Domicílios Coletivos Com Morador, Tipo de espécie é penitenciária, centro de detenção e similar, Moradores quilombolas no domicílio|
|Domicílio|domicilios_V03020|V03020|Domicílios Coletivos Com Morador, Outros tipos de espécie, Moradores quilombolas no domicílio|
|Domicílio|domicilios_V03021|V03021|Domicílios Coletivos Com Morador, Tipo de espécie é abrigo, albergue ou casa de passagem para população em situação de rua, Moradores quilombolas no domicílio|
|Domicílio|domicilios_V03022|V03022|Domicílios Coletivos Com Morador, Tipo de espécie é abrigo, casas de passagem ou república assistencial para outros grupos vulneráveis, Moradores quilombolas no domicílio|
|Domicílio|domicilios_V03023|V03023|Domicílios Coletivos Com Morador, Tipo de espécie é clínica psiquiátrica, comunidade terapêutica e similar, Moradores quilombolas no domicílio|
|Domicílio|domicilios_V03024|V03024|Domicílios Coletivos Com Morador, Tipo de espécie é orfanato e similar, Moradores quilombolas no domicílio|
|Domicílio|domicilios_V03025|V03025|Domicílios Coletivos Com Morador, Tipo de espécie é unidade de internação de menores, Moradores quilombolas no domicílio|
|Domicílio|domicilios_V03026|V03026|Domicílios Coletivos Com Morador, Tipo de espécie é quartel ou outra organização militar, Moradores quilombolas no domicílio|
|Domicílio|domicilios_V03027|V03027|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa, Domicílio com pelo menos um morador quilombola|
|Domicílio|domicilios_V03028|V03028|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa de vila ou em condomínio, Domicílio com pelo menos um morador quilombola|
|Domicílio|domicilios_V03029|V03029|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é apartamento, Domicílio com pelo menos um morador quilombola|
|Domicílio|domicilios_V03030|V03030|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é habitação em casa de cômodos ou cortiço, Domicílio com pelo menos um morador quilombola|
|Domicílio|domicilios_V03031|V03031|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é habitação indígena sem paredes ou maloca, Domicílio com pelo menos um morador quilombola|
|Domicílio|domicilios_V03032|V03032|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é estrutura residencial permanente degradada ou inacabada, Domicílio com pelo menos um morador quilombola|
|Domicílio|domicilios_V03033|V03033|Domicílios Particulares Improvisados Ocupados, Tipo de espécie é tenda ou barraca de lona, plástico ou tecido, Domicílio com pelo menos um morador quilombola|
|Domicílio|domicilios_V03034|V03034|Domicílios Particulares Improvisados Ocupados, Tipo de espécie é dentro de estabelecimento em funcionamento, Domicílio com pelo menos um morador quilombola|
|Domicílio|domicilios_V03035|V03035|Domicílios Particulares Improvisados Ocupados, Outros tipos de espécie (abrigos naturais e outras estruturas improvisadas), Domicílio com pelo menos um morador quilombola|
|Domicílio|domicilios_V03036|V03036|Domicílios Particulares Improvisados Ocupados, Tipo de espécie é estrutura improvisada em logradouro público, exceto tenda ou barraca, Domicílio com pelo menos um morador quilombola|
|Domicílio|domicilios_V03037|V03037|Domicílios Particulares Improvisados Ocupados, Tipo de espécie é estrutura não residencial permanente degradada ou inacabada, Domicílio com pelo menos um morador quilombola|
|Domicílio|domicilios_V03038|V03038|Domicílios Particulares Improvisados Ocupados, Tipo de espécie é veículo (carro, caminhão, trailer, barco etc), Domicílio com pelo menos um morador quilombola|
|Domicílio|domicilios_V03039|V03039|Domicílios Coletivos Com Morador, Tipo de espécie é asilo ou outra instituição de longa permanência para idosos, Domicílio com pelo menos um morador quilombola|
|Domicílio|domicilios_V03040|V03040|Domicílios Coletivos Com Morador, Tipo de espécie é hotel ou pensão, Domicílio com pelo menos um morador quilombola|
|Domicílio|domicilios_V03041|V03041|Domicílios Coletivos Com Morador, Tipo de espécie é alojamento, Domicílio com pelo menos um morador quilombola|
|Domicílio|domicilios_V03042|V03042|Domicílios Coletivos Com Morador, Tipo de espécie é penitenciária, centro de detenção e similar, Domicílio com pelo menos um morador quilombola|
|Domicílio|domicilios_V03043|V03043|Domicílios Coletivos Com Morador, Outros tipos de espécie, Domicílio com pelo menos um morador quilombola|
|Domicílio|domicilios_V03044|V03044|Domicílios Coletivos Com Morador, Tipo de espécie é abrigo, albergue ou casa de passagem para população em situação de rua, Domicílio com pelo menos um morador quilombola|
|Domicílio|domicilios_V03045|V03045|Domicílios Coletivos Com Morador, Tipo de espécie é abrigo, casas de passagem ou república assistencial para outros grupos vulneráveis, Domicílio com pelo menos um morador quilombola|
|Domicílio|domicilios_V03046|V03046|Domicílios Coletivos Com Morador, Tipo de espécie é clínica psiquiátrica, comunidade terapêutica e similar, Domicílio com pelo menos um morador quilombola|
|Domicílio|domicilios_V03047|V03047|Domicílios Coletivos Com Morador, Tipo de espécie é orfanato e similar, Domicílio com pelo menos um morador quilombola|
|Domicílio|domicilios_V03048|V03048|Domicílios Coletivos Com Morador, Tipo de espécie é unidade de internação de menores, Domicílio com pelo menos um morador quilombola|
|Domicílio|domicilios_V03049|V03049|Domicílios Coletivos Com Morador, Tipo de espécie é quartel ou outra organização militar, Domicílio com pelo menos um morador quilombola|
|Domicílio|domicilios_V03050|V03050|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa, Domicílio com pelo menos um morador quilombola|
|Domicílio|domicilios_V03051|V03051|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa de vila ou em condomínio, Domicílio com pelo menos um morador quilombola|
|Domicílio|domicilios_V03052|V03052|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é apartamento, Domicílio com pelo menos um morador quilombola|
|Domicílio|domicilios_V03053|V03053|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa, Moradores quilombolas no domicílio|
|Domicílio|domicilios_V03054|V03054|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é casa de vila ou em condomínio, Moradores quilombolas no domicílio|
|Domicílio|domicilios_V03055|V03055|Domicílios Particulares Permanentes Ocupados, Tipo de espécie é apartamento, Moradores quilombolas no domicílio|
|Domicílio|domicilios_V03056|V03056|Domicílios Particulares Permanentes Ocupados, Utiliza rede geral de distribuição, Moradores quilombolas no domicílio|
|Domicílio|domicilios_V03057|V03057|Domicílios Particulares Permanentes Ocupados, Utiliza poço profundo ou artesiano, Moradores quilombolas no domicílio|
|Domicílio|domicilios_V03058|V03058|Domicílios Particulares Permanentes Ocupados, Utiliza poço raso, freático ou cacimba, Moradores quilombolas no domicílio|
|Domicílio|domicilios_V03059|V03059|Domicílios Particulares Permanentes Ocupados, Utiliza fonte, nascente ou mina, Moradores quilombolas no domicílio|
|Domicílio|domicilios_V03060|V03060|Domicílios Particulares Permanentes Ocupados, Utiliza carro-pipa, Moradores quilombolas no domicílio|
|Domicílio|domicilios_V03061|V03061|Domicílios Particulares Permanentes Ocupados, Utiliza água da chuva armazenada, Moradores quilombolas no domicílio|
|Domicílio|domicilios_V03062|V03062|Domicílios Particulares Permanentes Ocupados, Utiliza rios, açudes, córregos, lagos e igarapés, Moradores quilombolas no domicílio|
|Domicílio|domicilios_V03063|V03063|Domicílios Particulares Permanentes Ocupados, Utiliza outra forma de abastecimento de água, Moradores quilombolas no domicílio|
|Domicílio|domicilios_V03064|V03064|Domicílios Particulares Permanentes Ocupados, Utiliza rede geral de distribuição, Domicílio com pelo menos um morador quilombola|
|Domicílio|domicilios_V03065|V03065|Domicílios Particulares Permanentes Ocupados, Utiliza poço profundo ou artesiano, Domicílio com pelo menos um morador quilombola|
|Domicílio|domicilios_V03066|V03066|Domicílios Particulares Permanentes Ocupados, Utiliza poço raso, freático ou cacimba, Domicílio com pelo menos um morador quilombola|
|Domicílio|domicilios_V03067|V03067|Domicílios Particulares Permanentes Ocupados, Utiliza fonte, nascente ou mina, Domicílio com pelo menos um morador quilombola|
|Domicílio|domicilios_V03068|V03068|Domicílios Particulares Permanentes Ocupados, Utiliza carro-pipa, Domicílio com pelo menos um morador quilombola|
|Domicílio|domicilios_V03069|V03069|Domicílios Particulares Permanentes Ocupados, Utiliza água da chuva armazenada, Domicílio com pelo menos um morador quilombola|
|Domicílio|domicilios_V03070|V03070|Domicílios Particulares Permanentes Ocupados, Utiliza rios, açudes, córregos, lagos e igarapés, Domicílio com pelo menos um morador quilombola|
|Domicílio|domicilios_V03071|V03071|Domicílios Particulares Permanentes Ocupados, Utiliza outra forma de abastecimento de água, Domicílio com pelo menos um morador quilombola|
|Domicílio|domicilios_V03072|V03072|Domicílios Particulares Permanentes Ocupados, Água chega encanada até dentro da casa, apartamento ou habitação, Moradores quilombolas no domicílio|
|Domicílio|domicilios_V03073|V03073|Domicílios Particulares Permanentes Ocupados, Água chega encanada, mas apenas ao terreno, Moradores quilombolas no domicílio|
|Domicílio|domicilios_V03074|V03074|Domicílios Particulares Permanentes Ocupados, Água não chega encanada ao domicílio, Moradores quilombolas no domicílio|
|Domicílio|domicilios_V03075|V03075|Domicílios Particulares Permanentes Ocupados, Água chega encanada até dentro da casa, apartamento ou habitação, Domicílio com pelo menos um morador quilombola|
|Domicílio|domicilios_V03076|V03076|Domicílios Particulares Permanentes Ocupados, Água chega encanada, mas apenas ao terreno, Domicílio com pelo menos um morador quilombola|
|Domicílio|domicilios_V03077|V03077|Domicílios Particulares Permanentes Ocupados, Água não chega encanada ao domicílio, Domicílio com pelo menos um morador quilombola|
|Domicílio|domicilios_V03078|V03078|Domicílios Particulares Permanentes Ocupados, Utiliza rede geral de distribuição, Água chega encanada até dentro da casa, apartamento ou habitação, Moradores quilombolas no domicílio|
|Domicílio|domicilios_V03079|V03079|Domicílios Particulares Permanentes Ocupados, Utiliza rede geral de distribuição, Água chega encanada, mas apenas ao terreno, Moradores quilombolas no domicílio|
|Domicílio|domicilios_V03080|V03080|Domicílios Particulares Permanentes Ocupados, Utiliza rede geral de distribuição, Água não chega encanada ao domicílio, Moradores quilombolas no domicílio|
|Domicílio|domicilios_V03081|V03081|Domicílios Particulares Permanentes Ocupados, Utiliza poço profundo ou artesiano, Água chega encanada até dentro da casa, apartamento ou habitação, Moradores quilombolas no domicílio|
|Domicílio|domicilios_V03082|V03082|Domicílios Particulares Permanentes Ocupados, Utiliza poço profundo ou artesiano, Água chega encanada, mas apenas ao terreno, Moradores quilombolas no domicílio|
|Domicílio|domicilios_V03083|V03083|Domicílios Particulares Permanentes Ocupados, Utiliza poço profundo ou artesiano, Água não chega encanada ao domicílio, Moradores quilombolas no domicílio|
|Domicílio|domicilios_V03084|V03084|Domicílios Particulares Permanentes Ocupados, Utiliza poço raso, freático ou cacimba, Água chega encanada até dentro da casa, apartamento ou habitação, Moradores quilombolas no domicílio|
|Domicílio|domicilios_V03085|V03085|Domicílios Particulares Permanentes Ocupados, Utiliza poço raso, freático ou cacimba, Água chega encanada, mas apenas ao terreno, Moradores quilombolas no domicílio|
|Domicílio|domicilios_V03086|V03086|Domicílios Particulares Permanentes Ocupados, Utiliza poço raso, freático ou cacimba, Água não chega encanada ao domicílio, Moradores quilombolas no domicílio|
|Domicílio|domicilios_V03087|V03087|Domicílios Particulares Permanentes Ocupados, Utiliza fonte, nascente ou mina, Água chega encanada até dentro da casa, apartamento ou habitação, Moradores quilombolas no domicílio|
|Domicílio|domicilios_V03088|V03088|Domicílios Particulares Permanentes Ocupados, Utiliza fonte, nascente ou mina, Água chega encanada, mas apenas ao terreno, Moradores quilombolas no domicílio|
|Domicílio|domicilios_V03089|V03089|Domicílios Particulares Permanentes Ocupados, Utiliza fonte, nascente ou mina, Água não chega encanada ao domicílio, Moradores quilombolas no domicílio|
|Domicílio|domicilios_V03090|V03090|Domicílios Particulares Permanentes Ocupados, Utiliza carro-pipa, Água chega encanada até dentro da casa, apartamento ou habitação, Moradores quilombolas no domicílio|
|Domicílio|domicilios_V03091|V03091|Domicílios Particulares Permanentes Ocupados, Utiliza carro-pipa, Água chega encanada, mas apenas ao terreno, Moradores quilombolas no domicílio|
|Domicílio|domicilios_V03092|V03092|Domicílios Particulares Permanentes Ocupados, Utiliza carro-pipa, Água não chega encanada ao domicílio, Moradores quilombolas no domicílio|
|Domicílio|domicilios_V03093|V03093|Domicílios Particulares Permanentes Ocupados, Utiliza água da chuva armazenada, Água chega encanada até dentro da casa, apartamento ou habitação, Moradores quilombolas no domicílio|
|Domicílio|domicilios_V03094|V03094|Domicílios Particulares Permanentes Ocupados, Utiliza água da chuva armazenada, Água chega encanada, mas apenas ao terreno, Moradores quilombolas no domicílio|
|Domicílio|domicilios_V03095|V03095|Domicílios Particulares Permanentes Ocupados, Utiliza água da chuva armazenada, Água não chega encanada ao domicílio, Moradores quilombolas no domicílio|
|Domicílio|domicilios_V03096|V03096|Domicílios Particulares Permanentes Ocupados, Utiliza rios, açudes, córregos, lagos e igarapés, Água chega encanada até dentro da casa, apartamento ou habitação, Moradores quilombolas no domicílio|
|Domicílio|domicilios_V03097|V03097|Domicílios Particulares Permanentes Ocupados, Utiliza rios, açudes, córregos, lagos e igarapés, Água chega encanada, mas apenas ao terreno, Moradores quilombolas no domicílio|
|Domicílio|domicilios_V03098|V03098|Domicílios Particulares Permanentes Ocupados, Utiliza rios, açudes, córregos, lagos e igarapés, Água não chega encanada ao domicílio, Moradores quilombolas no domicílio|
|Domicílio|domicilios_V03099|V03099|Domicílios Particulares Permanentes Ocupados, Utiliza outra forma de abastecimento de água, Água chega encanada até dentro da casa, apartamento ou habitação, Moradores quilombolas no domicílio|
|Domicílio|domicilios_V03100|V03100|Domicílios Particulares Permanentes Ocupados, Utiliza outra forma de abastecimento de água, Água chega encanada, mas apenas ao terreno, Moradores quilombolas no domicílio|
|Domicílio|domicilios_V03101|V03101|Domicílios Particulares Permanentes Ocupados, Utiliza outra forma de abastecimento de água, Água não chega encanada ao domicílio, Moradores quilombolas no domicílio|
|Domicílio|domicilios_V03102|V03102|Domicílios Particulares Permanentes Ocupados, Utiliza rede geral de distribuição, Água chega encanada até dentro da casa, apartamento ou habitação, Domicílio com pelo menos um morador quilombola|
|Domicílio|domicilios_V03103|V03103|Domicílios Particulares Permanentes Ocupados, Utiliza rede geral de distribuição, Água chega encanada, mas apenas ao terreno, Domicílio com pelo menos um morador quilombola|
|Domicílio|domicilios_V03104|V03104|Domicílios Particulares Permanentes Ocupados, Utiliza rede geral de distribuição, Água não chega encanada ao domicílio, Domicílio com pelo menos um morador quilombola|
|Domicílio|domicilios_V03105|V03105|Domicílios Particulares Permanentes Ocupados, Utiliza poço profundo ou artesiano, Água chega encanada até dentro da casa, apartamento ou habitação, Domicílio com pelo menos um morador quilombola|
|Domicílio|domicilios_V03106|V03106|Domicílios Particulares Permanentes Ocupados, Utiliza poço profundo ou artesiano, Água chega encanada, mas apenas ao terreno, Domicílio com pelo menos um morador quilombola|
|Domicílio|domicilios_V03107|V03107|Domicílios Particulares Permanentes Ocupados, Utiliza poço profundo ou artesiano, Água não chega encanada ao domicílio, Domicílio com pelo menos um morador quilombola|
|Domicílio|domicilios_V03108|V03108|Domicílios Particulares Permanentes Ocupados, Utiliza poço raso, freático ou cacimba, Água chega encanada até dentro da casa, apartamento ou habitação, Domicílio com pelo menos um morador quilombola|
|Domicílio|domicilios_V03109|V03109|Domicílios Particulares Permanentes Ocupados, Utiliza poço raso, freático ou cacimba, Água chega encanada, mas apenas ao terreno, Domicílio com pelo menos um morador quilombola|
|Domicílio|domicilios_V03110|V03110|Domicílios Particulares Permanentes Ocupados, Utiliza poço raso, freático ou cacimba, Água não chega encanada ao domicílio, Domicílio com pelo menos um morador quilombola|
|Domicílio|domicilios_V03111|V03111|Domicílios Particulares Permanentes Ocupados, Utiliza fonte, nascente ou mina, Água chega encanada até dentro da casa, apartamento ou habitação, Domicílio com pelo menos um morador quilombola|
|Domicílio|domicilios_V03112|V03112|Domicílios Particulares Permanentes Ocupados, Utiliza fonte, nascente ou mina, Água chega encanada, mas apenas ao terreno, Domicílio com pelo menos um morador quilombola|
|Domicílio|domicilios_V03113|V03113|Domicílios Particulares Permanentes Ocupados, Utiliza fonte, nascente ou mina, Água não chega encanada ao domicílio, Domicílio com pelo menos um morador quilombola|
|Domicílio|domicilios_V03114|V03114|Domicílios Particulares Permanentes Ocupados, Utiliza carro-pipa, Água chega encanada até dentro da casa, apartamento ou habitação, Domicílio com pelo menos um morador quilombola|
|Domicílio|domicilios_V03115|V03115|Domicílios Particulares Permanentes Ocupados, Utiliza carro-pipa, Água chega encanada, mas apenas ao terreno, Domicílio com pelo menos um morador quilombola|
|Domicílio|domicilios_V03116|V03116|Domicílios Particulares Permanentes Ocupados, Utiliza carro-pipa, Água não chega encanada ao domicílio, Domicílio com pelo menos um morador quilombola|
|Domicílio|domicilios_V03117|V03117|Domicílios Particulares Permanentes Ocupados, Utiliza água da chuva armazenada, Água chega encanada até dentro da casa, apartamento ou habitação, Domicílio com pelo menos um morador quilombola|
|Domicílio|domicilios_V03118|V03118|Domicílios Particulares Permanentes Ocupados, Utiliza água da chuva armazenada, Água chega encanada, mas apenas ao terreno, Domicílio com pelo menos um morador quilombola|
|Domicílio|domicilios_V03119|V03119|Domicílios Particulares Permanentes Ocupados, Utiliza água da chuva armazenada, Água não chega encanada ao domicílio, Domicílio com pelo menos um morador quilombola|
|Domicílio|domicilios_V03120|V03120|Domicílios Particulares Permanentes Ocupados, Utiliza rios, açudes, córregos, lagos e igarapés, Água chega encanada até dentro da casa, apartamento ou habitação, Domicílio com pelo menos um morador quilombola|
|Domicílio|domicilios_V03121|V03121|Domicílios Particulares Permanentes Ocupados, Utiliza rios, açudes, córregos, lagos e igarapés, Água chega encanada, mas apenas ao terreno, Domicílio com pelo menos um morador quilombola|
|Domicílio|domicilios_V03122|V03122|Domicílios Particulares Permanentes Ocupados, Utiliza rios, açudes, córregos, lagos e igarapés, Água não chega encanada ao domicílio, Domicílio com pelo menos um morador quilombola|
|Domicílio|domicilios_V03123|V03123|Domicílios Particulares Permanentes Ocupados, Utiliza outra forma de abastecimento de água, Água chega encanada até dentro da casa, apartamento ou habitação, Domicílio com pelo menos um morador quilombola|
|Domicílio|domicilios_V03124|V03124|Domicílios Particulares Permanentes Ocupados, Utiliza outra forma de abastecimento de água, Água chega encanada, mas apenas ao terreno, Domicílio com pelo menos um morador quilombola|
|Domicílio|domicilios_V03125|V03125|Domicílios Particulares Permanentes Ocupados, Utiliza outra forma de abastecimento de água, Água não chega encanada ao domicílio, Domicílio com pelo menos um morador quilombola|
|Domicílio|domicilios_V03126|V03126|Domicílios Particulares Permanentes Ocupados, Domicílio possui ligação à rede geral de distribuição de água, mas utiliza principalmente outra forma, Moradores quilombolas no domicílio|
|Domicílio|domicilios_V03127|V03127|Domicílios Particulares Permanentes Ocupados, Domicílio não possui ligação à rede geral de distribuição de água, Moradores quilombolas no domicílio|
|Domicílio|domicilios_V03128|V03128|Domicílios Particulares Permanentes Ocupados, Domicílio possui ligação à rede geral de distribuição de água, mas utiliza principalmente outra forma, Domicílio com pelo menos um morador quilombola|
|Domicílio|domicilios_V03129|V03129|Domicílios Particulares Permanentes Ocupados, Domicílio não possui ligação à rede geral de distribuição de água, Domicílio com pelo menos um morador quilombola|
|Domicílio|domicilios_V03130|V03130|Domicílios Particulares Permanentes Ocupados, Domicílio possui ligação à rede geral de distribuição de água, mas utiliza principalmente outra forma, Água chega encanada até dentro da casa, apartamento ou habitação, Moradores quilombolas no domicílio|
|Domicílio|domicilios_V03131|V03131|Domicílios Particulares Permanentes Ocupados, Domicílio possui ligação à rede geral de distribuição de água, mas utiliza principalmente outra forma, Água chega encanada, mas apenas ao terreno, Moradores quilombolas no domicílio|
|Domicílio|domicilios_V03132|V03132|Domicílios Particulares Permanentes Ocupados, Domicílio possui ligação à rede geral de distribuição de água, mas utiliza principalmente outra forma, Água não chega encanada ao domicílio, Moradores quilombolas no domicílio|
|Domicílio|domicilios_V03133|V03133|Domicílios Particulares Permanentes Ocupados, Domicílio não possui ligação à rede geral de distribuição de água, Água chega encanada até dentro da casa, apartamento ou habitação, Moradores quilombolas no domicílio|
|Domicílio|domicilios_V03134|V03134|Domicílios Particulares Permanentes Ocupados, Domicílio não possui ligação à rede geral de distribuição de água, Água chega encanada, mas apenas ao terreno, Moradores quilombolas no domicílio|
|Domicílio|domicilios_V03135|V03135|Domicílios Particulares Permanentes Ocupados, Domicílio não possui ligação à rede geral de distribuição de água, Água não chega encanada ao domicílio, Moradores quilombolas no domicílio|
|Domicílio|domicilios_V03136|V03136|Domicílios Particulares Permanentes Ocupados, Domicílio possui ligação à rede geral de distribuição de água, mas utiliza principalmente outra forma, Água chega encanada até dentro da casa, apartamento ou habitação, Domicílio com pelo menos um morador quilombola|
|Domicílio|domicilios_V03137|V03137|Domicílios Particulares Permanentes Ocupados, Domicílio possui ligação à rede geral de distribuição de água, mas utiliza principalmente outra forma, Água chega encanada, mas apenas ao terreno, Domicílio com pelo menos um morador quilombola|
|Domicílio|domicilios_V03138|V03138|Domicílios Particulares Permanentes Ocupados, Domicílio possui ligação à rede geral de distribuição de água, mas utiliza principalmente outra forma, Água não chega encanada ao domicílio, Domicílio com pelo menos um morador quilombola|
|Domicílio|domicilios_V03139|V03139|Domicílios Particulares Permanentes Ocupados, Domicílio não possui ligação à rede geral de distribuição de água, Água chega encanada até dentro da casa, apartamento ou habitação, Domicílio com pelo menos um morador quilombola|
|Domicílio|domicilios_V03140|V03140|Domicílios Particulares Permanentes Ocupados, Domicílio não possui ligação à rede geral de distribuição de água, Água chega encanada, mas apenas ao terreno, Domicílio com pelo menos um morador quilombola|
|Domicílio|domicilios_V03141|V03141|Domicílios Particulares Permanentes Ocupados, Domicílio não possui ligação à rede geral de distribuição de água, Água não chega encanada ao domicílio, Domicílio com pelo menos um morador quilombola|
|Domicílio|domicilios_V03142|V03142|Domicílios Particulares Permanentes Ocupados, Com banheiro de uso exclusivo com chuveiro e vaso sanitário, Moradores quilombolas no domicílio|
|Domicílio|domicilios_V03143|V03143|Domicílios Particulares Permanentes Ocupados, Sem banheiro de uso exclusivo com chuveiro e vaso sanitário, Moradores quilombolas no domicílio|
|Domicílio|domicilios_V03144|V03144|Domicílios Particulares Permanentes Ocupados, Com banheiro de uso exclusivo com chuveiro e vaso sanitário, Domicílio com pelo menos um morador quilombola|
|Domicílio|domicilios_V03145|V03145|Domicílios Particulares Permanentes Ocupados, Sem banheiro de uso exclusivo com chuveiro e vaso sanitário, Domicílio com pelo menos um morador quilombola|
|Domicílio|domicilios_V03146|V03146|Domicílios Particulares Permanentes Ocupados, Utiliza banheiro de uso comum a mais de um domicílio, com chuveiro e vaso sanitário, inclusive os localizados no terreno, Moradores quilombolas no domicílio|
|Domicílio|domicilios_V03147|V03147|Domicílios Particulares Permanentes Ocupados, Não utiliza banheiro de uso comum a mais de um domicílio, com chuveiro e vaso sanitário, inclusive os localizados no terreno, Moradores quilombolas no domicílio|
|Domicílio|domicilios_V03148|V03148|Domicílios Particulares Permanentes Ocupados, Utiliza banheiro de uso comum a mais de um domicílio, com chuveiro e vaso sanitário, inclusive os localizados no terreno, Domicílio com pelo menos um morador quilombola|
|Domicílio|domicilios_V03149|V03149|Domicílios Particulares Permanentes Ocupados, Não utiliza banheiro de uso comum a mais de um domicílio, com chuveiro e vaso sanitário, inclusive os localizados no terreno, Domicílio com pelo menos um morador quilombola|
|Domicílio|domicilios_V03150|V03150|Domicílios Particulares Permanentes Ocupados, 1 banheiro de uso exclusivo com chuveiro e vaso sanitário existentes no domicílio, Moradores quilombolas no domicílio|
|Domicílio|domicilios_V03151|V03151|Domicílios Particulares Permanentes Ocupados, 2 banheiros de uso exclusivo com chuveiro e vaso sanitário existentes no domicílio, Moradores quilombolas no domicílio|
|Domicílio|domicilios_V03152|V03152|Domicílios Particulares Permanentes Ocupados, 3 banheiros de uso exclusivo com chuveiro e vaso sanitário existentes no domicílio, Moradores quilombolas no domicílio|
|Domicílio|domicilios_V03153|V03153|Domicílios Particulares Permanentes Ocupados, 4 ou mais banheiros de uso exclusivo com chuveiro e vaso sanitário existentes no domicílio, Moradores quilombolas no domicílio|
|Domicílio|domicilios_V03154|V03154|Domicílios Particulares Permanentes Ocupados, 1 banheiro de uso exclusivo com chuveiro e vaso sanitário existentes no domicílio, Domicílio com pelo menos um morador quilombola|
|Domicílio|domicilios_V03155|V03155|Domicílios Particulares Permanentes Ocupados, 2 banheiros de uso exclusivo com chuveiro e vaso sanitário existentes no domicílio, Domicílio com pelo menos um morador quilombola|
|Domicílio|domicilios_V03156|V03156|Domicílios Particulares Permanentes Ocupados, 3 banheiros de uso exclusivo com chuveiro e vaso sanitário existentes no domicílio, Domicílio com pelo menos um morador quilombola|
|Domicílio|domicilios_V03157|V03157|Domicílios Particulares Permanentes Ocupados, 4 ou mais banheiros de uso exclusivo com chuveiro e vaso sanitário existentes no domicílio, Domicílio com pelo menos um morador quilombola|
|Domicílio|domicilios_V03158|V03158|Domicílios Particulares Permanentes Ocupados, Utiliza sanitário ou buraco para dejeções, inclusive os localizados no terreno, Moradores quilombolas no domicílio|
|Domicílio|domicilios_V03159|V03159|Domicílios Particulares Permanentes Ocupados, Não utiliza sanitário ou buraco para dejeções, inclusive os localizados no terreno, Moradores quilombolas no domicílio|
|Domicílio|domicilios_V03160|V03160|Domicílios Particulares Permanentes Ocupados, Utiliza sanitário ou buraco para dejeções, inclusive os localizados no terreno, Domicílio com pelo menos um morador quilombola|
|Domicílio|domicilios_V03161|V03161|Domicílios Particulares Permanentes Ocupados, Não utiliza sanitário ou buraco para dejeções, inclusive os localizados no terreno, Domicílio com pelo menos um morador quilombola|
|Domicílio|domicilios_V03162|V03162|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é rede geral ou pluvial, Moradores quilombolas no domicílio|
|Domicílio|domicilios_V03163|V03163|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é fossa séptica ou fossa filtro ligada à rede, Moradores quilombolas no domicílio|
|Domicílio|domicilios_V03164|V03164|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é fossa séptica ou fossa filtro não ligada à rede, Moradores quilombolas no domicílio|
|Domicílio|domicilios_V03165|V03165|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é fossa rudimentar ou buraco, Moradores quilombolas no domicílio|
|Domicílio|domicilios_V03166|V03166|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é vala, Moradores quilombolas no domicílio|
|Domicílio|domicilios_V03167|V03167|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é rio, lago, córrego ou mar, Moradores quilombolas no domicílio|
|Domicílio|domicilios_V03168|V03168|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é outra forma, Moradores quilombolas no domicílio|
|Domicílio|domicilios_V03169|V03169|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto inexistente, pois não tinham banheiro nem sanitário, Moradores quilombolas no domicílio|
|Domicílio|domicilios_V03170|V03170|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é rede geral ou pluvial, Domicílio com pelo menos um morador quilombola|
|Domicílio|domicilios_V03171|V03171|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é fossa séptica ou fossa filtro ligada à rede, Domicílio com pelo menos um morador quilombola|
|Domicílio|domicilios_V03172|V03172|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é fossa séptica ou fossa filtro não ligada à rede, Domicílio com pelo menos um morador quilombola|
|Domicílio|domicilios_V03173|V03173|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é fossa rudimentar ou buraco, Domicílio com pelo menos um morador quilombola|
|Domicílio|domicilios_V03174|V03174|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é vala, Domicílio com pelo menos um morador quilombola|
|Domicílio|domicilios_V03175|V03175|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é rio, lago, córrego ou mar, Domicílio com pelo menos um morador quilombola|
|Domicílio|domicilios_V03176|V03176|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto do banheiro ou sanitário ou buraco para dejeções é outra forma, Domicílio com pelo menos um morador quilombola|
|Domicílio|domicilios_V03177|V03177|Domicílios Particulares Permanentes Ocupados, Destinação do esgoto inexistente, pois não tinham banheiro nem sanitário, Domicílio com pelo menos um morador quilombola|
|Domicílio|domicilios_V03178|V03178|Domicílios Particulares Permanentes Ocupados, Lixo coletado no domicílio por serviço de limpeza, Moradores quilombolas no domicílio|
|Domicílio|domicilios_V03179|V03179|Domicílios Particulares Permanentes Ocupados, Lixo depositado em caçamba de serviço de limpeza, Moradores quilombolas no domicílio|
|Domicílio|domicilios_V03180|V03180|Domicílios Particulares Permanentes Ocupados, Lixo queimado na propriedade, Moradores quilombolas no domicílio|
|Domicílio|domicilios_V03181|V03181|Domicílios Particulares Permanentes Ocupados, Lixo enterrado na propriedade, Moradores quilombolas no domicílio|
|Domicílio|domicilios_V03182|V03182|Domicílios Particulares Permanentes Ocupados, Lixo jogado em terreno baldio, encosta ou área pública, Moradores quilombolas no domicílio|
|Domicílio|domicilios_V03183|V03183|Domicílios Particulares Permanentes Ocupados, Outro destino do lixo, Moradores quilombolas no domicílio|
|Domicílio|domicilios_V03184|V03184|Domicílios Particulares Permanentes Ocupados, Lixo coletado no domicílio por serviço de limpeza, Domicílio com pelo menos um morador quilombola|
|Domicílio|domicilios_V03185|V03185|Domicílios Particulares Permanentes Ocupados, Lixo depositado em caçamba de serviço de limpeza, Domicílio com pelo menos um morador quilombola|
|Domicílio|domicilios_V03186|V03186|Domicílios Particulares Permanentes Ocupados, Lixo queimado na propriedade, Domicílio com pelo menos um morador quilombola|
|Domicílio|domicilios_V03187|V03187|Domicílios Particulares Permanentes Ocupados, Lixo enterrado na propriedade, Domicílio com pelo menos um morador quilombola|
|Domicílio|domicilios_V03188|V03188|Domicílios Particulares Permanentes Ocupados, Lixo jogado em terreno baldio, encosta ou área pública, Domicílio com pelo menos um morador quilombola|
|Domicílio|domicilios_V03189|V03189|Domicílios Particulares Permanentes Ocupados, Outro destino do lixo, Domicílio com pelo menos um morador quilombola|
|Domicílio|domicilios_V03190|V03190|Domicílios Particulares Permanentes Ocupados, Lixo coletado, Moradores quilombolas no domicílio|
|Domicílio|domicilios_V03191|V03191|Domicílios Particulares Permanentes Ocupados, Lixo não coletado, Moradores quilombolas no domicílio|
|Domicílio|domicilios_V03192|V03192|Domicílios Particulares Permanentes Ocupados, Lixo coletado, Domicílio com pelo menos um morador quilombola|
|Domicílio|domicilios_V03193|V03193|Domicílios Particulares Permanentes Ocupados, Lixo não coletado, Domicílio com pelo menos um morador quilombola|
|Domicílio|domicilios_V03194|V03194|Domicílios Particulares Permanentes Ocupados, Domicílio com pelo menos um morador quilombola, Existe pessoa falecida, no período de janeiro de 2019 a julho de 2022, que morava no domicílio|
|Domicílio|domicilios_V03195|V03195|Domicílios Particulares Permanentes Ocupados, Domicílio com pelo menos um morador quilombola, Não existe pessoa falecida, no período de janeiro de 2019 a julho de 2022, que morava no domicílio|
|Pessoas|pessoas_V03196|V03196|Pessoa quilombola|
|Pessoas|pessoas_V03197|V03197|Sexo masculino, Pessoa quilombola|
|Pessoas|pessoas_V03198|V03198|Sexo feminino, Pessoa quilombola|
|Pessoas|pessoas_V03199|V03199|0 a 29 anos, Pessoa quilombola|
|Pessoas|pessoas_V03200|V03200|30 a 59 anos, Pessoa quilombola|
|Pessoas|pessoas_V03201|V03201|60 anos ou mais, Pessoa quilombola|
|Pessoas|pessoas_V03202|V03202|0 a 14 anos, Pessoa quilombola|
|Pessoas|pessoas_V03203|V03203|15 a 29 anos, Pessoa quilombola|
|Pessoas|pessoas_V03204|V03204|30 a 59 anos, Pessoa quilombola|
|Pessoas|pessoas_V03205|V03205|60 anos ou mais, Pessoa quilombola|
|Pessoas|pessoas_V03206|V03206|0 a 14 anos, Pessoa quilombola|
|Pessoas|pessoas_V03207|V03207|15 a 29 anos, Pessoa quilombola|
|Pessoas|pessoas_V03208|V03208|30 a 49 anos, Pessoa quilombola|
|Pessoas|pessoas_V03209|V03209|50 anos ou mais, Pessoa quilombola|
|Pessoas|pessoas_V03210|V03210|Sexo masculino, 0 a 29 anos, Pessoa quilombola|
|Pessoas|pessoas_V03211|V03211|Sexo masculino, 30 a 59 anos, Pessoa quilombola|
|Pessoas|pessoas_V03212|V03212|Sexo masculino, 60 anos ou mais, Pessoa quilombola|
|Pessoas|pessoas_V03213|V03213|Sexo feminino, 0 a 29 anos, Pessoa quilombola|
|Pessoas|pessoas_V03214|V03214|Sexo feminino, 30 a 59 anos, Pessoa quilombola|
|Pessoas|pessoas_V03215|V03215|Sexo feminino, 60 anos ou mais, Pessoa quilombola|
|Pessoas|pessoas_V03216|V03216|Sexo masculino, 0 a 14 anos, Pessoa quilombola|
|Pessoas|pessoas_V03217|V03217|Sexo masculino, 15 a 29 anos, Pessoa quilombola|
|Pessoas|pessoas_V03218|V03218|Sexo masculino, 30 a 59 anos, Pessoa quilombola|
|Pessoas|pessoas_V03219|V03219|Sexo masculino, 60 anos ou mais, Pessoa quilombola|
|Pessoas|pessoas_V03220|V03220|Sexo feminino, 0 a 14 anos, Pessoa quilombola|
|Pessoas|pessoas_V03221|V03221|Sexo feminino, 15 a 29 anos, Pessoa quilombola|
|Pessoas|pessoas_V03222|V03222|Sexo feminino, 30 a 59 anos, Pessoa quilombola|
|Pessoas|pessoas_V03223|V03223|Sexo feminino, 60 anos ou mais, Pessoa quilombola|
|Pessoas|pessoas_V03224|V03224|Sexo masculino, 0 a 14 anos, Pessoa quilombola|
|Pessoas|pessoas_V03225|V03225|Sexo masculino, 15 a 29 anos, Pessoa quilombola|
|Pessoas|pessoas_V03226|V03226|Sexo masculino, 30 a 49 anos, Pessoa quilombola|
|Pessoas|pessoas_V03227|V03227|Sexo masculino, 50 anos ou mais, Pessoa quilombola|
|Pessoas|pessoas_V03228|V03228|Sexo feminino, 0 a 14 anos, Pessoa quilombola|
|Pessoas|pessoas_V03229|V03229|Sexo feminino, 15 a 29 anos, Pessoa quilombola|
|Pessoas|pessoas_V03230|V03230|Sexo feminino, 30 a 49 anos, Pessoa quilombola|
|Pessoas|pessoas_V03231|V03231|Sexo feminino, 50 anos ou mais, Pessoa quilombola|
|Pessoas|pessoas_V03232|V03232|15 a 19 anos, Pessoa quilombola|
|Pessoas|pessoas_V03233|V03233|20 a 24 anos, Pessoa quilombola|
|Pessoas|pessoas_V03234|V03234|25 a 29 anos, Pessoa quilombola|
|Pessoas|pessoas_V03235|V03235|30 a 34 anos, Pessoa quilombola|
|Pessoas|pessoas_V03236|V03236|35 a 39 anos, Pessoa quilombola|
|Pessoas|pessoas_V03237|V03237|40 a 44 anos, Pessoa quilombola|
|Pessoas|pessoas_V03238|V03238|45 a 49 anos, Pessoa quilombola|
|Pessoas|pessoas_V03239|V03239|50 a 54 anos, Pessoa quilombola|
|Pessoas|pessoas_V03240|V03240|55 a 59 anos, Pessoa quilombola|
|Pessoas|pessoas_V03241|V03241|60 a 64 anos, Pessoa quilombola|
|Pessoas|pessoas_V03242|V03242|65 a 69 anos, Pessoa quilombola|
|Pessoas|pessoas_V03243|V03243|70 a 79 anos, Pessoa quilombola|
|Pessoas|pessoas_V03244|V03244|80 anos ou mais, Pessoa quilombola|
|Pessoas|pessoas_V03245|V03245|Sexo masculino, 15 a 19 anos, Pessoa quilombola|
|Pessoas|pessoas_V03246|V03246|Sexo masculino, 20 a 24 anos, Pessoa quilombola|
|Pessoas|pessoas_V03247|V03247|Sexo masculino, 25 a 29 anos, Pessoa quilombola|
|Pessoas|pessoas_V03248|V03248|Sexo masculino, 30 a 34 anos, Pessoa quilombola|
|Pessoas|pessoas_V03249|V03249|Sexo masculino, 35 a 39 anos, Pessoa quilombola|
|Pessoas|pessoas_V03250|V03250|Sexo masculino, 40 a 44 anos, Pessoa quilombola|
|Pessoas|pessoas_V03251|V03251|Sexo masculino, 45 a 49 anos, Pessoa quilombola|
|Pessoas|pessoas_V03252|V03252|Sexo masculino, 50 a 54 anos, Pessoa quilombola|
|Pessoas|pessoas_V03253|V03253|Sexo masculino, 55 a 59 anos, Pessoa quilombola|
|Pessoas|pessoas_V03254|V03254|Sexo masculino, 60 a 64 anos, Pessoa quilombola|
|Pessoas|pessoas_V03255|V03255|Sexo masculino, 65 a 69 anos, Pessoa quilombola|
|Pessoas|pessoas_V03256|V03256|Sexo masculino, 70 a 79 anos, Pessoa quilombola|
|Pessoas|pessoas_V03257|V03257|Sexo masculino, 80 anos ou mais, Pessoa quilombola|
|Pessoas|pessoas_V03258|V03258|Sexo feminino, 15 a 19 anos, Pessoa quilombola|
|Pessoas|pessoas_V03259|V03259|Sexo feminino, 20 a 24 anos, Pessoa quilombola|
|Pessoas|pessoas_V03260|V03260|Sexo feminino, 25 a 29 anos, Pessoa quilombola|
|Pessoas|pessoas_V03261|V03261|Sexo feminino, 30 a 34 anos, Pessoa quilombola|
|Pessoas|pessoas_V03262|V03262|Sexo feminino, 35 a 39 anos, Pessoa quilombola|
|Pessoas|pessoas_V03263|V03263|Sexo feminino, 40 a 44 anos, Pessoa quilombola|
|Pessoas|pessoas_V03264|V03264|Sexo feminino, 45 a 49 anos, Pessoa quilombola|
|Pessoas|pessoas_V03265|V03265|Sexo feminino, 50 a 54 anos, Pessoa quilombola|
|Pessoas|pessoas_V03266|V03266|Sexo feminino, 55 a 59 anos, Pessoa quilombola|
|Pessoas|pessoas_V03267|V03267|Sexo feminino, 60 a 64 anos, Pessoa quilombola|
|Pessoas|pessoas_V03268|V03268|Sexo feminino, 65 a 69 anos, Pessoa quilombola|
|Pessoas|pessoas_V03269|V03269|Sexo feminino, 70 a 79 anos, Pessoa quilombola|
|Pessoas|pessoas_V03270|V03270|Sexo feminino, 80 anos ou mais, Pessoa quilombola|
|Pessoas|pessoas_V03271|V03271|0 anos, Pessoa quilombola|
|Pessoas|pessoas_V03272|V03272|1 ano, Pessoa quilombola|
|Pessoas|pessoas_V03273|V03273|2 anos, Pessoa quilombola|
|Pessoas|pessoas_V03274|V03274|3 anos, Pessoa quilombola|
|Pessoas|pessoas_V03275|V03275|4 anos, Pessoa quilombola|
|Pessoas|pessoas_V03276|V03276|5 anos, Pessoa quilombola|
|Pessoas|pessoas_V03277|V03277|6 anos, Pessoa quilombola|
|Pessoas|pessoas_V03278|V03278|7 anos, Pessoa quilombola|
|Pessoas|pessoas_V03279|V03279|8 anos, Pessoa quilombola|
|Pessoas|pessoas_V03280|V03280|9 anos, Pessoa quilombola|
|Pessoas|pessoas_V03281|V03281|10 anos, Pessoa quilombola|
|Pessoas|pessoas_V03282|V03282|11 anos, Pessoa quilombola|
|Pessoas|pessoas_V03283|V03283|12 anos, Pessoa quilombola|
|Pessoas|pessoas_V03284|V03284|13 anos, Pessoa quilombola|
|Pessoas|pessoas_V03285|V03285|14 anos, Pessoa quilombola|
|Pessoas|pessoas_V03286|V03286|15 anos, Pessoa quilombola|
|Pessoas|pessoas_V03287|V03287|16 anos, Pessoa quilombola|
|Pessoas|pessoas_V03288|V03288|17 anos, Pessoa quilombola|
|Pessoas|pessoas_V03289|V03289|18 anos, Pessoa quilombola|
|Pessoas|pessoas_V03290|V03290|19 anos, Pessoa quilombola|
|Pessoas|pessoas_V03291|V03291|20 anos, Pessoa quilombola|
|Pessoas|pessoas_V03292|V03292|21 anos, Pessoa quilombola|
|Pessoas|pessoas_V03293|V03293|22 anos, Pessoa quilombola|
|Pessoas|pessoas_V03294|V03294|23 anos, Pessoa quilombola|
|Pessoas|pessoas_V03295|V03295|24 anos, Pessoa quilombola|
|Pessoas|pessoas_V03296|V03296|25 anos, Pessoa quilombola|
|Pessoas|pessoas_V03297|V03297|26 anos, Pessoa quilombola|
|Pessoas|pessoas_V03298|V03298|27 anos, Pessoa quilombola|
|Pessoas|pessoas_V03299|V03299|28 anos, Pessoa quilombola|
|Pessoas|pessoas_V03300|V03300|29 anos, Pessoa quilombola|
|Pessoas|pessoas_V03301|V03301|30 anos, Pessoa quilombola|
|Pessoas|pessoas_V03302|V03302|31 anos, Pessoa quilombola|
|Pessoas|pessoas_V03303|V03303|32 anos, Pessoa quilombola|
|Pessoas|pessoas_V03304|V03304|33 anos, Pessoa quilombola|
|Pessoas|pessoas_V03305|V03305|34 anos, Pessoa quilombola|
|Pessoas|pessoas_V03306|V03306|35 anos, Pessoa quilombola|
|Pessoas|pessoas_V03307|V03307|36 anos, Pessoa quilombola|
|Pessoas|pessoas_V03308|V03308|37 anos, Pessoa quilombola|
|Pessoas|pessoas_V03309|V03309|38 anos, Pessoa quilombola|
|Pessoas|pessoas_V03310|V03310|39 anos, Pessoa quilombola|
|Pessoas|pessoas_V03311|V03311|40 anos, Pessoa quilombola|
|Pessoas|pessoas_V03312|V03312|41 anos, Pessoa quilombola|
|Pessoas|pessoas_V03313|V03313|42 anos, Pessoa quilombola|
|Pessoas|pessoas_V03314|V03314|43 anos, Pessoa quilombola|
|Pessoas|pessoas_V03315|V03315|44 anos, Pessoa quilombola|
|Pessoas|pessoas_V03316|V03316|45 anos, Pessoa quilombola|
|Pessoas|pessoas_V03317|V03317|46 anos, Pessoa quilombola|
|Pessoas|pessoas_V03318|V03318|47 anos, Pessoa quilombola|
|Pessoas|pessoas_V03319|V03319|48 anos, Pessoa quilombola|
|Pessoas|pessoas_V03320|V03320|49 anos, Pessoa quilombola|
|Pessoas|pessoas_V03321|V03321|50 anos, Pessoa quilombola|
|Pessoas|pessoas_V03322|V03322|51 anos, Pessoa quilombola|
|Pessoas|pessoas_V03323|V03323|52 anos, Pessoa quilombola|
|Pessoas|pessoas_V03324|V03324|53 anos, Pessoa quilombola|
|Pessoas|pessoas_V03325|V03325|54 anos, Pessoa quilombola|
|Pessoas|pessoas_V03326|V03326|55 anos, Pessoa quilombola|
|Pessoas|pessoas_V03327|V03327|56 anos, Pessoa quilombola|
|Pessoas|pessoas_V03328|V03328|57 anos, Pessoa quilombola|
|Pessoas|pessoas_V03329|V03329|58 anos, Pessoa quilombola|
|Pessoas|pessoas_V03330|V03330|59 anos, Pessoa quilombola|
|Pessoas|pessoas_V03331|V03331|60 anos, Pessoa quilombola|
|Pessoas|pessoas_V03332|V03332|61 anos, Pessoa quilombola|
|Pessoas|pessoas_V03333|V03333|62 anos, Pessoa quilombola|
|Pessoas|pessoas_V03334|V03334|63 anos, Pessoa quilombola|
|Pessoas|pessoas_V03335|V03335|64 anos, Pessoa quilombola|
|Pessoas|pessoas_V03336|V03336|65 anos, Pessoa quilombola|
|Pessoas|pessoas_V03337|V03337|66 anos, Pessoa quilombola|
|Pessoas|pessoas_V03338|V03338|67 anos, Pessoa quilombola|
|Pessoas|pessoas_V03339|V03339|68 anos, Pessoa quilombola|
|Pessoas|pessoas_V03340|V03340|69 anos, Pessoa quilombola|
|Pessoas|pessoas_V03341|V03341|70 anos, Pessoa quilombola|
|Pessoas|pessoas_V03342|V03342|71 anos, Pessoa quilombola|
|Pessoas|pessoas_V03343|V03343|72 anos, Pessoa quilombola|
|Pessoas|pessoas_V03344|V03344|73 anos, Pessoa quilombola|
|Pessoas|pessoas_V03345|V03345|74 anos, Pessoa quilombola|
|Pessoas|pessoas_V03346|V03346|75 anos, Pessoa quilombola|
|Pessoas|pessoas_V03347|V03347|76 anos, Pessoa quilombola|
|Pessoas|pessoas_V03348|V03348|77 anos, Pessoa quilombola|
|Pessoas|pessoas_V03349|V03349|78 anos, Pessoa quilombola|
|Pessoas|pessoas_V03350|V03350|79 anos, Pessoa quilombola|
|Pessoas|pessoas_V03351|V03351|80 anos, Pessoa quilombola|
|Pessoas|pessoas_V03352|V03352|81 anos, Pessoa quilombola|
|Pessoas|pessoas_V03353|V03353|82 anos, Pessoa quilombola|
|Pessoas|pessoas_V03354|V03354|83 anos, Pessoa quilombola|
|Pessoas|pessoas_V03355|V03355|84 anos, Pessoa quilombola|
|Pessoas|pessoas_V03356|V03356|85 anos, Pessoa quilombola|
|Pessoas|pessoas_V03357|V03357|86 anos, Pessoa quilombola|
|Pessoas|pessoas_V03358|V03358|87 anos, Pessoa quilombola|
|Pessoas|pessoas_V03359|V03359|88 anos, Pessoa quilombola|
|Pessoas|pessoas_V03360|V03360|89 anos, Pessoa quilombola|
|Pessoas|pessoas_V03361|V03361|90 anos, Pessoa quilombola|
|Pessoas|pessoas_V03362|V03362|91 anos, Pessoa quilombola|
|Pessoas|pessoas_V03363|V03363|92 anos, Pessoa quilombola|
|Pessoas|pessoas_V03364|V03364|93 anos, Pessoa quilombola|
|Pessoas|pessoas_V03365|V03365|94 anos, Pessoa quilombola|
|Pessoas|pessoas_V03366|V03366|95 anos, Pessoa quilombola|
|Pessoas|pessoas_V03367|V03367|96 anos, Pessoa quilombola|
|Pessoas|pessoas_V03368|V03368|97 anos, Pessoa quilombola|
|Pessoas|pessoas_V03369|V03369|98 anos, Pessoa quilombola|
|Pessoas|pessoas_V03370|V03370|99 anos, Pessoa quilombola|
|Pessoas|pessoas_V03371|V03371|100 anos ou mais, Pessoa quilombola|
|Pessoas|pessoas_V03372|V03372|Sexo masculino, 0 anos, Pessoa quilombola|
|Pessoas|pessoas_V03373|V03373|Sexo masculino, 1 ano, Pessoa quilombola|
|Pessoas|pessoas_V03374|V03374|Sexo masculino, 2 anos, Pessoa quilombola|
|Pessoas|pessoas_V03375|V03375|Sexo masculino, 3 anos, Pessoa quilombola|
|Pessoas|pessoas_V03376|V03376|Sexo masculino, 4 anos, Pessoa quilombola|
|Pessoas|pessoas_V03377|V03377|Sexo masculino, 5 anos, Pessoa quilombola|
|Pessoas|pessoas_V03378|V03378|Sexo masculino, 6 anos, Pessoa quilombola|
|Pessoas|pessoas_V03379|V03379|Sexo masculino, 7 anos, Pessoa quilombola|
|Pessoas|pessoas_V03380|V03380|Sexo masculino, 8 anos, Pessoa quilombola|
|Pessoas|pessoas_V03381|V03381|Sexo masculino, 9 anos, Pessoa quilombola|
|Pessoas|pessoas_V03382|V03382|Sexo masculino, 10 anos, Pessoa quilombola|
|Pessoas|pessoas_V03383|V03383|Sexo masculino, 11 anos, Pessoa quilombola|
|Pessoas|pessoas_V03384|V03384|Sexo masculino, 12 anos, Pessoa quilombola|
|Pessoas|pessoas_V03385|V03385|Sexo masculino, 13 anos, Pessoa quilombola|
|Pessoas|pessoas_V03386|V03386|Sexo masculino, 14 anos, Pessoa quilombola|
|Pessoas|pessoas_V03387|V03387|Sexo masculino, 15 anos, Pessoa quilombola|
|Pessoas|pessoas_V03388|V03388|Sexo masculino, 16 anos, Pessoa quilombola|
|Pessoas|pessoas_V03389|V03389|Sexo masculino, 17 anos, Pessoa quilombola|
|Pessoas|pessoas_V03390|V03390|Sexo masculino, 18 anos, Pessoa quilombola|
|Pessoas|pessoas_V03391|V03391|Sexo masculino, 19 anos, Pessoa quilombola|
|Pessoas|pessoas_V03392|V03392|Sexo masculino, 20 anos, Pessoa quilombola|
|Pessoas|pessoas_V03393|V03393|Sexo masculino, 21 anos, Pessoa quilombola|
|Pessoas|pessoas_V03394|V03394|Sexo masculino, 22 anos, Pessoa quilombola|
|Pessoas|pessoas_V03395|V03395|Sexo masculino, 23 anos, Pessoa quilombola|
|Pessoas|pessoas_V03396|V03396|Sexo masculino, 24 anos, Pessoa quilombola|
|Pessoas|pessoas_V03397|V03397|Sexo masculino, 25 anos, Pessoa quilombola|
|Pessoas|pessoas_V03398|V03398|Sexo masculino, 26 anos, Pessoa quilombola|
|Pessoas|pessoas_V03399|V03399|Sexo masculino, 27 anos, Pessoa quilombola|
|Pessoas|pessoas_V03400|V03400|Sexo masculino, 28 anos, Pessoa quilombola|
|Pessoas|pessoas_V03401|V03401|Sexo masculino, 29 anos, Pessoa quilombola|
|Pessoas|pessoas_V03402|V03402|Sexo masculino, 30 anos, Pessoa quilombola|
|Pessoas|pessoas_V03403|V03403|Sexo masculino, 31 anos, Pessoa quilombola|
|Pessoas|pessoas_V03404|V03404|Sexo masculino, 32 anos, Pessoa quilombola|
|Pessoas|pessoas_V03405|V03405|Sexo masculino, 33 anos, Pessoa quilombola|
|Pessoas|pessoas_V03406|V03406|Sexo masculino, 34 anos, Pessoa quilombola|
|Pessoas|pessoas_V03407|V03407|Sexo masculino, 35 anos, Pessoa quilombola|
|Pessoas|pessoas_V03408|V03408|Sexo masculino, 36 anos, Pessoa quilombola|
|Pessoas|pessoas_V03409|V03409|Sexo masculino, 37 anos, Pessoa quilombola|
|Pessoas|pessoas_V03410|V03410|Sexo masculino, 38 anos, Pessoa quilombola|
|Pessoas|pessoas_V03411|V03411|Sexo masculino, 39 anos, Pessoa quilombola|
|Pessoas|pessoas_V03412|V03412|Sexo masculino, 40 anos, Pessoa quilombola|
|Pessoas|pessoas_V03413|V03413|Sexo masculino, 41 anos, Pessoa quilombola|
|Pessoas|pessoas_V03414|V03414|Sexo masculino, 42 anos, Pessoa quilombola|
|Pessoas|pessoas_V03415|V03415|Sexo masculino, 43 anos, Pessoa quilombola|
|Pessoas|pessoas_V03416|V03416|Sexo masculino, 44 anos, Pessoa quilombola|
|Pessoas|pessoas_V03417|V03417|Sexo masculino, 45 anos, Pessoa quilombola|
|Pessoas|pessoas_V03418|V03418|Sexo masculino, 46 anos, Pessoa quilombola|
|Pessoas|pessoas_V03419|V03419|Sexo masculino, 47 anos, Pessoa quilombola|
|Pessoas|pessoas_V03420|V03420|Sexo masculino, 48 anos, Pessoa quilombola|
|Pessoas|pessoas_V03421|V03421|Sexo masculino, 49 anos, Pessoa quilombola|
|Pessoas|pessoas_V03422|V03422|Sexo masculino, 50 anos, Pessoa quilombola|
|Pessoas|pessoas_V03423|V03423|Sexo masculino, 51 anos, Pessoa quilombola|
|Pessoas|pessoas_V03424|V03424|Sexo masculino, 52 anos, Pessoa quilombola|
|Pessoas|pessoas_V03425|V03425|Sexo masculino, 53 anos, Pessoa quilombola|
|Pessoas|pessoas_V03426|V03426|Sexo masculino, 54 anos, Pessoa quilombola|
|Pessoas|pessoas_V03427|V03427|Sexo masculino, 55 anos, Pessoa quilombola|
|Pessoas|pessoas_V03428|V03428|Sexo masculino, 56 anos, Pessoa quilombola|
|Pessoas|pessoas_V03429|V03429|Sexo masculino, 57 anos, Pessoa quilombola|
|Pessoas|pessoas_V03430|V03430|Sexo masculino, 58 anos, Pessoa quilombola|
|Pessoas|pessoas_V03431|V03431|Sexo masculino, 59 anos, Pessoa quilombola|
|Pessoas|pessoas_V03432|V03432|Sexo masculino, 60 anos, Pessoa quilombola|
|Pessoas|pessoas_V03433|V03433|Sexo masculino, 61 anos, Pessoa quilombola|
|Pessoas|pessoas_V03434|V03434|Sexo masculino, 62 anos, Pessoa quilombola|
|Pessoas|pessoas_V03435|V03435|Sexo masculino, 63 anos, Pessoa quilombola|
|Pessoas|pessoas_V03436|V03436|Sexo masculino, 64 anos, Pessoa quilombola|
|Pessoas|pessoas_V03437|V03437|Sexo masculino, 65 anos, Pessoa quilombola|
|Pessoas|pessoas_V03438|V03438|Sexo masculino, 66 anos, Pessoa quilombola|
|Pessoas|pessoas_V03439|V03439|Sexo masculino, 67 anos, Pessoa quilombola|
|Pessoas|pessoas_V03440|V03440|Sexo masculino, 68 anos, Pessoa quilombola|
|Pessoas|pessoas_V03441|V03441|Sexo masculino, 69 anos, Pessoa quilombola|
|Pessoas|pessoas_V03442|V03442|Sexo masculino, 70 anos, Pessoa quilombola|
|Pessoas|pessoas_V03443|V03443|Sexo masculino, 71 anos, Pessoa quilombola|
|Pessoas|pessoas_V03444|V03444|Sexo masculino, 72 anos, Pessoa quilombola|
|Pessoas|pessoas_V03445|V03445|Sexo masculino, 73 anos, Pessoa quilombola|
|Pessoas|pessoas_V03446|V03446|Sexo masculino, 74 anos, Pessoa quilombola|
|Pessoas|pessoas_V03447|V03447|Sexo masculino, 75 anos, Pessoa quilombola|
|Pessoas|pessoas_V03448|V03448|Sexo masculino, 76 anos, Pessoa quilombola|
|Pessoas|pessoas_V03449|V03449|Sexo masculino, 77 anos, Pessoa quilombola|
|Pessoas|pessoas_V03450|V03450|Sexo masculino, 78 anos, Pessoa quilombola|
|Pessoas|pessoas_V03451|V03451|Sexo masculino, 79 anos, Pessoa quilombola|
|Pessoas|pessoas_V03452|V03452|Sexo masculino, 80 anos, Pessoa quilombola|
|Pessoas|pessoas_V03453|V03453|Sexo masculino, 81 anos, Pessoa quilombola|
|Pessoas|pessoas_V03454|V03454|Sexo masculino, 82 anos, Pessoa quilombola|
|Pessoas|pessoas_V03455|V03455|Sexo masculino, 83 anos, Pessoa quilombola|
|Pessoas|pessoas_V03456|V03456|Sexo masculino, 84 anos, Pessoa quilombola|
|Pessoas|pessoas_V03457|V03457|Sexo masculino, 85 anos, Pessoa quilombola|
|Pessoas|pessoas_V03458|V03458|Sexo masculino, 86 anos, Pessoa quilombola|
|Pessoas|pessoas_V03459|V03459|Sexo masculino, 87 anos, Pessoa quilombola|
|Pessoas|pessoas_V03460|V03460|Sexo masculino, 88 anos, Pessoa quilombola|
|Pessoas|pessoas_V03461|V03461|Sexo masculino, 89 anos, Pessoa quilombola|
|Pessoas|pessoas_V03462|V03462|Sexo masculino, 90 anos, Pessoa quilombola|
|Pessoas|pessoas_V03463|V03463|Sexo masculino, 91 anos, Pessoa quilombola|
|Pessoas|pessoas_V03464|V03464|Sexo masculino, 92 anos, Pessoa quilombola|
|Pessoas|pessoas_V03465|V03465|Sexo masculino, 93 anos, Pessoa quilombola|
|Pessoas|pessoas_V03466|V03466|Sexo masculino, 94 anos, Pessoa quilombola|
|Pessoas|pessoas_V03467|V03467|Sexo masculino, 95 anos, Pessoa quilombola|
|Pessoas|pessoas_V03468|V03468|Sexo masculino, 96 anos, Pessoa quilombola|
|Pessoas|pessoas_V03469|V03469|Sexo masculino, 97 anos, Pessoa quilombola|
|Pessoas|pessoas_V03470|V03470|Sexo masculino, 98 anos, Pessoa quilombola|
|Pessoas|pessoas_V03471|V03471|Sexo masculino, 99 anos, Pessoa quilombola|
|Pessoas|pessoas_V03472|V03472|Sexo masculino, 100 anos ou mais, Pessoa quilombola|
|Pessoas|pessoas_V03473|V03473|Sexo feminino, 0 anos, Pessoa quilombola|
|Pessoas|pessoas_V03474|V03474|Sexo feminino, 1 ano, Pessoa quilombola|
|Pessoas|pessoas_V03475|V03475|Sexo feminino, 2 anos, Pessoa quilombola|
|Pessoas|pessoas_V03476|V03476|Sexo feminino, 3 anos, Pessoa quilombola|
|Pessoas|pessoas_V03477|V03477|Sexo feminino, 4 anos, Pessoa quilombola|
|Pessoas|pessoas_V03478|V03478|Sexo feminino, 5 anos, Pessoa quilombola|
|Pessoas|pessoas_V03479|V03479|Sexo feminino, 6 anos, Pessoa quilombola|
|Pessoas|pessoas_V03480|V03480|Sexo feminino, 7 anos, Pessoa quilombola|
|Pessoas|pessoas_V03481|V03481|Sexo feminino, 8 anos, Pessoa quilombola|
|Pessoas|pessoas_V03482|V03482|Sexo feminino, 9 anos, Pessoa quilombola|
|Pessoas|pessoas_V03483|V03483|Sexo feminino, 10 anos, Pessoa quilombola|
|Pessoas|pessoas_V03484|V03484|Sexo feminino, 11 anos, Pessoa quilombola|
|Pessoas|pessoas_V03485|V03485|Sexo feminino, 12 anos, Pessoa quilombola|
|Pessoas|pessoas_V03486|V03486|Sexo feminino, 13 anos, Pessoa quilombola|
|Pessoas|pessoas_V03487|V03487|Sexo feminino, 14 anos, Pessoa quilombola|
|Pessoas|pessoas_V03488|V03488|Sexo feminino, 15 anos, Pessoa quilombola|
|Pessoas|pessoas_V03489|V03489|Sexo feminino, 16 anos, Pessoa quilombola|
|Pessoas|pessoas_V03490|V03490|Sexo feminino, 17 anos, Pessoa quilombola|
|Pessoas|pessoas_V03491|V03491|Sexo feminino, 18 anos, Pessoa quilombola|
|Pessoas|pessoas_V03492|V03492|Sexo feminino, 19 anos, Pessoa quilombola|
|Pessoas|pessoas_V03493|V03493|Sexo feminino, 20 anos, Pessoa quilombola|
|Pessoas|pessoas_V03494|V03494|Sexo feminino, 21 anos, Pessoa quilombola|
|Pessoas|pessoas_V03495|V03495|Sexo feminino, 22 anos, Pessoa quilombola|
|Pessoas|pessoas_V03496|V03496|Sexo feminino, 23 anos, Pessoa quilombola|
|Pessoas|pessoas_V03497|V03497|Sexo feminino, 24 anos, Pessoa quilombola|
|Pessoas|pessoas_V03498|V03498|Sexo feminino, 25 anos, Pessoa quilombola|
|Pessoas|pessoas_V03499|V03499|Sexo feminino, 26 anos, Pessoa quilombola|
|Pessoas|pessoas_V03500|V03500|Sexo feminino, 27 anos, Pessoa quilombola|
|Pessoas|pessoas_V03501|V03501|Sexo feminino, 28 anos, Pessoa quilombola|
|Pessoas|pessoas_V03502|V03502|Sexo feminino, 29 anos, Pessoa quilombola|
|Pessoas|pessoas_V03503|V03503|Sexo feminino, 30 anos, Pessoa quilombola|
|Pessoas|pessoas_V03504|V03504|Sexo feminino, 31 anos, Pessoa quilombola|
|Pessoas|pessoas_V03505|V03505|Sexo feminino, 32 anos, Pessoa quilombola|
|Pessoas|pessoas_V03506|V03506|Sexo feminino, 33 anos, Pessoa quilombola|
|Pessoas|pessoas_V03507|V03507|Sexo feminino, 34 anos, Pessoa quilombola|
|Pessoas|pessoas_V03508|V03508|Sexo feminino, 35 anos, Pessoa quilombola|
|Pessoas|pessoas_V03509|V03509|Sexo feminino, 36 anos, Pessoa quilombola|
|Pessoas|pessoas_V03510|V03510|Sexo feminino, 37 anos, Pessoa quilombola|
|Pessoas|pessoas_V03511|V03511|Sexo feminino, 38 anos, Pessoa quilombola|
|Pessoas|pessoas_V03512|V03512|Sexo feminino, 39 anos, Pessoa quilombola|
|Pessoas|pessoas_V03513|V03513|Sexo feminino, 40 anos, Pessoa quilombola|
|Pessoas|pessoas_V03514|V03514|Sexo feminino, 41 anos, Pessoa quilombola|
|Pessoas|pessoas_V03515|V03515|Sexo feminino, 42 anos, Pessoa quilombola|
|Pessoas|pessoas_V03516|V03516|Sexo feminino, 43 anos, Pessoa quilombola|
|Pessoas|pessoas_V03517|V03517|Sexo feminino, 44 anos, Pessoa quilombola|
|Pessoas|pessoas_V03518|V03518|Sexo feminino, 45 anos, Pessoa quilombola|
|Pessoas|pessoas_V03519|V03519|Sexo feminino, 46 anos, Pessoa quilombola|
|Pessoas|pessoas_V03520|V03520|Sexo feminino, 47 anos, Pessoa quilombola|
|Pessoas|pessoas_V03521|V03521|Sexo feminino, 48 anos, Pessoa quilombola|
|Pessoas|pessoas_V03522|V03522|Sexo feminino, 49 anos, Pessoa quilombola|
|Pessoas|pessoas_V03523|V03523|Sexo feminino, 50 anos, Pessoa quilombola|
|Pessoas|pessoas_V03524|V03524|Sexo feminino, 51 anos, Pessoa quilombola|
|Pessoas|pessoas_V03525|V03525|Sexo feminino, 52 anos, Pessoa quilombola|
|Pessoas|pessoas_V03526|V03526|Sexo feminino, 53 anos, Pessoa quilombola|
|Pessoas|pessoas_V03527|V03527|Sexo feminino, 54 anos, Pessoa quilombola|
|Pessoas|pessoas_V03528|V03528|Sexo feminino, 55 anos, Pessoa quilombola|
|Pessoas|pessoas_V03529|V03529|Sexo feminino, 56 anos, Pessoa quilombola|
|Pessoas|pessoas_V03530|V03530|Sexo feminino, 57 anos, Pessoa quilombola|
|Pessoas|pessoas_V03531|V03531|Sexo feminino, 58 anos, Pessoa quilombola|
|Pessoas|pessoas_V03532|V03532|Sexo feminino, 59 anos, Pessoa quilombola|
|Pessoas|pessoas_V03533|V03533|Sexo feminino, 60 anos, Pessoa quilombola|
|Pessoas|pessoas_V03534|V03534|Sexo feminino, 61 anos, Pessoa quilombola|
|Pessoas|pessoas_V03535|V03535|Sexo feminino, 62 anos, Pessoa quilombola|
|Pessoas|pessoas_V03536|V03536|Sexo feminino, 63 anos, Pessoa quilombola|
|Pessoas|pessoas_V03537|V03537|Sexo feminino, 64 anos, Pessoa quilombola|
|Pessoas|pessoas_V03538|V03538|Sexo feminino, 65 anos, Pessoa quilombola|
|Pessoas|pessoas_V03539|V03539|Sexo feminino, 66 anos, Pessoa quilombola|
|Pessoas|pessoas_V03540|V03540|Sexo feminino, 67 anos, Pessoa quilombola|
|Pessoas|pessoas_V03541|V03541|Sexo feminino, 68 anos, Pessoa quilombola|
|Pessoas|pessoas_V03542|V03542|Sexo feminino, 69 anos, Pessoa quilombola|
|Pessoas|pessoas_V03543|V03543|Sexo feminino, 70 anos, Pessoa quilombola|
|Pessoas|pessoas_V03544|V03544|Sexo feminino, 71 anos, Pessoa quilombola|
|Pessoas|pessoas_V03545|V03545|Sexo feminino, 72 anos, Pessoa quilombola|
|Pessoas|pessoas_V03546|V03546|Sexo feminino, 73 anos, Pessoa quilombola|
|Pessoas|pessoas_V03547|V03547|Sexo feminino, 74 anos, Pessoa quilombola|
|Pessoas|pessoas_V03548|V03548|Sexo feminino, 75 anos, Pessoa quilombola|
|Pessoas|pessoas_V03549|V03549|Sexo feminino, 76 anos, Pessoa quilombola|
|Pessoas|pessoas_V03550|V03550|Sexo feminino, 77 anos, Pessoa quilombola|
|Pessoas|pessoas_V03551|V03551|Sexo feminino, 78 anos, Pessoa quilombola|
|Pessoas|pessoas_V03552|V03552|Sexo feminino, 79 anos, Pessoa quilombola|
|Pessoas|pessoas_V03553|V03553|Sexo feminino, 80 anos, Pessoa quilombola|
|Pessoas|pessoas_V03554|V03554|Sexo feminino, 81 anos, Pessoa quilombola|
|Pessoas|pessoas_V03555|V03555|Sexo feminino, 82 anos, Pessoa quilombola|
|Pessoas|pessoas_V03556|V03556|Sexo feminino, 83 anos, Pessoa quilombola|
|Pessoas|pessoas_V03557|V03557|Sexo feminino, 84 anos, Pessoa quilombola|
|Pessoas|pessoas_V03558|V03558|Sexo feminino, 85 anos, Pessoa quilombola|
|Pessoas|pessoas_V03559|V03559|Sexo feminino, 86 anos, Pessoa quilombola|
|Pessoas|pessoas_V03560|V03560|Sexo feminino, 87 anos, Pessoa quilombola|
|Pessoas|pessoas_V03561|V03561|Sexo feminino, 88 anos, Pessoa quilombola|
|Pessoas|pessoas_V03562|V03562|Sexo feminino, 89 anos, Pessoa quilombola|
|Pessoas|pessoas_V03563|V03563|Sexo feminino, 90 anos, Pessoa quilombola|
|Pessoas|pessoas_V03564|V03564|Sexo feminino, 91 anos, Pessoa quilombola|
|Pessoas|pessoas_V03565|V03565|Sexo feminino, 92 anos, Pessoa quilombola|
|Pessoas|pessoas_V03566|V03566|Sexo feminino, 93 anos, Pessoa quilombola|
|Pessoas|pessoas_V03567|V03567|Sexo feminino, 94 anos, Pessoa quilombola|
|Pessoas|pessoas_V03568|V03568|Sexo feminino, 95 anos, Pessoa quilombola|
|Pessoas|pessoas_V03569|V03569|Sexo feminino, 96 anos, Pessoa quilombola|
|Pessoas|pessoas_V03570|V03570|Sexo feminino, 97 anos, Pessoa quilombola|
|Pessoas|pessoas_V03571|V03571|Sexo feminino, 98 anos, Pessoa quilombola|
|Pessoas|pessoas_V03572|V03572|Sexo feminino, 99 anos, Pessoa quilombola|
|Pessoas|pessoas_V03573|V03573|Sexo feminino, 100 anos ou mais, Pessoa quilombola|
|Pessoas|pessoas_V03574|V03574|0 a 4 anos, Pessoa quilombola|
|Pessoas|pessoas_V03575|V03575|5 a 9 anos, Pessoa quilombola|
|Pessoas|pessoas_V03576|V03576|10 a 14 anos, Pessoa quilombola|
|Pessoas|pessoas_V03577|V03577|15 a 19 anos, Pessoa quilombola|
|Pessoas|pessoas_V03578|V03578|20 a 24 anos, Pessoa quilombola|
|Pessoas|pessoas_V03579|V03579|25 a 29 anos, Pessoa quilombola|
|Pessoas|pessoas_V03580|V03580|30 a 39 anos, Pessoa quilombola|
|Pessoas|pessoas_V03581|V03581|40 a 49 anos, Pessoa quilombola|
|Pessoas|pessoas_V03582|V03582|50 a 59 anos, Pessoa quilombola|
|Pessoas|pessoas_V03583|V03583|60 a 69 anos, Pessoa quilombola|
|Pessoas|pessoas_V03584|V03584|70 anos ou mais, Pessoa quilombola|
|Pessoas|pessoas_V03585|V03585|Sexo masculino, 0 a 4 anos, Pessoa quilombola|
|Pessoas|pessoas_V03586|V03586|Sexo masculino, 5 a 9 anos, Pessoa quilombola|
|Pessoas|pessoas_V03587|V03587|Sexo masculino, 10 a 14 anos, Pessoa quilombola|
|Pessoas|pessoas_V03588|V03588|Sexo masculino, 15 a 19 anos, Pessoa quilombola|
|Pessoas|pessoas_V03589|V03589|Sexo masculino, 20 a 24 anos, Pessoa quilombola|
|Pessoas|pessoas_V03590|V03590|Sexo masculino, 25 a 29 anos, Pessoa quilombola|
|Pessoas|pessoas_V03591|V03591|Sexo masculino, 30 a 39 anos, Pessoa quilombola|
|Pessoas|pessoas_V03592|V03592|Sexo masculino, 40 a 49 anos, Pessoa quilombola|
|Pessoas|pessoas_V03593|V03593|Sexo masculino, 50 a 59 anos, Pessoa quilombola|
|Pessoas|pessoas_V03594|V03594|Sexo masculino, 60 a 69 anos, Pessoa quilombola|
|Pessoas|pessoas_V03595|V03595|Sexo masculino, 70 anos ou mais, Pessoa quilombola|
|Pessoas|pessoas_V03596|V03596|Sexo feminino, 0 a 4 anos, Pessoa quilombola|
|Pessoas|pessoas_V03597|V03597|Sexo feminino, 5 a 9 anos, Pessoa quilombola|
|Pessoas|pessoas_V03598|V03598|Sexo feminino, 10 a 14 anos, Pessoa quilombola|
|Pessoas|pessoas_V03599|V03599|Sexo feminino, 15 a 19 anos, Pessoa quilombola|
|Pessoas|pessoas_V03600|V03600|Sexo feminino, 20 a 24 anos, Pessoa quilombola|
|Pessoas|pessoas_V03601|V03601|Sexo feminino, 25 a 29 anos, Pessoa quilombola|
|Pessoas|pessoas_V03602|V03602|Sexo feminino, 30 a 39 anos, Pessoa quilombola|
|Pessoas|pessoas_V03603|V03603|Sexo feminino, 40 a 49 anos, Pessoa quilombola|
|Pessoas|pessoas_V03604|V03604|Sexo feminino, 50 a 59 anos, Pessoa quilombola|
|Pessoas|pessoas_V03605|V03605|Sexo feminino, 60 a 69 anos, Pessoa quilombola|
|Pessoas|pessoas_V03606|V03606|Sexo feminino, 70 anos ou mais, Pessoa quilombola|
|Pessoas|pessoas_V03607|V03607|15 anos ou mais, Pessoa quilombola|
|Pessoas|pessoas_V03608|V03608|Sexo masculino, 15 anos ou mais, Pessoa quilombola|
|Pessoas|pessoas_V03609|V03609|Sexo feminino, 15 anos ou mais, Pessoa quilombola|
|Pessoas|pessoas_V03610|V03610|Pessoa responsável pelo domicílio, Pessoa quilombola|
|Pessoas|pessoas_V03611|V03611|Pessoa responsável pelo domicílio, Sexo do morador responsável é masculino, Pessoa quilombola|
|Pessoas|pessoas_V03612|V03612|Pessoa responsável pelo domicílio, Sexo do morador responsável é feminino, Pessoa quilombola|
|Pessoas|pessoas_V03613|V03613|Pessoa responsável pelo domicílio, 15 anos ou mais, Pessoa quilombola|
|Pessoas|pessoas_V03614|V03614|Pessoa responsável pelo domicílio, Sexo do morador responsável é masculino, 15 anos ou mais, Pessoa quilombola|
|Pessoas|pessoas_V03615|V03615|Pessoa responsável pelo domicílio, Sexo do morador responsável é feminino, 15 anos ou mais, Pessoa quilombola|
|Pessoas|pessoas_V03616|V03616|Pessoa responsável pelo domicílio, 12 a 14 anos, Pessoa quilombola|
|Pessoas|pessoas_V03617|V03617|Pessoa responsável pelo domicílio, 15 a 29 anos, Pessoa quilombola|
|Pessoas|pessoas_V03618|V03618|Pessoa responsável pelo domicílio, 30 a 59 anos, Pessoa quilombola|
|Pessoas|pessoas_V03619|V03619|Pessoa responsável pelo domicílio, 60 anos ou mais, Pessoa quilombola|
|Pessoas|pessoas_V03620|V03620|Pessoa responsável pelo domicílio, Sexo masculino, 12 a 14 anos, Pessoa quilombola|
|Pessoas|pessoas_V03621|V03621|Pessoa responsável pelo domicílio, Sexo masculino, 15 a 29 anos, Pessoa quilombola|
|Pessoas|pessoas_V03622|V03622|Pessoa responsável pelo domicílio, Sexo masculino, 30 a 59 anos, Pessoa quilombola|
|Pessoas|pessoas_V03623|V03623|Pessoa responsável pelo domicílio, Sexo masculino, 60 anos ou mais, Pessoa quilombola|
|Pessoas|pessoas_V03624|V03624|Pessoa responsável pelo domicílio, Sexo feminino, 12 a 14 anos, Pessoa quilombola|
|Pessoas|pessoas_V03625|V03625|Pessoa responsável pelo domicílio, Sexo feminino, 15 a 29 anos, Pessoa quilombola|
|Pessoas|pessoas_V03626|V03626|Pessoa responsável pelo domicílio, Sexo feminino, 30 a 59 anos, Pessoa quilombola|
|Pessoas|pessoas_V03627|V03627|Pessoa responsável pelo domicílio, Sexo feminino, 60 anos ou mais, Pessoa quilombola|
|Pessoas|pessoas_V03628|V03628|Pessoa responsável pelo domicílio, 12 a 17 anos, Pessoa quilombola|
|Pessoas|pessoas_V03629|V03629|Pessoa responsável pelo domicílio, 18 a 24 anos, Pessoa quilombola|
|Pessoas|pessoas_V03630|V03630|Pessoa responsável pelo domicílio, 25 a 39 anos, Pessoa quilombola|
|Pessoas|pessoas_V03631|V03631|Pessoa responsável pelo domicílio, 40 a 59 anos, Pessoa quilombola|
|Pessoas|pessoas_V03632|V03632|Pessoa responsável pelo domicílio, 60 anos ou mais, Pessoa quilombola|
|Pessoas|pessoas_V03633|V03633|Pessoa responsável pelo domicílio, Sexo masculino, 12 a 17 anos, Pessoa quilombola|
|Pessoas|pessoas_V03634|V03634|Pessoa responsável pelo domicílio, Sexo masculino, 18 a 24 anos, Pessoa quilombola|
|Pessoas|pessoas_V03635|V03635|Pessoa responsável pelo domicílio, Sexo masculino, 25 a 39 anos, Pessoa quilombola|
|Pessoas|pessoas_V03636|V03636|Pessoa responsável pelo domicílio, Sexo masculino, 40 a 59 anos, Pessoa quilombola|
|Pessoas|pessoas_V03637|V03637|Pessoa responsável pelo domicílio, Sexo masculino, 60 anos ou mais, Pessoa quilombola|
|Pessoas|pessoas_V03638|V03638|Pessoa responsável pelo domicílio, Sexo feminino, 12 a 17 anos, Pessoa quilombola|
|Pessoas|pessoas_V03639|V03639|Pessoa responsável pelo domicílio, Sexo feminino, 18 a 24 anos, Pessoa quilombola|
|Pessoas|pessoas_V03640|V03640|Pessoa responsável pelo domicílio, Sexo feminino, 25 a 39 anos, Pessoa quilombola|
|Pessoas|pessoas_V03641|V03641|Pessoa responsável pelo domicílio, Sexo feminino, 40 a 59 anos, Pessoa quilombola|
|Pessoas|pessoas_V03642|V03642|Pessoa responsável pelo domicílio, Sexo feminino, 60 anos ou mais, Pessoa quilombola|
|Pessoas|pessoas_V03643|V03643|Pessoas alfabetizadas, 15 anos ou mais, Pessoa quilombola|
|Pessoas|pessoas_V03644|V03644|Pessoas alfabetizadas, Sexo masculino, 15 anos ou mais, Pessoa quilombola|
|Pessoas|pessoas_V03645|V03645|Pessoas alfabetizadas, Sexo feminino, 15 anos ou mais, Pessoa quilombola|
|Pessoas|pessoas_V03646|V03646|Pessoas alfabetizadas, 15 a 19 anos, Pessoa quilombola|
|Pessoas|pessoas_V03647|V03647|Pessoas alfabetizadas, 20 a 24 anos, Pessoa quilombola|
|Pessoas|pessoas_V03648|V03648|Pessoas alfabetizadas, 25 a 29 anos, Pessoa quilombola|
|Pessoas|pessoas_V03649|V03649|Pessoas alfabetizadas, 30 a 34 anos, Pessoa quilombola|
|Pessoas|pessoas_V03650|V03650|Pessoas alfabetizadas, 35 a 39 anos, Pessoa quilombola|
|Pessoas|pessoas_V03651|V03651|Pessoas alfabetizadas, 40 a 44 anos, Pessoa quilombola|
|Pessoas|pessoas_V03652|V03652|Pessoas alfabetizadas, 45 a 49 anos, Pessoa quilombola|
|Pessoas|pessoas_V03653|V03653|Pessoas alfabetizadas, 50 a 54 anos, Pessoa quilombola|
|Pessoas|pessoas_V03654|V03654|Pessoas alfabetizadas, 55 a 59 anos, Pessoa quilombola|
|Pessoas|pessoas_V03655|V03655|Pessoas alfabetizadas, 60 a 64 anos, Pessoa quilombola|
|Pessoas|pessoas_V03656|V03656|Pessoas alfabetizadas, 65 a 69 anos, Pessoa quilombola|
|Pessoas|pessoas_V03657|V03657|Pessoas alfabetizadas, 70 a 79 anos, Pessoa quilombola|
|Pessoas|pessoas_V03658|V03658|Pessoas alfabetizadas, 80 anos ou mais, Pessoa quilombola|
|Pessoas|pessoas_V03659|V03659|Pessoas alfabetizadas, Sexo masculino, 15 a 19 anos, Pessoa quilombola|
|Pessoas|pessoas_V03660|V03660|Pessoas alfabetizadas, Sexo masculino, 20 a 24 anos, Pessoa quilombola|
|Pessoas|pessoas_V03661|V03661|Pessoas alfabetizadas, Sexo masculino, 25 a 29 anos, Pessoa quilombola|
|Pessoas|pessoas_V03662|V03662|Pessoas alfabetizadas, Sexo masculino, 30 a 34 anos, Pessoa quilombola|
|Pessoas|pessoas_V03663|V03663|Pessoas alfabetizadas, Sexo masculino, 35 a 39 anos, Pessoa quilombola|
|Pessoas|pessoas_V03664|V03664|Pessoas alfabetizadas, Sexo masculino, 40 a 44 anos, Pessoa quilombola|
|Pessoas|pessoas_V03665|V03665|Pessoas alfabetizadas, Sexo masculino, 45 a 49 anos, Pessoa quilombola|
|Pessoas|pessoas_V03666|V03666|Pessoas alfabetizadas, Sexo masculino, 50 a 54 anos, Pessoa quilombola|
|Pessoas|pessoas_V03667|V03667|Pessoas alfabetizadas, Sexo masculino, 55 a 59 anos, Pessoa quilombola|
|Pessoas|pessoas_V03668|V03668|Pessoas alfabetizadas, Sexo masculino, 60 a 64 anos, Pessoa quilombola|
|Pessoas|pessoas_V03669|V03669|Pessoas alfabetizadas, Sexo masculino, 65 a 69 anos, Pessoa quilombola|
|Pessoas|pessoas_V03670|V03670|Pessoas alfabetizadas, Sexo masculino, 70 a 79 anos, Pessoa quilombola|
|Pessoas|pessoas_V03671|V03671|Pessoas alfabetizadas, Sexo masculino, 80 anos ou mais, Pessoa quilombola|
|Pessoas|pessoas_V03672|V03672|Pessoas alfabetizadas, Sexo feminino, 15 a 19 anos, Pessoa quilombola|
|Pessoas|pessoas_V03673|V03673|Pessoas alfabetizadas, Sexo feminino, 20 a 24 anos, Pessoa quilombola|
|Pessoas|pessoas_V03674|V03674|Pessoas alfabetizadas, Sexo feminino, 25 a 29 anos, Pessoa quilombola|
|Pessoas|pessoas_V03675|V03675|Pessoas alfabetizadas, Sexo feminino, 30 a 34 anos, Pessoa quilombola|
|Pessoas|pessoas_V03676|V03676|Pessoas alfabetizadas, Sexo feminino, 35 a 39 anos, Pessoa quilombola|
|Pessoas|pessoas_V03677|V03677|Pessoas alfabetizadas, Sexo feminino, 40 a 44 anos, Pessoa quilombola|
|Pessoas|pessoas_V03678|V03678|Pessoas alfabetizadas, Sexo feminino, 45 a 49 anos, Pessoa quilombola|
|Pessoas|pessoas_V03679|V03679|Pessoas alfabetizadas, Sexo feminino, 50 a 54 anos, Pessoa quilombola|
|Pessoas|pessoas_V03680|V03680|Pessoas alfabetizadas, Sexo feminino, 55 a 59 anos, Pessoa quilombola|
|Pessoas|pessoas_V03681|V03681|Pessoas alfabetizadas, Sexo feminino, 60 a 64 anos, Pessoa quilombola|
|Pessoas|pessoas_V03682|V03682|Pessoas alfabetizadas, Sexo feminino, 65 a 69 anos, Pessoa quilombola|
|Pessoas|pessoas_V03683|V03683|Pessoas alfabetizadas, Sexo feminino, 70 a 79 anos, Pessoa quilombola|
|Pessoas|pessoas_V03684|V03684|Pessoas alfabetizadas, Sexo feminino, 80 anos ou mais, Pessoa quilombola|
|Pessoas|pessoas_V03685|V03685|Pessoas alfabetizadas, 15 a 29 anos, Pessoa quilombola|
|Pessoas|pessoas_V03686|V03686|Pessoas alfabetizadas, 30 a 59 anos, Pessoa quilombola|
|Pessoas|pessoas_V03687|V03687|Pessoas alfabetizadas, 60 anos ou mais, Pessoa quilombola|
|Pessoas|pessoas_V03688|V03688|Pessoas alfabetizadas, Sexo masculino, 15 a 29 anos, Pessoa quilombola|
|Pessoas|pessoas_V03689|V03689|Pessoas alfabetizadas, Sexo masculino, 30 a 59 anos, Pessoa quilombola|
|Pessoas|pessoas_V03690|V03690|Pessoas alfabetizadas, Sexo masculino, 60 anos ou mais, Pessoa quilombola|
|Pessoas|pessoas_V03691|V03691|Pessoas alfabetizadas, Sexo feminino, 15 a 29 anos, Pessoa quilombola|
|Pessoas|pessoas_V03692|V03692|Pessoas alfabetizadas, Sexo feminino, 30 a 59 anos, Pessoa quilombola|
|Pessoas|pessoas_V03693|V03693|Pessoas alfabetizadas, Sexo feminino, 60 anos ou mais, Pessoa quilombola|
|Pessoas|pessoas_V03694|V03694|Pessoa responsável pelo domicílio, Pessoas alfabetizadas, 15 anos ou mais, Pessoa quilombola|
|Pessoas|pessoas_V03695|V03695|Pessoa responsável pelo domicílio, Pessoas alfabetizadas, Sexo do morador responsável é masculino, 15 anos ou mais, Pessoa quilombola|
|Pessoas|pessoas_V03696|V03696|Pessoa responsável pelo domicílio, Pessoas alfabetizadas, Sexo do morador responsável é feminino, 15 anos ou mais, Pessoa quilombola|
|Pessoas|pessoas_V03697|V03697|Pessoa responsável pelo domicílio, Pessoas alfabetizadas, 15 a 29 anos, 15 anos ou mais, Pessoa quilombola|
|Pessoas|pessoas_V03698|V03698|Pessoa responsável pelo domicílio, Pessoas alfabetizadas, 30 a 59 anos, 15 anos ou mais, Pessoa quilombola|
|Pessoas|pessoas_V03699|V03699|Pessoa responsável pelo domicílio, Pessoas alfabetizadas, 60 anos ou mais, 15 anos ou mais, Pessoa quilombola|
|Pessoas|pessoas_V03700|V03700|Pessoa responsável pelo domicílio, Pessoas alfabetizadas, Sexo masculino, 15 a 29 anos, Pessoa quilombola|
|Pessoas|pessoas_V03701|V03701|Pessoa responsável pelo domicílio, Pessoas alfabetizadas, Sexo masculino, 30 a 59 anos, Pessoa quilombola|
|Pessoas|pessoas_V03702|V03702|Pessoa responsável pelo domicílio, Pessoas alfabetizadas, Sexo masculino, 60 anos ou mais, Pessoa quilombola|
|Pessoas|pessoas_V03703|V03703|Pessoa responsável pelo domicílio, Pessoas alfabetizadas, Sexo feminino, 15 a 29 anos, Pessoa quilombola|
|Pessoas|pessoas_V03704|V03704|Pessoa responsável pelo domicílio, Pessoas alfabetizadas, Sexo feminino, 30 a 59 anos, Pessoa quilombola|
|Pessoas|pessoas_V03705|V03705|Pessoa responsável pelo domicílio, Pessoas alfabetizadas, Sexo feminino, 60 anos ou mais, Pessoa quilombola|
|Pessoas|pessoas_V03706|V03706|0 a 5 anos, Pessoa quilombola, Morador tem registro de nascimento|
|Pessoas|pessoas_V03707|V03707|0 a 5 anos, Pessoa quilombola, Morador não tem registro de nascimento|
|Pessoas|pessoas_V03708|V03708|0 a 5 anos, Pessoa quilombola, Morador não sabe se tem registro de nascimento|
|Pessoas|pessoas_V03709|V03709|Sexo masculino, 0 a 5 anos, Pessoa quilombola, Morador tem registro de nascimento|
|Pessoas|pessoas_V03710|V03710|Sexo masculino, 0 a 5 anos, Pessoa quilombola, Morador não tem registro de nascimento|
|Pessoas|pessoas_V03711|V03711|Sexo masculino, 0 a 5 anos, Pessoa quilombola, Morador não sabe se tem registro de nascimento|
|Pessoas|pessoas_V03712|V03712|Sexo feminino, 0 a 5 anos, Pessoa quilombola, Morador tem registro de nascimento|
|Pessoas|pessoas_V03713|V03713|Sexo feminino, 0 a 5 anos, Pessoa quilombola, Morador não tem registro de nascimento|
|Pessoas|pessoas_V03714|V03714|Sexo feminino, 0 a 5 anos, Pessoa quilombola, Morador não sabe se tem registro de nascimento|
|Pessoas|pessoas_V03715|V03715|Menos de 1 ano, Pessoa quilombola, Morador tem registro de nascimento|
|Pessoas|pessoas_V03716|V03716|Menos de 1 ano, Pessoa quilombola, Morador não tem registro de nascimento|
|Pessoas|pessoas_V03717|V03717|Menos de 1 ano, Pessoa quilombola, Morador não sabe se tem registro de nascimento|
|Pessoas|pessoas_V03718|V03718|1 ano, Pessoa quilombola, Morador tem registro de nascimento|
|Pessoas|pessoas_V03719|V03719|1 ano, Pessoa quilombola, Morador não tem registro de nascimento|
|Pessoas|pessoas_V03720|V03720|1 ano, Pessoa quilombola, Morador não sabe se tem registro de nascimento|
|Pessoas|pessoas_V03721|V03721|2 anos, Pessoa quilombola, Morador tem registro de nascimento|
|Pessoas|pessoas_V03722|V03722|2 anos, Pessoa quilombola, Morador não tem registro de nascimento|
|Pessoas|pessoas_V03723|V03723|2 anos, Pessoa quilombola, Morador não sabe se tem registro de nascimento|
|Pessoas|pessoas_V03724|V03724|3 anos, Pessoa quilombola, Morador tem registro de nascimento|
|Pessoas|pessoas_V03725|V03725|3 anos, Pessoa quilombola, Morador não tem registro de nascimento|
|Pessoas|pessoas_V03726|V03726|3 anos, Pessoa quilombola, Morador não sabe se tem registro de nascimento|
|Pessoas|pessoas_V03727|V03727|4 anos, Pessoa quilombola, Morador tem registro de nascimento|
|Pessoas|pessoas_V03728|V03728|4 anos, Pessoa quilombola, Morador não tem registro de nascimento|
|Pessoas|pessoas_V03729|V03729|4 anos, Pessoa quilombola, Morador não sabe se tem registro de nascimento|
|Pessoas|pessoas_V03730|V03730|5 anos, Pessoa quilombola, Morador tem registro de nascimento|
|Pessoas|pessoas_V03731|V03731|5 anos, Pessoa quilombola, Morador não tem registro de nascimento|
|Pessoas|pessoas_V03732|V03732|5 anos, Pessoa quilombola, Morador não sabe se tem registro de nascimento|
|Pessoas|pessoas_V03733|V03733|Sexo masculino, Menos de 1 ano, Pessoa quilombola, Morador tem registro de nascimento|
|Pessoas|pessoas_V03734|V03734|Sexo masculino, Menos de 1 ano, Pessoa quilombola, Morador não tem registro de nascimento|
|Pessoas|pessoas_V03735|V03735|Sexo masculino, Menos de 1 ano, Pessoa quilombola, Morador não sabe se tem registro de nascimento|
|Pessoas|pessoas_V03736|V03736|Sexo masculino, 1 ano, Pessoa quilombola, Morador tem registro de nascimento|
|Pessoas|pessoas_V03737|V03737|Sexo masculino, 1 ano, Pessoa quilombola, Morador não tem registro de nascimento|
|Pessoas|pessoas_V03738|V03738|Sexo masculino, 1 ano, Pessoa quilombola, Morador não sabe se tem registro de nascimento|
|Pessoas|pessoas_V03739|V03739|Sexo masculino, 2 anos, Pessoa quilombola, Morador tem registro de nascimento|
|Pessoas|pessoas_V03740|V03740|Sexo masculino, 2 anos, Pessoa quilombola, Morador não tem registro de nascimento|
|Pessoas|pessoas_V03741|V03741|Sexo masculino, 2 anos, Pessoa quilombola, Morador não sabe se tem registro de nascimento|
|Pessoas|pessoas_V03742|V03742|Sexo masculino, 3 anos, Pessoa quilombola, Morador tem registro de nascimento|
|Pessoas|pessoas_V03743|V03743|Sexo masculino, 3 anos, Pessoa quilombola, Morador não tem registro de nascimento|
|Pessoas|pessoas_V03744|V03744|Sexo masculino, 3 anos, Pessoa quilombola, Morador não sabe se tem registro de nascimento|
|Pessoas|pessoas_V03745|V03745|Sexo masculino, 4 anos, Pessoa quilombola, Morador tem registro de nascimento|
|Pessoas|pessoas_V03746|V03746|Sexo masculino, 4 anos, Pessoa quilombola, Morador não tem registro de nascimento|
|Pessoas|pessoas_V03747|V03747|Sexo masculino, 4 anos, Pessoa quilombola, Morador não sabe se tem registro de nascimento|
|Pessoas|pessoas_V03748|V03748|Sexo masculino, 5 anos, Pessoa quilombola, Morador tem registro de nascimento|
|Pessoas|pessoas_V03749|V03749|Sexo masculino, 5 anos, Pessoa quilombola, Morador não tem registro de nascimento|
|Pessoas|pessoas_V03750|V03750|Sexo masculino, 5 anos, Pessoa quilombola, Morador não sabe se tem registro de nascimento|
|Pessoas|pessoas_V03751|V03751|Sexo feminino, Menos de 1 ano, Pessoa quilombola, Morador tem registro de nascimento|
|Pessoas|pessoas_V03752|V03752|Sexo feminino, Menos de 1 ano, Pessoa quilombola, Morador não tem registro de nascimento|
|Pessoas|pessoas_V03753|V03753|Sexo feminino, Menos de 1 ano, Pessoa quilombola, Morador não sabe se tem registro de nascimento|
|Pessoas|pessoas_V03754|V03754|Sexo feminino, 1 ano, Pessoa quilombola, Morador tem registro de nascimento|
|Pessoas|pessoas_V03755|V03755|Sexo feminino, 1 ano, Pessoa quilombola, Morador não tem registro de nascimento|
|Pessoas|pessoas_V03756|V03756|Sexo feminino, 1 ano, Pessoa quilombola, Morador não sabe se tem registro de nascimento|
|Pessoas|pessoas_V03757|V03757|Sexo feminino, 2 anos, Pessoa quilombola, Morador tem registro de nascimento|
|Pessoas|pessoas_V03758|V03758|Sexo feminino, 2 anos, Pessoa quilombola, Morador não tem registro de nascimento|
|Pessoas|pessoas_V03759|V03759|Sexo feminino, 2 anos, Pessoa quilombola, Morador não sabe se tem registro de nascimento|
|Pessoas|pessoas_V03760|V03760|Sexo feminino, 3 anos, Pessoa quilombola, Morador tem registro de nascimento|
|Pessoas|pessoas_V03761|V03761|Sexo feminino, 3 anos, Pessoa quilombola, Morador não tem registro de nascimento|
|Pessoas|pessoas_V03762|V03762|Sexo feminino, 3 anos, Pessoa quilombola, Morador não sabe se tem registro de nascimento|
|Pessoas|pessoas_V03763|V03763|Sexo feminino, 4 anos, Pessoa quilombola, Morador tem registro de nascimento|
|Pessoas|pessoas_V03764|V03764|Sexo feminino, 4 anos, Pessoa quilombola, Morador não tem registro de nascimento|
|Pessoas|pessoas_V03765|V03765|Sexo feminino, 4 anos, Pessoa quilombola, Morador não sabe se tem registro de nascimento|
|Pessoas|pessoas_V03766|V03766|Sexo feminino, 5 anos, Pessoa quilombola, Morador tem registro de nascimento|
|Pessoas|pessoas_V03767|V03767|Sexo feminino, 5 anos, Pessoa quilombola, Morador não tem registro de nascimento|
|Pessoas|pessoas_V03768|V03768|Sexo feminino, 5 anos, Pessoa quilombola, Morador não sabe se tem registro de nascimento|
|Pessoas|pessoas_V03769|V03769|Domicílio com pelo menos um morador quilombola, Existe pessoa falecida, no período de janeiro de 2019 a julho de 2022, que morava no domicílio|
|Pessoas|pessoas_V03770|V03770|Domicílio com pelo menos um morador quilombola, Não existe pessoa falecida, no período de janeiro de 2019 a julho de 2022, que morava no domicílio|
|Pessoas|pessoas_V03771|V03771|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2019 a dezembro de 2019, Idade ao falecer é 0 a 4 anos|
|Pessoas|pessoas_V03772|V03772|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2019 a dezembro de 2019, Idade ao falecer é 5 a 9 anos|
|Pessoas|pessoas_V03773|V03773|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2019 a dezembro de 2019, Idade ao falecer é 10 a 14 anos|
|Pessoas|pessoas_V03774|V03774|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2019 a dezembro de 2019, Idade ao falecer é 15 a 19 anos|
|Pessoas|pessoas_V03775|V03775|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2019 a dezembro de 2019, Idade ao falecer é 20 a 24 anos|
|Pessoas|pessoas_V03776|V03776|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2019 a dezembro de 2019, Idade ao falecer é 25 a 29 anos|
|Pessoas|pessoas_V03777|V03777|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2019 a dezembro de 2019, Idade ao falecer é 30 a 39 anos|
|Pessoas|pessoas_V03778|V03778|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2019 a dezembro de 2019, Idade ao falecer é 40 a 49 anos|
|Pessoas|pessoas_V03779|V03779|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2019 a dezembro de 2019, Idade ao falecer é 50 a 59 anos|
|Pessoas|pessoas_V03780|V03780|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2019 a dezembro de 2019, Idade ao falecer é 60 a 69 anos|
|Pessoas|pessoas_V03781|V03781|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2019 a dezembro de 2019, Idade ao falecer é 70 anos ou mais|
|Pessoas|pessoas_V03782|V03782|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2020 a dezembro de 2020, Idade ao falecer é 0 a 4 anos|
|Pessoas|pessoas_V03783|V03783|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2020 a dezembro de 2020, Idade ao falecer é 5 a 9 anos|
|Pessoas|pessoas_V03784|V03784|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2020 a dezembro de 2020, Idade ao falecer é 10 a 14 anos|
|Pessoas|pessoas_V03785|V03785|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2020 a dezembro de 2020, Idade ao falecer é 15 a 19 anos|
|Pessoas|pessoas_V03786|V03786|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2020 a dezembro de 2020, Idade ao falecer é 20 a 24 anos|
|Pessoas|pessoas_V03787|V03787|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2020 a dezembro de 2020, Idade ao falecer é 25 a 29 anos|
|Pessoas|pessoas_V03788|V03788|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2020 a dezembro de 2020, Idade ao falecer é 30 a 39 anos|
|Pessoas|pessoas_V03789|V03789|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2020 a dezembro de 2020, Idade ao falecer é 40 a 49 anos|
|Pessoas|pessoas_V03790|V03790|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2020 a dezembro de 2020, Idade ao falecer é 50 a 59 anos|
|Pessoas|pessoas_V03791|V03791|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2020 a dezembro de 2020, Idade ao falecer é 60 a 69 anos|
|Pessoas|pessoas_V03792|V03792|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2020 a dezembro de 2020, Idade ao falecer é 70 anos ou mais|
|Pessoas|pessoas_V03793|V03793|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2021 a dezembro de 2021, Idade ao falecer é 0 a 4 anos|
|Pessoas|pessoas_V03794|V03794|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2021 a dezembro de 2021, Idade ao falecer é 5 a 9 anos|
|Pessoas|pessoas_V03795|V03795|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2021 a dezembro de 2021, Idade ao falecer é 10 a 14 anos|
|Pessoas|pessoas_V03796|V03796|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2021 a dezembro de 2021, Idade ao falecer é 15 a 19 anos|
|Pessoas|pessoas_V03797|V03797|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2021 a dezembro de 2021, Idade ao falecer é 20 a 24 anos|
|Pessoas|pessoas_V03798|V03798|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2021 a dezembro de 2021, Idade ao falecer é 25 a 29 anos|
|Pessoas|pessoas_V03799|V03799|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2021 a dezembro de 2021, Idade ao falecer é 30 a 39 anos|
|Pessoas|pessoas_V03800|V03800|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2021 a dezembro de 2021, Idade ao falecer é 40 a 49 anos|
|Pessoas|pessoas_V03801|V03801|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2021 a dezembro de 2021, Idade ao falecer é 50 a 59 anos|
|Pessoas|pessoas_V03802|V03802|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2021 a dezembro de 2021, Idade ao falecer é 60 a 69 anos|
|Pessoas|pessoas_V03803|V03803|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2021 a dezembro de 2021, Idade ao falecer é 70 anos ou mais|
|Pessoas|pessoas_V03804|V03804|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2022 a julho de 2022, Idade ao falecer é 0 a 4 anos|
|Pessoas|pessoas_V03805|V03805|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2022 a julho de 2022, Idade ao falecer é 5 a 9 anos|
|Pessoas|pessoas_V03806|V03806|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2022 a julho de 2022, Idade ao falecer é 10 a 14 anos|
|Pessoas|pessoas_V03807|V03807|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2022 a julho de 2022, Idade ao falecer é 15 a 19 anos|
|Pessoas|pessoas_V03808|V03808|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2022 a julho de 2022, Idade ao falecer é 20 a 24 anos|
|Pessoas|pessoas_V03809|V03809|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2022 a julho de 2022, Idade ao falecer é 25 a 29 anos|
|Pessoas|pessoas_V03810|V03810|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2022 a julho de 2022, Idade ao falecer é 30 a 39 anos|
|Pessoas|pessoas_V03811|V03811|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2022 a julho de 2022, Idade ao falecer é 40 a 49 anos|
|Pessoas|pessoas_V03812|V03812|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2022 a julho de 2022, Idade ao falecer é 50 a 59 anos|
|Pessoas|pessoas_V03813|V03813|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2022 a julho de 2022, Idade ao falecer é 60 a 69 anos|
|Pessoas|pessoas_V03814|V03814|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2022 a julho de 2022, Idade ao falecer é 70 anos ou mais|
|Pessoas|pessoas_V03815|V03815|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2019 a dezembro de 2019, 0 a 14 anos|
|Pessoas|pessoas_V03816|V03816|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2019 a dezembro de 2019, 15 a 29 anos|
|Pessoas|pessoas_V03817|V03817|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2019 a dezembro de 2019, 30 a 59 anos|
|Pessoas|pessoas_V03818|V03818|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2019 a dezembro de 2019, 60 anos ou mais|
|Pessoas|pessoas_V03819|V03819|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2020 a dezembro de 2020, 0 a 14 anos|
|Pessoas|pessoas_V03820|V03820|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2020 a dezembro de 2020, 15 a 29 anos|
|Pessoas|pessoas_V03821|V03821|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2020 a dezembro de 2020, 30 a 59 anos|
|Pessoas|pessoas_V03822|V03822|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2020 a dezembro de 2020, 60 anos ou mais|
|Pessoas|pessoas_V03823|V03823|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2021 a dezembro de 2021, 0 a 14 anos|
|Pessoas|pessoas_V03824|V03824|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2021 a dezembro de 2021, 15 a 29 anos|
|Pessoas|pessoas_V03825|V03825|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2021 a dezembro de 2021, 30 a 59 anos|
|Pessoas|pessoas_V03826|V03826|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2021 a dezembro de 2021, 60 anos ou mais|
|Pessoas|pessoas_V03827|V03827|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2022 a julho de 2022, 0 a 14 anos|
|Pessoas|pessoas_V03828|V03828|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2022 a julho de 2022, 15 a 29 anos|
|Pessoas|pessoas_V03829|V03829|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2022 a julho de 2022, 30 a 59 anos|
|Pessoas|pessoas_V03830|V03830|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2022 a julho de 2022, 60 anos ou mais|
|Pessoas|pessoas_V03831|V03831|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2019 a dezembro de 2019, Sexo da pessoa falecida é masculino, Idade ao falecer é 0 a 4 anos|
|Pessoas|pessoas_V03832|V03832|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2019 a dezembro de 2019, Sexo da pessoa falecida é masculino, Idade ao falecer é 5 a 9 anos|
|Pessoas|pessoas_V03833|V03833|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2019 a dezembro de 2019, Sexo da pessoa falecida é masculino, Idade ao falecer é 10 a 14 anos|
|Pessoas|pessoas_V03834|V03834|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2019 a dezembro de 2019, Sexo da pessoa falecida é masculino, Idade ao falecer é 15 a 19 anos|
|Pessoas|pessoas_V03835|V03835|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2019 a dezembro de 2019, Sexo da pessoa falecida é masculino, Idade ao falecer é 20 a 24 anos|
|Pessoas|pessoas_V03836|V03836|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2019 a dezembro de 2019, Sexo da pessoa falecida é masculino, Idade ao falecer é 25 a 29 anos|
|Pessoas|pessoas_V03837|V03837|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2019 a dezembro de 2019, Sexo da pessoa falecida é masculino, Idade ao falecer é 30 a 39 anos|
|Pessoas|pessoas_V03838|V03838|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2019 a dezembro de 2019, Sexo da pessoa falecida é masculino, Idade ao falecer é 40 a 49 anos|
|Pessoas|pessoas_V03839|V03839|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2019 a dezembro de 2019, Sexo da pessoa falecida é masculino, Idade ao falecer é 50 a 59 anos|
|Pessoas|pessoas_V03840|V03840|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2019 a dezembro de 2019, Sexo da pessoa falecida é masculino, Idade ao falecer é 60 a 69 anos|
|Pessoas|pessoas_V03841|V03841|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2019 a dezembro de 2019, Sexo da pessoa falecida é masculino, Idade ao falecer é 70 anos ou mais|
|Pessoas|pessoas_V03842|V03842|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2019 a dezembro de 2019, Sexo da pessoa falecida é feminino, Idade ao falecer é 0 a 4 anos|
|Pessoas|pessoas_V03843|V03843|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2019 a dezembro de 2019, Sexo da pessoa falecida é feminino, Idade ao falecer é 5 a 9 anos|
|Pessoas|pessoas_V03844|V03844|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2019 a dezembro de 2019, Sexo da pessoa falecida é feminino, Idade ao falecer é 10 a 14 anos|
|Pessoas|pessoas_V03845|V03845|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2019 a dezembro de 2019, Sexo da pessoa falecida é feminino, Idade ao falecer é 15 a 19 anos|
|Pessoas|pessoas_V03846|V03846|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2019 a dezembro de 2019, Sexo da pessoa falecida é feminino, Idade ao falecer é 20 a 24 anos|
|Pessoas|pessoas_V03847|V03847|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2019 a dezembro de 2019, Sexo da pessoa falecida é feminino, Idade ao falecer é 25 a 29 anos|
|Pessoas|pessoas_V03848|V03848|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2019 a dezembro de 2019, Sexo da pessoa falecida é feminino, Idade ao falecer é 30 a 39 anos|
|Pessoas|pessoas_V03849|V03849|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2019 a dezembro de 2019, Sexo da pessoa falecida é feminino, Idade ao falecer é 40 a 49 anos|
|Pessoas|pessoas_V03850|V03850|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2019 a dezembro de 2019, Sexo da pessoa falecida é feminino, Idade ao falecer é 50 a 59 anos|
|Pessoas|pessoas_V03851|V03851|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2019 a dezembro de 2019, Sexo da pessoa falecida é feminino, Idade ao falecer é 60 a 69 anos|
|Pessoas|pessoas_V03852|V03852|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2019 a dezembro de 2019, Sexo da pessoa falecida é feminino, Idade ao falecer é 70 anos ou mais|
|Pessoas|pessoas_V03853|V03853|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2020 a dezembro de 2020, Sexo da pessoa falecida é masculino, Idade ao falecer é 0 a 4 anos|
|Pessoas|pessoas_V03854|V03854|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2020 a dezembro de 2020, Sexo da pessoa falecida é masculino, Idade ao falecer é 5 a 9 anos|
|Pessoas|pessoas_V03855|V03855|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2020 a dezembro de 2020, Sexo da pessoa falecida é masculino, Idade ao falecer é 10 a 14 anos|
|Pessoas|pessoas_V03856|V03856|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2020 a dezembro de 2020, Sexo da pessoa falecida é masculino, Idade ao falecer é 15 a 19 anos|
|Pessoas|pessoas_V03857|V03857|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2020 a dezembro de 2020, Sexo da pessoa falecida é masculino, Idade ao falecer é 20 a 24 anos|
|Pessoas|pessoas_V03858|V03858|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2020 a dezembro de 2020, Sexo da pessoa falecida é masculino, Idade ao falecer é 25 a 29 anos|
|Pessoas|pessoas_V03859|V03859|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2020 a dezembro de 2020, Sexo da pessoa falecida é masculino, Idade ao falecer é 30 a 39 anos|
|Pessoas|pessoas_V03860|V03860|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2020 a dezembro de 2020, Sexo da pessoa falecida é masculino, Idade ao falecer é 40 a 49 anos|
|Pessoas|pessoas_V03861|V03861|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2020 a dezembro de 2020, Sexo da pessoa falecida é masculino, Idade ao falecer é 50 a 59 anos|
|Pessoas|pessoas_V03862|V03862|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2020 a dezembro de 2020, Sexo da pessoa falecida é masculino, Idade ao falecer é 60 a 69 anos|
|Pessoas|pessoas_V03863|V03863|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2020 a dezembro de 2020, Sexo da pessoa falecida é masculino, Idade ao falecer é 70 anos ou mais|
|Pessoas|pessoas_V03864|V03864|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2020 a dezembro de 2020, Sexo da pessoa falecida é feminino, Idade ao falecer é 0 a 4 anos|
|Pessoas|pessoas_V03865|V03865|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2020 a dezembro de 2020, Sexo da pessoa falecida é feminino, Idade ao falecer é 5 a 9 anos|
|Pessoas|pessoas_V03866|V03866|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2020 a dezembro de 2020, Sexo da pessoa falecida é feminino, Idade ao falecer é 10 a 14 anos|
|Pessoas|pessoas_V03867|V03867|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2020 a dezembro de 2020, Sexo da pessoa falecida é feminino, Idade ao falecer é 15 a 19 anos|
|Pessoas|pessoas_V03868|V03868|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2020 a dezembro de 2020, Sexo da pessoa falecida é feminino, Idade ao falecer é 20 a 24 anos|
|Pessoas|pessoas_V03869|V03869|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2020 a dezembro de 2020, Sexo da pessoa falecida é feminino, Idade ao falecer é 25 a 29 anos|
|Pessoas|pessoas_V03870|V03870|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2020 a dezembro de 2020, Sexo da pessoa falecida é feminino, Idade ao falecer é 30 a 39 anos|
|Pessoas|pessoas_V03871|V03871|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2020 a dezembro de 2020, Sexo da pessoa falecida é feminino, Idade ao falecer é 40 a 49 anos|
|Pessoas|pessoas_V03872|V03872|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2020 a dezembro de 2020, Sexo da pessoa falecida é feminino, Idade ao falecer é 50 a 59 anos|
|Pessoas|pessoas_V03873|V03873|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2020 a dezembro de 2020, Sexo da pessoa falecida é feminino, Idade ao falecer é 60 a 69 anos|
|Pessoas|pessoas_V03874|V03874|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2020 a dezembro de 2020, Sexo da pessoa falecida é feminino, Idade ao falecer é 70 anos ou mais|
|Pessoas|pessoas_V03875|V03875|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2021 a dezembro de 2021, Sexo da pessoa falecida é masculino, Idade ao falecer é 0 a 4 anos|
|Pessoas|pessoas_V03876|V03876|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2021 a dezembro de 2021, Sexo da pessoa falecida é masculino, Idade ao falecer é 5 a 9 anos|
|Pessoas|pessoas_V03877|V03877|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2021 a dezembro de 2021, Sexo da pessoa falecida é masculino, Idade ao falecer é 10 a 14 anos|
|Pessoas|pessoas_V03878|V03878|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2021 a dezembro de 2021, Sexo da pessoa falecida é masculino, Idade ao falecer é 15 a 19 anos|
|Pessoas|pessoas_V03879|V03879|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2021 a dezembro de 2021, Sexo da pessoa falecida é masculino, Idade ao falecer é 20 a 24 anos|
|Pessoas|pessoas_V03880|V03880|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2021 a dezembro de 2021, Sexo da pessoa falecida é masculino, Idade ao falecer é 25 a 29 anos|
|Pessoas|pessoas_V03881|V03881|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2021 a dezembro de 2021, Sexo da pessoa falecida é masculino, Idade ao falecer é 30 a 39 anos|
|Pessoas|pessoas_V03882|V03882|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2021 a dezembro de 2021, Sexo da pessoa falecida é masculino, Idade ao falecer é 40 a 49 anos|
|Pessoas|pessoas_V03883|V03883|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2021 a dezembro de 2021, Sexo da pessoa falecida é masculino, Idade ao falecer é 50 a 59 anos|
|Pessoas|pessoas_V03884|V03884|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2021 a dezembro de 2021, Sexo da pessoa falecida é masculino, Idade ao falecer é 60 a 69 anos|
|Pessoas|pessoas_V03885|V03885|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2021 a dezembro de 2021, Sexo da pessoa falecida é masculino, Idade ao falecer é 70 anos ou mais|
|Pessoas|pessoas_V03886|V03886|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2021 a dezembro de 2021, Sexo da pessoa falecida é feminino, Idade ao falecer é 0 a 4 anos|
|Pessoas|pessoas_V03887|V03887|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2021 a dezembro de 2021, Sexo da pessoa falecida é feminino, Idade ao falecer é 5 a 9 anos|
|Pessoas|pessoas_V03888|V03888|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2021 a dezembro de 2021, Sexo da pessoa falecida é feminino, Idade ao falecer é 10 a 14 anos|
|Pessoas|pessoas_V03889|V03889|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2021 a dezembro de 2021, Sexo da pessoa falecida é feminino, Idade ao falecer é 15 a 19 anos|
|Pessoas|pessoas_V03890|V03890|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2021 a dezembro de 2021, Sexo da pessoa falecida é feminino, Idade ao falecer é 20 a 24 anos|
|Pessoas|pessoas_V03891|V03891|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2021 a dezembro de 2021, Sexo da pessoa falecida é feminino, Idade ao falecer é 25 a 29 anos|
|Pessoas|pessoas_V03892|V03892|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2021 a dezembro de 2021, Sexo da pessoa falecida é feminino, Idade ao falecer é 30 a 39 anos|
|Pessoas|pessoas_V03893|V03893|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2021 a dezembro de 2021, Sexo da pessoa falecida é feminino, Idade ao falecer é 40 a 49 anos|
|Pessoas|pessoas_V03894|V03894|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2021 a dezembro de 2021, Sexo da pessoa falecida é feminino, Idade ao falecer é 50 a 59 anos|
|Pessoas|pessoas_V03895|V03895|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2021 a dezembro de 2021, Sexo da pessoa falecida é feminino, Idade ao falecer é 60 a 69 anos|
|Pessoas|pessoas_V03896|V03896|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2021 a dezembro de 2021, Sexo da pessoa falecida é feminino, Idade ao falecer é 70 anos ou mais|
|Pessoas|pessoas_V03897|V03897|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2022 a julho de 2022, Sexo da pessoa falecida é masculino, Idade ao falecer é 0 a 4 anos|
|Pessoas|pessoas_V03898|V03898|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2022 a julho de 2022, Sexo da pessoa falecida é masculino, Idade ao falecer é 5 a 9 anos|
|Pessoas|pessoas_V03899|V03899|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2022 a julho de 2022, Sexo da pessoa falecida é masculino, Idade ao falecer é 10 a 14 anos|
|Pessoas|pessoas_V03900|V03900|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2022 a julho de 2022, Sexo da pessoa falecida é masculino, Idade ao falecer é 15 a 19 anos|
|Pessoas|pessoas_V03901|V03901|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2022 a julho de 2022, Sexo da pessoa falecida é masculino, Idade ao falecer é 20 a 24 anos|
|Pessoas|pessoas_V03902|V03902|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2022 a julho de 2022, Sexo da pessoa falecida é masculino, Idade ao falecer é 25 a 29 anos|
|Pessoas|pessoas_V03903|V03903|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2022 a julho de 2022, Sexo da pessoa falecida é masculino, Idade ao falecer é 30 a 39 anos|
|Pessoas|pessoas_V03904|V03904|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2022 a julho de 2022, Sexo da pessoa falecida é masculino, Idade ao falecer é 40 a 49 anos|
|Pessoas|pessoas_V03905|V03905|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2022 a julho de 2022, Sexo da pessoa falecida é masculino, Idade ao falecer é 50 a 59 anos|
|Pessoas|pessoas_V03906|V03906|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2022 a julho de 2022, Sexo da pessoa falecida é masculino, Idade ao falecer é 60 a 69 anos|
|Pessoas|pessoas_V03907|V03907|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2022 a julho de 2022, Sexo da pessoa falecida é masculino, Idade ao falecer é 70 anos ou mais|
|Pessoas|pessoas_V03908|V03908|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2022 a julho de 2022, Sexo da pessoa falecida é feminino, Idade ao falecer é 0 a 4 anos|
|Pessoas|pessoas_V03909|V03909|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2022 a julho de 2022, Sexo da pessoa falecida é feminino, Idade ao falecer é 5 a 9 anos|
|Pessoas|pessoas_V03910|V03910|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2022 a julho de 2022, Sexo da pessoa falecida é feminino, Idade ao falecer é 10 a 14 anos|
|Pessoas|pessoas_V03911|V03911|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2022 a julho de 2022, Sexo da pessoa falecida é feminino, Idade ao falecer é 15 a 19 anos|
|Pessoas|pessoas_V03912|V03912|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2022 a julho de 2022, Sexo da pessoa falecida é feminino, Idade ao falecer é 20 a 24 anos|
|Pessoas|pessoas_V03913|V03913|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2022 a julho de 2022, Sexo da pessoa falecida é feminino, Idade ao falecer é 25 a 29 anos|
|Pessoas|pessoas_V03914|V03914|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2022 a julho de 2022, Sexo da pessoa falecida é feminino, Idade ao falecer é 30 a 39 anos|
|Pessoas|pessoas_V03915|V03915|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2022 a julho de 2022, Sexo da pessoa falecida é feminino, Idade ao falecer é 40 a 49 anos|
|Pessoas|pessoas_V03916|V03916|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2022 a julho de 2022, Sexo da pessoa falecida é feminino, Idade ao falecer é 50 a 59 anos|
|Pessoas|pessoas_V03917|V03917|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2022 a julho de 2022, Sexo da pessoa falecida é feminino, Idade ao falecer é 60 a 69 anos|
|Pessoas|pessoas_V03918|V03918|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2022 a julho de 2022, Sexo da pessoa falecida é feminino, Idade ao falecer é 70 anos ou mais|
|Pessoas|pessoas_V03919|V03919|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2019 a dezembro de 2019, Sexo da pessoa falecida é masculino, 0 a 14 anos|
|Pessoas|pessoas_V03920|V03920|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2019 a dezembro de 2019, Sexo da pessoa falecida é masculino, 15 a 29 anos|
|Pessoas|pessoas_V03921|V03921|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2019 a dezembro de 2019, Sexo da pessoa falecida é masculino, 30 a 59 anos|
|Pessoas|pessoas_V03922|V03922|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2019 a dezembro de 2019, Sexo da pessoa falecida é masculino, 60 anos ou mais|
|Pessoas|pessoas_V03923|V03923|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2019 a dezembro de 2019, Sexo da pessoa falecida é feminino, 0 a 14 anos|
|Pessoas|pessoas_V03924|V03924|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2019 a dezembro de 2019, Sexo da pessoa falecida é feminino, 15 a 29 anos|
|Pessoas|pessoas_V03925|V03925|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2019 a dezembro de 2019, Sexo da pessoa falecida é feminino, 30 a 59 anos|
|Pessoas|pessoas_V03926|V03926|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2019 a dezembro de 2019, Sexo da pessoa falecida é feminino, 60 anos ou mais|
|Pessoas|pessoas_V03927|V03927|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2020 a dezembro de 2020, Sexo da pessoa falecida é masculino, 0 a 14 anos|
|Pessoas|pessoas_V03928|V03928|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2020 a dezembro de 2020, Sexo da pessoa falecida é masculino, 15 a 29 anos|
|Pessoas|pessoas_V03929|V03929|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2020 a dezembro de 2020, Sexo da pessoa falecida é masculino, 30 a 59 anos|
|Pessoas|pessoas_V03930|V03930|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2020 a dezembro de 2020, Sexo da pessoa falecida é masculino, 60 anos ou mais|
|Pessoas|pessoas_V03931|V03931|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2020 a dezembro de 2020, Sexo da pessoa falecida é feminino, 0 a 14 anos|
|Pessoas|pessoas_V03932|V03932|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2020 a dezembro de 2020, Sexo da pessoa falecida é feminino, 15 a 29 anos|
|Pessoas|pessoas_V03933|V03933|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2020 a dezembro de 2020, Sexo da pessoa falecida é feminino, 30 a 59 anos|
|Pessoas|pessoas_V03934|V03934|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2020 a dezembro de 2020, Sexo da pessoa falecida é feminino, 60 anos ou mais|
|Pessoas|pessoas_V03935|V03935|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2021 a dezembro de 2021, Sexo da pessoa falecida é masculino, 0 a 14 anos|
|Pessoas|pessoas_V03936|V03936|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2021 a dezembro de 2021, Sexo da pessoa falecida é masculino, 15 a 29 anos|
|Pessoas|pessoas_V03937|V03937|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2021 a dezembro de 2021, Sexo da pessoa falecida é masculino, 30 a 59 anos|
|Pessoas|pessoas_V03938|V03938|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2021 a dezembro de 2021, Sexo da pessoa falecida é masculino, 60 anos ou mais|
|Pessoas|pessoas_V03939|V03939|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2021 a dezembro de 2021, Sexo da pessoa falecida é feminino, 0 a 14 anos|
|Pessoas|pessoas_V03940|V03940|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2021 a dezembro de 2021, Sexo da pessoa falecida é feminino, 15 a 29 anos|
|Pessoas|pessoas_V03941|V03941|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2021 a dezembro de 2021, Sexo da pessoa falecida é feminino, 30 a 59 anos|
|Pessoas|pessoas_V03942|V03942|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2021 a dezembro de 2021, Sexo da pessoa falecida é feminino, 60 anos ou mais|
|Pessoas|pessoas_V03943|V03943|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2022 a julho de 2022, Sexo da pessoa falecida é masculino, 0 a 14 anos|
|Pessoas|pessoas_V03944|V03944|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2022 a julho de 2022, Sexo da pessoa falecida é masculino, 15 a 29 anos|
|Pessoas|pessoas_V03945|V03945|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2022 a julho de 2022, Sexo da pessoa falecida é masculino, 30 a 59 anos|
|Pessoas|pessoas_V03946|V03946|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2022 a julho de 2022, Sexo da pessoa falecida é masculino, 60 anos ou mais|
|Pessoas|pessoas_V03947|V03947|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2022 a julho de 2022, Sexo da pessoa falecida é feminino, 0 a 14 anos|
|Pessoas|pessoas_V03948|V03948|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2022 a julho de 2022, Sexo da pessoa falecida é feminino, 15 a 29 anos|
|Pessoas|pessoas_V03949|V03949|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2022 a julho de 2022, Sexo da pessoa falecida é feminino, 30 a 59 anos|
|Pessoas|pessoas_V03950|V03950|Domicílio com pelo menos um morador quilombola, Mês e ano de falecimento entre janeiro de 2022 a julho de 2022, Sexo da pessoa falecida é feminino, 60 anos ou mais|

## 4.7. Arquivo Renda do Responsável {#dic_responsavelrenda}

### Fonte de dados

* Planilha `ResponsavelRenda` do arquivo `docs/original/2022_dictionary_tracts.xlsx`

Temas presentes na planilha: `Identificação Geográfica`; `Renda do Responsável`.

### Dicionário de dados

|Tema|Nome no {censobr}|Nome original|Descrição da variável|
|-|-|-|-|
|Identificação Geográfica|code_tract|CD_SETOR|Geocódigo de Setor Censitário|
|Identificação Geográfica|situacao|SITUACAO|Situação do Setor Censitário Categorias observadas na planilha: `Urbana`; `Rural`.|
|Identificação Geográfica|code_situacao|CD_SIT|Situação detalhada do Setor Censitário Categorias: `1` = Área urbana de alta densidade de edificações de cidade ou vila; `2` = Área urbana de baixa densidade de edificações de cidade ou vila; `3` = Núcleo urbano; `5` = Aglomerado rural - Povoado; `6` = Aglomerado rural - Núcleo rural; `7` = Aglomerado rural - Lugarejo; `8` = Área rural (exclusive aglomerados); `9` = Massas de água.|
|Identificação Geográfica|code_type|CD_TIPO|Tipo do Setor Censitário Categorias: `0` = Não especial; `1` = Favela e Comunidade Urbana; `2` = Quartel e base militar; `3` = Alojamento / acampamento; `4` = Setor com baixo patamar domiciliar; `5` = Agrupamento indígena; `6` = Unidade prisional; `7` = Convento / hospital / ILPI / IACA; `8` = Agrovila do PA; `9` = Agrupamento quilombola.|
|Identificação Geográfica|area_km2|AREA_KM2|Área do Setor Censitário em quilômetros quadrados|
|Identificação Geográfica|code_region|CD_REGIAO|Código das Grandes Regiões (Regiões Geográficas)|
|Identificação Geográfica|name_region|NM_REGIAO|Nome das Grandes Regiões (Regiões Geográficas)|
|Identificação Geográfica|code_state|CD_UF|Código da Unidade da Federação|
|Identificação Geográfica|name_state|NM_UF|Nome da Unidade da Federação|
|Identificação Geográfica|code_muni|CD_MUN|Código do Município|
|Identificação Geográfica|name_muni|NM_MUN|Nome do Município|
|Identificação Geográfica|code_district|CD_DIST|Código do Distrito|
|Identificação Geográfica|name_district|NM_DIST|Nome do Distrito|
|Identificação Geográfica|code_subdistrict|CD_SUBDIST|Código do Subdistrito|
|Identificação Geográfica|name_subdistrict|NM_SUBDIST|Nome do Subdistrito|
|Identificação Geográfica|code_neighborhood|CD_BAIRRO|Código do Bairro|
|Identificação Geográfica|name_neighborhood|NM_BAIRRO|Nome do Bairro|
|Identificação Geográfica|code_nucleo_urbano|CD_NU|Código do Núcleo Urbano|
|Identificação Geográfica|name_nucleo_urbano|NM_NU|Nome do Núcleo Urbano|
|Identificação Geográfica|code_favela|CD_FCU|Código da Favela ou Comunidade Urbana|
|Identificação Geográfica|name_favela|NM_FCU|Nome da Favela ou Comunidade Urbana|
|Identificação Geográfica|code_aglomerado|CD_AGLOM|Código do Aglomerado|
|Identificação Geográfica|name_aglomerado|NM_AGLOM|Nome do Aglomerado|
|Identificação Geográfica|code_intermediate|CD_RGINT|Código da Região Geográfica Intermediária|
|Identificação Geográfica|name_intermediate|NM_RGINT|Nome da Região Geográfica Intermediária|
|Identificação Geográfica|code_immediate|CD_RGI|Código da Região Geográfica Imediata|
|Identificação Geográfica|name_immediate|NM_RGI|Nome da Região Geográfica Imediata|
|Identificação Geográfica|code_urban_concentration|CD_CONCURB|Código da Concentração Urbana|
|Identificação Geográfica|name_urban_concentration|NM_CONCURB|Nome da Concentração Urbana|
|Renda do Responsável|V06001|V06001|Pessoas responsáveis em domicílios particulares permanentes ocupados|
|Renda do Responsável|V06002|V06002|Moradores em domicílios particulares permanentes ocupados|
|Renda do Responsável|V06003|V06003|Variância do número de moradores em domicílios particulares permanentes ocupados|
|Renda do Responsável|V06004|V06004|Valor do rendimento nominal médio mensal das pessoas responsáveis com rendimentos por domicílios particulares permanentes ocupados|
|Renda do Responsável|V06005|V06005|Variância do rendimento nominal mensal das pessoas responsáveis com rendimentos por domicílios particulares permanentes ocupados|

## 4.8. Arquivo Entorno {#dic_entorno}

### Fonte de dados

* Planilha `Entorno` do arquivo `docs/original/2022_dictionary_tracts.xlsx`

Temas presentes na planilha: `Domicílios particulares permanentes ocupados`; `Faces de quadra`; `Identificação Geográfica`; `Moradores em Domicílios particulares permanentes ocupados`.

### Dicionário de dados

|Tema|Cobertura da pesquisa do entorno|Nome no {censobr}|Nome original|Descrição da variável|
|-|-|-|-|-|
|Identificação Geográfica|Setor escolhido para aplicação do entorno|code_tract|CD_SETOR|Geocódigo de Setor Censitário|
|Identificação Geográfica|Setor escolhido para aplicação do entorno|situacao|SITUACAO|Situação do Setor Censitário Categorias observadas na planilha: `Urbana`; `Rural`.|
|Identificação Geográfica|Setor escolhido para aplicação do entorno|code_situacao|CD_SIT|Situação detalhada do Setor Censitário Categorias: `1` = Área urbana de alta densidade de edificações de cidade ou vila; `2` = Área urbana de baixa densidade de edificações de cidade ou vila; `3` = Núcleo urbano; `5` = Aglomerado rural - Povoado; `6` = Aglomerado rural - Núcleo rural; `7` = Aglomerado rural - Lugarejo; `8` = Área rural (exclusive aglomerados); `9` = Massas de água.|
|Identificação Geográfica|Setor escolhido para aplicação do entorno|code_type|CD_TIPO|Tipo do Setor Censitário Categorias: `0` = Não especial; `1` = Favela e Comunidade Urbana; `2` = Quartel e base militar; `3` = Alojamento / acampamento; `4` = Setor com baixo patamar domiciliar; `5` = Agrupamento indígena; `6` = Unidade prisional; `7` = Convento / hospital / ILPI / IACA; `8` = Agrovila do PA; `9` = Agrupamento quilombola.|
|Identificação Geográfica|Setor escolhido para aplicação do entorno|area_km2|AREA_KM2|Área do Setor Censitário em quilômetros quadrados|
|Identificação Geográfica|Setor escolhido para aplicação do entorno|code_region|CD_REGIAO|Código das Grandes Regiões (Regiões Geográficas)|
|Identificação Geográfica|Setor escolhido para aplicação do entorno|name_region|NM_REGIAO|Nome das Grandes Regiões (Regiões Geográficas)|
|Identificação Geográfica|Setor escolhido para aplicação do entorno|code_state|CD_UF|Código da Unidade da Federação|
|Identificação Geográfica|Setor escolhido para aplicação do entorno|name_state|NM_UF|Nome da Unidade da Federação|
|Identificação Geográfica|Setor escolhido para aplicação do entorno|code_muni|CD_MUN|Código do Município|
|Identificação Geográfica|Setor escolhido para aplicação do entorno|name_muni|NM_MUN|Nome do Município|
|Identificação Geográfica|Setor escolhido para aplicação do entorno|code_district|CD_DIST|Código do Distrito|
|Identificação Geográfica|Setor escolhido para aplicação do entorno|name_district|NM_DIST|Nome do Distrito|
|Identificação Geográfica|Setor escolhido para aplicação do entorno|code_subdistrict|CD_SUBDIST|Código do Subdistrito|
|Identificação Geográfica|Setor escolhido para aplicação do entorno|name_subdistrict|NM_SUBDIST|Nome do Subdistrito|
|Identificação Geográfica|Setor escolhido para aplicação do entorno|code_neighborhood|CD_BAIRRO|Código do Bairro|
|Identificação Geográfica|Setor escolhido para aplicação do entorno|name_neighborhood|NM_BAIRRO|Nome do Bairro|
|Identificação Geográfica|Setor escolhido para aplicação do entorno|code_nucleo_urbano|CD_NU|Código do Núcleo Urbano|
|Identificação Geográfica|Setor escolhido para aplicação do entorno|name_nucleo_urbano|NM_NU|Nome do Núcleo Urbano|
|Identificação Geográfica|Setor escolhido para aplicação do entorno|code_favela|CD_FCU|Código da Favela ou Comunidade Urbana|
|Identificação Geográfica|Setor escolhido para aplicação do entorno|name_favela|NM_FCU|Nome da Favela ou Comunidade Urbana|
|Identificação Geográfica|Setor escolhido para aplicação do entorno|code_aglomerado|CD_AGLOM|Código do Aglomerado|
|Identificação Geográfica|Setor escolhido para aplicação do entorno|name_aglomerado|NM_AGLOM|Nome do Aglomerado|
|Identificação Geográfica|Setor escolhido para aplicação do entorno|code_intermediate|CD_RGINT|Código da Região Geográfica Intermediária|
|Identificação Geográfica|Setor escolhido para aplicação do entorno|name_intermediate|NM_RGINT|Nome da Região Geográfica Intermediária|
|Identificação Geográfica|Setor escolhido para aplicação do entorno|code_immediate|CD_RGI|Código da Região Geográfica Imediata|
|Identificação Geográfica|Setor escolhido para aplicação do entorno|name_immediate|NM_RGI|Nome da Região Geográfica Imediata|
|Identificação Geográfica|Setor escolhido para aplicação do entorno|code_urban_concentration|CD_CONCURB|Código da Concentração Urbana|
|Identificação Geográfica|Setor escolhido para aplicação do entorno|name_urban_concentration|NM_CONCURB|Nome da Concentração Urbana|
|Faces de quadra|Setor escolhido para aplicação do entorno|faces_V05400|V05400|Faces No Setor|
|Faces de quadra|Setor escolhido para aplicação do entorno|faces_V05401|V05401|Face Com Circulação Da Via - Caminhão, Ônibus|
|Faces de quadra|Setor escolhido para aplicação do entorno|faces_V05402|V05402|Face Com Circulação Da Via - Carros De Passeio Ou Van|
|Faces de quadra|Setor escolhido para aplicação do entorno|faces_V05403|V05403|Face Com Circulação Da Via - Pedestres, Bicicletas E Motocicletas|
|Faces de quadra|Setor escolhido para aplicação do entorno|faces_V05404|V05404|Face Com Circulação Da Via - Aquavia|
|Faces de quadra|Setor escolhido para aplicação do entorno|faces_V05405|V05405|Face Com Circulação Da Via - Saltado|
|Faces de quadra|Setor escolhido para aplicação do entorno|faces_V05406|V05406|Face Com Via Pavimentada - Sim|
|Faces de quadra|Setor escolhido para aplicação do entorno|faces_V05407|V05407|Face Com Via Pavimentada - Não|
|Faces de quadra|Setor escolhido para aplicação do entorno|faces_V05408|V05408|Face Com Via Pavimentada - Não Declarado|
|Faces de quadra|Setor escolhido para aplicação do entorno|faces_V05409|V05409|Face Com Bueiro - Sim|
|Faces de quadra|Setor escolhido para aplicação do entorno|faces_V05410|V05410|Face Com Bueiro - Não|
|Faces de quadra|Setor escolhido para aplicação do entorno|faces_V05411|V05411|Face Com Bueiro - Não Declarado|
|Faces de quadra|Setor escolhido para aplicação do entorno|faces_V05412|V05412|Face Com Iluminação Pública - Sim|
|Faces de quadra|Setor escolhido para aplicação do entorno|faces_V05413|V05413|Face Com Iluminação Pública - Não|
|Faces de quadra|Setor escolhido para aplicação do entorno|faces_V05414|V05414|Face Com Iluminação Pública - Não Declarado|
|Faces de quadra|Setor escolhido para aplicação do entorno|faces_V05415|V05415|Face Com Ponto De Ônibus - Sim|
|Faces de quadra|Setor escolhido para aplicação do entorno|faces_V05416|V05416|Face Com Ponto De Ônibus - Não|
|Faces de quadra|Setor escolhido para aplicação do entorno|faces_V05417|V05417|Face Com Ponto De Ônibus - Não Declarado|
|Faces de quadra|Setor escolhido para aplicação do entorno|faces_V05418|V05418|Face Com Via Sinalizada Para Bicicleta - Sim|
|Faces de quadra|Setor escolhido para aplicação do entorno|faces_V05419|V05419|Face Com Via Sinalizada Para Bicicleta - Não|
|Faces de quadra|Setor escolhido para aplicação do entorno|faces_V05420|V05420|Face Com Via Sinalizada Para Bicicleta - Não Declarado|
|Faces de quadra|Setor escolhido para aplicação do entorno|faces_V05421|V05421|Face Com Calçada - Sim|
|Faces de quadra|Setor escolhido para aplicação do entorno|faces_V05422|V05422|Face Com Calçada - Não|
|Faces de quadra|Setor escolhido para aplicação do entorno|faces_V05423|V05423|Face Com Calçada - Não Declarado|
|Faces de quadra|Setor escolhido para aplicação do entorno|faces_V05424|V05424|Face Com Obstáculo Na Calçada - Sim|
|Faces de quadra|Setor escolhido para aplicação do entorno|faces_V05425|V05425|Face Com Obstáculo Na Calçada - Não|
|Faces de quadra|Setor escolhido para aplicação do entorno|faces_V05426|V05426|Face Com Obstáculo Na Calçada - Não Declarado|
|Faces de quadra|Setor escolhido para aplicação do entorno|faces_V05427|V05427|Face Com Rampa Para Cadeirante - Sim|
|Faces de quadra|Setor escolhido para aplicação do entorno|faces_V05428|V05428|Face Com Rampa Para Cadeirante - Não|
|Faces de quadra|Setor escolhido para aplicação do entorno|faces_V05429|V05429|Face Com Rampa Para Cadeirante - Não Declarado|
|Faces de quadra|Setor escolhido para aplicação do entorno|faces_V05430|V05430|Face Com Arborização - Sem Árvores|
|Faces de quadra|Setor escolhido para aplicação do entorno|faces_V05431|V05431|Face Com Arborização - De 1 A 2 Árvores|
|Faces de quadra|Setor escolhido para aplicação do entorno|faces_V05432|V05432|Face Com Arborização - De 3 A 4 Árvores|
|Faces de quadra|Setor escolhido para aplicação do entorno|faces_V05433|V05433|Face Com Arborização - 5 Ou Mais Árvores|
|Faces de quadra|Setor escolhido para aplicação do entorno|faces_V05434|V05434|Face Com Arborização - Saltado|
|Domicílios particulares permanentes ocupados|Domicílios particulares permanentes ocupados com entorno pesquisado|domicilios_V05000|V05000|Total De Domicílios particulares permanentes com entorno pesquisado|
|Domicílios particulares permanentes ocupados|Domicílios particulares permanentes ocupados com entorno pesquisado|domicilios_V05001|V05001|Domicílios Particulares Permanentes Em Face Com Circulação Da Via - Caminhão, Ônibus|
|Domicílios particulares permanentes ocupados|Domicílios particulares permanentes ocupados com entorno pesquisado|domicilios_V05002|V05002|Domicílios Particulares Permanentes Em Face Com Circulação Da Via - Carros De Passeio Ou Van|
|Domicílios particulares permanentes ocupados|Domicílios particulares permanentes ocupados com entorno pesquisado|domicilios_V05003|V05003|Domicílios Particulares Permanentes Em Face Com Circulação Da Via - Pedestres, Bicicletas E Motocicletas|
|Domicílios particulares permanentes ocupados|Domicílios particulares permanentes ocupados com entorno pesquisado|domicilios_V05004|V05004|Domicílios Particulares Permanentes Em Face Com Circulação Da Via - Aquavia|
|Domicílios particulares permanentes ocupados|Domicílios particulares permanentes ocupados com entorno pesquisado|domicilios_V05005|V05005|Domicílios Particulares Permanentes Em Face Com Circulação Da Via - Saltado|
|Domicílios particulares permanentes ocupados|Domicílios particulares permanentes ocupados com entorno pesquisado|domicilios_V05006|V05006|Domicílios Particulares Permanentes Em Face Com Via Pavimentada - Sim|
|Domicílios particulares permanentes ocupados|Domicílios particulares permanentes ocupados com entorno pesquisado|domicilios_V05007|V05007|Domicílios Particulares Permanentes Em Face Com Via Pavimentada - Não|
|Domicílios particulares permanentes ocupados|Domicílios particulares permanentes ocupados com entorno pesquisado|domicilios_V05008|V05008|Domicílios Particulares Permanentes Em Face Com Via Pavimentada - Não Declarado|
|Domicílios particulares permanentes ocupados|Domicílios particulares permanentes ocupados com entorno pesquisado|domicilios_V05009|V05009|Domicílios Particulares Permanentes Em Face Com Bueiro - Sim|
|Domicílios particulares permanentes ocupados|Domicílios particulares permanentes ocupados com entorno pesquisado|domicilios_V05010|V05010|Domicílios Particulares Permanentes Em Face Com Bueiro - Não|
|Domicílios particulares permanentes ocupados|Domicílios particulares permanentes ocupados com entorno pesquisado|domicilios_V05011|V05011|Domicílios Particulares Permanentes Em Face Com Bueiro - Não Declarado|
|Domicílios particulares permanentes ocupados|Domicílios particulares permanentes ocupados com entorno pesquisado|domicilios_V05012|V05012|Domicílios Particulares Permanentes Em Face Com Iluminação Pública - Sim|
|Domicílios particulares permanentes ocupados|Domicílios particulares permanentes ocupados com entorno pesquisado|domicilios_V05013|V05013|Domicílios Particulares Permanentes Em Face Com Iluminação Pública - Não|
|Domicílios particulares permanentes ocupados|Domicílios particulares permanentes ocupados com entorno pesquisado|domicilios_V05014|V05014|Domicílios Particulares Permanentes Em Face Com Iluminação Pública - Não Declarado|
|Domicílios particulares permanentes ocupados|Domicílios particulares permanentes ocupados com entorno pesquisado|domicilios_V05015|V05015|Domicílios Particulares Permanentes Em Face Com Ponto De Ônibus - Sim|
|Domicílios particulares permanentes ocupados|Domicílios particulares permanentes ocupados com entorno pesquisado|domicilios_V05016|V05016|Domicílios Particulares Permanentes Em Face Com Ponto De Ônibus - Não|
|Domicílios particulares permanentes ocupados|Domicílios particulares permanentes ocupados com entorno pesquisado|domicilios_V05017|V05017|Domicílios Particulares Permanentes Em Face Com Ponto De Ônibus - Não Declarado|
|Domicílios particulares permanentes ocupados|Domicílios particulares permanentes ocupados com entorno pesquisado|domicilios_V05018|V05018|Domicílios Particulares Permanentes Em Face Com Via Sinalizada Para Bicicleta - Sim|
|Domicílios particulares permanentes ocupados|Domicílios particulares permanentes ocupados com entorno pesquisado|domicilios_V05019|V05019|Domicílios Particulares Permanentes Em Face Com Via Sinalizada Para Bicicleta - Não|
|Domicílios particulares permanentes ocupados|Domicílios particulares permanentes ocupados com entorno pesquisado|domicilios_V05020|V05020|Domicílios Particulares Permanentes Em Face Com Via Sinalizada Para Bicicleta - Não Declarado|
|Domicílios particulares permanentes ocupados|Domicílios particulares permanentes ocupados com entorno pesquisado|domicilios_V05021|V05021|Domicílios Particulares Permanentes Em Face Com Calçada - Sim|
|Domicílios particulares permanentes ocupados|Domicílios particulares permanentes ocupados com entorno pesquisado|domicilios_V05022|V05022|Domicílios Particulares Permanentes Em Face Com Calçada - Não|
|Domicílios particulares permanentes ocupados|Domicílios particulares permanentes ocupados com entorno pesquisado|domicilios_V05023|V05023|Domicílios Particulares Permanentes Em Face Com Calçada - Não Declarado|
|Domicílios particulares permanentes ocupados|Domicílios particulares permanentes ocupados com entorno pesquisado|domicilios_V05024|V05024|Domicílios Particulares Permanentes Em Face Com Obstáculo Na Calçada - Sim|
|Domicílios particulares permanentes ocupados|Domicílios particulares permanentes ocupados com entorno pesquisado|domicilios_V05025|V05025|Domicílios Particulares Permanentes Em Face Com Obstáculo Na Calçada - Não|
|Domicílios particulares permanentes ocupados|Domicílios particulares permanentes ocupados com entorno pesquisado|domicilios_V05026|V05026|Domicílios Particulares Permanentes Em Face Com Obstáculo Na Calçada - Não Declarado|
|Domicílios particulares permanentes ocupados|Domicílios particulares permanentes ocupados com entorno pesquisado|domicilios_V05027|V05027|Domicílios Particulares Permanentes Em Face Com Rampa Para Cadeirante - Sim|
|Domicílios particulares permanentes ocupados|Domicílios particulares permanentes ocupados com entorno pesquisado|domicilios_V05028|V05028|Domicílios Particulares Permanentes Em Face Com Rampa Para Cadeirante - Não|
|Domicílios particulares permanentes ocupados|Domicílios particulares permanentes ocupados com entorno pesquisado|domicilios_V05029|V05029|Domicílios Particulares Permanentes Em Face Com Rampa Para Cadeirante - Não Declarado|
|Domicílios particulares permanentes ocupados|Domicílios particulares permanentes ocupados com entorno pesquisado|domicilios_V05030|V05030|Domicílios Particulares Permanentes Em Face Com Arborização - Sem Árvores|
|Domicílios particulares permanentes ocupados|Domicílios particulares permanentes ocupados com entorno pesquisado|domicilios_V05031|V05031|Domicílios Particulares Permanentes Em Face Com Arborização - De 1 A 2 Árvores|
|Domicílios particulares permanentes ocupados|Domicílios particulares permanentes ocupados com entorno pesquisado|domicilios_V05032|V05032|Domicílios Particulares Permanentes Em Face Com Arborização - De 3 A 4 Árvores|
|Domicílios particulares permanentes ocupados|Domicílios particulares permanentes ocupados com entorno pesquisado|domicilios_V05033|V05033|Domicílios Particulares Permanentes Em Face Com Arborização - 5 Ou Mais Árvores|
|Domicílios particulares permanentes ocupados|Domicílios particulares permanentes ocupados com entorno pesquisado|domicilios_V05034|V05034|Domicílios Particulares Permanentes Em Face Com Arborização - Saltado|
|Moradores em Domicílios particulares permanentes ocupados|Domicílios particulares permanentes ocupados com entorno pesquisado|moradores_V05200|V05200|Total de moradores em domicílios particulares permanentes com entorno pesquisado|
|Moradores em Domicílios particulares permanentes ocupados|Domicílios particulares permanentes ocupados com entorno pesquisado|moradores_V05201|V05201|Moradores De Domicílios Particulares Permanentes Em Face Com Circulação Da Via - Caminhão, Ônibus|
|Moradores em Domicílios particulares permanentes ocupados|Domicílios particulares permanentes ocupados com entorno pesquisado|moradores_V05202|V05202|Moradores De Domicílios Particulares Permanentes Em Face Com Circulação Da Via - Carros De Passeio Ou Van|
|Moradores em Domicílios particulares permanentes ocupados|Domicílios particulares permanentes ocupados com entorno pesquisado|moradores_V05203|V05203|Moradores De Domicílios Particulares Permanentes Em Face Com Circulação Da Via - Pedestres, Bicicletas E Motocicletas|
|Moradores em Domicílios particulares permanentes ocupados|Domicílios particulares permanentes ocupados com entorno pesquisado|moradores_V05204|V05204|Moradores De Domicílios Particulares Permanentes Em Face Com Circulação Da Via - Aquavia|
|Moradores em Domicílios particulares permanentes ocupados|Domicílios particulares permanentes ocupados com entorno pesquisado|moradores_V05205|V05205|Moradores De Domicílios Particulares Permanentes Em Face Com Circulação Da Via - Saltado|
|Moradores em Domicílios particulares permanentes ocupados|Domicílios particulares permanentes ocupados com entorno pesquisado|moradores_V05206|V05206|Moradores De Domicílios Particulares Permanentes Em Face Com Via Pavimentada - Sim|
|Moradores em Domicílios particulares permanentes ocupados|Domicílios particulares permanentes ocupados com entorno pesquisado|moradores_V05207|V05207|Moradores De Domicílios Particulares Permanentes Em Face Com Via Pavimentada - Não|
|Moradores em Domicílios particulares permanentes ocupados|Domicílios particulares permanentes ocupados com entorno pesquisado|moradores_V05208|V05208|Moradores De Domicílios Particulares Permanentes Em Face Com Via Pavimentada - Não Declarado|
|Moradores em Domicílios particulares permanentes ocupados|Domicílios particulares permanentes ocupados com entorno pesquisado|moradores_V05209|V05209|Moradores De Domicílios Particulares Permanentes Em Face Com Bueiro - Sim|
|Moradores em Domicílios particulares permanentes ocupados|Domicílios particulares permanentes ocupados com entorno pesquisado|moradores_V05210|V05210|Moradores De Domicílios Particulares Permanentes Em Face Com Bueiro - Não|
|Moradores em Domicílios particulares permanentes ocupados|Domicílios particulares permanentes ocupados com entorno pesquisado|moradores_V05211|V05211|Moradores De Domicílios Particulares Permanentes Em Face Com Bueiro - Não Declarado|
|Moradores em Domicílios particulares permanentes ocupados|Domicílios particulares permanentes ocupados com entorno pesquisado|moradores_V05212|V05212|Moradores De Domicílios Particulares Permanentes Em Face Com Iluminação Pública - Sim|
|Moradores em Domicílios particulares permanentes ocupados|Domicílios particulares permanentes ocupados com entorno pesquisado|moradores_V05213|V05213|Moradores De Domicílios Particulares Permanentes Em Face Com Iluminação Pública - Não|
|Moradores em Domicílios particulares permanentes ocupados|Domicílios particulares permanentes ocupados com entorno pesquisado|moradores_V05214|V05214|Moradores De Domicílios Particulares Permanentes Em Face Com Iluminação Pública - Não Declarado|
|Moradores em Domicílios particulares permanentes ocupados|Domicílios particulares permanentes ocupados com entorno pesquisado|moradores_V05215|V05215|Moradores De Domicílios Particulares Permanentes Em Face Com Ponto De Ônibus - Sim|
|Moradores em Domicílios particulares permanentes ocupados|Domicílios particulares permanentes ocupados com entorno pesquisado|moradores_V05216|V05216|Moradores De Domicílios Particulares Permanentes Em Face Com Ponto De Ônibus - Não|
|Moradores em Domicílios particulares permanentes ocupados|Domicílios particulares permanentes ocupados com entorno pesquisado|moradores_V05217|V05217|Moradores De Domicílios Particulares Permanentes Em Face Com Ponto De Ônibus - Não Declarado|
|Moradores em Domicílios particulares permanentes ocupados|Domicílios particulares permanentes ocupados com entorno pesquisado|moradores_V05218|V05218|Moradores De Domicílios Particulares Permanentes Em Face Com Via Sinalizada Para Bicicleta - Sim|
|Moradores em Domicílios particulares permanentes ocupados|Domicílios particulares permanentes ocupados com entorno pesquisado|moradores_V05219|V05219|Moradores De Domicílios Particulares Permanentes Em Face Com Via Sinalizada Para Bicicleta - Não|
|Moradores em Domicílios particulares permanentes ocupados|Domicílios particulares permanentes ocupados com entorno pesquisado|moradores_V05220|V05220|Moradores De Domicílios Particulares Permanentes Em Face Com Via Sinalizada Para Bicicleta - Não Declarado|
|Moradores em Domicílios particulares permanentes ocupados|Domicílios particulares permanentes ocupados com entorno pesquisado|moradores_V05221|V05221|Moradores De Domicílios Particulares Permanentes Em Face Com Calçada - Sim|
|Moradores em Domicílios particulares permanentes ocupados|Domicílios particulares permanentes ocupados com entorno pesquisado|moradores_V05222|V05222|Moradores De Domicílios Particulares Permanentes Em Face Com Calçada - Não|
|Moradores em Domicílios particulares permanentes ocupados|Domicílios particulares permanentes ocupados com entorno pesquisado|moradores_V05223|V05223|Moradores De Domicílios Particulares Permanentes Em Face Com Calçada - Não Declarado|
|Moradores em Domicílios particulares permanentes ocupados|Domicílios particulares permanentes ocupados com entorno pesquisado|moradores_V05224|V05224|Moradores De Domicílios Particulares Permanentes Em Face Com Obstáculo Na Calçada - Sim|
|Moradores em Domicílios particulares permanentes ocupados|Domicílios particulares permanentes ocupados com entorno pesquisado|moradores_V05225|V05225|Moradores De Domicílios Particulares Permanentes Em Face Com Obstáculo Na Calçada - Não|
|Moradores em Domicílios particulares permanentes ocupados|Domicílios particulares permanentes ocupados com entorno pesquisado|moradores_V05226|V05226|Moradores De Domicílios Particulares Permanentes Em Face Com Obstáculo Na Calçada - Não Declarado|
|Moradores em Domicílios particulares permanentes ocupados|Domicílios particulares permanentes ocupados com entorno pesquisado|moradores_V05227|V05227|Moradores De Domicílios Particulares Permanentes Em Face Com Rampa Para Cadeirante - Sim|
|Moradores em Domicílios particulares permanentes ocupados|Domicílios particulares permanentes ocupados com entorno pesquisado|moradores_V05228|V05228|Moradores De Domicílios Particulares Permanentes Em Face Com Rampa Para Cadeirante - Não|
|Moradores em Domicílios particulares permanentes ocupados|Domicílios particulares permanentes ocupados com entorno pesquisado|moradores_V05229|V05229|Moradores De Domicílios Particulares Permanentes Em Face Com Rampa Para Cadeirante - Não Declarado|
|Moradores em Domicílios particulares permanentes ocupados|Domicílios particulares permanentes ocupados com entorno pesquisado|moradores_V05230|V05230|Moradores De Domicílios Particulares Permanentes Em Face Com Arborização - Sem Árvores|
|Moradores em Domicílios particulares permanentes ocupados|Domicílios particulares permanentes ocupados com entorno pesquisado|moradores_V05231|V05231|Moradores De Domicílios Particulares Permanentes Em Face Com Arborização - De 1 A 2 Árvores|
|Moradores em Domicílios particulares permanentes ocupados|Domicílios particulares permanentes ocupados com entorno pesquisado|moradores_V05232|V05232|Moradores De Domicílios Particulares Permanentes Em Face Com Arborização - De 3 A 4 Árvores|
|Moradores em Domicílios particulares permanentes ocupados|Domicílios particulares permanentes ocupados com entorno pesquisado|moradores_V05233|V05233|Moradores De Domicílios Particulares Permanentes Em Face Com Arborização - 5 Ou Mais Árvores|
|Moradores em Domicílios particulares permanentes ocupados|Domicílios particulares permanentes ocupados com entorno pesquisado|moradores_V05234|V05234|Moradores De Domicílios Particulares Permanentes Em Face Com Arborização - Saltado|

# 5\. Referências {#referencias}

* `docs/original/2022_dictionary_tracts.xlsx` (fonte primária desta transcrição).
* `docs/2010_dictionary_tracts.md` (referência editorial de estrutura e estilo para esta documentação em `markdown`).
