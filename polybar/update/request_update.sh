#!/bin/bash

echo "updating" > /tmp/polybar-script-output

sleep 1

cd ~/Document/projects/dotfiles

if [[ "$(git status | grep modified)" == "" ]]; then
	
	echo "no local updates" > /tmp/polybar-script-output

	git pull

	sleep 1

else

	
	git add .
	git commit -m "$(date) - update"
	
	git push -u origin master

	echo "local updates so we push!" > /tmp/polybar-script-output
	sleep 1
fi


sh ./install.sh



echo "" > /tmp/polybar-script-output
