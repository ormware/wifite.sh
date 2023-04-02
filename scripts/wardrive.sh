#!/bin/bash
pulseaudio --start
paplay wav/wardriveArmed.wav
sudo mv /home/pi/*.netxml /home/pi/netxml/
sudo rm /home/pi/Kismet*
sudo systemctl stop gpsd.socket; sleep 1
sudo systemctl disable gpsd.socket; sleep 1
sudo gpsd /dev/ttyACM0 -F /var/run/gpsd.sock
sudo airmon-ng check kill; sleep 1
sudo airmon-ng start wlan1; sleep 1
lxterminal -e "bash kismet -c wlan1mon"
