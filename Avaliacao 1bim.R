# Trabalho Avaliativo - 1º Bimestre
# Renato Marques Teles, 21321

# 1
## a
pesos = c(52, 52, 54, 56, 57, 60, 61, 65, 70, 120)
## b
pesos
## c
pesos[1]
## d
pesos[10]
## e
length(pesos)
## f
sum(pesos)/length(pesos)
## e
median(pesos)

# 2
"moda" = function (vet) {
  maiorNumOcorrencias = 0
  
  for (i in 1 : length(vet)) {
    ocorrencias = 0;
    for (j in 1 : length(vet)) {
      if (vet[i] == vet[j]) {
        ocorrencias = ocorrencias + 1
      }
      if (ocorrencias > maiorNumOcorrencias) {
        moda = vet[i]
        maiorNumOcorrencias = ocorrencias
      }
    }
  }
  moda
}
moda(pesos)

# 3
## a
turma_1 = c(75.02786847, 56.51450656, 55.57517955, 62.00893933, 82.82022277, 91.78076684, 71.53028442, 82.22315417, 71.14621041, 76.27644453)
turma_2 = c(63.96213546, 51.00946728, 54.48449137, 53.62955058, 61.62138863, 59.99119596, 57.61297576, 62.52220793, 64.54041384, 63.95477107)
## b
cat("Média da turma 1:", mean(turma_1))
cat("Média da turma 2:", mean(turma_2))
## c
amplitude_1 = max(turma_1) - min(turma_1)
amplitude_1
amplitude_2 = max(turma_2) - min(turma_2)
amplitude_2

# 4
cardapio = c("Filé à parmegiana", "Feijoada", "Batatas Fritas", "Lasanha à Bolonhesa", "Salada Caprese")
precos = c(32.50, 44.00, 12.00, 35.50, 27.00)

df = data.frame(cardapio, precos)
df

# 5
## a
mat = matrix(1:6, 2, 3)
mat
## b
linha2 = mat[2, ]
linha2
coluna3 = mat[, 3]
coluna3
## c
dim(mat)
## d
sum(mat)
## e
sum(mat[1,])
## f
v_media = c(mean(mat[,1]), mean(mat[,2]), mean(mat[,3]))
v_media

# 6
## a
A = matrix(2, 2, 3)
B = matrix(1 : 6, 2, 3)
## b
A + B
## c
dim(B) = c(3, 2)
## d
A %*% B

# 7
## a
lista = list(nome = "João", idade = 30)
lista
## b
lista$nome
lista$idade
lista[[1]]
lista[[2]]

# 8
# A melhor decisão irá depender do objetivo da análise, mas no caso do
# problema 1 como as colunas com valores ausentes são do tipo numérico,
# uma solução possível seria substituir os valores ausentes pela média ou
# mediana de todos os outros valores da coluna correspondente. Mas considerando
# a coluna de salário, como é apontado no problema 2, existe um chef que pode
# ser considerado um outlier, então uma boa opção seria ignorar esse valor ao
# calcular a média de salários para definir um valor mais realístico para
# substituir o valor ausente.
# No problema 2 o chef com salário de 30.000 está dentro do valor esperado mas
# mesmo assim é um valor muito discrepante em relação aos outros chefs, o que
# pode acabar gerando resultados de análise que não condizem com a realidade
# da maioria dos chefs. E como o conjunto de dados é muito pequeno a remoção
# desta linha poderia prejudicar o resultado de outras análises, então para
# corrigir esse problema eu faria a alteração manual desse valor para um valor
# igual à média dos outros valores da coluna de salários.





