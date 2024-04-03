# Dotfiles

My configuration files for bash, vim, tmux and so forth.


## Clone the Repo
```git
git clone https://github.com/ahhstun/dotfiles
```

## Initiate Dotfiles Locally
Use the command below to support the install script and hide the dotfiles.

```bash
rm .bashrc && mv dotfiles .dotfiles && cd .dotfiles && source install.sh
```

## Nvim Step
Use nvim to download the plugins and get it up to speed.  

nvim . 

May need to run it again for Mason to work properly. 
