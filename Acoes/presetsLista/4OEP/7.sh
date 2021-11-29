#!/bin/bash

#LISTA DE ALVOS

#7)nmap -p "$nomeUsado" $servicoScan $IP

#FUNCIONAMENTO DO ARQUIVO
echo -n "Bem vindo a (7)-->SONDA_PORTAS_USANDO_UM_NOME"
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
echo -n "Qual tipo de servico deseja detectar ?"
echo ""
echo "Exemplo: ftp ou http ..."
echo ""
read servicoScan
echo -n "Qual o nome a ser usado ?"
echo ""
read nomeUsado
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
    	nmap -p "$nomeUsado" $servicoScan $IP -oX $nomeArquivoSalvar
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
    	nmap -p "$nomeUsado" $servicoScan $IP
    	echo
    done
    echo
    echo "Scanner de rede foi realizado $qntscann vezes "
fi