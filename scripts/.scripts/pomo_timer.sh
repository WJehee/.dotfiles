#!/bin/sh
inc_time=60             # 60 seconds -> 1 minute = unit of work and break time
display_time=10000      # In MS
work_time=$1
break_time=$2

counter=0

notify-send -u normal -t $display_time "Work for $1 minutes"

while [ $counter != $work_time ]; do 
    sleep $inc_time
    let "counter = $counter + 1"
done

if [ $counter = $work_time ]; then
    notify-send -u normal -t $display_time "Take a $2 minute break"
fi

counter=0

while [ $counter != $break_time ]; do 
    sleep $inc_time 
    let "counter = $counter + 1"
done

if [ $counter = $break_time ]; then
    notify-send -u normal -t $display_time "Break over"
fi

