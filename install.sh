#!/usr/bin/env bash

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap caskroom/cask
brew tap caskroom/versions

PACKAGES=(
  ecj
  emacs
  fondu
  gcc
  ghostscript
  gifsicle
  git
  gnu-prolog
  hub
  imagemagick
  jpegoptim
  kotlin
  libmagic
  mercurial
  mysql
  node
  optipng
  pandoc
  phantomjs
  postgresql
  profanity
  rbenv
  redis
  stow
  testdisk
  tmux
  utf8proc
  wine
  zsh
)

echo "Installing packages..."
brew install ${PACKAGES[@]}

echo "Cleaning up..."
brew cleanup

echo "Installing cask..."
brew install caskroom/cask/brew-cask

CASKS=(
  hyper
  postgres
  visual-studio-code
  google-chrome-canary
  macdown
  dropbox
  flux
  google-chrome
  google-drive
  skype
  slack
  virtualbox
  vlc
)

echo "Installing fonts..."
brew tap caskroom/fonts
FONTS=(
    font-inconsolidata
    font-roboto
    font-clear-sans
)
brew cask install ${FONTS[@]}

echo "Installing cask apps..."
brew cask install ${CASKS[@]}

echo "Installing fonts..."
brew tap caskroom/fonts
FONTS=(
    font-inconsolidata
    font-roboto
    font-clear-sans
)
brew cask install ${FONTS[@]}