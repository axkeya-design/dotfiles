#!/bin/bash

THEME_DIR="$HOME/.config/rofi/themes"
CONFIG_FILE="$HOME/.config/rofi/config.rasi"

if [ ! -d "$THEME_DIR" ]; then
    echo "Directory $THEME_DIR not found!"
    exit 1
fi

CHOSEN_THEME=$(ls "$THEME_DIR"/*.rasi 2>/dev/null | xargs -n 1 basename | grep -v '^wallpapers\.rasi$' | sed 's/\.rasi$//' | rofi -dmenu -i -p "Select Theme")

if [ -z "$CHOSEN_THEME" ]; then
    exit 0
fi

SELECTED_PATH="$THEME_DIR/$CHOSEN_THEME.rasi"

if grep -q '@theme' "$CONFIG_FILE"; then
    sed -i "s|@theme .*|@theme \"$SELECTED_PATH\"|" "$CONFIG_FILE"
else
    echo "@theme \"$SELECTED_PATH\"" >> "$CONFIG_FILE"
fi

notify-send "Rofi Theme" "Applied theme: $CHOSEN_THEME"
