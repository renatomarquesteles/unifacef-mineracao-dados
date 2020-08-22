# 21/08/2020

## MULTIPLICACAO ENTRE MATRIZES

A = matrix(1 : 4, 2, 2)
A
B = matrix(4 : 1, 2, 2)
B
C = A %*% B
C

A * 3

## CALCULA MATRIZ TRANSPOSTA

t(C)

## DETERMINANTE DA MATRIZ

det(C)

## SOLVE PARA RESOLVER SISTEMA DE EQUACOES

A = matrix(1 : 4, 2, 2)
b = c(1, 3)
solve(A, b)

# ARRAYS

## ARRAY DE DUAS DIMENSOES

a = array(1 : 24, c(4, 3, 2)) # c(LINHA, COLUNA, DIMENSAO)
a

## INDEXACAO

a[3, 2, 2]
a[3, 2, ]
a[ , , 1]

## SOMATORIO

sum(a)

## MEDIA ARITMETICA DA LINHA 1 (AMBAS DIMENSOES)

mean(a[1, , ])

## REALIZANDO CALCULOS NOS ELEMENTOS DO ARRAY

cos(pi * a[1, , ])

# LISTS

auto = list(marca = "ford", modelo = "focus", nportas = 5,
            velocMax = 210, consumos = c(6, 7.1, 9.3))
auto

## INDEXANDO LIST

auto[2 : 3]
is.list(auto)
auto[[1]]
auto$marca
auto$consumos[1]

# DATA FRAMES

## TODOS TEM Q TER MESMO TAMANHO
racas = c("bulldog", "rafeiro", "doberman",
          "rafeiro", "bulldog", "rafeiro",
          "rafeiro", "doberman")
pesos = c(12, 15, 35, 10, 20, 8, 13, 25)
tamanhos = c("medio", "medio", "grande",
             "pequeno", "grande", "pequeno",
             "medio", "grande")
df = data.frame(racas, tamanhos, pesos)
df

## ACESSANDO DATA FRAME

df$tamanhos
df$pesos[1: 4]
df[2, 2]
df[1 : 3, ]
df[ , 2]
df[df$racas == "bulldog", ]
df[df$racas == "bulldog" & df$tamanhos == "medio", ]

## VETOR LOGICO A PARTIR DE CONDICAO
vetor = df$pesos > 12
vetor
## UTILIZAR VETOR PARA REALIZAR FILTRO
df[vetor, ]

## EDIT

df1 = edit(df)

## CRIANDO NOVO DATA FRAME VAZIO

df2 = edit(data.frame())

## TAMANHO DO DF
iris # CONJUNTO DE DADOS INTERNOS
data(iris)
dim(iris)

## FUNCAO PARA LISTAR OS CAMPOS

names(iris)

## FUNCAO PARA LISTAR OS PRIMEIROS ELEMENTOS

head(iris)

## SELECIONANDO REGISTROS CONDICIONALMENTE

iris[iris$Sepal.Length > 7.6, ]

## FUNCAO PARA OBTER A QTD DE CADA ESPECIE

table(iris$Species)

## MEDIA ARITMETICA DO TAMANHO DA PETALA DE CADA ESPECIE

tapply(iris$Petal.Length, iris$Species, mean)

## FILTRAGEM DE DADOS

subset(iris, subset = iris$Petal.Length > 6.5)

subset(iris, subset = iris$Petal.Width < 0.2,
       select = c(Species, Petal.Width))

## ATTACH E DETACH

attach(iris)
Species[1 : 3]

detach(iris)
Species # ERROR

## WITH

with(iris, mean(Petal.Length))

## ADICIONAR COMENTARIO

comment(df) = "Descrição do conjunto de dados"
comment(df)
