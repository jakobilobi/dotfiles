#!/bin/bash

# Install oh-my-zsh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Setup symlinks
ln -ns ~/versioned/dotfiles/.aliases ~/.aliases
ln -ns ~/versioned/dotfiles/.functions ~/.functions
ln -ns ~/versioned/dotfiles/.gitconfig ~/.gitconfig
ln -nsf ~/versioned/dotfiles/.zshrc ~/.zshrc

# Install fonts for oh-my-zsh
sudo apt-get install fonts-powerline

# Install various packages
sudo apt update
sudo apt upgrade -y
sudo apt install software-properties-common apt-transport-https wget -y
# Enable VS Code installation
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt install code -y

curl -fsSL https://deb.nodesource.com/setup_current.x | sudo -E bash -
sudo apt-get install -y nodejs

sudo apt install curl npm docker-compose -y
sudo apt autoremove -y