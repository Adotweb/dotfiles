#!/bin/bash

if [[ -n /tmp/polybar-script-output ]]; then
	
	touch /tmp/polybar-script-output

fi

if [[ "$(cat /tmp/polybar-script-output)" == "updating" ]]; then
	echo "󰔪 "
else 
	echo "󱊪 "
fi

