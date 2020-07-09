#!/bin/sh

perct=0
statust=""
for bat in $(acpi | grep -v rate | cut -d " " -f 2 | cut -b 1)
do
    _status=$( acpi | grep "Battery $bat" | cut -d , -f 1 | cut -d : -f 2 | awk '{$1=$1};1' )
    _perc=$( acpi | grep "Battery $bat" | cut -d , -f 2 | awk '{$1=$1};1' )

    if [ ${_perc:1:1} == "%" ]
    then
        _perci=${_perc:0:1}
    elif [ ${#_perc} == 4 ]
    then
        _perci=100
    else
        _perci=${_perc:0:2}
    fi

    perct=$(($perct + _perci / 2))

    case $_status in
        "Charging")
            statust="charging"
            ;;
        "Discharging")
            statust="discharging"
            ;;
    esac
done

if [ $perct -lt 11 ] && [ "$statust" != "charging" ]
then
    twmnc -c "charge now! battery $perct%"
fi
