#!/bin/sh

# Requires Os X Command Line Tools to be installed.
# Run `xcode-select --install` to do so


# Install Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew doctor

# Install Packages

brew install git
brew install vim
brew install tmux
brew install htop-osx
brew install python
brew install node
brew install wget
brew install ssh-copy-id

# Install Cask & Dependencies
brew install caskroom/cask/brew-cask

brew cask install sublime-text
brew cask install atom
brew cask install google-chrome
brew cask install google-drive
brew cask install firefox
brew cask install virtualbox
brew cask install vagrant
brew cask install slack
brew cask install vlc
brew cask install league-of-legends
brew cask install minecraft
brew cask install screaming-frog-seo-spider
brew cask install filezilla
brew cask install dropbox
brew cask install codekit
brew cask install lastpass

# ZSH goodies
git clone https://github.com/robbyrussell/oh-my-zsh ~/oh-my-zsh
chsh -s /bin/zsh

# Install Powerline Source Code Pro
git clone https://github.com/powerline/fonts.git ~/
cd ~/fonts
./install.sh


# Install my Dotfiles
git clone https://github.com/protechig/dotfiles.git ~/dotfiles
cd ~/dotfiles
./bootstrap.sh
