#!/usr/bin/bash
export SUDO_ASKPASS=~/.config/i3/dmenupass

r=$(echo -e "Gestiona\nXátiva\n" | dmenu -i -p "Selecciona VPN:")

case "$r" in

	Gestiona) 
			 /home/mruiz/VPNs/Gestiona/gestiona-vpn.sh 
			 ;;
	Xátiva) 
			/home/mruiz/VPNs/CubosRPA/xativa/xativa-vpn ;;

	*) echo -e "Opción no válida: $r" | dmenu -p "Selecciona VPN" ;;
esac
