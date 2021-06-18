#!/bin/sh

# This script looks for mountable devices and lets you select which of them to mount using dmenu
# For this script to work properly in your WM you most likely need to make some changes in your sudoers file

umountable_drives=$(lsblk -pl | grep "part *" | grep -vE "/$|/home$" | awk '{print $1, "("$4")", "@", $7}')
selected_drive=$(echo "$umountable_drives" | dmenu -i -p "Select the volume to unmount: " | awk '{print $4}')
sudo umount "$selected_drive"
