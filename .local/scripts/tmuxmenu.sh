#!/bin/sh

session="$(tmux ls | cut -d: -f1 | fzf)"
[ "$session" = "" ] || tmux a -t $session
