#!/bin/bash

#install all linux packages used
sudo pacman -S firefox obsidian alacritty htop npm neofetch neovim
echo " Installing firefox obsidian alacritty htop npm neofetch neovim"
sudo pacman -S python ripgrep spotify-launcher stow
echo " Installing python ripgrep spotify-launcher stow"

sudo pacman -Sg nerd-fonts-ttf-victor-mono-nerd
echo "Nerd Fonts installed correctly"


SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

DOT_FOLDERS="bash,tmux,nvim,git"

for folder in $(echo $DOT_FOLDERS | sed "s/,/ /g"); do
    echo "[+] Folder :: $folder"

    stow -t $HOME -D $folder \
        --ignore=README.md --ignore=LICENSE 
    stow -t $HOME $folder
done


# Reload shell once installed
echo "[+] Reloading shell..."
exec $SHELL -l
