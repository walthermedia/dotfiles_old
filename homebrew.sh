#!/usr/bin/env zsh

if test ! $(which brew); then
    echo "Installing homebrew..."
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi
  
brew update
curl -fL -o Brewfile https://raw.githubusercontent.com/walthermedia/MacSetup/main/Brewfile
brew bundle
