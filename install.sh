#!/bin/bash

#install all linux packages useed
#
sudo rm ~/.bashrc
echo " Installing default packages"
sudo pacman -S --noconfirm firefox alacritty htop npm neofetch neovim python ripgrep stow ttf-jetbrains-mono-nerd flameshot
echo "Package installation complete"

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

DOT_FOLDERS="bash,tmux,nvim,git,alacritty"

for folder in $(echo $DOT_FOLDERS | sed "s/,/ /g"); do
    echo "[+] Folder :: $folder"

    stow -t $HOME -D $folder \
        --ignore=README.md --ignore=LICENSE 
    stow -t $HOME $folder
done

# Reload shell once installed
echo "[+] Reloading shell..."
exec $SHELL -l
