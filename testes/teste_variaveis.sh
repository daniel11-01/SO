#!/bin/sh
soma=$[5 + 6] #sintaxe valida para o bash, nao sh

data=`date`

scripts=$(ls *.sh)

duplicar=$(($soma * 2))

dividir=$(expr $soma / $soma)

echo   soma : $soma  duplicar soma : $duplicar  dividir inteiros : $dividir data : $data listas de scrpits :  $scripts