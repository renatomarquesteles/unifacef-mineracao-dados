# 08/09/2020

# ESTRUTURAS DE REPETIÇÃO

## FOR

a = vector()
for (i in 1 : 20) a[i] = 2 * i
a

"soma.vetor" = function(vetor) {
  s = 0
  for (i in 1 : length(vetor))
    s = s + vetor[i]
  s
}

soma.vetor(a)

"soma.vetor_1" = function(vetor)
{
  s = 0
  for (i in vetor)
    s = s + i
  s
}

soma.vetor_1(a)

"media.colunas" = function(matriz)
{
  v = vector()
  for (i in 1 : ncol(matriz))
    v[i] = mean(matriz[,i])
  v
}

mat = matrix(25:1, 5, 5)
mat

media.colunas(mat)

## WHILE

"encontrar.elemento" = function(vetor, valor) {
  encontrou = FALSE
  i = 1
  
  while (encontrou == FALSE && i <= length(vetor)) {
    if (vetor[i] == valor)
      encontrou = TRUE
    else
      i = i + 1
  }
  encontrou
}

