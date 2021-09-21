filename=$(echo "" | dmenu -p "Filename to save to")
[ "$filename" = "" ] && exit
xclip -selection clipboard -o > "/home/lajp/Pictures/$filename.png"
