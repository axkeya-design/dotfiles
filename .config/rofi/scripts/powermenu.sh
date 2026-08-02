#!/bin/bash

lock="󰌾  Lock"
clear_hist="󰃢  Clear Rofi History"
reboot="󰜉  Reboot"
shutdown="󰐥  PowerOff"

chosen=$(echo -e "$clear_hist\n$lock\n$reboot\n$shutdown" | rofi -dmenu -i -p "System:" -theme ~/.config/rofi/themes/cool_neon.rasi)

if [ -n "$chosen" ]; then
    case "$chosen" in
        "$lock")
            hyprlock 
            ;;
        "$clear_hist")
            bash "$HOME/.config/rofi/scripts/clear_history.sh"
            ;;
        "$reboot")
            systemctl reboot
            ;;
        "$shutdown")
            systemctl poweroff
            ;;
    esac
fi
