#!/bin/sh

ping -q -c 1 8.8.8.8 || exit 1 # no internet connection
dunstify "backup in progress..."
RET=/home/lajp/.local/scripts/backup.sh
$RET && dunstify "backup succesful" && exit
dunstify "backup failed"
exit 1
