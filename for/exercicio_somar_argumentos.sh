#!/bin/sh
# Declara que este script deve ser executado com o interpretador /bin/sh

soma=0
# Inicializa a variável soma com 0 para começar a acumular os valores

for arg in "$@"
# Inicia um loop que percorre cada argumento passado ao script
do
  soma=$(($soma + $arg))
  # Soma o valor atual do argumento (arg) à variável soma
done

echo "Soma dos argumentos: $soma"
# Exibe a soma total de todos os argumentos
