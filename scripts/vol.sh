#!/bin/sh

if [ "$1" == "up" ]
then
    if [[ $(pamixer --get-volume) < 96 ]]
    then
        pamixer -i 5
    fi
elif [ "$1" == "down" ]
then
    pamixer -d 5
else
    pamixer -t
fi

