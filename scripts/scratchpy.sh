#/bin/sh

scratchwinid=$(xdotool search --name scratchpy)
scratchpid=$(xdotool getwindowpid "$scratchwinid" 2> /dev/null)

i3args="floating toggle ; resize set 1424px 924px ; move container position center"

[[ -z $scratchpid ]] &&\
    (alacritty -t scratchpy -e python &\
    sleep .2 ; i3-msg $i3args) ||\
    kill $scratchpid

