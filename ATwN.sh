#!/bin/bash

#LOGO
#ACESSANDO ARQUIVO LOGO
./Intro/logoEN.sh
#Intro(Versão + Bem vindo)
#ACESSANDO ARQUIVO Intro
./Intro/intro.sh
#Menu
#ACESSANDO O MENU
./Acoes/menu.sh
#ESCOLHENDO E FAZENDO A AÇÃO

echo ""
echo -n "Escolha o que deseja fazer:"
read escolha
if [ $escolha -eq 1 ]
then
        #1-->Presets
        #ACESSANDO O ARQUIVO DE 1-->Presets
        ./Acoes/listaPresets.sh
        
elif [ $escolha -eq 2 ]
then
        #2-->Desenvolva_seus_Presets
        #ACESSANDO O ARQUIVO 2-->Desenvolva_seus_Presets
        ./devPreset/dev/devPreset.sh
        
elif [ $escolha -eq 3 ]
then
        #3-->Scanner_Rapido_de_Links
        #ACESSANDO O ARQUIVO 3-->Scanner_Rapido_de_Links
        ./Acoes/scannerRapidoLinks.sh

elif [ $escolha -eq 4 ]
then
        #4-->Scanner_Rapido_de_Redes
        #ACESSANDO O ARQUIVO 4-->Scanner_Rapido_de_Redes
        ./Acoes/scannerRapidoRede.sh

elif [ $escolha -eq 5 ]
then
        #5-->Ajuda_Manual_de_Uso
        #ACESSANDO O ARQUIVO 5-->Ajuda_Manual_de_Uso
        ./Acoes/presetsLista/7Ajuda.sh
        
else
        #00-->Sair_do_Programa
        clear
        exit

fi
