#!/usr/bin/bash

r=$(echo -e "Home\nOfficce\nPortátil\nManual" | dmenu -i -p "Donde estoy?")

case "$r" in

	Home) ~/.screenlayout/casanew.sh;;
	Officce) ~/.screenlayout/office.display ;;
  Portátil) ~/.screenlayout/laptop.display ;;

	Manual) arandr ;;

	*) 
		echo "Opción no válida: $r" 
		exit 1
		;;
esac

pkill feh

feh --bg-fill ~/.config/i3/background.png
