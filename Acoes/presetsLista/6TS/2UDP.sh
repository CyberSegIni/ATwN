#!/bin/bash

echo ""
echo -n 'Bem vindo a Tipos_de_Scanners'
echo ""
echo -n "Escolha o que deseja fazer"
echo ""

#DECLARANDO O ARRAY
tipoListaInt=("(1)-->Varredura_Porta_UDP"                   #1)nmap $IP -sU 
              "(2)-->Varredura_UDP"                         #2)nmap -sU $IP
              "(00)-->SAIR")                                #00)SAIR

#ACESSANDO O ARRAY
for str in ${tipoListaInt[@]}; do
    echo $str
done
read tipoListaInt
echo ""

#FUNCIONAMENTO
if [ $tipoListaInt -eq 1 ]
then
	./Acoes/presetsLista/6TS/UDP/1varreduraPortaUDP.sh
elif [ $tipoListaInt -eq 2 ]
then
    ./Acoes/presetsLista/6TS/UDP/2varreduraUDP.sh
else
        echo "00-->Sair_do_Programa"
		clear
        exit
fi