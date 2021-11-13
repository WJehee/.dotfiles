#!/bin/sh
if pgrep glava > /dev/null; then
    pkill glava
else
    OPTIONS="bars\ncircle\ngraph\nradial"
    CHOICE=$(echo -e $OPTIONS | dmenu -i -m 0 -fn "Hack-17") || exit 0
    glava --desktop -m $CHOICE &
fi

