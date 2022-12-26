#!/usr/bin/bash

r=$(echo -e "Home\nOfficce\nPortátil\nManual" | dmenu -i -p "Donde estoy?")

case "$r" in

	Home) ~/.screenlayout/home.display.sh ;;
	Officce) ~/.screenlayout/office.display.sh ;;
  Portátil) ~/.screenlayout/laptop.display.sh ;;

	Manual) arandr ;;

	*) echo "Opción no válida: $r" ;;
esac
