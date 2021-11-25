#!/bin/bash

echo ""
echo -n '(3)-->Discoberta_de_Hosts'
echo ""
echo -n "Escolha o que deseja fazer"
echo ""

#DECLARANDO O ARRAY
tipoListaInt=("(1)-->LISTA_SEM_SCANEAR"                                 #1)nmap $IP -sL
              "(2)-->DESABILITA_SCANNEAMENTO_DE_PORTA"                  #2)nmap $IP/24 -sn
              "(3)-->APENAS_SCANER_PORTAS_SEM_DESCOBRIR_HOST"           #3)nmap $IP -Pn
              "(4)-->DESCOBERTA_TCP_SYN_PORTA_ESPECIFICA"               #4)nmap $IP -PS22-25,80
              "(5)-->DESCOBERTA_TCP_ACK_PORTA_ESPECIFICA"               #5)nmap $IP -PA22-25,80
              "(6)-->DESCOBERTA_UDP_PORTA_ESPECIFICA"                   #6)nmap $IP -PU53
              "(7)-->DESCOBERTA_ARP_COM_REDE_LOCAL"                     #7)nmap $IP/24 -PR   
              "(8)-->RESOLUCAO_DNS"                                     #8)nmap $IP -n		            
              "(00)-->SAIR")                                            #00SAIR


#ACESSANDO O ARRAY
for str in ${tipoListaInt[@]}; do
    echo $str
done
read tipoListaInt
echo ""

#FUNCIONAMENTO
if [ $tipoListaInt -eq 1 ]
then
	./Acoes/presetsLista/3DH/1listaSemScanear.sh
elif [ $tipoListaInt -eq 2 ]
then
    ./Acoes/presetsLista/3DH/2desabilitaScanneamentoPorta.sh
elif [ $tipoListaInt -eq 3 ]
then
    ./Acoes/presetsLista/3DH/3scanerPortasSemHost.sh
elif [ $tipoListaInt -eq 4 ]
then
    ./Acoes/presetsLista/3DH/4descobertaTCPSYNPorta.sh
elif [ $tipoListaInt -eq 5 ]
then
    ./Acoes/presetsLista/3DH/5descobertaTCPACKPorta.sh
elif [ $tipoListaInt -eq 6 ]
then
    ./Acoes/presetsLista/3DH/6descobertaUDPPorta.sh
elif [ $tipoListaInt -eq 7 ]
then
    ./Acoes/presetsLista/3DH/7descobertaARPRedeLocal.sh
elif [ $tipoListaInt -eq 8 ]
then
    ./Acoes/presetsLista/3DH/8resolucaoDNS.sh
else
        echo "00-->Sair_do_Programa"
		clear
        exit
fi