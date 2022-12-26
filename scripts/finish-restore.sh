echo
echo "Enable LightDM"
echo
sudo -A systemctl enable lightdm.service


echo "Restauración terminada, reiniciamos"
sudo -A reboot
