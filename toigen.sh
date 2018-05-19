#!/bin/bash

clear

sudo mkdir /opt/toigen
sudo mkdir /opt/toigen/icons
mkdir /home/$(whoami)/toigen

clear

wget https://raw.githubusercontent.com/alectramell/toigen/master/toi.png -P /opt/toigen/icons/

clear

wget https://raw.githubusercontent.com/alectramell/toigen/master/$1.toi -P /home/$(whoami)/toigen/

clear

gvfs-set-attribute -t string /home/$(whoami)/toigen/$1.toi metadata::custom-icon file:///opt/toigen/icons/toi.png

clear

sleep 0.5

clear

xdg-open /home/$(whoami)/toigen/.

clear
