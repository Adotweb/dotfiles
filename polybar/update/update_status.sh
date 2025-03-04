#!/bin/bash


if [[ "$(cat /tmp/polybar-script-output)" == "updating" ]]; then
	echo "󰔪 "
else 
	echo "󱊪 "
fi

