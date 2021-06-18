#!/bin/sh

# This script looks for mountable devices and lets you select which of them to mount using dmenu
# For this script to work properly in your WM you most likely need to make some changes in your sudoers file

mountable_drives=$(lsblk -pl | grep "part $" | awk '{print $1, "("$4")"}')
drive_to_mount=$(echo "$mountable_drives" | dmenu -i -p "Which drive to mount: " | awk '{print $1}')
[ -z "$drive_to_mount" ] && exit 1
sudo mount "$drive_to_mount" 2>/dev/null && exit # If drive configured in /etc/fstab mount according to that
mountpoints=$(find /mnt -type d -empty)
mountpoint_to_mount=$(echo "$mountpoints" | dmenu -i -p "Select mountpoint: ")
ls "$mountpoint_to_mount" 2>/dev/null || sudo mkdir -p "$mountpoint_to_mount" || exit 1
[ -z "$(ls "$mountpoint_to_mount")" ] && sudo mount "$drive_to_mount" "$mountpoint_to_mount" && exit
exit 1
