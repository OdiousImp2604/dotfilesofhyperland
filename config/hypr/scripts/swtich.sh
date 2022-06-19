#!/bin/bash
win=$(hyprctl clients | grep -E 'class' | awk -v FS="class: " '{if ($2) print $2}' | wofi --style=$HOME/.config/wofi/style.widgets.css --conf=$HOME/.config/wofi/config.screenshot | awk '{print tolower($1)}')

hyprctl dispatch focuswindowbyclass $win
