#!/bin/bash
DIR=$(pwd)
echo set .vimrc
ln -si $DIR/.vimrc ~/.vimrc

echo install vim plugin
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
