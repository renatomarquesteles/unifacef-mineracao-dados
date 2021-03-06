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

v_media = c(mean(mat[,1]), mean(mat[,2]), mean(mat[,3]))
v_media

# 2
## a
vet2 = c(1 : 100)

vetor = 1 : 100
## b
matrix(vet2, 10, 10)

dim(vetor) = c(10, 10)

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
A = matrix(2, 2, 3)
B = matrix(1 : 6, 2, 3)
## b
A + B
## c
dim(B) = c(3, 2)
## d
A %*% B

# 5
## a
l = list(nome = "João", idade = 30)
## b
l
l$nome
l$idade
l[[1]]
l[[2]]

# 6
## a
data(pressure)
pressure
x = pressure
## b
mean(x$pressure)
## c
subset(x, subset = x$temperature == 320, select = c(pressure))

x[x$temperature == 320, 2]
## d
max(subset(x, subset = x$temperature < 100, c(pressure)))

max(x[x$temperature < 100, 2])
## e
df = data.frame(subset(x, subset = x$pressure < 100))
df

x[x$pressure < 100, ]

# 7
data(sleep)
sleep
## a
mapply(class, sleep)
## b
tapply(sleep$extra, sleep$group, mean)
