# 11/08/2020

# ATRIBUICAO

x = 2
x
x <- 10
x
a = x
a

# OPERADORES

2 + 3
3 * 1/2
5.3 - 4.2 / 2.3

y = 3.1
z = 6.2
y / z

w = y * z + 2
w

y = 5
y ^ 2
y %% 2 # RESTO DA DIVISAO
y %/% 2 # DIVISAO INTEIRA

# VETORES

v1 = c(1, 5, 8, 10)
v1

v2 = c(3, v1)
v2

v = vector(mode = "numeric", length = 10) # mode = numeric, logical or string
v

## SEQUENCIA NUMERICA

1 : 10
10 : 2
seq(1, 2, 0.1)
seq(by = 0.1, to = 2, from = 1)
seq(1, 10)

x = c(2, 4, 6)
rep(x, times = 5)
rep(x, each = 5)

## runif = GERA VALORES ALEATORIOS (DISTRIBUICAO UNIFORME)
x = runif(10)
x
y = runif(10, 5, 10) # QTD 10, INTERVALO 5 A 10
y

## rnorm = GERA VALORES ALEATORIOS (DISTRIBUICAO NORMAL)
## rpois = GERA VALORES ALEATORIOS (DISTRIBUICAO POISSON)

## APLICAR EXPRESSAO PARA CADA ELEMENTO DO VETOR

x = 1 : 10
2 * x + 1
x / 2
x - 5

## OPERACAO ENTRE VETORES

vm = 1 : 5
vn = 1 : 10
vm + vn # O MENOR VETOR SE REPETE PARA REALIZAR OPERACAO

vm = 1 : 3
vn = 1 : 10
vm + vn # VETORES NAO MULTIPLOS EH DADO UM AVISO

## ACESSAR POSICAO DO VETOR

x
x[2]

v1 = c(1, 5, 8, 10)
indice = 2 : 3
v1[indice]

v1[-2] # EXIBE TODOS EXCETO POSICAO 2
v1[-(2 : 3)]

## NOMEAR POSICOES DO VETOR

v1 = c(1, 5, 8, 10)
names(v1) = c("azul", "amarelo", "verde", "vermelho")
v1
v1["azul"]
v1[c("amarelo", "vermelho")]

## FUNCOES SOBRE VETORES NUMERICOS

abs()
sqrt()
sin()
cos()
tan()
round()
exp()
log()
logb()
log2()
log10()

v = c(-1, 2, 3, -4)
sqrt(abs(v))
sin(pi / 2 * v)

nr = c(1.23, 2.321, 4.07654, 2.345, 3.55, 6.56)
round(nr, 1)

p10 = c(10, 100, 1000, 10000)
log10(p10)

mapply(sqrt, abs(v))
mapply("/", p10, 10)

sort()
order()
unique()
rev()
cumsum()
cumprod()
diff()

v = c(2, 4, 7, 6, 3, 1)
rev(v)
sort(v)
sort(v, decreasing = TRUE)
order(v) # RETORNA OS INDICES DOS ELEMENTOS ORDENADOS

v[order(v)]
unique(c(1, 2, 1, 2, 3))
cumsum(v)
cumprod(v)
diff(v)

length()
min()
which.min() # INDICE DO MENOR VALOR
max()
which.max()
sum()
mean()

vs = c(3, 20, 5, 7, 9)
vs
sum(vs)
mean(vs)
min(vs)
max(vs)
which.max(vs)
which.min(vs)
length(vs)
range(vs)
typeof(vs)
class(vs)

## NUMEROS COMPLEXOS

vc = c(2 + 3i, 4 - 2i, 3i, 4)
sum(vc)
mean(vc)
