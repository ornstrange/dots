#!/usr/bin/env bash

killall -q polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

[[ "$1" == "herbstluft" ]] && { polybar -q top-herbst & } || { polybar -q top & }
sleep 0.05
polybar -q bot &

