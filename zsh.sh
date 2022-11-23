#!/usr/bin/bash
if [ ! -d "/usr/local/bin/nvim" ]
then
    echo exist
else
    InstallZsh
fi


InstallZsh() {
    sudo apt install zsh
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
}

SetupZsh() {
    stow ~/$HOME/.dotfiles/zsh
}


