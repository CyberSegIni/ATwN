#!/bin/bash

echo ""
echo -n 'Bem vindo a (1)-->Comandos_Diversos'
echo ""
echo -n "Escolha o que deseja fazer"
echo ""

#DECLARANDO O ARRAY
tipoListaInt=("(1)-->Scaner_IPV6"                                   #1)nmap -6 $IP  
              "(2)-->Mostra_Somente_Portas_Abertas"                 #2)nmap --open $IP
              "(3)-->Scan_Super_Devagar"                            #3)nmap -T0 $IP 
              "(4)-->Scan_Despista_IDS"                             #4)nmap -T1 $IP 
              "(5)-->Scan_Agressivo"                                #5)nmap -T4 $IP 
              "(6)-->Scan_Muito_Agressivo"                          #6)nmap -T5 $IP 
              "(00)-->SAIR")                                        #00SAIR


#ACESSANDO O ARRAY
for str in ${tipoListaInt[@]}; do
    echo $str
done
read tipoListaInt
echo ""

#FUNCIONAMENTO
if [ $tipoListaInt -eq 1 ]
then
	./Acoes/presetsLista/1CD/1.sh
elif [ $tipoListaInt -eq 2 ]
then
    ./Acoes/presetsLista/1CD/2.sh
elif [ $tipoListaInt -eq 3 ]
then
    ./Acoes/presetsLista/1CD/3.sh
elif [ $tipoListaInt -eq 4 ]
then
    ./Acoes/presetsLista/1CD/4.sh
elif [ $tipoListaInt -eq 5 ]
then
    ./Acoes/presetsLista/1CD/5.sh
elif [ $tipoListaInt -eq 6 ]
then
    ./Acoes/presetsLista/1CD/6.sh
else
        echo "00-->Sair_do_Programa"
		clear
        exit
fi