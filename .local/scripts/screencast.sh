#!/bin/sh
ps -aux | grep "ffmpeg" | grep -q "Screencap"
    || ffmpeg -hwaccel vaapi -video_size 1920x1080 -framerate 25 -f x11grab -i :0 -f pulse -i hw:1,0 /home/lajp/Screencap/"$(date +%s)".mkv
    || exit

ps -aux | grep -m1 "Screencap" | awk '{print($2)}' | xargs kill
