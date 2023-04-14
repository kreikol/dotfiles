function cdd() {
	cd "$(ls -d -- */ | fzf)" || echo "Invalid directory"
}

function j() {
	fname=$(declare -f -F _z)

	[ -n "$fname" ] || source "$DOTLY_PATH/modules/z/z.sh"

	_z "$1"
}

function recent_dirs() {
	# This script depends on pushd. It works better with autopush enabled in ZSH
	escaped_home=$(echo $HOME | sed 's/\//\\\//g')
	selected=$(dirs -p | sort -u | fzf)

	cd "$(echo "$selected" | sed "s/\~/$escaped_home/")" || echo "Invalid directory"
}

function meet() {
	id=$1
	dot webs app https://meet.google.com/$id

}

function tech::projects::isGit() {
	count=$(grep -i git $TECH_PROJECTS/$1 | wc -l)
	echo $count
	return $count
}

function tech::projects::showInfo() {
		set -ex
		echo "[$1]" 
		# Metadatos del proyecto
		file="$TECH_PROJECTS/$1"
		if [ ! -f $file ] ; then
			echo "No ha informacion del tech-project"
			exit 1
		fi

		name=$(head -n 1 $file)
		redmine_id=$(grep -i '^redmine' $file | awk -F ':' '{print $2}' | tr -d '[[:space:]]')
		redmine="$TECH_REDMINE/projects/$redmine_id/issues"

		dotnet=$(grep -i '^dotnet' $file | awk -F ':' '{print $2}' | tr -d '[[:space:]]')

		if grep -q isWorkspace $file; then
			isWorkspace=true
			echo "Es un Workspace"
		else
			isWorkspace=false
			echo "NO es un workspace"
		fi

		echo ":: Tech Project info :: $name"
		echo $file
		echo $redmine
		echo $dotnet
		echo $isWorkspace

		if [[ $(tech::projects::isGit $1) == 1 ]] ; then
			namerepo=$(grep -i '^git' $file | awk -F ':' '{print $2}' | tr -d '[[:space:]]')
			repo=$TECH_GIT_WEB/?p=$namerepo.git
			echo GIT!
		else 
			echo HG
			namerepo=$(grep -i '^hg' $file | awk -F ':' '{print $2}' | tr -d '[[:space:]]')
			repo=$TECH_HG_WEB/$namerepo/
		fi 

}

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
