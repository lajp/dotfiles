#!/bin/sh
echo "$1" | grep -q "youtube" && mpv "ytdl://$1" --fs --really-quiet && exit
brave "$1" > /dev/null &
