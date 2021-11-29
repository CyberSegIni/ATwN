#!/bin/bash

echo ""
echo -n 'Bem vindo as Opcoes_Especificoes_Portas'
echo ""
echo -n "Escolha o que deseja fazer"
echo ""

#DECLARANDO O ARRAY
tipoListaInt=("(1)-->SONDA_UMA_PORTA"                           #1)nmap -p 23 $IP
              "(2)-->SONDA_AS_PORTAS_1_A_100"                   #2)nmap -p 23-100 $IP
              "(3)-->SONDA_DIFERENTES_PORTAS"                   #3)nmap -pU:110,T:23-25,443 $IP	    
              "(4)-->SONDA_TODAS_AS_PORTAS"                     #4)nmap -p- $IP			            
              "(5)-->SONDA_PORTAS_POR_UM_PROTOCOLO_ESPECIFICO"  #5)nmap -smtp,https $IP
              "(6)-->SONDA_RAPIDA"                              #6)nmap -F $IP 			            
              "(7)-->SONDA_PORTAS_USANDO_UM_NOME"               #7)nmap -p "*" ftp $IP		        
              "(8)-->SONDA_PORTAS_SEQUENCIAL"                   #8)nmap -r $IP
              "(00)-->SAIR")                                    #00SAIR


#ACESSANDO O ARRAY
for str in ${tipoListaInt[@]}; do
    echo $str
done
read tipoListaInt
echo ""

#FUNCIONAMENTO
if [ $tipoListaInt -eq 1 ]
then
	./Acoes/presetsLista/4OEP/1.sh
elif [ $tipoListaInt -eq 2 ]
then
    ./Acoes/presetsLista/4OEP/2.sh
elif [ $tipoListaInt -eq 3 ]
then
    ./Acoes/presetsLista/4OEP/3.sh
elif [ $tipoListaInt -eq 4 ]
then
    ./Acoes/presetsLista/4OEP/4.sh
elif [ $tipoListaInt -eq 5 ]
then
    ./Acoes/presetsLista/4OEP/5.sh
elif [ $tipoListaInt -eq 6 ]
then
    ./Acoes/presetsLista/4OEP/6.sh
elif [ $tipoListaInt -eq 7 ]
then
    ./Acoes/presetsLista/4OEP/7.sh
elif [ $tipoListaInt -eq 8 ]
then
    ./Acoes/presetsLista/4OEP/8.sh
else
        echo "00-->Sair_do_Programa"
		clear
        exit
fi