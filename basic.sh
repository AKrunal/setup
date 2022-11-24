#!/usr/bin/zsh
basic() {
    sudo apt install git stow ncdu xbacklight
    cd
    git clone https://github.com/AKrunal/.dotfiles 
    cd ~/.dotfiles/
    ./ubuntu
    ./install
}
basic
