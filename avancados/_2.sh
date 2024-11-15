#!/bin/sh

# Redireciona erros para um arquivo
exec 2>>erros_processo.log

# Executa um comando em segundo plano
sleep 10 &  # Coloca o comando sleep em segundo plano

# Lista processos em plano de fundo
jobs

# Move o processo para o primeiro plano
fg %1

# Executa um comando com prioridade mais baixa
nice -n 10 ls -l > lista.txt  # Lista arquivos com baixa prioridade

# Executa um comando sem dependência do terminal
nohup echo "Este é um teste com nohup" &


# sleep 10 &: Roda o comando sleep 10 em segundo plano.

# jobs: Lista os processos em segundo plano.

# fg %1: Traz o processo sleep de volta para o primeiro plano.

# nice -n 10 ls -l: Executa ls -l com baixa prioridade.

# nohup: Roda o comando sem dependência do terminal, salvando a saída em nohup.out.