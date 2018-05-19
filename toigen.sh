#!/bin/bash

clear

curl -s http://www.apollondatametrics.com/toi.png > /home/$(whoami)/Desktop/toi.png

clear

# gvfs-set-attribute -t string /home/$(whoami)/Desktop/*.toi metadata::custom-icon file:///opt/toigen/icons/toi.png
