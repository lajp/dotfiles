#!/bin/sh
systemctl stop NetworkManager
wpa_supplicant -Dnl80211 -iwls1 -cwpa_phone.conf -B
dhcpcd wls1
