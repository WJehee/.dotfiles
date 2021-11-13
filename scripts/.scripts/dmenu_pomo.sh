#!/bin/sh

OPTIONS="25-5\n45-15\n50-10"
CHOICE=$(echo -e $OPTIONS | dmenu -i -m 0 -fn "Hack-17") || exit 0

P1=$(echo $CHOICE | cut -d'-' -f1)
P2=$(echo $CHOICE | cut -d'-' -f2)

pomo_timer.sh $P1 $P2

