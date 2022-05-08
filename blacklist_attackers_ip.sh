#!/bin/bash
#
# Add to ufw blacklisted IP address from file
# usage: script_name ips_list_filename
#
ATTACKERS_FILE=$1
while read line; do sudo ufw deny from $line to any comment "Attacker IP"; done < $ATTACKERS_FILE
