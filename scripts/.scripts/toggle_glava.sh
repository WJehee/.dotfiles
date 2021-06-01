if pgrep glava > /dev/null; then
    pkill glava
else
    OPTIONS="bars\ncircle\ngraph\nradial"
    CHOICE=$(echo -e $OPTIONS | dmenu -i -fn "Hack-17")
    glava --desktop -m $CHOICE &
fi

