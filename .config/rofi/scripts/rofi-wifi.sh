#!/bin/bash

if [ "$(nmcli radio wifi)" = "disabled" ]; then
    nmcli radio wifi on
    sleep 0.5
fi

ssids=$(nmcli -t -f SSID device wifi list --rescan no | grep -v '^$' | sort -u)

menu_options="[ Disconnect ]\n$ssids"

chosen_option=$(echo -e "$menu_options" | rofi -dmenu -i -p "Wi-Fi")

[ $? -ne 0 ] || [ -z "$chosen_option" ] && exit 0

if [ "$chosen_option" = "[ Disconnect ]" ]; then
    notify-send "Wi-Fi" "Disconnecting..." 2>/dev/null
    active_dev=$(nmcli -t -f DEVICE,TYPE,STATE dev | grep ':wifi:connected' | cut -d: -f1)
    if [ -n "$active_dev" ]; then
        nmcli device disconnect "$active_dev"
    fi
    exit 0
fi

chosen_ssid="$chosen_option"

if nmcli -g NAME connection show | grep -Fxq "$chosen_ssid"; then
    notify-send "Wi-Fi" "Connecting to $chosen_ssid..." 2>/dev/null
    if ! nmcli connection up id "$chosen_ssid"; then
        rofi -e "Failed to connect"
    fi
else
    password=$(rofi -dmenu -p "Password for $chosen_ssid:" -password)
    
    [ $? -ne 0 ] && exit 0

    notify-send "Wi-Fi" "Connecting to $chosen_ssid..." 2>/dev/null
    
    if [ -z "$password" ]; then
        if ! nmcli device wifi connect "$chosen_ssid"; then
            rofi -e "Connection failed"
        fi
    else
        if ! nmcli device wifi connect "$chosen_ssid" password "$password"; then
            rofi -e "Connection failed"
        fi
    fi
fi
