#!/bin/sh
# Declara que este script deve ser executado com o interpretador /bin/sh

# Pede ao usuário para inserir os números
echo "Insira os numeros separados por espacos:"
read numeros
# Lê os números inseridos pelo usuário e armazena-os na variável "numeros"

# Pede ao usuário para decidir se quer adicionar ao conteúdo antigo
echo "Adicionar ao content antigo? (1 = Sim, 0 = Nao)"
read adicionar
# Lê a escolha do usuário: 1 para adicionar, 0 para sobrescrever

if [ "$adicionar" -eq 1 ]
then
  # Se a escolha for 1, adiciona os números ao conteúdo antigo
  echo $numeros >> content
  # Usa ">>" para adicionar ao ficheiro sem sobrescrever o conteúdo existente
else
  # Se a escolha for 0, sobrescreve o conteúdo antigo
  echo $numeros > content
  # Usa ">" para sobrescrever o ficheiro com os novos números
fi

# Lê os valores do ficheiro "content" e armazena-os na variável "valores"
valores=$(cat content)

soma=0
# Inicializa a variável "soma" com 0 para começar a acumular os valores

# Percorre cada valor no conteúdo do ficheiro
for valor in $valores
do
  soma=$(($soma + $valor))
  # Soma o valor atual à variável "soma"
done

echo "Soma dos valores no ficheiro: $soma"
# Exibe a soma total dos valores
