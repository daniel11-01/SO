#!/bin/sh
# Declara que este script deve ser executado com o interpretador /bin/sh

echo "Introduza o primeiro numero:"
read num1
# Le o primeiro numero da entrada do usuario

echo "Introduza o segundo numero:"
read num2
# Le o segundo numero da entrada do usuario

echo "Introduza o terceiro numero:"
read num3
# Le o terceiro numero da entrada do usuario

echo "Introduza o quarto argumento (1 para ordem crescente, 2 para ordem decrescente):"
read ordem
# Le o quarto argumento que especifica a ordem de ordenacao

# Verifica se os numeros sao iguais ou nao
if [ "$num1" -eq "$num2" ] && [ "$num2" -eq "$num3" ]
then
  echo "Os tres numeros sao iguais.($num1)"
  exit 0
else
  echo "Os tres numeros nao sao iguais."
fi

# Cria um array com os numeros
numeros=($num1 $num2 $num3)

# Ordena os numeros de acordo com o quarto argumento
if [ "$ordem" -eq 1 ]
then
  # Ordena os numeros em ordem crescente
  sorted=($(printf "%s\n" "${numeros[@]}" | sort -n))
  echo "Numeros em ordem crescente: ${sorted[@]}"
elif [ "$ordem" -eq 2 ]
then
  # Ordena os numeros em ordem decrescente
  sorted=($(printf "%s\n" "${numeros[@]}" | sort -nr))
  echo "Numeros em ordem decrescente: ${sorted[@]}"
else
  echo "Argumento invalido para ordenacao. Use 1 para crescente ou 2 para decrescente."
fi
