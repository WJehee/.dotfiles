#!/bin/sh
choice=$(pactl list sinks | grep Name | awk '{$1=""; print $0}' | rofi -dmenu) || exit 0
pactl set-default-sink $choice
