#!/bin/bash

export DOTFILES_PATH="$HOME/.dotfiles"
echo $DOTFILES_PATH
echo ">"
echo ">"
echo ">"
echo "> Go to import package"
$DOTLY_PATH/bin/dot package import

echo ">"
echo ">"
echo ">"
echo ">"
echo ">"
echo ">"
echo "> Ejecutamos los post-import"
sudo systemctl enable lightdm.service

echo ">"
echo ">"
echo ">"
read -p "Restauración terminada, presione una tecla para reiniciar.."

