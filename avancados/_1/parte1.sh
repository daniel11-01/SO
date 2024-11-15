#!/bin/sh

# Redireciona erros para um arquivo
exec 2>>erros.log
exec 1>>saida.txt
# Configura uma variável de ambiente
export GREETING="Olá, mundo!"

# Exibe a saudação e adiciona uma tabulação antes
echo -e "$GREETING$'\t'Este é um exemplo de tabulação."

# Usa uma expressão condicional para verificar se uma variável está definida
echo ${USERNAME:-"Usuário não definido"}

# Redireciona a saída padrão para um arquivo
echo "Este texto será salvo em saida.txt" > saida.txt 

# Comando errado para gerar um erro proposital
ech "Este comando está errado e será registrado em erros.log"

# Lê uma entrada do usuário
echo "Digite 1 para continuar ou 0 para sair:"
read option

# Verifica a opção usando uma expressão condicional
if [ "$option" -eq 1 ]; then
  echo "Você escolheu continuar!"
else
  echo "Você escolheu sair!"
fi

# exec 2>>erros.log: Redireciona todos os erros gerados pelo script para o arquivo erros.log.

# export GREETING="Olá, mundo!": Define uma variável de ambiente chamada GREETING.

# echo -e: Usa o -e para interpretar sequências especiais, como a tabulação.

# ${USERNAME:-"Usuário não definido"}: Verifica se a variável USERNAME está definida; caso contrário, imprime "Usuário não definido".

# > saida.txt: Redireciona a saída padrão para o arquivo saida.txt.

# ech: Um comando propositalmente errado para testar o redirecionamento de erros.

# Estrutura if: Verifica a entrada do usuário e imprime uma mensagem com base no valor.
