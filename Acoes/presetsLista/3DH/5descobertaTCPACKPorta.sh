#!/bin/bash

#LISTA DE ALVOS

#5)nmap $IP -PA22-25,80

#FUNCIONAMENTO DO ARQUIVO
echo -n "(5)-->DESCOBERTA_TCP_ACK_PORTA_ESPECIFICA"
echo ""
echo -n "Quantas vezes deseja realizar o scan? "
echo ""
read qntscann
echo ""
echo -n "Qual faixa ou endereco de IP ou Link voce deseja scanear? "
echo
echo -n "Exemplo: 192.168.X.X"
echo ""
read IP
echo ""
echo -n "Qual porta deseja scannear? "
echo ""
echo "Exemplo: 22-25,80"
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
    	nmap $IP -PA$portaScan -oX $nomeArquivoSalvar
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
    	nmap $IP -PA$portaScan
    	echo
    done
    echo
    echo "Scanner de rede foi realizado $qntscann vezes "
fi