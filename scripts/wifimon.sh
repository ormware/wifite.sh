#!/bin/bash

sudo airmon-ng check kill > /dev/null 2>&1; sleep 1; echo "[+] Killing background processes."
sudo airmon-ng start wlan1 > /dev/null 2>&1; sleep 1; echo "[+] Entering monitoring mode."
sudo airodump-ng -i wlan1mon


