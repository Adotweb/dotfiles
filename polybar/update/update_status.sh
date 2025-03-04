#!/bin/bash

if [[ -n /tmp/polybar-script-output ]]; then
	
	touch /tmp/polybar-script-output

fi

echo "$(cat /tmp/polybar-script-output)"
