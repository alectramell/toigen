#!/bin/bash

clear

sudo mkdir /opt/toigen
sudo mkdir /opt/toigen/icons
mkdir /home/$(whoami)/toigen

clear

sudo wget https://raw.githubusercontent.com/alectramell/toigen/master/toi.png -P /opt/toigen/icons/

clear

sudo apt-get install xxd
sudo apt-get install gvfs-set-attribute
sudo apt-get install pv

clear

curl -s https://raw.githubusercontent.com/alectramell/toigen/master/render.sh > /home/$(whoami)/.toigen.sh

clear

sudo mv /home/$(whoami)/.toigen.sh /opt/toigen/toigen.sh

clear

echo "COMPLETE! TOIGEN-LIB HAS BEEN INSTALLED!" | pv -qL 15

sleep 0.5

xdg-open /opt/toigen/.

clear
