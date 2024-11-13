#!/bin/sh

if [ $1 -eq $2 ]
 then saida=0
 else saida=1
fi

exit $saida #echo $? dará como output o valor referido a variavel saida dependendo da comparação dos argumentos