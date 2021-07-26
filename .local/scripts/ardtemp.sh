#!/bin/sh

socat - "/dev/ttyACM$1,echo=1,raw,b115200" | tee /tmp/temp.txt
