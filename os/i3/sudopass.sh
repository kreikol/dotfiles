#!/usr/bin/bash

export SUDO_ASKPASS=~/.config/i3/dmenupass

r=$(echo -e "Miriam\nOtro\n" | dmenu -i -p "Dime tu nombre ($SUDO_ASKPASS)")

case "$r" in 

	"Miriam" ) 
		sudo -A echo "Hola Miriam! Te voy a pedir la pass" | dmenu -i 
		;;

	"Otro" ) 
		echo "Hola!! saludo sencillo desde dmenu (sin sudo)" | dmenu -i 
		;;

	*)
		echo "Hola nuevo sudoer $r" | dmenu -i
		;;
esac

