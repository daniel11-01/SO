#!/bin/sh
# Declara que este script deve ser executado com o interpretador /bin/sh

maximo=0
# Inicializa a variável maximo com 0

minimo=0
# Inicializa a variável minimo com 0

primeiro_valor=1
# Variável para identificar se é o primeiro valor introduzido

echo "Introduza valores (digite 'fim' ou 'end' para terminar):"
while true
do
  read valor
  # Lê o valor da entrada do usuário

  if [ "$valor" = "fim" ] || [ "$valor" = "end" ]
  # Verifica se o valor introduzido é "fim" ou "end" para terminar o loop
  then
    break
  fi

  if [ $primeiro_valor -eq 1 ]
  # Se for o primeiro valor, inicializa maximo e minimo com este valor
  then
    maximo=$valor
    minimo=$valor
    primeiro_valor=0
    # Atualiza a variável para indicar que o primeiro valor já foi processado
  else
    if [ $valor -gt $maximo ]
    # Verifica se o valor é maior que maximo
    then
      maximo=$valor
      # Atualiza maximo
    fi

    if [ $valor -lt $minimo ]
    # Verifica se o valor é menor que minimo
    then
      minimo=$valor
      # Atualiza minimo
    fi
  fi
done

if [ $primeiro_valor -eq 0 ]
# Verifica se pelo menos um valor foi introduzido
then
  echo "Máximo: $maximo"
  echo "Mínimo: $minimo"
else
  echo "Nenhum valor foi introduzido."
fi
