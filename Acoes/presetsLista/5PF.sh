#!/bin/bash

echo ""
echo -n 'Bem vindo a Prova_de_Firewall'
echo ""
echo -n "Escolha o que deseja fazer"
echo ""

#DECLARANDO O ARRAY
tipoListaInt=("(1)-->ESCANEAR_PACOTES_DE_FRAGMENTOS"                           #1)nmap -f $IP
              "(2)-->ESPECIFIQUE_MTU(UNIDADE_DE_TRASMISSAO_MAXIMA)"            #2)nmap -mtu MTU $IP
              "(3)-->SCANNER_ZOOMBIE_ANCIOSO"                                  #3)nmap -sI zombie $IP
              "(4)-->ESPECIFICACAO_MANUAL_DA_PORTA_DE_ORIGEM"                  #4)nmap -source-port port $IP
              "(5)-->ANEXAR_DADOS_ALEATORIAMENTE"                              #5)nmap -data-length size $IP
              "(6)-->RANDOMIZACAO_DE_ORDEM_DE_VARREDURA"                       #6)nmap -randomize-hosts $IP
              "(7)-->SOMA_DE_VERIFICACAO_RUIM"                                 #7)nmap -badsum $IP
              "(00)-->SAIR")                                                   #00SAIR


#ACESSANDO O ARRAY
for str in ${tipoListaInt[@]}; do
    echo $str
done
read tipoListaInt
echo ""

#FUNCIONAMENTO
if [ $tipoListaInt -eq 1 ]
then
	./Acoes/presetsLista/5PF/1escanearPacotesFragmentos.sh
elif [ $tipoListaInt -eq 2 ]
then
    ./Acoes/presetsLista/5PF/2especifiqueMTU.sh
elif [ $tipoListaInt -eq 3 ]
then
    ./Acoes/presetsLista/5PF/3scannerZoombieAncioso.sh
elif [ $tipoListaInt -eq 4 ]
then
    ./Acoes/presetsLista/5PF/4especificacaoManualPortaOrigem.sh
elif [ $tipoListaInt -eq 5 ]
then
    ./Acoes/presetsLista/5PF/5anexarDadosAleatoriamente.sh
elif [ $tipoListaInt -eq 6 ]
then
    ./Acoes/presetsLista/5PF/6ramdomizacaoOrdemVarredura.sh
elif [ $tipoListaInt -eq 7 ]
then
    ./Acoes/presetsLista/5PF/7somaVerficacaoRuim.sh
else
        echo "00-->Sair_do_Programa"
		clear
        exit
fi