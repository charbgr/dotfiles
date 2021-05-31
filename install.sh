#!/bin/sh

# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install git struff
brew install git
brew install bash-completion

# Install Oh my zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# General stuff
brew cask install java
brew install kotlin
brew install ktlint

# Clone dotfiles
git clone https://github.com/charbgr/dotfiles.git
mv -v ./dotfiles/* ~/
mv -v ./dotfiles/.* ~/

source ~/.bash_profile
