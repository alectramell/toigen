#!/bin/bash

clear

toigen() {

	clear
	bash /opt/toigen/render.sh $1
}

clear

FILENAME=$(zenity --entry --title="TOIGEN v1.0" --text="FILENAME (no-extension)" --width="200")

clear

TEXT=$(zenity --text-info --title="TOIGEN v1.0" --editable --font=pixel --width="600" --height="400")

clear

echo "$TEXT" >> /home/$(whoami)/Desktop/$FILENAME

clear

cat /home/$(whoami)/Desktop/$FILENAME

sleep 0.5

clear

toigen $FILENAME

clear
