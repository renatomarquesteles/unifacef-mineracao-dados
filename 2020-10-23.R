# 23/10/2020

# AULA 8

# VISUALIZAÇÃO GRÁFICA DE DADOS
# GRÁFICOS DE DISPERSÃO

x <- seq(0.2, 2, 0.01)
f <- function(x) (log(x))^2 - x * exp(-x^3)
plot(x, f(x))

plot(x, f(x), type = "l")

plot(iris$Petal.Length, iris$Petal.Width, pch = 19)

## DEFININDO AS CORES DOS PONTOS E TAMANHO
plot(iris$Sepal.Length, iris$Sepal.Width,
     col = iris$Species,
     pch = 19,
     cex = iris$Sepal.Length * iris$Sepal.Width * 0.1)

curve(cos(x)/sin(x), -2, 2)

pairs(iris)

install.packages("scatterplot3d")
library("scatterplot3d")

scatterplot3d(iris$Petal.Width,
              iris$Sepal.Length,
              iris$Sepal.Width,
              pch = 19,
              color = as.integer(iris$Species))

library(lattice)
levelplot(Petal.Width~Sepal.Length * Sepal.Width, iris)

x <- rnorm(100000)
y <- rnorm(100000)
smoothScatter(x, y)


getwd()
setwd("/home/renato/Documentos/unifacef/mineracao/temp")

arquivo = "http://darwin.di.uminho.pt/cursoAnaliseDados/earthquakeData.csv"
download.file(arquivo, destfile = "earthquakes.csv")
eData = read.csv("earthquakes.csv")
boxplot(eData$Magnitude, col = "red")

range(eData$Magnitude)
mean(eData$Magnitude)
mean(eData$Magnitude, trim = 0.1)
median(eData$Magnitude)
quantile(eData$Magnitude, c(0.25, 0.75))
quantile(eData$Magnitude, 0.75) + IQR(eData$Magnitude) * 1.5
quantile(eData$Magnitude, 0.25) - IQR(eData$Magnitude) * 1.5

boxplot(iris$Petal.Length ~iris$Species,
        col = "darkGray")

boxplot(count ~ spray, data = InsectSprays,
        xlab = "Tipo de Inseticida",
        main = "Dados de Inseticidas",
        col = "darkGray")

iris.st = scale(iris[, 1:4]) ## Tenta deixar centralizado os valores do data frame
boxplot(iris[, 1:4], col = "gray", main = "Antes")
boxplot(iris.st[, 1:4], col = "gray", main = "Depois")

# HISTOGRAMAS

data(iris)
hist(iris$Petal.Length, breaks = 30, col = "gray", main = "")
hist(iris$Petal.Length, breaks = 0:7, col = "gray", main = "")

dens = density(iris$Petal.Length)
hist(iris$Petal.Length, breaks = 10,
     xlim = range(dens$x),
     ylim = c(0, 0.6),
     probability = T,
     col = "gray",
     main = "")
lines(dens, lw = 2)


