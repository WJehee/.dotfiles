#!/bin/sh
pid=$(pgrep urserver)

if [ -n "$pid" ]
then
    kill $pid
    notify-send "stopped unified remote server"
else
    /opt/urserver/urserver --daemon
    notify-send "started unified remote server"
fi

