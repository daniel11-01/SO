#!/bin/sh
# Declara que este script deve ser executado com o interpretador /bin/sh

echo "Argumentos em ordem reversa:"
# Exibe uma mensagem indicando que os argumentos serão apresentados de forma reversa

for (( i=$#; i>0; i-- ))
# Inicia um loop que começa no número total de argumentos ($#) e decrementa até 1
do
  echo "${!i}"
  # Exibe o argumento na posição i. "${!i}" é uma forma de referenciar o argumento pelo índice
done
