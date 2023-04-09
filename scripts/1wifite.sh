#!/bin/bash

#Print colors
YEL="\033[1;33m"
GRE="\033[0;32m"
RED="\033[0;31m"
NC="\033[0m"


#sudo modprobe 8188eu
#sudo ifconfig wlan0 down
#sudo ifconfig wlan1 down && sleep 1
#if [ $? -eq "255" ]
#then
#       echo "${YEL}INF${NC} :: Renaming wlxxx...${NC}"
#       sudo ip link set wlx00c0ca9944b5 name wlan1
#       echo "${GRE}SUCCESS${NC} :: Rename successful.${NC}"
#else
#       echo "${RED}ERR${NC} :: Something went horribly wrong:"$?
#fi
#
#lxterminal -e "sh 1wifite.sh"

echo "${GRE}Here"
echo "${YEL}it"
echo "${RED}goes!${NC}"

sudo airmon-ng check kill > /dev/null 2>&1; sleep 1;    echo " [${GRE}+${NC}] Killing background processes."
sudo airmon-ng start wlan1 > /dev/null 2>&1; sleep 1;   echo " [${GRE}+${NC}] Entering monitoring mode."

sudo wifite -i wlan1mon -mac --daemon --skip-crack -v --no-pmkid #maybe add > dev/null
if [ $? -eq 1 ]
then
        echo "${RED}Wifite missing${NC}. ${YEL}Installing${NC}..."
        sudo apt install -y wifite > /dev/null 2>&1;            echo " [${GRE}+${NC}] Wifite installed."
        sudo apt install -y hcxdumptool > /dev/null 2>&1;       echo " [${GRE}+${NC}] HCXDumptools installed."
        sudo apt install -y hcxtools > /dev/null 2>&1;          echo " [${GRE}+${NC}] HCXtoolsinstalled."
        sudo apt install -y macchanger > /dev/null 2>&1;        echo " [${GRE}+${NC}] MACChanger installed."
        sudo apt install -y build-essential > /dev/null 2>&1;   echo " [${GRE}+${NC}] Build-essentials installed."
        sudo apt install -y libpcap-dev > /dev/null 2>&1;       echo " [${GRE}+${NC}] Libpcap installed."
        sudo apt install -y aircrack-ng > /dev/null 2>&1;       echo " [${GRE}+${NC}] Aircrack-ng installed."
        sudo apt install -y pixiewps > /dev/null 2>&1;          echo " [${GRE}+${NC}] PixieWPS installed."
        #Pyrit start
        mkdir ~/Downloads  > /dev/null 2>&1;
        cd ~/Downloads
        wget -c https://github.com/JPaulMora/Pyrit/archive/v0.5.0.tar.gz > /dev/null 2>&1;
        tar -xf v0.5.0.tar.gz > /dev/null 2>&1;
        cd Pyrit-0.5.0
        sed -i "s/COMPILE_AESNI/NO_COMPILE_AESNI/" cpyrit/_cpyrit_cpu.c
        python2 setup.py build > /dev/null 2>&1; echo " [${YEL}+${NC}] Pyrit made."
        sudo python2 setup.py install > /dev/null 2>&1; echo " [${GRE}+${NC}] Pyrit installed."
#Pyrit done
#Bully start
        cd ~/Downloads
        git clone https://github.com/aanarchyy/bully > /dev/null 2>&1;
        cd bully*/src
        make > /dev/null 2>&1; echo " [${YEL}+${NC}] Bully made."
        sudo make install > /dev/null 2>&1; echo " [${GRE}+${NC}] Bully installed${NC}."
#Bully done
        sh /home/pi/scripts/1wifite.sh
fi
#sudo iwconfig wlan0 mode managed && sleep 1
#sudo ifconfig wlan0 up && echo "wlan0 restored!"

zzz=0

echo "${GRE}Zzz for 10 before we exit...${NC}"
while [ $zzz -ne 0 ]
do
        echo $zzz
        zzz=$(($zzz-1))
        sleep 1
        #expr $zzz - 1
done

#sleep infinity

#sudo sh /home/pi/1wifite.sh
