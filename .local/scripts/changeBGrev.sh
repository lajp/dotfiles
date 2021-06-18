#!/bin/sh
#ls ~/.cache/bg || touch ~/.cache/bg && echo "0" > ~/.cache/bg
current=$(cat ~/.cache/bg)
echo "$current"
num2=1
[ $current -eq "1" ] && new=6 || new=$(perl -e "print $current-$num2")
echo "$new"
hsetroot -cover "/home/lajp/Pictures/$new.jpg"
echo $new > ~/.cache/bg
