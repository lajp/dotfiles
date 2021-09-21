#!/bin/sh

link=$(xclip -o)
tester=$(echo "$link" | grep yle.fi)
[ -z $tester ] || mpv "$(yle-dl --showurl "$link")" || exit
mpv ytdl://"$link"
