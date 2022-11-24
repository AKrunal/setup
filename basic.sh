#!/usr/bin/zsh
basic() {
    sudo apt install git stow ncdu xbacklight
    git clone https://github.com/AKrunal/.dotfiles $HOME/temp
}
basic
