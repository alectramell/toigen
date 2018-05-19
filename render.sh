#!/bin/bash

clear

cat $(pwd)/$1 | xxd -p > $(pwd)/$1.toi

clear

gvfs-set-attribute -t string $(pwd)/$1.toi metadata::custom-icon file:///opt/toigen/icons/toi.png

clear

chmod +x $(pwd)/$1.toi

clear

sleep 0.5

clear

rm cat $(pwd)/$1

clear

echo "DONE! YOUR TOI FILE HAS BEEN RENDERED!" 
