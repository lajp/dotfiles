#!/bin/sh
killall wpa_supplicant
wpa_supplicant -Dnl80211 -iwlp3s0 -c/etc/wpa_supplicant.conf -B
dhcpcd wlp3s0
