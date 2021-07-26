#!/bin/sh

input=$(echo "" | dmenu -p "ytsearch: " | sed s/\ /\+/g)
[ "$input" = "" ] && exit 1
mpv --no-vid "ytdl://ytsearch:$input"
