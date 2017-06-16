#!/bin/sh

# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install git struff
brew install git
brew install bash-completion

# General stuff
brew install kotlin

# Clone dotfiles
git clone https://github.com/charbgr/dotfiles.git
mv -v ./dotfiles/* ~/
mv -v ./dotfiles/.* ~/

source ~/.bash_profile
