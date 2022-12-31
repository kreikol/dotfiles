#!/bin/bash
echo '>> Actualizamos el repositorio apt' 
sudo apt update -y

echo '>> Actualizmos los paquetes actuales' 
sudo apt upgrade

echo '>'
echo '> Vamos con los dotfiles' 




export DOTFILES_PATH="$HOME/.dotfiles"
echo $DOTFILES_PATH
echo ">"
echo ">"
echo ">"
echo ">"
echo ">"

git clone https://github.com/kreikol/prueba $DOTFILES_PATH

cd $DOTFILES_PATH

echo "> $PWD"
echo ">"
echo ">"
git submodule update --init --recursive 

export DOTLY_INSTALLER=true
export DOTLY_PATH="$DOTFILES_PATH/modules/dotly"


echo ">"
echo ">"
echo ">"
echo $DOTFILES_PATH
echo $DOTLY_PATH
echo $DOTLY_INSTALLER
echo ">"
echo "> Go to install dotly"

$DOTLY_PATH/bin/dot package add docpars
echoo " >> docpars instalado \n\n"
$DOTLY_PATH/bin/dot self install

echo ">"
echo ">"
echo ">"
read -p "Restauración terminada, presione una tecla para reiniciar.."

