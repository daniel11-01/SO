#!/bin/sh
# Declara que este script deve ser executado com o interpretador /bin/sh

soma=0
# Inicializa a variável soma com 0 para acumular os valores

contador=0
# Inicializa o contador com 0 para contar o número de valores introduzidos

echo "Introduza valores (digite 'fim' para terminar):"
while true
do
  read valor
  # Lê o valor da entrada do usuário

  if [ "$valor" = "fim" ]
  # Verifica se o valor introduzido é "fim" para terminar o loop
  then
    break
  fi

  soma=$(($soma + $valor))
  # Soma o valor atual à variável soma

  contador=$(($contador + 1))
  # Incrementa o contador
done

if [ $contador -gt 0 ]
# Verifica se o contador é maior que 0 para evitar divisão por zero
then
  media=$(echo "$soma / $contador" | bc -l)
  # Calcula a média usando bc para operações de ponto flutuante
  echo "Média: $media"
else
  echo "Nenhum valor foi introduzido."
fi
