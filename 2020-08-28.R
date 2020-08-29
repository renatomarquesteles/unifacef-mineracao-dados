# 28/08/2020

# LEITURA E ESCRITA DE DADOS

# DIRETORIO

## OBTER DIRETORIO ATUAL
getwd()

## ALTERAR DIRETORIO ATUAL
setwd("/home/renato/Documentos/unifacef/mineracao/temp/datascience")

## LEITURA DE DADOS

## FUNCAO scan
## ARGUMENTO what
## ARGUMENTO file
## FUNCAO read.table

tabela = read.table("my_table.txt", header=TRUE)

## file.choose()

tabela = read.csv("vendas.csv")

fileUrl = "http://archive.ics.uci.edu/ml/machine-learning-databases/ecoli/ecoli.data"

## BAIXA O ARQUIVO DA INTERNET
download.file(fileUrl, destfile="ecoli.csv")

ecoli = read.table("ecoli.csv")

## DIMENSOES (LINHAS, COLUNAS)
dim(ecoli)

## APRESENTA PEQUENA AMOSTRA
head(ecoli)

## FUNCAO readLines
## PACKAGE RJSONIO

# ESCRITA DE DADOS

## FUNCAO print
x <- c(2, 3, 5, 9)
print(x)

## ALTERA QTD DE DIGITOS NUMERICOS (DEFAULT = 7)
options(digits=5)

## FUNCAO cat
cat("Este é o valor da variável x:", x, "\n")

## CRIA OU EDITA ARQUIVO
cat(file = "resultado.txt", "Este é o valor da variável x:", x, "\n")

## ADICIONA NO FINAL DO ARQUIVO
cat(
  file = "resultado.txt",
  "Esta linha é adicionada depois da linha anterior no mesmo arquivo\n",
  append = TRUE
)

## ARMAZENAR UMA TABELA (DATA FRAME OU MATRIZ)
x <- matrix(1 : 10, ncol = 5)
write.table(x)
write.table(x, file = "tabela.txt")

## ENVIAR RESULTADOS DE COMANDOS DIGITADOS PARA UM ARQUIVO

x <- seq(1, 10, 0.1)
sink("saida.txt")
x
x^3
sink()

## ADICIONAR NO FINAL
sink("saida.txt", append = T)
cumsum(x)
sink()

## IMPRIME O RESULTADO NO CONSOLE E NO ARQUIVO
sink("saida.txt", append = T, split = T)
summary(x)
sink()

## ARMAZENA EM ARQUIVO CONTEUDOS ASSOCIADOS A OBJETOS E PERMITE CARREGA-LOS
## O CONTEUDO EH APENAS INTERPRETADO PELO PROPRIO R
x <- -50 : 50
f <- function(x) if (x < 0) 0 else x
save(x, f, file = "dados.Rdata")
load("dados.Rdata")
f(x)

