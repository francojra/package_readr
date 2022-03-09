
# Pacote readr - Tidyverse -----------------------------------------------------------------------------------------------------------------
# Autoria do script: Jeanne Franco ---------------------------------------------------------------------------------------------------------
# Data: 08/03/2022 -------------------------------------------------------------------------------------------------------------------------
# Fonte: Curso R ---------------------------------------------------------------------------------------------------------------------------

# O pacote readr ---------------------------------------------------------------------------------------------------------------------------

## O pacote {readr}do tidyverse é utilizado para importar arquivos de texto, como .txt ou .csv, 
## para o R. Para carregá-lo, rode o código:

library(readr)

## O {readr} transforma arquivos de textos em tibbles usando as funções:

## - read_csv(): para arquivos separados por vírgula.

## - read_tsv(): para arquivos separados por tabulação.

## - read_delim(): para arquivos separados por um delimitador genérico. O argumento delim= indica qual caracter separa cada coluna no arquivo de texto.

## - read_table(): para arquivos de texto tabular com colunas separadas por espaço.

## - read_fwf(): para arquivos compactos que devem ter a largura de cada coluna especificada.

## - read_log(): para arquivos padrões de log.

## Vamos mostrar na próxima seção como importar as extensões mais comuns: .csv e .txt.

# Lendo arquivos de texto ------------------------------------------------------------------------------------------------------------------

## Primeiro, vamos ler a base em formato .csv

imdb_csv <- read_csv(file = "imdb.csv")

## A mensagem retornada pela função indica qual classe foi atribuída para cada coluna. Repare que 
## o argumento file= representa o caminho até o arquivo. Se o arquivo a ser lido não estiver 
## no diretório de trabalho da sua sessão, você precisa especificar o caminho até o arquivo.

# Se o arquivo estiver dentro de outra pasta e você não estiver no diretório. Deve copiar o 
# caminho da pasta do diretório.

imdb_csv <- read_csv(file = "C:/Users/jeann/Documents/pRaticando-Softawer-R/package_readr/imdb.csv")

## A maioria das funções de leitura do {readr} possuem argumentos muito úteis para resolver 
## problemas de importação:

## col_names=: indica se a primeira linha da base contém ou não o nome das colunas. Também pode 
## ser utilizado para (re)nomear colunas.

## col_types=: caso alguma coluna seja importada com a classe errada (uma coluna de números 
## foi importada como texto, por exemplo), você pode usar esse argumento para especificar 
## a classe das colunas.

## locale=: útil para tratar problema de encoding.

## skip=: pula linhas no começo do arquivo antes de iniciar a importação. Útil para 
## quando o arquivo a ser importado vem com metadados ou qualquer tipo de texto nas 
## primeiras linhas, antes da base.

## na=: indica quais strings deverão ser considaras NA na hora da importação.

## Em alguns países, como o Brasil, as vírgulas são utilizadas para separar as
## casas decimais dos números, inviabilizando o uso de arquivos .csv. 

##  Para importar bases de arquivos separados por ponto-e-vírgula no R, 
## basta usar a função read_csv2().

imdb_csv2 <- read_csv2("imdb2.csv")

## Arquivos .txt em geral podem ser lidos com a função read_delim(). Além do caminho 
## até o arquivo, você também precisa indicar qual é o caractere utilizado para 
## separar as colunas da base. Um arquivo separado por tabulação, por exemplo, pode 
## ser lido utilizando a o código abaixo. O código \t é uma forma textual de 
## representar a tecla TAB.

imdb_txt <- read_delim("imdb.txt", delim = "\t")

## Repare que a sintaxe é igual a da função read_csv(). Em geral, as funções 
## de importação do {tidyverse} terão sintaxe e comportamento muito parecidos.