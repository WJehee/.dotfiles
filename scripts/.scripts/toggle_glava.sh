#!/bin/sh
killall glava
OPTIONS="bars\ncircle\ngraph\nradial"
CHOICE=$(echo -e $OPTIONS | rofi -dmenu) || exit 0
glava --desktop -m $CHOICE &

