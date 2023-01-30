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

function tech::projects::isGit() {
	count=$(grep -i git $TECH_PROJECTS/$1 | wc -l)
	echo $count
	return $count
}

function tech::projects::showInfo() {
	# Metadatos del proyecto
	file="$TECH_PROJECTS/$1"
	if [ ! -f $file ] ; then
		echo "No ha informacion del tech-project"
		exit 1
	fi

	name=$(head -n 1 $file)
	redmine_id=$(grep -i 'redmine' $file | awk -F ':' '{print $2}')
	redmine="$TECH_REDMINE/projects/$1/issues"


	echo ":: Tech Project info :: $name"
	echo $file
	echo $redmine

	if [[ $(tech::projects::isGit $1) == 1 ]] ; then
		repo=$TECH_GIT_WEB/$1.git
		echo GIT!
	else 
		echo HG
		repo=$TECH_HG_WEB/$1
	fi 

}

