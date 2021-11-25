#!/bin/bash

#FUNCIONAMENTO DO ARQUIVO
clear
echo -n 'Bem vindo ao Scanner Rapido de Links'
echo
echo -n "Quantas vezes deseja realizar o scan? "
echo
read qntscann
echo
echo -n "Qual faixa ou endereco de IP ou Link voce deseja scanear? "
echo
echo -n "Exemplo: scanme.nmap.org"
echo
read endIP
echo
echo "Deseja salvar um arquivo xml sobre o scan?"
echo "Se sim, digite 1"
echo "Se nao, digite 0"
read respostaSalvar

#FUNCIONAMENTO
i=1
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