#!/bin/bash

echo "updating" > /tmp/polybar-script-output



cd ~/Document/projects/dotfiles

#check if updates-if yes upload them
if [[ "$(git status | grep)" == "" ]]; then
	#no local updates this means that we need to pull the latest version

	git pull	
else 
	#updates
	git add .
	git commit -m "update [$(date)]"
	git push -u origin master
fi

# apply the changes by moving the config files to their destination
./install.sh

echo "" > /tmp/polybar-script-output
