#!/bin/sh
ip link set enp0s20u3 up
dhcpcd enp0s20u3
