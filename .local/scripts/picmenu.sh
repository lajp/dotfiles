filename=$(ls /home/lajp/Pictures | dmenu -p "Select file to open:")
[ "$filename" = "" ] && exit
sxiv "/home/lajp/Pictures/$filename"
