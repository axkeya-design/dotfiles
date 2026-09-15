#!/bin/bash

rm -f "$HOME/.local/share/rofi/rofi_calc_history"
rm -f "$HOME/.cache/rofi-"*
rm -f "$HOME/.local/share/rofi/rofi_history"
rm -f "/tmp/rofi_wallpaper_list"
rm -rf "$HOME/.local/share/rofimoji"

notify-send "Rofi" "History and cache cleared successfully! 󰃢" --icon=dialog-information
