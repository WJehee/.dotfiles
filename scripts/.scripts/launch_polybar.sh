#!/bin/bash

killall -q polybar

while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

polybar desktop-bar-1 &
polybar desktop-bar-2 &

# echo "launched polybar!"



