#!/bin/bash
#echo "Scanning channel 11"
#sudo hcxdumptool -o /home/pi/scripts/hcxdumptool/dump.pcapng -i wlan1mon --enable_status 15 -c 11
sudo hcxdumptool -o /home/pi/scripts/hcxdumptool/capture.pcapng -i wlan1mon --enable_status=15 --filterlist_ap=/home/pi/scripts/filters/pixel.txt --filtermode=2
