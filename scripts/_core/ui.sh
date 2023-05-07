#!/usr/bin/env zsh

function kreikol::utils::inGUI () {

set +u # para que no de error si la variable no esta seteada
if [ -z $DISPLAY ]; then
	echo 'no hay desktop'
	return 1;
else
	echo 'Estamos en entorno grafico con monitor'
	return 0;
fi
}

function kreikol::utils::selector () {
	opts=($@)
	# echo "n recibidas: ${#opts[@]}"
	# echo "recibidas: ${opts[@]}"
	# echo "0: ${opts[0]}"
	unset opts[0]
	# echo "modificads ${opts[@]}"

	if kreikol::utils::inGUI >/dev/null; then
		# echo 'abrimos dmenu'
		selected=$(echo ${opts[@]} | sed s/\ /\\n/g| dmenu -i -p $1)
	else
		# echo 'abrimos fzf'
		selected=$(echo ${opts[@]} | sed s/\ /\\n/g| fzf --prompt $1)
	fi
	echo $selected
}
