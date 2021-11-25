#!/bin/bash

#LISTA DE ALVOS

#4)nmap --source-port $portaScan $IP

#FUNCIONAMENTO DO ARQUIVO
echo -n "(4)-->ESPECIFICACAO_MANUAL_DA_PORTA_DE_ORIGEM"
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
echo -n "Qual porta deseja scannear? "
echo ""
echo "Exemplo: 80"
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
    	nmap --source-port $portaScan $IP -oX $nomeArquivoSalvar
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
    	nmap --source-port $portaScan $IP
    	echo
    done
    echo
    echo "Scanner de rede foi realizado $qntscann vezes "
fi