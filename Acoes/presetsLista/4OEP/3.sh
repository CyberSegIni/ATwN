#!/bin/bash

#LISTA DE ALVOS

#3)nmap -pU:$portaScan1,T:portaScan2,portaScan3 $IP

#FUNCIONAMENTO DO ARQUIVO
echo -n "Bem vindo a (3)-->SONDA_DIFERENTES_PORTAS"
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
echo -n "Qual a primeira porta que deseja scannear?"
echo ""
echo "Exemplo: 110, 23-25, 443"
echo ""
read portaScan1
echo -n "Qual a secao de porta que deseja scannear?"
echo ""
read portaScan2
echo -n "Qual a ultima porta que deseja scannear?"
echo ""
read portaScan3
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
    	nmap -pU:$portaScan1,T:portaScan2,portaScan3 $IP -oX $nomeArquivoSalvar
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
    	nmap -pU:$portaScan1,T:portaScan2,portaScan3 $IP
    	echo
    done
    echo
    echo "Scanner de rede foi realizado $qntscann vezes "
fi