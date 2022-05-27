#!/bin/bash
# By Marcel0Sousa in github
# Edit By ELi-Nunez in github
update='\033[1;32m'
echo -e "$update Updating Repositories..."
apt update > /dev/null 2>&1 && upgrade -y > /dev/null 2>&1
apt install -y wget > /dev/null 2>&1
clear
k='\033[01;32m'
echo -e
echo -e "${k}████████╗ ██████╗██╗  ██╗███████╗██╗      ██████╗ ";
echo -e "${k}╚══██╔══╝██╔════╝██║  ██║██╔════╝██║     ██╔═══██╗";
echo -e "${k}   ██║   ██║     ███████║█████╗  ██║     ██║   ██║";
echo -e "${k}   ██║   ██║     ██╔══██║██╔══╝  ██║     ██║   ██║";
echo -e "${k}   ██║   ╚██████╗██║  ██║███████╗███████╗╚██████╔╝";
echo -e "${k}   ╚═╝    ╚═════╝╚═╝  ╚═╝╚══════╝╚══════╝ ╚═════╝ ";
echo -e "${k} /_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/";
echo -e
read -p "Install Ngrok? [Y/n]: " opcao
case $opcao in
y)
echo
echo "Downloading Termux-ngrok..."
case `dpkg --print-architecture` in
aarch64)
    architectureURL="arm64" ;;
arm)
    architectureURL="arm" ;;
armhf)
    architectureURL="armhf" ;;
amd64)
    architectureURL="amd64" ;;
i*86)
    architectureURL="i386" ;;
x86_64)
    architectureURL="amd64" ;;
*)
    echo "Unknown Architecture"
esac

wget "https://github.com/tchelospy/NgrokTest/blob/master/ngrok-stable-linux-${architectureURL}.zip?raw=true" -O ngrok.zip > /dev/null 2>&1
unzip ngrok.zip
mv ngrok /data/data/com.termux/files/usr/bin
chmod 700 /data/data/com.termux/files/usr/bin/ngrok
read -p "Remove ngrok.zip [Y/n]?: " remove
if [ $remove = "y" ]
    rm ngrok ngrok.zip
then
    echo "Ok."
fi
clear
echo -e "${k}███╗   ██╗ ██████╗ ██████╗  ██████╗ ██╗  ██╗";
echo -e "${k}████╗  ██║██╔════╝ ██╔══██╗██╔═══██╗██║ ██╔╝";
echo -e "${k}██╔██╗ ██║██║  ███╗██████╔╝██║   ██║█████╔╝ ";
echo -e "${k}██║╚██╗██║██║   ██║██╔══██╗██║   ██║██╔═██╗ ";
echo -e "${k}██║ ╚████║╚██████╔╝██║  ██║╚██████╔╝██║  ██╗";
echo -e "${k}╚═╝  ╚═══╝ ╚═════╝ ╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═╝";
echo -e
echo -e "Command example (ngrok http 80\nOr ngrok for help)"
;;

n)
clear
echo "Instalaton Failed :("
echo
esac



