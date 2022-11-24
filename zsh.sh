#!/usr/bin/zsh
if [ ! -d "/usr/local/bin/nvim" ]
then
    echo exist
else
    echo "still installed"
fi


InstallZsh() {
    sudo apt install zsh
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
}


InstallZsh
