#!/bin/bash

# Get the battery status (charging/discharging)
STATUS=$(acpi -b | awk '{print $3}' | sed 's/,//')

# Get the battery percentage
PERCENTAGE=$(acpi -b | awk '{print $4}' | sed 's/,//')

# If the status is charging, display an icon
if [[ "$STATUS" == "Charging" ]]; then
    echo " $PERCENTAGE"
else
    echo "󰁹 $PERCENTAGE"
fi

