#!/bin/sh

# Define uma funcao chamada Separador que imprime uma linha de separacao
Separador()
{
  echo "-------------------------------------------"
}

# Define uma funcao chamada soma que calcula a soma de todos os argumentos
soma()
{
  total=0 # Inicializa a variavel total com 0
  for i in $* # Itera por cada argumento passado para a funcao
  do
    total=$(($total + $i)) # Adiciona o valor atual (i) ao total
  done
  echo $total # Imprime o valor total
}

# Corpo do script principal

# Pede ao utilizador para introduzir numeros separados por espacos
echo "Por favor, introduza os numeros separados por espacos:"
read numeros # Le a entrada do utilizador e guarda na variavel 'numeros'

# Chama a funcao Separador para imprimir a linha de separacao
Separador

# Chama a funcao soma passando os numeros introduzidos pelo utilizador
# e guarda o resultado na variavel 'somatorio'
somatorio=$(soma $numeros)

# Imprime a soma dos numeros introduzidos pelo utilizador
echo "soma de $numeros = $somatorio"

# Chama a funcao Separador novamente para imprimir outra linha de separacao
Separador

# Chama a funcao soma com os valores 1, 2 e 3, e imprime o resultado
echo "soma de 1 2 3 = $(soma 1 2 3)"

# Chama a funcao Separador mais uma vez para imprimir a ultima linha de separacao
Separador
