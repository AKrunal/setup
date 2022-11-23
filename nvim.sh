#!/usr/bin/bash
sudo apt update
sudo apt upgrade


if [ ! -d "/usr/local/bin/nvim" ]
then
    echo exist
else
    InstallNvim
fi

function InstallNvim{

    sudo apt-get install ninja-build gettext libtool libtool-bin autoconf automake cmake g++ pkg-config unzip curl doxygen
    mkdir -p ~/.installation/nvim
    git clone https://github.com/neovim/neovim.git ~/.installation/nvim/neovim
    cd ~/.installation/nvim/neovim 
    make 
    sudo make install

}

function NvimNode{

    sudo apt install nodejs
    sudo apt install npm
    sudo npm cache clean -f
    sudo npm install -g n
    sudo n stable

}

function Nvimpython{

    sudo apt intsall python3.11
    sudo apt install python3-pip

}

function NvimPlugin{
    
    git clone --depth 1 https://github.com/wbthomason/packer.nvim\
        ~/.local/share/nvim/site/pack/packer/start/packer.nvim
    nvim -c PackerSync

}

function NvimPkg{
    sudo apt install universal-ctags ripgrep

}

function Servers{
    sudo npm i -g bash-language-server
    sudo npm i -g pyright
}
NvimNode
NvimPlugin
NvimPkg
Nvimpython
