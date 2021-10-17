#!/bin/sh

volume=$(pactl list sinks | grep Volume:  | grep -o -P "[[:digit:]]+%" | sed "1q")
pactl list sinks | sed "1q" | grep -q "Mute: yes" && echo "0%" && exit
echo "$volume"
