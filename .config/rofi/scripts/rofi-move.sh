#!/bin/bash

clients=$(hyprctl clients -j | jq -r '.[] | "[\(.workspace.name)] (\(.class)) \(.title) >> \(.address)"')

if [ -z "$clients" ]; then
    notify-send "Hyprland" "No active windows" 2>/dev/null
    exit 0
fi

chosen=$(echo "$clients" | sed 's/ >> .*//' | rofi -dmenu -i -p "Windows")
[ -z "$chosen" ] && exit 0

addr=$(echo "$clients" | grep -F "$chosen" | awk -F '>> ' '{print $2}' | head -n 1)

if [ -n "$addr" ]; then
    hyprctl dispatch "hl.dsp.focus({ window = \"address:$addr\" })"
fi
