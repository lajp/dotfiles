export TERMINAL=/usr/bin/alacritty
[[ -z $DISPLAY && $XDG_VTNR -eq 1 && -z ${TMUX} ]] && startx
