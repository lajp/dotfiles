#!/bin/sh

sessions="$(tmux ls | cut -d: -f1)"

session="$(echo "$sessions" | dmenu -p "Attach to session?")"
[ "$session" = "" ] || tmux a -t $session
