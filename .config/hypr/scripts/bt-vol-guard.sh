#!/usr/bin/env bash

VOLUME="20%"

set_volume() {
    sleep 1
    pactl list short sinks | cut -f2 | while read -r sink; do
        pactl set-sink-volume "$sink" "$VOLUME"
    done
}

set_volume

pactl subscribe | while read -r line; do
    if echo "$line" | grep -q "Event 'new' on sink #"; then
        set_volume
    fi
done
