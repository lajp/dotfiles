## Autostart section
slstatus &
setxkbmap -layout fi,us
#setxkbmap -layout fi
#setxkbmap -option caps:swapescape
#setxkbmap -option 'grp:alt_shift_toggle'
xset r rate 250 20 &
#/usr/bin/xcalib -d :0 ~/.color/icc/x200.icc
compton --config ~/.config/compton/compton.conf --log-file ~/.cache/compton/compton.log &
~/.local/scripts/xsidle.sh slock &
pulseaudio --start
hsetroot -cover ~/Pictures/tuplatupla.jpg # Set tupla background pic
xrdb -load ~/.Xresources
export _JAVA_AWT_WM_NONREPARENTING=1

exec dwm
