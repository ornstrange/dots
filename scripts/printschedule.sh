#!/bin/env sh

kill -9 $(pgrep -f killme) &> /dev/null || (
    alacritty -t killme -d 84 25 --position 470 290\
        -e tail -n 100 -f $HOME/school/tafla &
        ( sleep 0.2 ; herbstclient set_attr clients.focus.floating true )
)
