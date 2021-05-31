#!/bin/sh

# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install git struff
brew install git
brew install bash-completion

# Git completion for zsh
mkdir -p ~/.zsh
cd ~/.zsh

# Download the scripts
curl -o git-completion.bash https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
curl -o _git https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.zsh

# General stuff
brew cask install java
brew install kotlin
brew install ktlint

# Clone dotfiles
git clone https://github.com/charbgr/dotfiles.git
mv -v ./dotfiles/* ~/
mv -v ./dotfiles/.* ~/

source ~/.bash_profile
