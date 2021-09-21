#!/bin/sh
rfkill unblock wlan
killall wpa_supplicant
killall dhcpcd
wpa_supplicant -iwlan0 -c/etc/wpa_supplicant.conf -B
dhcpcd wlan0
