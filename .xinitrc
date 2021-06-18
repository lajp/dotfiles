## Autostart section
slstatus &
setxkbmap -layout fi,us
#setxkbmap -layout fi
setxkbmap -option caps:swapescape
setxkbmap -option 'grp:alt_shift_toggle'
xset r rate 250 20 &
/usr/bin/xcalib -d :0 ~/.color/icc/x200.icc
compton --config ~/.config/compton/compton.conf &
~/.local/scripts/xsidle.sh slock &
hsetroot -cover ~/Pictures/tuplatupla.jpg # Set tupla background pic

exec dwm
