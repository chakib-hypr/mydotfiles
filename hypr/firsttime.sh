  GNU nano 8.6                                                        ./test.sh                                                                     
if [ -f "$HOME/.config/hypr/deleteme" ]; then
    echo "The file exists, its first time!"
    awww-daemon & disown # if not is already running
    awww img $HOME/.config/hypr/wallpaper.jpeg
    rm $HOME/.config/hypr/deleteme # delete the file to prevent this from running again
else
    echo "the file does not exist, all right here"
fi
