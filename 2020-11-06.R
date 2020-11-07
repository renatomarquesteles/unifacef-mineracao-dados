# 06/11/2020

# TIDYR

install.packages("tidyr")
library(tidyr)

dfDate <- data.frame(Produto = c('A', 'B', 'C'),
                     A.2015 = c(10, 12, 20),
                     A.2016 = c(20, 25, 35),
                     A.2017 = c(15, 20, 30))

head(dfDate)

# ALTERANDO O FORMATO DO DATA FRAME COM A FUNCAO GATHER, TRANSFORMANDO COLUNAS EM LINHAS
dfDate2 <- gather(dfDate, "Ano", "Quantidade", 2:4)

# PARA UTILIZAR A FUNCAO SEPARATE, DEVE-SE INFORMAR O DATA FRAME E A COLUNA
# QUE SE DESEJA SEPARAR E EM SEGUIDA O NOME DAS NOVAS COLUNAS QUE IRÃO RECEBER
# O RESULTADO DA SEPARAÇÃO
dfDate3 <- separate(dfDate2, Ano, c("A", "Ano"))

# A COLUNA "A" DEVERÁ SER ELIMINADA PARA ADEQUAR A ANALISE
dfDate3 <- dfDate3[-2]
dfDate3

# ADICIONA NOVA COLUNA "MES"
dfDate3$Mes <- c('01', '02', '03')
dfDate3

# FUNCAO UNITE PARA JUNTAR DADOS DE DIFERENTES COLUNAS
dfDate4 <- dfDate3 %>% unite(Data, Mes, Ano, sep = '/')
head(dfDate4)

getwd()
setwd("/home/renato/Documentos/unifacef/mineracao/temp")

# DADOS ABERTOS - PORTAL DA TRANSPARENCIA - VIAGENS 2019

viagens <- read.csv(
  file = "/home/renato/Documentos/unifacef/mineracao/temp/2019_Viagem.csv",
  sep = ';',
  dec = ','
)

# VERIFICA DADOS
head(viagens)
View(viagens)
dim(viagens)

# VALOR MIN, MAX, MEDIA, MEDIANA ETC
summary(viagens)
summary(viagens$valor.passagens)

# FUNCAO GLIMPSE DO DPLYR PARA VERIFICAR OS TIPOS DE DADOS DE CADA COLUNA
library(dplyr)
glimpse(viagens)

# TRANSFORMA COLUNA DE STRING PARA DATE
viagens$data.inicio <- as.Date(viagens$Período...Data.de.início, "%d/%m/%Y")
glimpse(viagens)

# FORMATA CAMPO DATA.INICIO PARA CONSIDERAR APENAS ANO E MES
viagens$data.inicio.formatada <- format(viagens$data.inicio, "%Y-%m")
viagens$data.inicio.formatada
glimpse(viagens)

# ANALISE EXPLORATORIA
hist(viagens$Valor.passagens)

# VALOR MAX DISTANTE DA MEDIA = OUTLIER
summary(viagens$Valor.passagens)

# VISUALIZANDO PELO BOXPLOT
boxplot(viagens$Valor.passagens)

# CALCULANDO DESVIO PADRAO
sd(viagens$Valor.passagens)

# CONTABILIZA CAMPOS COM VALORES AUSENTES E VERIFICA SE EXISTEM CAMPOS COM VALORES AUSENTES
colSums(is.na(viagens))

# VERIFICA QTD DE OCORRENCIAS PARA CADA CATEGORIA
str(viagens$Situação)

# VERIFICA QTD DE OCORRENCIAS PARA CADA CLASSE, FUNCAO TABLE
table(viagens$Situação)

# VALOR EM PERCENTUAL
prop.table(table(viagens$Situação)) * 100

# DATA FRAME COM OS 15 ORGAOS QUE MAIS GASTAM COM VIAGENS
p1 <- viagens %>%
  group_by(Nome.do.órgão.superior) %>%
  summarise(n = sum(Valor.passagens)) %>%
  arrange(desc(n)) %>%
  top_n(15)

# RENOMEIA COLUNAS
names(p1) <- c("orgao", "valor")
p1

# PLOTANDO OS DADOS COM GGPLOT
library(ggplot2)
ggplot(p1, aes(x = reorder(orgao, valor), y = valor)) +
  geom_bar(stat = "identity") +
  coord_flip() +
  labs(x = "Valor", y = "Órgãos")
options(scipen = 999)

# VALOR GASTO COM VIAGENS POR CIDADE
p2 <- viagens %>%
  group_by(Destinos) %>%
  summarise(n = sum(Valor.passagens)) %>%
  arrange(desc(n)) %>%
  top_n(15)

# RENOMEIA COLUNAS
names(p2) <- c('Destino', 'Valor')
p2

# GRAFICO BARRAS
ggplot(p2, aes(x = reorder(Destino, Valor), y = Valor)) +
  geom_bar(stat = "identity", fill = "#0ba791") +
  geom_text(aes(label = valor), vjust = 0.3, size = 3) +
  coord_flip() +
  labs(x = "valor", y = "Destino")

# VIAGENS POR MES
p3 <- viagens %>%
  group_by(data.inicio.formatada) %>%
  summarise(qtd = n_distinct(Identificador.do.processo.de.viagem))

# DATA FRAME PARA CRIAR GRAFICO
ggplot(p3, aes(x = data.inicio.formatada, y = qtd, group = 1)) +
  geom_line() +
  geom_point()


