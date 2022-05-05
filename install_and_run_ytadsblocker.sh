#!/bin/bash
# to run execute: 
# chmod +x ./install_and_run_ytadsblocker.sh
# inside docker container> ./install_and_run_ytadsblocker.sh
# asumming you have mapped script to /usr/src from outside docker container run: sudo sudo docker exec -it pihole /usr/src/install_and_run_ytadsblocker.sh
apt update -qq && apt install -qq systemctl -y
curl https://raw.githubusercontent.com/deividgdt/ytadsblocker/master/ytadsblocker.sh -o /usr/src/ytadsblocker.sh
chmod +x /usr/src/ytadsblocker.sh
/usr/src/ytadsblocker.sh -a stop
/usr/src/ytadsblocker.sh -a uninstall
/usr/src/ytadsblocker.sh -a install
#/usr/src/ytadsblocker.sh -a start &
systemctl start ytadsblocker
systemctl enable ytadsblocker
systemctl status ytadsblocker

