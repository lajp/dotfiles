#!/bin/sh

project="$(ssh -q hima -t tmux ls | cut -d: -f1 | fzf)"
[ "$project" = "" ] && exit
ssh hima -t tmux -u a -t $project
