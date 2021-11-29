#!/bin/bash

echo ""
echo -n 'Bem vindo aos Presets'
echo ""
echo -n "Escolha um preset"
echo ""
#DECLARANDO O ARRAY

listaInt=("(1)-->Comandos_Diversos"
          "(2)-->Deteccao_de_Versao"
          "(3)-->Discoberta_de_Hosts"
          "(4)-->Opcoes_Especificoes_Portas"
          "(5)-->Prova_de_Firewall"
          "(6)-->Tipos_de_Scanners"
          "(7)-->AJUDA"
          "(00)-->SAIR")
#ACESSANDO O ARRAY

for str in ${listaInt[@]}; do
    echo $str 
done
read listaInt
echo

#FUNCIONAMENTO
if [ $listaInt -eq 1 ]
then
	./Acoes/presetsLista/1CD.sh
elif [ $listaInt -eq 2 ]
then
    ./Acoes/presetsLista/2DV.sh
elif [ $listaInt -eq 3 ]
then
    ./Acoes/presetsLista/3DH.sh
elif [ $listaInt -eq 4 ]
then
    ./Acoes/presetsLista/4OEP.sh
elif [ $listaInt -eq 5 ]
then
    ./Acoes/presetsLista/5PF.sh
elif [ $listaInt -eq 6 ]
then
    ./Acoes/presetsLista/6TS.sh
elif [ $listaInt -eq 7 ]
then
    ./Acoes/presetsLista/7Ajuda.sh
else
        echo "00-->Sair_do_Programa"
		clear
        exit
fi

