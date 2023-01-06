# This is a useful file to have the same aliases/functions in bash and zsh

source "$DOTFILES_PATH/shell/aliases.sh"
source "$DOTFILES_PATH/shell/exports.sh"
source "$DOTFILES_PATH/shell/functions.sh"

FICHERO=~/.restore.mir
if [ -f "$FICHERO" ]
then
           echo "Restauracion en proceso, vamos a importar los paquetes"
					 $DOTFILES_PATH/importer.sh
      else
					 echo "No hay ninguna restauracion en proceso"
fi

GHK=~/.ssh/id_github
if [ -f "$GHK" ]
then
           eval $(ssh-agent -s)
           ssh-add $GHK
           echo "Github key loaded"
fi
