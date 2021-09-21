#!/bin/sh


if [ "$1" = "" ]; then
	tpacpi-bat -s ST 1 50
	tpacpi-bat -s SP 1 80
	exit;
fi

case "$1" in
	on)
		tpacpi-bat -s ST 1 50
		tpacpi-bat -s SP 1 80
		;;
	off)
		tpacpi-bat -s ST 1 0
		tpacpi-bat -s SP 1 0
		;;
	get)
		echo "Start: $(tpacpi-bat -g ST 1)"
		echo "Stop: $(tpacpi-bat -g SP 1)"
		;;
	*)
	echo "Invalid argument: $1"
	;;
esac

