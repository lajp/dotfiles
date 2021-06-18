#!/bin/sh

if [ "$1" = "home" ];
then
	sudo ip l set enp0s25 up
	sudo dhcpcd enp0s25;
	sudo systemctl start smb
else
	sudo phone.sh;
fi;

sudo systemctl start openvpn@privatvpn
while [ 1 ]; do
	ip=$(curl -s -m 2 ifconfig.me)
	ipstartnum=$(echo $ip | sed 's/\..*//g')
	if [ "$ip" = "" ];
	then
		continue;
	fi;
	if [ $ipstartnum -gt "90" ];
	then
		break;
	fi;
done
transmission-daemon
while [ 1 ]; do
	transmission-remote -tall -s && exit;
done
