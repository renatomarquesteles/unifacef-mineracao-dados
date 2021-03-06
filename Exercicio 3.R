# RENATO MARQUES TELES, 21321
# EXERCICIO 03

# 1
## a
library(MASS)
UScereal

data("UScereal")
## b
dim(UScereal)
## c
UScereal[1 : 10, ]

head(UScereal, n = 10)
## d
UScereal[1 : 10, c(1, 3, 5)]

head(UScereal[ , c(1, 3, 5)], n = 10)
## e
media = mean(UScereal$calories)
resultado = UScereal[UScereal$calories > media, ]
write.table(resultado, file = "muitascalorias.txt", sep = ";", quote = F)

# 2
## a
idade = round(runif(5, 8, 80))
peso = rnorm(5, 60, 20)
altura = rnorm(5, 160, 40)
letrasgenero = c("M", "H")
genero = sample(letrasgenero, 5, replace = T)
dados = data.frame(idade, peso, altura, genero)
dados
## b
dados = dados[order(idade), ]
dados
## c
nome = c('Ana', 'Maria', 'Letícia', 'João', 'José')
dados = cbind(dados, nome)
## d
colnames(dados) = mapply(toupper, colnames(dados))
dados

names(dados)
names(dados) = toupper(names(dados))
dados
## e
write.table(dados, file = "individuos.txt", sep = "\t")
