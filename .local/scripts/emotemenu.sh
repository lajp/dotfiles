#!/bin/sh

[ -z "$EMOTEPATH" ] && EMOTEPATH=~/Pictures/Emotes

emotes="$(ls -1 "$EMOTEPATH")"

emote="$(echo "$emotes" | dmenu -p "Emote 2 clipboard?")"
[ "$emote" = "" ] && exit
xclip -selection clipboard -t image/png "$EMOTEPATH/$emote"
