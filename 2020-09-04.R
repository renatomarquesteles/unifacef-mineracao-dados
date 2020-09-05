# 04/09/2020

# AULA 05
# PROGRAMACAO EM R

# FUNCTION

## DEFININDO NOVAS FUNCOES

"quadrado" <- function(x) x ^ 2
quadrado(3)

## CARREGANDO ARQUIVO EXTERNO

source('~/Documentos/unifacef/mineracao/temp/exemplo.R')

cubo(9)
volume.esfera(2)

# ESTRUTURAS CONDICIONAIS

"menor.dois" = function(val1, val2)
{
  if (val1 < val2) res = val1
  else res = val2
  res
}

menor.dois(25, 17)

"valor.absoluto" = function(val)
{
  if (val > 0) res = val
  else res = -val
  res
}

valor.absoluto(-3)
