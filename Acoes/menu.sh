#!/bin/bash

#DECLARANDO O ARRAY DO MENU
Menu=("1-->Presets(Scanners_mais_usados)" 
      "2-->Desenvolva_seus_Presets" 
      "3-->Scanner_Rapido_de_Links" 
      "4-->Scanner_Rapido_de_Redes" 
      "5-->Ajuda_Manual_de_Uso" 
      "00-->Sair_do_Programa")

#ACESSANDO O ARRAY DO MENU
for str in ${Menu[@]}; do
    echo $str
done

