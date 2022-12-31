# This is a useful file to have the same aliases/functions in bash and zsh

source "$DOTFILES_PATH/shell/aliases.sh"
source "$DOTFILES_PATH/shell/exports.sh"
source "$DOTFILES_PATH/shell/functions.sh"

FICHERO=~/.restore.mir
if [ -f "$FICHERO" ]
then
           echo "Restauracion en proceso, vamos a importar los paquetes"
           bash <(curl -s https://raw.githubusercontent.com/kreikol/prueba/HEAD/importer.sh)
              rm -rf $FICHERO
      else
                 echo "No hay ninguna restauracion en proceso"
fi
