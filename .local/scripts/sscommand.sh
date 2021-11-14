#!/bin/sh
sleep 0.1 ; maim -s | tee ~/Pictures/ss.png | xclip -selection clipboard -t image/png
