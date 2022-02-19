#!/bin/sh

killall -q polybar

while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

if [ $(hostname) = rustyLaptop ]
then
    polybar laptop-primary &
elif [ $(hostname) = rustyDesktop ]
then
    polybar desktop-primary &
    polybar desktop-secondary &
fi

