#!/bin/sh

input=$(echo "" | dmenu -p "ytsearch: " | sed s/\ /\+/g)
[ "$input" = "" ] && exit 1
while [ 1 ]; do
	mpv --no-vid "ytdl://ytsearch:$input" && exit
done
