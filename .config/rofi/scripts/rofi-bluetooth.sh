#!/bin/bash

bt_state=$(bluetoothctl show | grep "Powered:" | awk '{print $2}')
if [ "$bt_state" = "no" ]; then
	bluetoothctl power on
	sleep 1
fi

devices=$(bluetoothctl devices | awk '{mac=$2; $1=""; $2=""; print $0 " -> " mac}' | sed 's/^[ \t]*//')

if [ -z "$devices" ]; then
	exit 1
fi

chosen_line=$(echo "$devices" | rofi -dmenu -i -p "Bluetooth:")

[ -z "$chosen_line" ] && exit 0

mac=$(echo "$chosen_line" | awk -F' -> ' '{print $2}' | xargs)

if [ -z "$mac" ]; then
	exit 1
fi

is_connected=$(bluetoothctl info "$mac" | grep "Connected:" | awk '{print $2}')

if [ "$is_connected" = "yes" ]; then
	bluetoothctl disconnect "$mac"
else
	bluetoothctl connect "$mac"
fi
