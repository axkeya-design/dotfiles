#!/usr/bin/env sh

pkexec sh -c "/usr/bin/modprobe -r psmouse && sleep 0.5 && /usr/bin/modprobe psmouse" && notify-send "Input" "Reloaded"
