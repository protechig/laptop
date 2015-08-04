#!/bin/sh

# Install Command Line Tools

xcode-select --install

# Install Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew doctor

brew install caskroom/cask/brew-cask

brew install zsh
brew install git
brew install vim
brew install tmux
brew install htop-osx
brew install node
brew install python
brew install node
brew install wget
brew isntall ssh-copy-id
brew install reattach-to-user-namespace

brew cask install sublime-text
brew cask install atom
brew cask install google-chrome
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
brew cask install creative cloud
brew cask install microsoft-office
brew cask install lastpass
brew cask install sketch


