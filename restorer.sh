#!/bin/bash

export DOTFILES_PATH="$HOME/.dotfiles"
echo $DOTFILES_PATH

git clone https://github.com/kreikol/prueba $DOTFILES_PATH

cd $DOTFILES_PATH

git submodule update --init --recursive 

export DOTLY_PATH="$DOTFILES_PATH/modules/dotly"

$DOTLY_PATH/bin/dot self install

$DOTLY_PATH/bin/dot package import

echo "Ejecutamos los post-import"
sudo systemctl enable lightd.service

echo "Restauración terminada, presione una tecla para reiniciar.."

if whiptail --yesno "Is this a good question" 20 60 ;then
	sudo reboot
else
	echo "Todo listo para trabajar!! :) " 
fi
