# RENATO MARQUES TELES, 21321
# EXERCICIO 02

#1
## a
mat = matrix(1 : 6, 2, 3)
## b
mat[2,]
mat[, 3]
## c
dim(mat)
## d
sum(mat)
## e
sum(mat[1,])
## f
apply(mat, 2, mean)

# 2
## a
vet2 = c(1 : 100)
## b
matrix(vet2, 10, 10)

# 3
## a
vet3 = array(1 : 30, c(2, 5, 3))
## b
sum(vet3[, 3,])
## c
mean(vet3[1, 1,])
## d
vet3 * 2 + 3

# 4
## a