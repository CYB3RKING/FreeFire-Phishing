#!/bin/bash
clear
#colors code
Black="\033[0;30m"
Red="\033[0;31m"
Green="\033[0;32m"
Yellow="\033[0;33m"
Blue="\033[0;34m"
Purple="\033[0;35m"
Cyan="\033[0;36m"
White="\033[0;37m"

#bold color code
BBlack="\033[1;30m"
BRed="\033[1;31m"
BGreen="\033[1;32m"
BYellow="\033[1;33m"
BBlue="\033[1;34m"
BPurple="\033[1;35m"
BCyan="\033[1;36m"
BWhite="\033[1;37m"

#reset 
Reset="\033[0m"

mainlogo(){
    echo ""
    echo -e "${Green}███████${Reset}╗${Green}██████${Reset}╗ ${Green}███████${Reset}╗${Green}███████${Reset}╗    ${Red}███████${Reset}╗${Red}██${Reset}╗${Red}██████${Reset}╗ ${Red}███████${Reset}╗ "
    echo -e "${Green}██${Reset}╔════╝${Green}██${Reset}╔══${Green}██${Reset}╗${Green}██${Reset}╔════╝${Green}██${Reset}╔════╝    ${Red}██${Reset}╔════╝${Red}██${Reset}║${Red}██${Reset}╔══${Red}██${Reset}╗${Red}██${Reset}╔════╝  "
    echo -e "${Green}█████${Reset}╗  ${Green}██████${Reset}╔${Reset}╝${Green}█████${Reset}╗  ${Green}█████${Reset}╗      ${Red}█████${Reset}╗  ${Red}██${Reset}║${Red}██████${Reset}╔${Reset}╝${Red}█████${Reset}╗  "
    echo -e "${Green}██${Reset}╔══╝  ${Green}██${Reset}╔══${Green}██${Reset}╗${Green}██${Reset}╔══╝  ${Green}██${Reset}╔══╝      ${Red}██${Reset}╔══╝  ${Red}██${Reset}║${Red}██${Reset}╔══${Red}██${Reset}╗${Red}██${Reset}╔══╝  "
    echo -e "${Green}██${Reset}║     ${Green}██${Reset}║  ${Green}██${Reset}║${Green}███████${Reset}╗${Green}███████${Reset}╗    ${Red}██${Reset}║     ${Red}██${Reset}║${Red}██${Reset}║  ${Red}██${Reset}║${Red}███████${Reset}╗"
    echo -e "${Reset}╚═╝     ╚═╝  ╚═╝╚══════╝╚══════╝    ╚═╝     ╚═╝╚═╝  ╚═╝╚══════╝"
    echo ""
    echo -e "            ${Yellow}[${Green}*${Yellow}] ${Green} https://github.com/CYB3RKING/FreeFire-Phishing "    
    echo -e "            ${Yellow}[${Green}*${Yellow}] ${Green} Credit -> ${Yellow}@Online-Hacking "
    echo ""                                                        
}
############################################################################################################
logo(){
    echo ""
    echo -e "${Green}███████ ██████  ███████ ███████    ${Red} ███████ ██ ██████  ███████ "
    echo -e "${Green}██      ██   ██ ██      ██         ${Red} ██      ██ ██   ██ ██      "
    echo -e "${Green}█████   ██████  █████   █████      ${Red} █████   ██ ██████  █████   "
    echo -e "${Green}██      ██   ██ ██      ██         ${Red} ██      ██ ██   ██ ██      "
    echo -e "${Green}██      ██   ██ ███████ ███████     ${Red}██      ██ ██   ██ ███████  "
    echo -e ""                                                       
}

termux() {
    echo
    mainlogo
    echo -e $'\e[1;91m\e[0m\e[1;91m\e[0m\e[1;96m\e[0m\e[1;91m   ----------------------------------------  \e[1;91m\e[0m'
    echo -e $'\e[1;96m\e[0m\e[1;77m\e[0m\e[1;96m\e[0m\e[1;91m  !!        Unistalling      !!\e[0m'
    echo -e $'\e[1;91m\e[0m\e[1;91m\e[0m\e[1;96m\e[0m\e[1;91m   ----------------------------------------- \e[1;91m\e[0m'
    rm -rf /data/data/com.termux/files/usr/bin/ngrok
    rm -rf /data/data/com.termux/files/usr/bin/cloudflared 
    rm -rf /data/data/com.termux/files/usr/bin/loclx
    rm -rf /data/data/com.termux/files/usr/bin/cloudflared
    rm -rf /data/data/com.termux/files/usr/bin/.FreeFire
    rm -rf /data/data/com.termux/files/usr/bin/.FreeFire/1 /data/data/com.termux/files/usr/bin/.FreeFire/2 /data/data/com.termux/files/usr/bin/.FreeFire/3 /data/data/com.termux/files/usr/bin/.FreeFire/4 /data/data/com.termux/files/usr/bin/.FreeFire/5 /data/data/com.termux/files/usr/bin/.FreeFire/6 /data/data/com.termux/files/usr/bin/.FreeFire/7 /data/data/com.termux/files/usr/bin/.FreeFire/8 /data/data/com.termux/files/usr/bin/.FreeFire/9 /data/data/com.termux/files/usr/bin/.FreeFire/0
    rm -rf /data/data/com.termux/files/usr/bin/FF
    rm -rf /data/data/com.termux/files/usr/bin/FreeFire
    rm -rf /data/data/com.termux/files/usr/bin/FreeFire-Phishing
    rm -rf /data/data/com.termux/files/usr/bin/OnlineHacking
    cd ..
    rm -rf FreeFire-Phishing
    logo 
    echo -e $'\e[1;91m\e[0m\e[1;91m\e[0m\e[1;96m\e[0m\e[1;91m   ----------------------------------------  \e[1;91m\e[0m'
    echo -e $'\e[1;96m\e[0m\e[1;77m\e[0m\e[1;96m\e[0m\e[1;91m  !!        Unistalling  successfull     !!\e[0m'
    echo -e $'\e[1;91m\e[0m\e[1;91m\e[0m\e[1;96m\e[0m\e[1;91m   ----------------------------------------- \e[1;91m\e[0m'
    echo -e ""
    exit
}

linux() {
    echo
    mainlogo
    echo -e $'\e[1;91m\e[0m\e[1;91m\e[0m\e[1;96m\e[0m\e[1;91m   ----------------------------------------  \e[1;91m\e[0m'
    echo -e $'\e[1;96m\e[0m\e[1;77m\e[0m\e[1;96m\e[0m\e[1;91m  !!        Unistalling      !!\e[0m'
    echo -e $'\e[1;91m\e[0m\e[1;91m\e[0m\e[1;96m\e[0m\e[1;91m   ----------------------------------------- \e[1;91m\e[0m'
    sudo rm -rf /usr/bin/ngrok
    sudo rm -rf /usr/bin/cloudflared 
    sudo rm -rf /usr/bin/loclx
    sudo rm -rf /usr/bin/cloudflared
    sudo rm -rf /usr/bin/.FreeFire
    sudo rm -rf /usr/bin/.FreeFire/1 /usr/bin/.FreeFire/2 /usr/bin/.FreeFire/3 /usr/bin/.FreeFire/4 /usr/bin/.FreeFire/5 /usr/bin/.FreeFire/6 /usr/bin/.FreeFire/7 /usr/bin/.FreeFire/8 /usr/bin/.FreeFire/9 /usr/bin/.FreeFire/0
    sudo rm -rf /usr/bin/FF
    sudo rm -rf /usr/bin/FreeFire
    sudo rm -rf /usr/bin/FreeFire-Phishing
    sudo rm -rf /usr/bin/OnlineHacking
    cd ..
    sudo rm -rf FreeFire-Phishing
    clear 
    logo 
    echo -e $'\e[1;91m\e[0m\e[1;91m\e[0m\e[1;96m\e[0m\e[1;91m   ----------------------------------------  \e[1;91m\e[0m'
    echo -e $'\e[1;96m\e[0m\e[1;77m\e[0m\e[1;96m\e[0m\e[1;91m  !!        Unistalling  successfull     !!\e[0m'
    echo -e $'\e[1;91m\e[0m\e[1;91m\e[0m\e[1;96m\e[0m\e[1;91m   ----------------------------------------- \e[1;91m\e[0m'
    echo -e ""
    exit
}

setup() {
    logo

    while true; do
        echo ""
        echo -e "${Green}[${Yellow}1${Green}] ${Cyan}Termux "
        echo -e "${Green}[${Yellow}2${Green}] ${Cyan}Linux "
        echo -e "${Green}[${Yellow}3${Green}] ${Cyan}Exit"
        echo "" 
        printf  " ${Yellow}FF  ${Cyan}-->  ${Green}"
        read option

        case $option in
            1)
                termux
                exit
                ;;
            2)
                linux
                exit
                ;;
            3)
                exit
                ;;
            *)
                echo "Invalid option. Please try again."
                ;;
        esac
    done
}

setup
