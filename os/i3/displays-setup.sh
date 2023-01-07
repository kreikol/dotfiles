#!/bin/bash
#

if [[ $(/home/mruiz/.dotfiles/scripts/utils/athome) ]]; then
	echo 'Estoy en casa' 	
	/home/mruiz/.screenlayout/home.display
else
	echo 'Estoy en la oficina' 
	/home/mruiz/.screenlayout/office.display
fi

pkill feh

feh --bg-fill ~/.config/i3/background.png
