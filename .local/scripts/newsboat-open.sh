#!/bin/sh
echo "$1" | grep -q "youtube" && mpv "ytdl://$1" --fs --really-quiet && exit
brave-bin "$1" > /dev/null &
