#!/bin/bash

WALL_DIR="$HOME/Pictures/4K_Wallpapers"

change_wall() {
    NEXT_WALL=$(find "$WALL_DIR" -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" -o -iname "*.webp" \) | shuf -n 1)
    awww img "$NEXT_WALL" \
        --transition-type left \
        --transition-fps 60 \
        --transition-duration 0.8
}

if [ "$1" = "loop" ]; then
    while true; do
        sleep 300
        change_wall
    done
else
    change_wall
fi
