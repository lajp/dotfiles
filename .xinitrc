## Autostart section
dwmblocks &
setxkbmap -layout fi
setxkbmap -option caps:escape
setxkbmap -option 'grp:alt_shift_toggle'
xset r rate 250 20 &
#/usr/bin/xcalib -d :0 ~/.color/icc/x200.icc
hsetroot -root -cover ~/Pictures/haskell+tupla_bg.jpg
pulseaudio --start
compton -b
xrdb -load .Xresources
export _JAVA_AWT_WM_NONREPARENTING=1
export __NV_RENDER_OFFLOAD=1
xrandr --output DVI-I-1 --mode 1920x1080 --rate 144.00 --primary --output DP-0 --mode 1920x1080 --rate 75.00 --right-of DVI-I-1

dbus-launch --exit-with-session dwm
