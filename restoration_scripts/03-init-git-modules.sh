export SUDO_ASKPASS=~/.config/i3/dmenupass

echo
echo "Initialized and update git submodules to dotly"
echo

cd "$DOTFILES_PATH"

git submodule init 
git submodule update --remote --recursive
