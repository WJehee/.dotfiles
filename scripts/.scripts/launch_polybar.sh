#!/bin/bash

killall -q polybar

while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

if [ $(hostname) = rustyLaptop ]
then
    polybar laptop-bar &
    echo "Laptop"
elif [ $(hostname) = rustyDesktop ]
then
    polybar desktop-bar-1 &
    polybar desktop-bar-2 &
    echo "Desktop"
fi



