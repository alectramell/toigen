#!/bin/bash

clear

gvfs-set-attribute -t string /home/$(whoami)/Desktop/*.toi metadata::custom-icon file:///opt/toigen/icons/toi.png

clear

chmod +x /home/$(whoami)/Desktop/*.toi

clear

echo "DONE! TOIGEN FILES HAVE BEEN RENDERED ON ~/Desktop" 
