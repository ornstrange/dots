#!/bin/env sh

sudo pacman -Qid |
    grep -E '^Name|^Installed Size' |
    cut -b 19- |
    awk '!(NR % 2){ print p, $0 }{ p = $0 }' - |
    sort -h |
    tail -n 20

