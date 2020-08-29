#!/usr/bin/env bash

herbstclient --idle "tag_*" 2>/dev/null | {

    while true; do

    # python $CONFIG/herbstluftwm/polybarws.py

    # wait for next event from herbstclient --idle
    read -r || break
done
} 2>/dev/null
