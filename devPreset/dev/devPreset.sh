#!/bin/bash

#FUNCIONAMENTO DO ARQUIVO
clear

#IMPORTANDO AS FUNCOES
. 'devPreset/devPresetsImport.sh'

#ApresentacaoInicial
#ListaComandos
#RepeteScan
#ExecutaSemRepetir

#ls -al > arquivo.txt
#Utilize o `>>` quando precisa gerar um arquivo pelo qual sua sobreescrita
#seja incremental, ou seja, sempre será adicionado novo conteúdo no
#mesmo arquivo
#ls -al >> arquivo.txt

echo -n 'Bem vindo ao Desenvolva seus Presets'
echo ""
echo "Qual o nome do seu Preset lembre-se de colocar .sh no fim"
read nomeScriptPreset
echo "Deseja que seu Preset:"
echo "(1)-->Lista_de_Comandos_e_Repete_o_Scan"
echo "(2)-->Lista_de_Comandos_e_NAO_Repete_o_Scan"
echo "(3)-->So_Executa_e_Repete_o_Scan"
echo "(4)-->So_Executa_e_NAO_Repete_o_Scan"
echo "(5)-->Arquivos_Salvos"
echo "(0)-->SAIR"
read temListaComandos

if [ $temListaComandos -eq 1 ]
then
    ALR
    exit | ALR > $nomeScriptPreset 
elif [ $temListaComandos -eq 2 ]
then
    ALE 
    exit | ALE > $nomeScriptPreset 
elif [ $temListaComandos -eq 3 ]
then
    AR 
    exit | AR > $nomeScriptPreset 
elif [ $temListaComandos -eq 4 ]
then
    AE 
    exit | AE > $nomeScriptPreset 
else
    clear
    exit
fi