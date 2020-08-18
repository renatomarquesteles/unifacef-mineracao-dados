# RENATO MARQUES TELES, 21321
# EXERCICIO 1

# 1
x = 1
y = 2
x + y
x - y
x * y
x / y
x %/% y
x %% y

# 2
sin(pi / 6)
cos(pi / 6)
tan(pi / 6)

# 3
## a
z = seq(1, 39, 2)
## b
sum(z)
## c
z[z %% 3 == 0]
## d
z[z %% 3 == 0] / 3

# 4
sum(seq(2, 998, 2))

# 5
v = sqrt(1 : 20)
v

# 6
## a
p = 1 : 20
## b
p + rev(p)
## c
p + 3
## d
1 / p

# 7
## a
az = "azul"
az
## b
am = "amarelo"
## c
paste(az, am)

# 8
nome = "renato"
paste(toupper(substr(nome, 1, 1)), substr(nome, 2, nchar(nome)), sep = "")

# 9
numeros = c(1, 2, 3)
nomes = c("Ana", "João", "Maria")
notas = c(9, 4, 7)
paste(numeros, nomes, notas, sep = " - ")

# 10
gastos = c(60, 55, 38, 87, 65, 63, 43, 44, 45, 50, 78, 67)
## a
sum(gastos)
## b
min(gastos)
max(gastos)
which.min(gastos)
which.max(gastos)
## c
length(which(gastos > mean(gastos)))
x = which(gastos > mean(gastos))
y = gastos[gastos > mean(gastos)] / sum(gastos) * 100
paste(x, y, sep = ": ")

# 11
## a
pts = round(runif(100, 1, 100))
## b
nivel = rep("", 100)
nivel[which(pts < 20)] = "Mau"
nivel[which(pts >= 20 & pts < 50)] = "Insuficiente"
nivel[which(pts >= 50 & pts < 80)] = "Bom"
nivel[which(pts >= 80)] = "Muito Bom"
table(nivel)
