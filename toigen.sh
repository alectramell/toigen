#!/bin/bash

clear

sudo mkdir /opt/toigen
sudo mkdir /opt/toigen/icons
mkdir /home/$(whoami)/toigen

clear

wget https://raw.githubusercontent.com/alectramell/toigen/master/toi.png -P /opt/toigen/icons/

clear

curl -s https://raw.githubusercontent.com/alectramell/toigen/master/$1.toi > /home/$(whoami)/toigen/$1.toi

clear

gvfs-set-attribute -t string /home/$(whoami)/toigen/$1.toi metadata::custom-icon file:///opt/toigen/icons/toi.png

clear

sleep 0.5

clear

xdg-open /home/$(whoami)/toigen

clear
