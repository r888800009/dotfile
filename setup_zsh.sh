#!/bin/bash
DIR=$(pwd)
echo set .zshrc
ln -si $DIR/.zshrc ~/.zshrc

echo install zsh plugin
mkdir -p ~/.antigen
curl -L git.io/antigen > ~/.antigen/antigen.zsh
chmod -R 755 ~/.antigen
if [ -x "$(command -v pacman)" ]; then
#    sudo pacman -S zsh-syntax-highlighting
  echo
elif [ -x "$(command -v apt-get)" ];then
#    sudo apt install zsh-syntax-highlighting
  echo
  sudo apt install autojump
elif [[ "$OSTYPE" == "darwin"* ]]; then
  echo
  brew install coreutils autojump 
  compaudit 
  sudo chown root:staff -R /opt/homebrew/share/zsh/
  sudo chmod 755 -R /opt/homebrew/share/zsh/
fi


