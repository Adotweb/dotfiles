#!/bin/bash

# Check if a battery exists
if [ -d /sys/class/power_supply/BAT0 ]; then
    # Get battery status and percentage
    status=$(cat /sys/class/power_supply/BAT0/status)
    capacity=$(cat /sys/class/power_supply/BAT0/capacity)

    # Choose an icon based on status
    if [ "$status" = "Charging" ]; then
        icon=""
    elif [ "$status" = "Discharging" ]; then
        # Select icon based on capacity
        if [ "$capacity" -ge 80 ]; then
            icon=""
        elif [ "$capacity" -ge 60 ]; then
            icon=""
        elif [ "$capacity" -ge 40 ]; then
            icon=""
        elif [ "$capacity" -ge 20 ]; then
            icon=""
        else
            icon=""
        fi
    else
        icon=""  # Full or unknown status
    fi

    echo "$icon $capacity%"
else
    echo ""  # No battery, no output
fi

