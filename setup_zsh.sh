#!/bin/bash
DIR=$(pwd)
echo set .zshrc
ln -si $DIR/.zshrc ~/.zshrc

if ! command -v zsh &> /dev/null
then
  echo install zsh
  if [ -x "$(command -v pacman)" ]; then
  #    sudo pacman -S zsh-syntax-highlighting
    echo not implemented
  elif [ -x "$(command -v apt-get)" ];then
    sudo apt install zsh
    echo
  elif [[ "$OSTYPE" == "darwin"* ]]; then
    echo not implemented
  fi
fi

if ! command -v zsh &> /dev/null
then
  echo zsh not found
  exit 3
fi

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


