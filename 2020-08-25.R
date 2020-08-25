# 25/08/2020

# DATA FRAMES

## FUNCOES PACOTE DPLYR

## INSTALA O PACOTE
install.packages("dplyr")

library(dplyr)

## FILTRA
filter(df, tamanhos == "medio", pesos < 15)

## PEGA AS DUAS PRIMEIRAS LINHAS
slice(df, 1 : 2)

## CLASSIFICACAO DE DADOS (TIPO O ORDER BY DO SQL)
arrange(df, desc(pesos))

## SELECIONAR COLUNAS ESPECIFICAS
select(df, racas, pesos)

## RENOMEIA COLUNA
rename(df, Pesos = pesos)

## CRIA NOVA COLUNA COM ALGUM DADO
mutate(df, pesogr = pesos * 1000)

## DATA E HORA

## CONVERTE STRING EM DATA
dia = as.Date("2020-08-25")
dia

## FORMATA DATA
dia =as.Date("01/08/2020", format = "%d/%m/%Y")
dia

## OBTER DATA ATUAL
hoje = Sys.time()
dataHoje = as.Date(hoje)
dataHoje

## OBTER DIA DA SEMANA
weekdays(dataHoje)

## OBTER MES
months(dia)

## CALCULOS COM DATAS
dataHoje - dia

# CASTING

## CONVERSOES ENTRE ESTRUTURAS DE DADOS

as.vector()
as.numeric()
as.data.frame()
as.matrix()
