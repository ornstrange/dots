#/bin/sh

scratchwinid=$(xdotool search --name killme)
scratchpid=$(xdotool getwindowpid "$scratchwinid" 2> /dev/null)

[[ -z $scratchpid ]] &&\
    alacritty -t killme -e python ||\
    kill $scratchpid

