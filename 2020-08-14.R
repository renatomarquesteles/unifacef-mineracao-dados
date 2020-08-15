# 14/08/2020

# VETORES

vs = c(3, 5, 7, 9)
sum(vs)
mean(vs)
min(vs)
max(vs)

typeof(vs)
class(vs)

vc = c(2 + 3i, 4 - 21, 3i, 4)
sum(vc)
mean(vc)

vc = c(4, -4)
sqrt(vc)

vc = c(4, -4 + 0i)
sqrt(vc)

# VETORES LOGICOS

vb1 = c(TRUE, TRUE, FALSE, TRUE, FALSE)
vb1
vb1[3]

v = 1:10
vb2 = v > 5
vb2

vb2 | vb1 # COMPARA OS DOIS VETORES LOGICOS

all(vb1) # TODOS TEM Q SER TRUE

any(vb1) # PELO MENOS 1 TRUE

which(vb1) # RETORNA OS TRUE

ve = 8:2
ve
vb = ve > 5
vb

ve[vb] # ONDE FOR TRUE EXIBE O ELEMENTO

ve[ve < 6] # RETORNA OS VALORES QUE SATISFAZEM A CONDICAO

# STRINGS E VETORES DE STRINGS

cores = c("azul", "amarelo", "verde", "vermelho")
cores[3]

muitascores = rep(cores, 2)
muitascores
muitascores[1] == muitascores[5]

nome = "Renato"
apelido = "Marques"
toupper(nome)
paste(nome, apelido)
substr(apelido, 2, 4)

nchar(nome)
sub("to", "ta", nome) # SO TROCA A PRIMEIRA OCORRENCIA
str = "abracadabra"
gsub("a", "x", str) # TROCA TODAS OCORRENCIAS
chartr("abc", "ABC", str)

x = "Isto é um teste"
strsplit(x, " ")

nomes = c("joão", "joaquim", "jose")
apelidos = c("pereira", "martins")
paste(nomes, apelidos, sep = " ")
toupper(nomes)

mapply(nchar, nomes) # VAI CONTAR OS CARACTERES DE CADA NOME
sub("j", "J", nomes)
grep("abra", c("cabra", "braga", "abracadabra"))

letters
LETTERS

# FATORES

racas = c("bulldog", "rafeiro", "doberman", "rafeiro", "bulldog",
          "rafeiro", "rafeiro", "doberman")
fr = factor(racas)
fr
levels(fr)

table(fr)

pesos = c(12, 15, 25, 10, 20, 8, 13, 25)
tapply(pesos, fr, mean) # (VETOR A ANALISAR, FATORES, FUNCAO)

tamanhos = c("medio", "medio", "grande", "pequeno", "grande",
             "pequeno", "medio", "grande")
of = ordered(tamanhos, c("pequeno", "medio", "grande"))
of

tapply(pesos, of, range)

# VALORES AUSENTES

v = c(NA, 2, 3, NA, 5) # NA = NOT AVAILABLE
v
v[is.na(v)]
v[!is.na(v)]
