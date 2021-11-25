#!/bin/bash

#FUNCIONAMENTO DO ARQUIVO
clear
echo -n 'Bem vindo ao SRACNmap (Scanner de Rede Automatico Coordenado com Nmap) '
echo
echo -n "Quantas vezes deseja realizar o scan? "
echo
read qntscann
echo
echo -n "Qual faixa ou endereco de IP ou Link voce deseja scanear? "
echo
echo -n "Exemplo: 192.168.X.X/24"
echo
read endIP
echo
echo "Deseja salvar um arquivo xml sobre o scan?"
echo "Se sim, digite 1"
echo "Se nao, digite 0"
read respostaSalvar

#FUNCIONAMENTO
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
    	nmap -sS $IP --open -O -D RND 20 $IP -oX $nomeArquivoSalvar
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
    	nmap -sS $IP --open -O -D RND 20 $IP
    	echo
    done
    echo
    echo "Scanner de rede foi realizado $qntscann vezes "
fi