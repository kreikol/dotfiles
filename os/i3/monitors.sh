#!/usr/bin/bash

r=$(echo -e "Home\nOfficce\nPortátil\nManual" | dmenu -i -p "Donde estoy?")

case "$r" in

	Home) ~/.screenlayout/home.display;;
	Officce) ~/.screenlayout/office.display ;;
  Portátil) ~/.screenlayout/laptop.display ;;

	Manual) arandr ;;

	*) echo "Opción no válida: $r" ;;
esac
