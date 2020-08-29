#!/usr/bin/env bash

killall picom ; exec picom --experimental-backends --config ~/.config/picom.conf -b
killall unclutter ; exec unclutter -b --timeout 1
killall twmnd ; exec twmnd &
pgrep alacritty &> /dev/null || exec alacritty &
[[ "$1" == "i3" ]] && exec alacritty -t "gotop" -e gotop &

