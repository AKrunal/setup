#!/usr/bin/zsh
sudo apt update
sudo apt upgrade


if [ ! -d "/usr/local/bin/nvim" ]
then
    echo exist
else
    InstallNvim
fi

InstallNvim() {

    curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
    chmod u+x nvim.appimage
    ./nvim.appimage --appimage-extract
    sudo mv squashfs-root /
    sudo ln -s /squashfs-root/AppRun /usr/bin/nvim
}

NvimNode() {

    sudo apt install nodejs
    sudo apt install npm
    sudo npm cache clean -f
    sudo npm install -g n
    sudo n stable

}

Nvimpython() {

    sudo apt intsall python3.11
    sudo apt install python3-pip

}

NvimPlugin() {

    git clone --depth 1 https://github.com/wbthomason/packer.nvim\
        ~/.local/share/nvim/site/pack/packer/start/packer.nvim
    nvim -c PackerSync

}

NvimPkg() {
    sudo apt install universal-ctags ripgrep

}


InstallNvim
NvimNode
NvimPkg
Nvimpython
NvimPlugin
