#!/bin/sh

echo "Isto é um shellscript com o nome $0" #'$0' representa o nome do script e é uma variable 
                                           #O '$' quer dizer valor da variável e o '0' indica o argumento de ordem zero, o nome do script em execução 
a=50
b=10
c=$[$a+$b]
echo a=$a e b=$b e c=$c

nome="Daniel Barros"
echo $nome

echo "variavel nao iniciada naoiniciada = $naoiniciada"

