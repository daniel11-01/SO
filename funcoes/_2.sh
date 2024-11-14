#!/bin/sh
# Declara que este script deve ser executado com o interpretador /bin/sh

# Função para calcular o fatorial
fatorial() {
  numero=$1
  resultado=1
  # Inicializa a variável resultado com 1

  while [ $numero -gt 1 ]
  # Continua o loop enquanto o número for maior que 1
  do
    resultado=$(($resultado * $numero))
    # Multiplica resultado pelo número atual
    numero=$(($numero - 1))
    # Decrementa o número
  done

  echo $resultado
  # Retorna o resultado
}

echo "Introduza um número para calcular o fatorial:"
read num
# Lê o número da entrada do usuário

if [ $num -ge 0 ]
# Verifica se o número é não negativo
then
  echo "Fatorial de $num: $(fatorial $num)"
else
  echo "O fatorial não é definido para números negativos."
fi
