#!/bin/bash

clear

sudo mkdir /opt/toigen
sudo mkdir /opt/toigen/icons
mkdir /home/$(whoami)/toigen

clear

sudo wget https://raw.githubusercontent.com/alectramell/toigen/master/toi.png -P /opt/toigen/icons/

clear

sudo wget https://raw.githubusercontent.com/alectramell/toigen/master/toigen.png -P /opt/toigen/icons/

clear

sudo wget https://raw.githubusercontent.com/alectramell/toigen/master/toigen.svg -P /opt/toigen/icons/

clear

sudo apt-get install xxd
sudo apt-get install gvfs-set-attribute
sudo apt-get install pv

clear

curl -s https://raw.githubusercontent.com/alectramell/toigen/master/render.sh > /home/$(whoami)/.toigen.sh

clear

curl -s https://raw.githubusercontent.com/alectramell/toigen/master/box.sh > /home/$(whoami)/.toigenbox.sh

clear

curl -s https://raw.githubusercontent.com/alectramell/toigen/master/toigen.desktop > /home/$(whoami)/.toigen.desktop

clear

sudo mv /home/$(whoami)/.toigen.sh /opt/toigen/render.sh

clear

sudo mv /home/$(whoami)/.toigenbox.sh /opt/toigen/box.sh

clear

sudo mv /home/$(whoami)/.toigen.desktop /opt/toigen/toigen.desktop

clear

sudo chmod +x /opt/toigen/toigen.desktop

clear

echo "COMPLETE! TOIGEN-LIB HAS BEEN INSTALLED!" | pv -qL 15

sleep 0.5

xdg-open /opt/toigen/.

clear
