#!/bin/bash
DIR=$(pwd)
echo set .zshrc
ln -si $DIR/.zshrc ~/.zshrc

echo install zsh plugin
mkdir -p ~/.antigen
curl -L git.io/antigen > ~/.antigen/antigen.zsh
chmod -R 755 ~/.antigen
if [[ ! -z $PM_pacman ]]; then
#    sudo pacman -S zsh-syntax-highlighting
  echo
elif [[ ! -z $PM_apt ]];then
#    sudo apt install zsh-syntax-highlighting
  echo
  sudo apt install autojump
fi


