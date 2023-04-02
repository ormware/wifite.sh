#!/bin/bash


#Color management
GRE='\033[0;32m'
RED='\033[0;31m'
YEL='\033[0;33m'
NC='\033[0m' # No Color

Wardrive="${YEL}Wardriving${NC}"
wifite="${YEL}Wifite singular${NC}"
wifiWorms="${YEL}Unleash the worms${NC}"
wifiMon="${YEL}Wifi monitor${NC}";	swifiMon=""
airG="${YEL}Airgeddon${NC}"
List="${YEL}List cracked${NC}"
i=$true
while [ $i -eq $true ]; do
	clear
	echo " ##########################"
	echo " #                        #"
	echo " # Welcome to ormSript.   #"
	echo " #                        #"
	echo " # Plz make a selection:  #"
	echo " #                        #"
	echo " # 1.: ${Wardrive}         #"
	echo " # 2.: ${wifiMon}       #"	${swifiMon} 
	echo " # 3.: ${wifite}    #"
	echo " # 4.: ${wifiWorms}  #"
	echo " # 5.: ${airG}          #"
	echo " # 6.: ${List}       #"
	echo " #                        #"
	echo " ##########################"


	echo "Select action"
	read x
	case $x in
		1)
		lxterminal -e "sh /home/pi/scripts/wardrive.sh";
		Wardrive="${GRE}Wardriving${NC}"
		clear;
		;;
		2)
		sudo rm /home/pi/scripts/airodump/*
		lxterminal -e "sh /home/pi/scripts/wifimon.sh"
		wifiMon="${GRE}Wifi monitor${NC}"
		swifiMon="[!] sudo airodump-ng wlan1mon -w /home/pi/scripts/airodump/cap --output-format cap --channel x --bssid x"
		clear;
		;;
		3)
		lxterminal -e "sh /home/pi/scripts/1wifite.sh"
		wifite="${GRE}Wifite singular${NC}"
		clear;
		;;
		4)
		lxterminal -e "sh /home/pi/scripts/worms.sh"
		wifiWorms="${GRE}Unleash the worms${NC}"
		clear;
		;;
		5)
		lxterminal -e "sudo bash /home/pi/airgeddon/airgeddon.sh"
		airG="${GRE}Airgeddon${NC}"
		clear;
		;;
		6)
		lxterminal -e "sh /home/pi/scripts/lsCrack.sh"
		Mon="${GRE}List cracked${NC}"
		clear;
		;;
	esac
done


