#!/bin/sh
killall wpa_supplicant
wpa_supplicant -Dnl80211 -iwlp3s0 -cphone.conf -B
dhcpcd wlp3s0
