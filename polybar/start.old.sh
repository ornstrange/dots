#!/bin/bash

current="$(autorandr --current)"

killall -q polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

polybar -q main &
if [ "$current" = "withmon2" ] || [ "$current" = "withmon2-normal" ]
then
    echo $current
    polybar -q main3 &
else
    echo $current
    polybar -q main2 &
fi
