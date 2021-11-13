#!/bin/sh

killall -q polybar

while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

if [ $(hostname) = rustyLaptop ]
then
    polybar main-bar &
    echo "Laptop"
elif [ $(hostname) = rustyDesktop ]
then
    polybar desktop &
    polybar desktop-2 &
    echo "Desktop"
fi

