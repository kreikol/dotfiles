#!/usr/bin/env bash

source "$DOTFILES_PATH/scripts/_core/ui.sh"

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


function tech::projects::isGit() {
	count=$(grep -i git $TECH_PROJECTS/$1 | wc -l)
	echo $count
	return $count
}

