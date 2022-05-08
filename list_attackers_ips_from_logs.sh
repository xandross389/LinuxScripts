#!/bin/bash
#
# Get ranked attackers IP address from /var/log/auth.log
#
sudo grep "Failed password for" /var/log/auth.log | grep -Po "[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+" | sort -nr | uniq -c | sort -nr
