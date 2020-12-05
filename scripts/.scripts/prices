#!/bin/sh
DATA=$(curl -s cli.fyi/$1)
PRICE=$(echo $DATA | jq '.data."EUR (€)"')
echo "$1 $PRICE"
