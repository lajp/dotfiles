#!/bin/sh

ping -q -c 1 8.8.8.8 || exit 1 # no internet connection
dunstify "backup in progress..."
/home/lajp/.local/scripts/backup.sh
$? && notify-send "backup succesful" && exit
DISPLAY=:1 notify-send "backup failed"
exit 1
