#!/bin/sh

projects="$(ssh -q hima -t tmux ls | cut -d: -f1)"

project="$(echo "$projects" | dmenu -p 'Launch project? ')"
[ "$project" = "" ] && exit
ssh hima -t tmux -u a -t $project
