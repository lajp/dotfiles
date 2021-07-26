#!/bin/sh
ps -aux | grep "ffmpeg" | grep -q "Screencap" || ffmpeg -hwaccel vaapi -i /dev/video0 -f pulse -i hw:1,0 /home/lajp/Screencap/"$(date +%s)".mkv || exit

ps -aux | grep -m1 "Screencap" | awk '{print($2)}' | xargs kill
