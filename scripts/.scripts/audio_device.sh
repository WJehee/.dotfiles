#!/bin/sh
choice=$(pactl list sinks | grep Name | awk '{$1=""; print $0}' | dmenu -i -fn "Hack-17") || exit 0
pactl set-default-sink $choice
