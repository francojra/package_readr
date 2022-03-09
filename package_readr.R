
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
