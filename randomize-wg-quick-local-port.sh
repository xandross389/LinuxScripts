#!/bin/bash
# Modifies /usr/bin/wg-quick script to randomize wireguard client local port created by wg-quick. 
# To rollback to original script use randomize-wg-quick-local-port.sh
# Run as root or sudoer user
sed -i 's/table=51820/table=$(shuf -i 2000-65000 -n 1) #table=51820/g' /usr/bin/wg-quick
