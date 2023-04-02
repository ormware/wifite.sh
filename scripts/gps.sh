#!/bin/bash
sudo systemctl stop gpsd.socket
sudo systemctl disable gpsd.socket
sudo gpsd /dev/ttyACM0 -F /var/run/gpsd.sock
sudo cgps -s
