#!/bin/sh
ps -aux | grep "ffmpeg" | grep -q "Screencap" ||
    ffmpeg -video_size 1920x1080 -framerate 25 -f x11grab -i :0 /home/lajp/Videos/Screencap/"$(date +%s)".mp4 ||
    exit

ps -aux | grep -m1 "Screencap" | awk '{print($2)}' | xargs kill
