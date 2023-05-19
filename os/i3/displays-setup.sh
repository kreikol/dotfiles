#!/bin/bash
	

# reseteamos los monitores, para solucionar el problema de que a veces me corta parte de la imagen
xrandr -s 0
sleep 1

if /home/mruiz/.dotfiles/scripts/utils/athome; then
	myip=$(ip route get 1.2.3.4 | awk '{print $7}')
	echo 'Estoy en casa' 	
	# /home/mruiz/.screenlayout/home.display
	/home/mruiz/.screenlayout/casanew.sh

else
	myip=$(ip route get 1.2.3.4 | awk '{print $7}')
	echo 'Estoy en la oficina' 
	/home/mruiz/.screenlayout/office.display
fi

pkill feh

feh --bg-fill ~/.config/i3/background.png
