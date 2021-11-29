#!/bin/bash

#LISTA DE ALVOS

#2)nmap -mtu [MTU] [$IP]

#FUNCIONAMENTO DO ARQUIVO
echo -n "(3)-->SCANNER_ZOOMBIE_ANCIOSO"
echo ""
echo -n "Quantas vezes deseja realizar o scan? "
echo ""
read qntscann
echo ""
echo -n "Qual faixa ou endereco de IP ou Link voce deseja scanear? "
echo
echo -n "Exemplo: 192.168.X.X/24 ou scanme.nmap.org/24"
echo ""
read IP
echo ""
echo "Digite o tamanho de MTU que deseja usar"
#DECLARANDO O ARRAY
tipoMTU=("8","16","24","32","40","48","56","64","72","ETC")

#ACESSANDO O ARRAY
for str in ${tipoMTU[@]}; do
    echo $str
done
read tipoMTUEscolher
echo "Deseja salvar um arquivo xml sobre o scan?"
echo "Se sim, digite 1"
echo "Se nao, digite 0"
read respostaSalvar

#REPETINDO E SALVANDO

if [ $respostaSalvar -eq 1 ]
then
    echo "Qual o nome do arquivo que deseja salvar?"
    read nomeArquivoSalvar
    i=1
    while [ $i -le $qntscann ]
    do
    	echo -n "Realizando scan $i de $qntscann "
    	echo 
    	((i++))
    	nmap --mtu $tipoMTUEscolher $IP -oX $nomeArquivoSalvar
    	echo
    done
    echo
    echo "Scanner de rede foi realizado $qntscann vezes "
else
    i=1
    while [ $i -le $qntscann ]
    do
    	echo -n "Realizando scan $i de $qntscann "
    	echo 
    	((i++))
    	nmap --mtu $tipoMTUEscolher $IP
    	echo
    done
    echo
    echo "Scanner de rede foi realizado $qntscann vezes "
fi