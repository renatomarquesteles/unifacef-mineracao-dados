# 18/09/2020

# ANALISE DE DADOS
# AULA 07

setwd("/home/renato/Documentos/unifacef/mineracao/temp/datascience")

arquivo = "http://darwin.di.uminho.pt/cursoAnaliseDados/earthquakeData.csv"
download.file(arquivo, destfile="earthquakes.csv")

eData = read.csv("earthquakes.csv")

## VERIFICACAO DA ESTRUTURA DOS DADOS

dim(eData)
nrow(eData)
ncol(eData)

names(eData) # NOMES DAS COLUNAS
rownames(eData)[1:5] # NOME DAS 5 PRIMEIRAS LINHAS

head(eData, 3) # TRES PRIMEIRAS LINHAS

class(eData)
unlist(lapply(eData, class)) # LISTA COM A CLASSE DE CADA COLUNA
unlist(lapply(eData, typeof)) # LISTA COM O TIPO DE CADA COLUNA

names(eData)
names(eData)[5] = "Latitude" # ALTERA O NOME DA COLUNA
names(eData)[6] = "Longitude"

rownames(eData)[1:7]
rownames(eData) = paste("id-", rownames(eData), sep="") # ALTERA O NOME DA LINHA
eData[1:10,]

# ESTATISTICA DESCRITIVA PARA SUMARIZACAO DOS DADOS

mean(eData$Magnitude) # MEDIA
median(eData$Magnitude) # MEDIANA
sd(eData$Magnitude) # DESVIO PADRAO
mad(eData$Magnitude) # DESVIO ABSOLUTO MEDIO

quantile(eData$Magnitude) # QUARTIS DO CONJUNTO
summary(eData$Magnitude) # MIN + 1 QRTL + MEDIANA + MEDIA + 3 QRTL + MAX

rowMeans(iris[, -5]) # MEDIA DAS LINHAS EXCETO A QUINTA COLUNA Q N EH NUMERICA
colMeans(iris[, -5]) # MEDIA DAS COLUNAS EXCETO A QUINTA COLUNA Q N EH NUMERICA
colSums(iris[, -5]) # SOMA DAS COLUNAS EXCETO A QUINTA COLUNA Q N EH NUMERICA

unique(eData$Src) # VALORES UNICOS DA COLUNA SRC
table(eData$Src) # CRIA UMA TABELA COM OS VALORES UNICOS E UM COUNT PARA CADA UM

table(eData$Src, eData$Version) # RELACIONA DUAS COLUNAS


