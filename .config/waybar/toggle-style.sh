#!/bin/bash

SCRIPT_DIR="$(dirname "$(realpath "$0")")"

CONFIG_LINK="$SCRIPT_DIR/config.jsonc"
STYLE_LINK="$SCRIPT_DIR/style.css"

CURRENT_CONFIG=$(readlink -f "$CONFIG_LINK")

cd "$SCRIPT_DIR" || exit 1

if [[ "$CURRENT_CONFIG" == *"config-minimal.jsonc"* ]]; then
    ln -sf config-rounded.jsonc config.jsonc
    ln -sf style-rounded.css style.css
    echo "Switched to rounded"
else
    ln -sf config-minimal.jsonc config.jsonc
    ln -sf style-minimal.css style.css
    echo "Switched to minimal"
fi

killall waybar && waybar &
