#!/bin/sh

# Solicita ao usuário o nome do arquivo
echo "Escolha o ficheiro:"
read ficheiro  # Lê o nome do arquivo fornecido pelo usuário e o armazena na variável 'ficheiro'

# Verifica se o ficheiro existe
if [ -f "$ficheiro" ]; then
  sections=""  # Inicializa a variável 'sections' para armazenar os nomes das seções
  items=""  # Inicializa a variável 'items' para armazenar as chaves

  IFS=$'\n'  # Define o separador de campos como quebra de linha, para processar o arquivo linha por linha

  # Loop que percorre cada linha do arquivo
  for line in $(cat $ficheiro); do
    # Estrutura 'case' para analisar o conteúdo da linha
    case $line in
      # Condição para identificar linhas que representam seções (entre colchetes)
      \[*\] )
        # Extrai o nome da seção, removendo os colchetes
        section=$(echo $line | cut -d'[' -f2 | cut -d']' -f1)
        sections="$sections $section"  # Adiciona o nome da seção à variável 'sections'
        echo "Seção: $section"  # Exibe o nome da seção
        ;;
      # Condição para identificar linhas com pares chave-valor (separados por '=')
      *=* )
        # Extrai a chave antes do '='
        item=$(echo $line | cut -d= -f1)
        # Extrai o valor após o '='
        value=$(echo $line | cut -d= -f2)
        echo "Item $item = $value"  # Exibe a chave e o valor
        items="$items $item"  # Adiciona a chave à variável 'items'
        ;;
    esac
  done

  # Exibe todas as seções e itens encontrados
  echo "Seções: $sections"
  echo "Itens: $items"
else
  # Exibe uma mensagem de erro se o arquivo não existir ou não puder ser lido
  1>&2 echo "ERRO: Arquivo não encontrado ou inacessível!"
fi
