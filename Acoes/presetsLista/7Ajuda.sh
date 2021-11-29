#!/bin/bash

clear
./Intro/logoEN.sh

echo -n "BEM VINDO A AJUDA NESTE MOSTRO COMO UTILIZAR O ATwN"
echo ""
echo -n "PARA CADA TELA VOCE TERA QUE ESCOLHER UMA AÇAO A FAZER"
echo ""
echo -n "CADA ACAO IRA TE DIRECIONAR PARA DETERMINADA OPCAO DE SCANNERS"
echo ""
echo -n "EXEMPLO:"
echo ""
echo -n "(1)-->Comandos_Diversos"
echo -n "MOSTRA COMANDOS PARA DIFERENTES NECESSIDADES QUE PODEM SER USADOS A OUTROS"
echo ""
echo -n "(2)-->Deteccao_de_Versao"
echo -n "MOSTRA COMANDOS PARA DETECTAR SO's DE CADA IP"
echo ""
echo -n "(3)-->Discoberta_de_Hosts"
echo -n "MOSTRA HOSTS QUE PODEM CONTER NA SUA REDE"
echo ""
echo -n "(4)-->Opcoes_Especificoes_Portas"
echo -n "MOSTRA COMANDOS MAIS UTILIZADAS PARA DESCOBRIR PORTAS"
echo ""
echo -n "(5)-->Prova_de_Firewall"
echo -n "MOSTRA COMANDOS PARA BURLAR FIREWALLS"
echo ""
echo -n "(6)-->Tipos_de_Scanners"
echo -n "MOSTRA COMANDOS PARA CADA TIPO DE SCAN"
echo ""
echo -n "CASO DESEJE REALIZAR UMA ACAO BASTA PRESIONAR O NUMERO CORRESPONDENTE A SEUS TIPOS"
echo ""
echo -n "PRECIONE O NUMERO DA OPCAO QUE DESEJA REALIZAR"
echo ""
echo -n "EXEMPLO:"
echo ""
echo "(1)-->Comandos_Diversos"
echo "(2)-->Deteccao_de_Versao"
echo "(3)-->Discoberta_de_Hosts"
echo "(4)-->Opcoes_Especificoes_Portas"
echo "(5)-->Prova_de_Firewall"
echo "(6)-->Tipos_de_Scanners"
echo -n "SUA ESCOLHA: 1"
echo -n "FEITA A ESCOLHA ACIMA VOCE IRA PARA UMA LISTA DE COMANDOS"
echo -n "NO QUAL VOCE PODE ESCOLHER QUAL USAR"
echo ""
echo -n "CASO TENHA ALGUMA DUVIDA LEIA O Read.md"
echo ""
echo -n "PARA SAIR PRESSIONE ENTER"
read escolhaMDSAIR

if [ $escolhaMDSAIR -eq 1]
then 
    clear
    exit 
else
    clear
    exit 
fi
