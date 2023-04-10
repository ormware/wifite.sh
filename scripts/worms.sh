#!/bin/bash
#sudo wifite -i wlan1mon -mac -p 10 --skip-crack --no-pmkid --daemon --clients-only
sudo wifite -i wlan1mon -mac -p 10 --no-pmkid --skip-crack # -inf --clients-only
tmux split-window -v "sh ~/scripts/worms.sh"
