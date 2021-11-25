#!/bin/bash

#FUNCIONAMENTO DO ARQUIVO
clear

function ALR(){
    #APESENTRACAO
    echo -n 'Bem vindo ao ' $nomeScriptPreset
    echo
    echo -n "Quantas vezes deseja realizar o scan? "
    echo
    read qntscann
    echo
    echo -n "Qual faixa ou endereco de IP ou Link voce deseja scanear? "
    echo
    echo -n "Exemplo: 192.168.X.X/24 ou scanme.nmap.org/24"
    echo
    read endIP
    echo
    echo -n "Qual metodo você deseja usar? "
    echo

    #DECLARANDO O ARRAY
    tipoScan=("-sF" "-sN" "-sP" "-sR" "-sS" "-sT" "-sU" "-sV" "-sX")

    #ACESSANDO O ARRAY

    for str in ${tipoScan[@]}; do
        echo $str
    done
    read tipoScan
    echo
    echo -n "Quais opcoes gerais? "
    echo
    echo -n "-n, -p, -r, -ttl(0-infinito), -v, -D,  -I, -O, -PO, -PS, -PT, -R, -T(0-5) "
    echo
    read complemento
    echo

    #FUNCIONAMENTO COM REPETICAO
    i=1
    while [$i -le $qntscann]
    do
    	echo -n "Realizando scan $i de $qntscann "
    	echo 
    	echo -n "Scanneando a rede com o metodo $tipoScan junto com $complemento "
    	echo
    	((i++))
    	nmap $tipoScan $complemento $endIP
    	echo
    done
    echo
    echo "Scanner de rede foi realizado $qntscann vezes "
}

export ALR

function ALE(){
    #APESENTRACAO
    echo -n 'Bem vindo ao ' $nomeScriptPreset
    echo
    echo -n "Qual faixa ou endereco de IP ou Link voce deseja scanear? "
    echo
    echo -n "Exemplo: 192.168.X.X/24 ou scanme.nmap.org/24"
    echo
    read endIP
    echo
    echo -n "Qual o tipo de scan deseja utilizar?"
    echo 
    read tipoScan
    echo -n "Deseja colocar algum complemento?"
    echo 
    read complemento

    #ACESSANDO O ARRAY    
    tipoScan=("-sF" "-sN" "-sP" "-sR" "-sS" "-sT" "-sU" "-sV" "-sX")

    #ACESSANDO O ARRAY

    for str in ${tipoScan[@]}; do
        echo $str
    done
    read tipoScan
    echo
    echo -n "Quais opcoes gerais? "
    echo
    echo -n "-n, -p, -r, -ttl(0-infinito), -v, -D,  -I, -O, -PO, -PS, -PT, -R, -T(0-5) "
    echo
    read complemento
    echo

    nmap $tipoScan $complemento $endIP
}

export ALE

function AR(){
    #APESENTRACAO
    echo -n 'Bem vindo ao ' $nomeScriptPreset
    echo
    echo -n "Quantas vezes deseja realizar o scan? "
    echo
    read qntscann
    echo
    echo -n "Qual faixa ou endereco de IP ou Link voce deseja scanear? "
    echo
    echo -n "Exemplo: 192.168.X.X/24 ou scanme.nmap.org/24"
    echo
    read endIP
    echo
    echo -n "Qual metodo você deseja usar? "
    echo

    #FUNCIONAMENTO COM REPETICAO
    i=1
    while [$i -le $qntscann]
    do
    	echo -n "Realizando scan $i de $qntscann "
    	echo 
    	echo -n "Scanneando a rede com o metodo $tipoScan junto com $complemento "
    	echo
    	((i++))
    	nmap $tipoScan $complemento $endIP
    	echo
    done
    echo
    echo "Scanner de rede foi realizado $qntscann vezes "    
}

export AR

function AE(){
    #APESENTRACAO
    echo -n 'Bem vindo ao ' $nomeScriptPreset
    echo
    echo -n "Qual faixa ou endereco de IP ou Link voce deseja scanear? "
    echo
    echo -n "Exemplo: 192.168.X.X/24 ou scanme.nmap.org/24"
    echo
    read endIP
    echo
    echo -n "Qual metodo você deseja usar? "
    echo
    echo -n "Qual o tipo de scan deseja utilizar?"
    echo
    read tipoScan
    echo -n "Deseja colocar algum complemento?"
    echo
    read complemento

    nmap $tipoScan $complemento $endIP    
}

export AE
