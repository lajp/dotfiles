#/bin/sh

bat="BAT0"

[ -z "$1" ] || bat="$1"

echo "scale=2; ($(cat /sys/class/power_supply/$bat/energy_now)/$(cat /sys/class/power_supply/$bat/energy_full))*100" | bc | grep -oP "^\d+"
