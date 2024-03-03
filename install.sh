#!/bin/bash

if [[ -z $(which brew) ]]; then
  echo "Installing Brew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

echo "Installing Git..."
brew install git
echo "Installing Dotfiles"
git clone git@github.com:ayonch/dotfiles.git ~/dotfiles
echo "Installing Tools & Dependencies"
brew bundle
# pip install Pillow
# echo "Linking Config"
# stow */
