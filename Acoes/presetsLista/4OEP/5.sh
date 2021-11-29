#!/bin/bash

#LISTA DE ALVOS

#5)nmap $portaScan $IP

#FUNCIONAMENTO DO ARQUIVO
echo -n "Bem vindo a(5)-->SONDA_PORTAS_POR_UM_PROTOCOLO_ESPECIFICO"
echo ""
echo -n "Quantas vezes deseja realizar o scan? "
echo ""
read qntscann
echo ""
echo -n "Qual faixa ou endereco de IP ou Link voce deseja scanear? "
echo
echo -n "Exemplo: 192.168.X.X/24"
echo ""
read IP
echo ""
echo -n "Qual protocolo deseja  procurar com o scaner? "
echo ""
echo "Exemplo: -smtp ou https "
echo ""
read portaScan
echo ""
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
    	nmap $portaScan $IP -oX $nomeArquivoSalvar
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
    	nmap $portaScan $IP
    	echo
    done
    echo
    echo "Scanner de rede foi realizado $qntscann vezes "
fi