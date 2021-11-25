#!/bin/bash

echo ""
echo -n 'Bem vindo ao Deteccao_de_Versao'
echo ""
echo -n "Escolha uma acao"
echo ""

#DECLARANDO O ARRAY
tipoListaInt=("(1)-->SERVICO_RODANDO_EM_UMA_PORTA"              #1)nmap $IP -sV 
              "(2)-->INTENSIVIDADE_ALCANCE"                     #2)nmap $IP -sV --version-intensitive-all
              "(3)-->SELECIONANDO_INTENSIDADE"                  #3)nmap $IP -sV --version-all
              "(4)-->ATIVANDO_MODO_LUZ"                         #4)nmap $IP -sV --version-light
              "(5)-->DETECTA_SISTEMA_OPERACIONAL"               #5)nmap $IP -A
              "(6)-->DETECTA_SISTEMA_OPERACIONAL_REMOTO"        #6)nmap $IP -O
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
	./Acoes/presetsLista/2DV/1servicoRodandoPorta.sh
elif [ $tipoListaInt -eq 2 ]
then
    ./Acoes/presetsLista/2DV/2intensividadeAlcance.sh
elif [ $tipoListaInt -eq 3 ]
then
    ./Acoes/presetsLista/2DV/3selecionandoIntensidade.sh
elif [ $tipoListaInt -eq 4 ]
then
    ./Acoes/presetsLista/2DV/4ativandoModoLuz.sh
elif [ $tipoListaInt -eq 5 ]
then
    ./Acoes/presetsLista/2DV/5detectaSistemaOperacional.sh
elif [ $tipoListaInt -eq 6 ]
then
    ./Acoes/presetsLista/2DV/6detectaSistemaOperacionalRemoto.sh
else
        echo "00-->Sair_do_Programa"
		clear
        exit
fi