# RENATO MARQUES TELES, 21321
# EXERCICIO 04

# 1
"converte.real" = function(reais) {
  reais / 5.4;
}

converte.real(5.40)

# 2
p1 = c(10, 10)
p1
p2 = c(20, 20)
p2

"dt.euclidiana" = function(p1, p2) {
  sqrt(((p1[1] - p2[1]) ^ 2) + ((p1[2] - p2[2]) ^ 2))
}

distancia = dt.euclidiana(p1, p2)
distancia

"distancia" = function (x1, y1, x2, y2) {
  r = (x1 - x2)^2 + (y1-y2)^2
  sqrt(r)
}

distancia(10, 20, 30, 40)

# 3
vet = 123 : 155
vet

"contador.pares" = function(vetor) {
  cont = 0
  for(i in 1 : length(vetor))
    if(vetor[i] %% 2 == 0)
      cont = cont + 1
  cont
}

contador.pares(vet)

"conta.pares" <- function(vetor) {
  v1 = ((vetor %% 2) == 0)
  nr_total = sum(v1)
  nr_total
}

v_teste = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
conta.pares(v_teste)

# 4
"manipula.string" = function(frase) {
  res = paste(gsub("v", "b", frase), ", campeão!", sep = "")
  res
}

manipula.string("viva o são paulo")

# 5
"minicalculadora" = function(n1, n2, operador) {
  if (operador == "+")
    n1 + n2
  else if (operador == "-")
    n1 - n2
  else if (operador == "*")
    n1 * n2
  else if (operador == "/")
    n1 / n2
}

minicalculadora(5, 5, "+")
minicalculadora(5, 5, "-")
minicalculadora(5, 5, "*")
minicalculadora(5, 5, "/")

# 6
"compara" = function(a, b) {
  if (a < b)
    return(1)
  else if (a == b)
    return(0)
  else
    return(-1)
}

compara(13, 15)
compara(15, 15)
compara(18, 15)

# 7
"media" = function(vet) {
  acum = 0
  for(i in 1 : length(vet))
    acum = acum + vet[i]
  acum / length(vet)
}

vet = c(57 : 69)
media(vet)

"media.vetor" = function (vetor) {
  s = 0
  n = 0
  
  for (i in vetor) {
    s = s + i
    n = n + 1
  }
  s/n
}

vetor_a = c(10, 5, 6, 90, 15)
media.vetor(vetor_a)

# 8
"abaixo.limite" = function(vet, limite) {
  cont = 0
  for(i in 1 : length(vet))
    if (vet[i] < limite)
      cont = cont + 1
  cont
}

vet = c(3 : 13)
abaixo.limite(vet, 10)

# 9
## a
"menor.dez" = function(vet) {
  i = 0
  order(vet)
  while(vet[i + 1] < 10) {
    i = i + 1
  }
  i
}

vet = c(5 : 15)
menor.dez(vet)

# 10
"maior.elemento" = function(mat) {
  maior = 0
  for (i in 1 : nrow(mat))
    for(j in 1 : ncol(mat))
      if (mat[i, j] > maior)
        maior = mat[i, j]
  maior
}

mat = matrix(10 : 15, 3, 2)
maior.elemento(mat)

# 11
"multiplica.diagonal" = function(mat) {
  res = 1
  for (i in 1 : nrow(mat))
    res = res * mat[i, i]
  res
}

mat = matrix(c(2, 1, 1, 3), 2, 2)
mat

multiplica.diagonal(mat)

# 12
"soma.matrizes" = function(m1, m2) {
  res = m1 + m2
  as.matrix(res)
  res
}

mat1 = matrix(1 : 6, 2, 3)
mat1

mat2 = matrix(rep(10, 6), 2, 3)
mat2

soma.matrizes(mat1, mat2)

"soma.matrizes" = function (m1, m2) {
  res = matrix(, nrow = nrow(m1), ncol = ncol(m1))
  
  for (i in 1 : nrow(m1))
    for (j in 1 : ncol(m1))
      res[i, j] = m1[i, j] + m2[i, j]
  res
}


matriz_a = matrix(1 : 9, 3, 3)
matriz_b = matrix(1 : 9, 3, 3)
soma.matrizes(matriz_a, matriz_b)
