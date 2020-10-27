# 27/10/2020

# HISTOGRAMAS (CONT.)

# GRAFICOS DE BARRAS E PIE CHARTS

## VERTICAL
barplot(table(iris$Species), col = "gray")
## HORIZONTAL
barplot(tapply(InsectSprays$count, InsectSprays$spray, mean),
        col = "darkgray",
        horiz = T)

pie(table(iris$Species), col = gray(seq(0.4, 1.0, length = 3)))

# SOBREPOSICAO DE OBJETOS GRAFICOS

## lines
## abline
## points
## legend
## text
## symbols
## axis
## polygon
## cuve

## SOBREPOSICAO DE LINHAS SOBRE UM GRAFICO
plot(iris$Petal.Length, iris$Petal.Width,
     pch = as.numeric(iris$Species) + 1)
abline(v = median(iris$Petal.Length), lwd = 2)
abline(h = median(iris$Petal.Width), lwd = 2)

## SOBREPOSICAO DE UMA LEGENDA
plot(iris$Petal.Length, iris$Petal.Width,
     pch = as.numeric(iris$Species) + 19,
     main = "Largura vs. Comprimento das Pétalas",
     ylab = "Largura",
     xlab = "Comprimento")
legend(1.5, 2.2, legend = levels(iris$Species),
       pch = c(20, 21, 22))

## SOBREPOSICAO DE INFORMACAO SOBRE MAPAS
install.packages("maps")
library("maps")
arquivo = "http://darwin.di.uminho.pt/cursoAnaliseDados/earthquakeData.csv"
download.file(arquivo, destfile = "earthquakes.csv")
eData = read.csv("earthquakes.csv")

map("world")
points(eData$Lon, eData$Lat, pch = 19)

# FORMATACAO E EXPORTACAO DE GRAFICOS

par(mfrow = c(1, 2))
hist(iris$Petal.Length,
     breaks = 10,
     col = "darkgray",
     xlab = "Comprimento Pétalas",
     main = "")
mtext(text = "a)", side = 3, line = 1)

plot(iris$Petal.Length,
     iris$Petal.Width,
     col = "darkgray",
     pch = 19,
     xlab = "Comprimento",
     ylab = "Largura",
     main = "")
mtext(text = "b)", side = 3, line = 1)

## GRAVAR EM PDF/PNG/GIF/JPEG

getwd()
setwd("/home/renato/Documentos/unifacef/mineracao/temp")

pdf(file = "grafico.pdf",
    height = 4,
    width = 8) # POLEGADAS
par(mfrow = c(1, 2))
hist(iris$Petal.Length,
     breaks = 10,
     col = "darkgray",
     xlab = "Comprimento Petalas",
     main = "")
mtext(text = "a)", side = 3, line = 1)
plot(iris$Petal.Length,
     iris$Petal.Width,
     col = "darkgray",
     pch = 19,
     xlab = "Comprimento",
     ylab = "Largura",
     main = "")
mtext(text = "b)", side = 3, line = 1)
dev.off()

# GGPLOT2
## PACOTE MAIS UTILIZADO PARA GERACAO DE GRAFICOS

install.packages("ggplot2")
library(ggplot2)
data("mpg")
str(mpg)
qplot(displ, hwy, data = mpg)
qplot(displ, hwy, data = mpg, shape = drv)

## DIFERENTES TIPOS DE DADOS
## ADICIONANDO UMA CAMADA REFERENTE A UMA LINHA DE APROXIMACAO (SMOOTH) AOS DADOS
qplot(displ, hwy,
      data = mpg,
      geom = c("point", "smooth"))

## OMITINDO VALORES DE UM EIXO
qplot(hwy, data = mpg)

## GRAFICO DE BARRAS ACUMULADAS
qplot(hwy,
      data = mpg,
      fill = drv)

## FACETAS
qplot(displ, hwy,
      data = mpg,
      facets = . ~ drv) # UTILIZA TODAS AS VARIAVEIS NAO UTILIZADAS OU PARA ESPECIFICAR INTERVALO DE TODAS ATE DRV
## VARIAVEL DEPENDENTE
qplot(hwy,
      data = mpg,
      facets = drv ~ .,
      binwidth = 2)

## A FUNCAO PRINT PERMITE CRIAR O GRAFICO
g = ggplot(data = mpg)
g = g + aes(displ, hwy)
g = g + geom_point()
print(g)

## REFINANDO A CONFIGURACAO
g = g + geom_smooth(method = "lm", se = F)
g = g + theme_bw(base_family = "Times")
g = g + labs(x = "Displacement") + labs(y = "Hwy") + labs(title = "MPG")
print(g)

