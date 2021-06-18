#!/bin/sh
sudo systemctl stop NetworkManager
sudo ip link set enp0s29f7u1 up
sudo dhcpcd enp0s29f7u1
