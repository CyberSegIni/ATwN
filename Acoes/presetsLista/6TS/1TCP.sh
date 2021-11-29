#!/bin/bash

echo ""
echo -n 'Bem vindo a Tipos_de_Scanners'
echo ""
echo -n "Escolha o que deseja fazer"
echo ""

#DECLARANDO O ARRAY
tipoListaInt=("(1)-->Verificacao_Portas_TCP_SYN"            #1)nmap $IP -sS $portaScan 
              "(2)-->Verificacao_Portas_Conexao_TCP"        #2)nmap $IP -sT $portaScan 
              "(3)-->Verificacao_Porta_TCP_ACK"             #3)nmap $IP -sA $portaScan 
              "(4)-->Varredura_TCP_FIN"                     #4)nmap -sF $IP
              "(5)-->Varredura_TCP_ACK"                     #5)nmap -sA $IP
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
	./Acoes/presetsLista/6TS/TCP/1verificaPortaTCPSYN.sh
elif [ $tipoListaInt -eq 2 ]
then
    ./Acoes/presetsLista/6TS/TCP/2verificaPortaConexaoTCP.sh
elif [ $tipoListaInt -eq 3 ]
then
    ./Acoes/presetsLista/6TS/TCP/3verificaPortaTCPACK.sh
elif [ $tipoListaInt -eq 4 ]
then
    ./Acoes/presetsLista/6TS/TCP/4varreduraTCPFIN.sh
elif [ $tipoListaInt -eq 5 ]
then
    ./Acoes/presetsLista/6TS/TCP/5varreduraTCPACK.sh
else
        echo "00-->Sair_do_Programa"
		clear
        exit
fi