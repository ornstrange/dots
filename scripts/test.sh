#/bin/sh

s=$(xdotool search -name gotop)
[[ ! -z $s ]] && echo "not found" || echo "found"
