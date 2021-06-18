#!/bin/sh
xrandr --output LVDS1 --off --output VGA1 --mode 1920x1080 --primary
setxkbmap -layout fi,us
setxkbmap -option 'caps:swapescape'
setxkbmap -option 'grp:alt_shift_toggle'
