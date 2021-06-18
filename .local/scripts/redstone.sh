#!/bin/sh
sudo systemctl stop NetworkManager
sudo wpa_supplicant -Dnl80211 -iwlp2s0 -cwpa_testconfig.conf -B
sudo dhcpcd wlp2s0
