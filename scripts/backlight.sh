#!/bin/sh

([[ "$1" == "up" ]] && xbacklight -inc 10 -time 0) || xbacklight -dec 10 -time 0

