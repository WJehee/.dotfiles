pid=$(pgrep glava)

if [ -n "$pid" ]
then
    kill $pid
else
    glava --desktop &
fi
