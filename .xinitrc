## Autostart section
dwmblocks &
setxkbmap -layout fi
setxkbmap -option caps:escape
setxkbmap -option 'grp:alt_shift_toggle'
xset r rate 250 20 &
xinput disable "Synaptics TM3053-004"
hsetroot -cover ~/Pictures/haskell_bg.jpg
picom -b
dunst &
xrdb -load .Xresources
export _JAVA_AWT_WM_NONREPARENTING=1
blmgr 10%

pipewire &
/usr/bin/pipewire-pulse &
/usr/bin/wireplumber &

#exec dwm
dbus-launch --exit-with-session dwm
