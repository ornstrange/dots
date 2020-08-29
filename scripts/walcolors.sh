#!/bin/env sh

colors=(1 2 3 4 5 6 7)
block='▇'
count=4
sep=''

for i in "${colors[@]}"
do
    x=$( xgetres color"$i" )
    echo -n '%{F'
    echo -n $x
    echo -n '}'
    for (( j=0; j<$count; j++ ))
    do
        echo -n "$block"
    done
    echo -n '%{F-}'
    [[ $i != 7 ]] && echo -n "$sep"
done
echo
