# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew doctor
brew install coreutils
brew install findutils


brew tap homebrew/dupes
brew tap homebrew/php

$PATH=$(brew --prefix coreutils)/libexec/gnubin:$PATH
# Install Packages
binaries = (
  git
  vim
  tmux
  htop-osx
  python
  node
  wget
  ssh-copy-id
  nginx
  mariadb
  sqlite
  python3
  brew install --without-apache --with-fpm --with-mysql php56
  phpmyadmin
)

echo "installing binaries..."
brew install ${binaries[@]}

brew cleanup


# Install Cask & Dependencies
brew install caskroom/cask/brew-cask

apps = (
  atom
  google-chrome
  google-drive
  firefox
  virtualbox
  vagrant
  slack
  vlc
  league-of-legends
  minecraft
  dropbox
  codekit
  lastpass
  screenflow
  microsoft-office365
  adobe-photoshop-cc
  skype
  filezilla
)

echo "installing apps..."
brew cask install --appdir="/Applications" ${apps[@]}



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
