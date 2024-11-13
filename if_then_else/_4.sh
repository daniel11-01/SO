#!/bin/sh
# Declara que este script deve ser executado com o interpretador /bin/sh

zero_count=0
# Inicializa a variavel zero_count com 0 para contar valores zero

positive_count=0
# Inicializa a variavel positive_count com 0 para contar valores positivos

negative_count=0
# Inicializa a variavel negative_count com 0 para contar valores negativos

for arg in "$@"
# Inicia um loop que percorre cada argumento passado ao script
do
  if [ "$arg" -eq 0 ] 2>/dev/null
  # Verifica se o argumento e igual a 0, ignorando mensagens de erro
  then
    zero_count=$(($zero_count + 1))
    # Incrementa o contador de zeros se a condicao for verdadeira
  elif [ "$arg" -gt 0 ] 2>/dev/null
  # Verifica se o argumento e maior que 0 (positivo), ignorando mensagens de erro
  then
    positive_count=$(($positive_count + 1))
    # Incrementa o contador de valores positivos se a condicao for verdadeira
  elif [ "$arg" -lt 0 ] 2>/dev/null
  # Verifica se o argumento e menor que 0 (negativo), ignorando mensagens de erro
  then
    negative_count=$(($negative_count + 1))
    # Incrementa o contador de valores negativos se a condicao for verdadeira
  fi
done

echo "Quantidade de valores zero: $zero_count"
# Exibe o numero total de valores zero
echo "Quantidade de valores positivos: $positive_count"
# Exibe o numero total de valores positivos
echo "Quantidade de valores negativos: $negative_count"
# Exibe o numero total de valores negativos
