# Exercicio 6
# Renato Marques Teles, 21312

# 1
## i
help(CO2)
names(CO2)
CO2$Plant
CO2$Treatment
dim(CO2)

## ii
sum(CO2$Treatment == "chilled")
dim(CO2[CO2$Treatment == "chilled", ])[1]

## iii
df = CO2[CO2$Type == "Quebec",]
df

## iv
mat = as.matrix(CO2[c("conc","uptake")])
colnames(mat) = c("concent", "consumo")
rownames(mat) = CO2$Plant
mat

## v
mat[which(rownames(mat) == "Mc3"),]

## vi
v = mat[,2]
v

## vii
CO2$uptake[CO2$Plant == "Qc3" & CO2$conc == 675] * 1000

## viii
CO2[which(CO2$uptake == max(CO2$uptake)),]
tapply(CO2$uptake, CO2$Type, max)

## ix
ind = which(CO2$Type == "Mississippi" & CO2$Treatment == "chilled")
ind
mean(CO2$uptake[ind])
# OU
filt = CO2[CO2$Type == "Mississippi" & CO2$Treatment == "chilled",]
filt
mean(filt$uptake)

# 2
## i
str(airquality)

## ii
sum(is.na(airquality$Ozone))
sum(is.na(airquality$Solar.R))

## iii
mean(airquality$Solar.R[airquality$Month == 7], na.rm = TRUE)

## iv
which(is.na(airquality$Ozone))

## v
x = airquality[complete.cases(airquality),]
x
# OU
x = na.omit(airquality)
x

## vi
res = NULL
for (i in 5:9){
  dados = x$Solar.R[x$Month == i]
  valores = c(max(dados), min(dados), mean(dados), median(dados), sd(dados), var(dados))
  res = rbind(res, valores)
}
rownames(res) = 5:9
colnames(res) = c("Máx", "Min", "Média", "Mediana", "Desvio Padrão", "Variância")
res

# 3
## i
class(chickwts)
names(chickwts)
dim(chickwts)
class(chickwts$weight)
class(chickwts$feed)

## ii
sum(is.na(chickwts$weight))
sum(is.na(chickwts$feed))

## iii
table(chickwts$feed)
summary(chickwts$weight)

## iv
tapply(chickwts$weight, chickwts$feed, mean)

## v
m = median(chickwts$weight)
m
b = c(min(chickwts$weight) -1, 0.85 * m, 1.15 * m, max(chickwts$weight) + 1)
b
weight_nominal = cut(chickwts$weight, breaks = b, Lables = c("low", "medium", "high"))
weight_nominal

# 4
install.packages("QSARdata")
library(QSARdata)
data(MeltingPoint)

## i
dim(MP_Descriptors)
length(MP_Outcome)
class(MP_Outcome)

## ii
sum(is.na(MP_Descriptors))

## iii
scaled_descs = scale(MP_Descriptors)
scaled_descs

## iv
inds = order(MP_Outcome, decreasing = T)[1:50]
inds
MP_top = scaled_descs[inds, ]
MP_top
