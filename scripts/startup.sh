#!/bin/sh

exec picom --experimental-backends --config ~/.config/picom.conf -b &
exec unclutter -b --timeout 1 &
exec twmnd &
exec alacritty &
exec alacritty -t "gotop" -e gotop &

