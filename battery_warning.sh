#!/bin/bash

# config 
user=""
warning="100"
sleep="1"

function dependancies () {
    command -v acpi > /dev/null 2>&1 || { 
    echo >&2 "This program requires acpi but it's not installed, please install acpi and try again"; exit 1;
    }
}

dependancies

battery=`acpi -b | grep -P -o '[0-9]+(?=%)'`

id=$(id -u $user)

if [ $battery -lt $warning ]; then
    sudo -u $user DISPLAY=:0 DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/${id}/bus notify-send "Warning: Battery is below ${warning}!" "Battery: ${battery}%"    
fi

sleep $sleep
