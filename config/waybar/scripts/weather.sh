#!/bin/bash

WEATHER_PATH=~/.config/waybar/scripts/weather.py

$WEATHER_PATH --lat "$LAT" --lon "$LON" --output-format '{"text": "{{current.icon}} {{current.temperature}}°C", "alt": "{{city}}: {{current.temperature}}°C, {{current.description_long}} -> {{next.temperature}}°C, {{next.description_long}}", "tooltip": "{{city}}: {{current.temperature_min}}°C -> {{current.temperature_max}}°C"}'
