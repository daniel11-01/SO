#!/bin/sh
# Declara que este script deve ser executado com o interpretador /bin/sh

zero_count=0
# Inicializa a variavel zero_count com 0 para contar quantos valores sao zero

for arg in "$@"
# Inicia um loop que percorre cada argumento passado ao script
do
  if [ "$arg" -eq 0 ] 2>/dev/null
  # Verifica se o argumento atual e igual a 0, ignorando mensagens de erro
  then
    zero_count=$(($zero_count + 1))
    # Incrementa o contador de zeros se a condicao for verdadeira
  fi
done

echo "Quantidade de valores zero: $zero_count"
# Exibe o numero total de valores que sao zero
