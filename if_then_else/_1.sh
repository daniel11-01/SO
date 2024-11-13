#!/bin/sh
# Declara que este script deve ser executado com o interpretador /bin/sh

if [ "$1" -eq "$2" ] && [ "$2" -eq "$3" ]
# Verifica se o primeiro numero ($1) e igual ao segundo ($2) e se o segundo ($2) e igual ao terceiro ($3)
then
  echo "Os tres numeros sao iguais."
  # Se a condicao for verdadeira, exibe que os numeros sao iguais
else
  echo "Os tres numeros nao sao iguais."
  # Se a condicao for falsa, exibe que os numeros nao sao iguais
fi
