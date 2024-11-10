#!/bin/bash

set -e
feh --bg-scale "$HOME/.wallpaper/1.jpg"

conky
picom -b

while true; do
    xsetroot -name "$( date +"%F %R" )"
    sleep 1m
done &
