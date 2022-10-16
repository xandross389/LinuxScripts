#!/bin/bash
# Run as root or sudoer user
sed -i 's/table=51820/table=$(shuf -i 2000-65000 -n 1) #table=51820/g' /usr/bin/wg-quick
