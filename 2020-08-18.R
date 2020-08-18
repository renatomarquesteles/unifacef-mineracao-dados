# 18/08/2020

# AULA 3 - ESTRUTURAS DE DADOS E FUNCOES

# MATRIZES

mat = matrix(1 : 20, 4, 5) # VALORES, LINHAS, COLUNAS
mat

## CRIAR MATRIZ JUNTANDO AS COLUNAS
x = 1 : 10
m1 <- cbind(x, x ^ 2, x ^ 3)
m1

## CONCATENAR UMA NOVA LINHA EM UMA MATRIZ
rbind(m1, c(20, 40, 60))

## INDEXACAO
mat[2, 3] # MATRIZ[LINHA, COLUNA]
mat[1 : 2, 4 : 5]
mat[2,] # ELEMENTOS DE UMA LINHA
mat[,2] # ELEMENTOS DE UMA COLUNA
mat[2 : 3,] # ELEMENTOS DAS LINHAS 2 E 3

## DIMENSOES
dim(mat)
nrow(mat)
ncol(mat)

## ALTERAR DIMENSOES
mat1 = matrix(8 : 1, 4, 2)
mat1
dim(mat1) = c(2, 4)
mat1

## OPERACOES ARITMETICAS
mean(mat)
sqrt(mat[2 : 3, 3 : 4])
cos(pi * mat)

## APLICAR FUNCAO A TODAS LINHAS OU COLUNAS
apply(mat, 1, sum) # MATRIZ, 1 LINHA || 2 COLUNA, FUNCAO
