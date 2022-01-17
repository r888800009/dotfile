#!/bin/bash
DIR=$(pwd)
echo set .vimrc
ln -si $DIR/.vimrc ~/.vimrc

echo install vim plugin
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

mkdir mkdir -p ~/.config/nvim
ln -si $DIR/.vimrc ~/.config/nvim/init.vim

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
