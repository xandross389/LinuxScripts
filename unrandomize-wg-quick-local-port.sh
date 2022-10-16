#!/bin/bash
# Modifies /usr/bin/wg-quick script to unrandomize wireguard client local port randomized by randomize-wg-quick-local-port.sh 
# Run as root or sudoer user
sed -i 's/table=$(shuf -i 2000-65000 -n 1) #table=51820/table=51820/g' /usr/bin/wg-quick
