#!/bin/bash

# Redirect output to log file:
exec &>> linuxsetup.log

# Checking if the operating system is Linux:
if [[ $(uname) != "Linux" ]]; then
  echo "Error: This script is only compatible with Linux systems"
  exit
fi

# Create TRASH directory if it doesn't exist
mkdir -p ~/.TRASH

# Rename .vimrc to .bup_vimrc if it exists
if [[ -f ~/.vimrc ]]; then
  mv ~/.vimrc ~/.bup_vimrc
  echo "Renamed existing .vimrc to .bup_vimrc"
fi

# Overwrite contents of /etc/vimrc file to '.vimrc' file in ~
cp /etc/vimrc ~/.vimrc

# Add statement to .bashrc
echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc

# Remove incorrect lines from .bashrc
sed -i '/source ∼\/.dotfiles\/etc\/bashrc_custom/d' ~/.bashrc

