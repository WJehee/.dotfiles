pid=$(pgrep glava)

if [ -n "$pid" ]
then
    kill $pid
else
    DRI_PRIME=1 glava --desktop &
fi
