#!/bin/bash

WALLPAPER_DIR="$HOME/Pictures/4K_Wallpapers"
CACHE_FILE="/tmp/rofi_wallpaper_list"

if [ ! -d "$WALLPAPER_DIR" ]; then
    notify-send "Error" "Wallpaper directory not found: $WALLPAPER_DIR"
    exit 1
fi

RANDOM_PREVIEW=$(find "$WALLPAPER_DIR" -maxdepth 1 -type f \( -iname "*.jpg" -o -iname "*.png" -o -iname "*.jpeg" -o -iname "*.webp" \) | shuf -n 1)

generate_list() {
    echo -e "Random Wallpaper\0icon\x1f${RANDOM_PREVIEW}"
    
    find "$WALLPAPER_DIR" -maxdepth 1 -type f \( -iname "*.jpg" -o -iname "*.png" -o -iname "*.jpeg" -o -iname "*.webp" \) | sort | while read -r path; do
        name=$(basename "$path")
        echo -e "${name}\0icon\x1f${path}"
    done
}

generate_list > "$CACHE_FILE"

chosen=$(cat "$CACHE_FILE" | rofi -dmenu -i -p "Wallpapers:" -show-icons -selected-row 0 -theme ~/.config/rofi/themes/wallpapers.rasi)

apply_wallpaper() {
    local img_path="$1"
    awww img "$img_path" \
        --transition-type left \
        --transition-fps 60 \
        --transition-duration 0.8
}

if [ -n "$chosen" ]; then
    if [[ "$chosen" == "Random Wallpaper" ]]; then
        FULL_PATH="$RANDOM_PREVIEW"
    else
        FULL_PATH="$WALLPAPER_DIR/$chosen"
    fi

    if [ -f "$FULL_PATH" ]; then
        apply_wallpaper "$FULL_PATH"
    fi
fi
