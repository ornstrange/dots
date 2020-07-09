#/bin/sh

scratchwinid=$(xdotool search --name scratchpad)
scratchpid=$(xdotool getwindowpid "$scratchwinid" 2> /dev/null)

i3args="floating toggle ; resize set 1424px 924px ; move container position center"

[[ -z $scratchpid ]] &&\
    (alacritty -t scratchpad -e vim .scratchpad &\
    sleep .2 ; i3-msg $i3args) ||\
    kill $scratchpid

