#!/bin/sh

# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install git struff
brew install git
brew install bash-completion

# Gradle stuff
mkdir $HOME/bash_completion.d
curl -LA gradle-completion https://edub.me/gradle-completion-bash -o $HOME/bash_completion.d/gradle-completion.bash

# General stuff
brew cask install java
brew install kotlin
brew install ktlint

# Clone dotfiles
git clone https://github.com/charbgr/dotfiles.git
mv -v ./dotfiles/* ~/
mv -v ./dotfiles/.* ~/

source ~/.bash_profile
