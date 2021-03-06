#!/bin/bash

# Setup symlinks (non-forced)
ln -ns ~/versioned/dotfiles/.aliases ~/.aliases
ln -ns ~/versioned/dotfiles/.functions ~/.functions
ln -ns ~/versioned/dotfiles/.gitconfig ~/.gitconfig
ln -ns ~/versioned/dotfiles/.zshrc ~/.zshrc

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install packages and applications from Brewfile
brew bundle --file ~/versioned/dotfiles/Brewfile

# Install oh-my-zsh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install fonts for oh-my-zsh
./install_powerline_fonts.sh
