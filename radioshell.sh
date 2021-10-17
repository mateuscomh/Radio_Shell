#! /usr/bin/env bash

#-----------HEADER-------------------------------------------------------------|
# AUTOR             : Matheus Martins 3mhenrique@gmail.com
# HOMEPAGE          : https://github.com/mateuscomh 
# DATA CRIAÇÃO      : 12/10/2021 
# PROGRAMA          : Shell-Base
# VERSÃO            : 0.1
# LICENÇA           : GPL3
# PEQUENA-DESCRICÃO : Programa para tocar rádio online via terminal
#
# CHANGELOG :
# 17/01/2021 18:00 - Definido display inicial
#  
#----------FIM-HEADER---------------------------------------------------------|
#----------VAR----------------------------------------------------------------|

fecha='\033[m'
verde='\033[32;1m'
vermelho='\033[31;1m'
amarelo='\033[01;33m'
command -v mpg123 >/dev/null 2>&1 || { echo -e "${vermelho} MPG123 não localizado: ${fecha}" >&2; return 1; }
PLAYER="mpg123 --stereo --control --utf8 --title --preload 1 --buffer 1024"

#----------FIM-VAR-------------------------------------------------------------|
MENU(){

echo -e "
${verde} >><< Radio WEB via Shell >><<

Escolha a categoria da rádio..

-1- Rock
-2- Pop
-3- Nacional
-4- Blues
-5- Olds
-6- Variados
-7- Noticias
-8- Esportes

-q- Sair

Digite a opcao desejada ${fecha}" 
read -p  "" OPC
}

MENU
