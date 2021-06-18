#!/bin/sh

xrandr --output LVDS1 --mode 1280x800 --primary --output HDMI2 --off --output VGA1 --off
/usr/bin/xcalib -d :0 ~/.color/icc/x200.icc
