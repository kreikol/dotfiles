#!/bin/bash

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
echo $DOTFILES_PATH
echo $DOTLY_PATH
echo $DOTLY_INSTALLER
echo ">"
echo "> Go to install dotly"

$DOTLY_PATH/bin/dot self install

echo ">"
echo ">"
echo ">"
echo "> Go to import package"
$DOTLY_PATH/bin/dot package import

echo "Ejecutamos los post-import"
sudo systemctl enable lightd.service

echo "Restauración terminada, presione una tecla para reiniciar.."

if whiptail --yesno "Is this a good question" 20 60 ;then
	sudo reboot
else
	echo "Todo listo para trabajar!! :) " 
fi
