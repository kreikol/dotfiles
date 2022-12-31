echo "This is a script ran by the restoration process. You can add yours inside '$DOTFILES_PATH/restoration_scripts'"
echo
echo "Self install scripts must have chmod u+x to run"
echo

touch ~/.restore.mir
chmod 600 ~/.ssh/id_github
chmod 664 ~/.ssh/id_github.pub
