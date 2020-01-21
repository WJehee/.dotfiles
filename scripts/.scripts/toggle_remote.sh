#!/bin/sh
pid=$(pgrep urserver)

if [ -n "$pid" ]
then
    /opt/urserver/urserver-stop
else
    /opt/urserver/urserver-start
fi

