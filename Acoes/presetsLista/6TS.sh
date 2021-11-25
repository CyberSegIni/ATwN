#!/bin/bash

echo ""
echo -n 'Bem vindo a Tipos_de_Scanners'
echo ""
echo -n "Escolha o que deseja fazer"
echo ""

#DECLARANDO O ARRAY
tipoListaInt=("(1)-->TCP"                       #1)IR PARA A PASTA COM OS COMANDOS PARA TCP
              "(2)-->UDP"                       #2)IR PARA A PASTA COM OS COMANDOS PARA UDP
              "(3)-->XMAS_SCAN"                 #3)nmap -sX $IP
              "(4)-->PING_SCAN"                 #4)nmap -sP $IP
              "(5)-->LISTA_SCAN"                #5)nmap -sL $IP
              "(00)-->SAIR")                    #00)SAIR

#ACESSANDO O ARRAY
for str in ${tipoListaInt[@]}; do
    echo $str
done
read tipoListaInt
echo ""

#FUNCIONAMENTO
if [ $tipoListaInt -eq 1 ]
then
	./Acoes/presetsLista/6TS/1TCP.sh
elif [ $tipoListaInt -eq 2 ]
then
    ./Acoes/presetsLista/6TS/2UDP.sh
elif [ $tipoListaInt -eq 3 ]
then
    ./Acoes/presetsLista/6TS/3XmasScan.sh
elif [ $tipoListaInt -eq 4 ]
then
    ./Acoes/presetsLista/6TS/4PingScan.sh
elif [ $tipoListaInt -eq 5 ]
then
    ./Acoes/presetsLista/6TS/5ListaScan.sh
else
        echo "00-->Sair_do_Programa"
		clear
        exit
fi