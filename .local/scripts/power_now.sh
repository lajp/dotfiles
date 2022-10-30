#!/bin/sh

bat="BAT0"

[ -z "$1" ] || bat="$1"

#current=$(cat /sys/class/power_supply/$bat/power_now)
#voltage=$(cat /sys/class/power_supply/$bat/voltage_now)
power=$(cat /sys/class/power_supply/$bat/power_now)

printf "%.2f\\n" $(echo "$power" | awk '{print $1*10^-6}')
