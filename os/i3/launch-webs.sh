# !/bin/bash

ls /home/mruiz/.dotfiles/scripts/webs | dmenu -i -p elige | xargs -I_ dot webs _
