#!/bin/bash
#lxterminal -e "sh 1wifite.sh"

#Print colors
YEL="\033[1;33m"
GRE="\033[0;32m"
RED="\033[0;31m"
NC="\033[0m"

start=$(date +%S)

#sudo modprobe 8188eu
#sudo ifconfig wlan0 down
#sudo ifconfig wlan1 down && sleep 1
#if [ $? -eq "255" ]
#then
#	echo "${YEL}INF${NC} :: Renaming wlxxx...${NC}"
#	sudo ip link set wlx00c0ca9944b5 name wlan1
#	echo "${GRE}SUCCESS${NC} :: Rename successful.${NC}"
#else 
#	echo "${RED}ERR${NC} :: Something went horribly wrong:"$?
#fi	
#
#sudo airmon-ng
#sudo iwconfig wlan1 mode monitor && sleep 1

#airodump-ng wlan1

zzz=2
echo "Unscrewing wormlid in ..."
while [ $zzz -ne 0 ]
do
	echo $zzz
	zzz=$(($zzz-1))
	sleep 1
	#expr $zzz - 1
done



i=0
sudo airmon-ng check kill; sleep 1
sudo airmon-ng start wlan1; sleep 1
lxterminal -e "sh /home/pi/scripts/worms.sh"
while [ $i -gt "-1" ]; do
	clear
	#sudo wifite -i wlan1mon -mac -p 10 --skip-crack --no-pmkid --daemon --clients-only
	hs=$(ls /home/pi/hs/ | wc -l)
	i=$(($i+1))
	echo "${i} worms crawling. ${hs} handshakes captured so far."; sleep 10
done
#pulseaudio --kill
#sudo iwconfig wlan0 mode managed && sleep 1
#sudo ifconfig wlan0 up && echo "wlan0 restored!"
#sudo dhclient wlan0 && sleep 1
#sudo wpa_supplicant -c /etc/wpa_supplicant/ -i wlan0 && echo "Wlan0 restored"

#sudo dhcpcd -n wlan0  && echo "Wlan0 restored"


#sleep infinity

#sudo sh /home/pi/1wifite.sh

