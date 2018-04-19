#!/bin/bash
DIR=$(dirname $0)

etup.sh home dotfile
for file in $(ls -A $DIR -I ".*.swp"|grep -vFxf $DIR/ignore.txt) 
do
#echo $file
ln -si $DIR/$file ~/$file
done


#.config file
for file in $(ls -A $DIR/.config) 
do
echo $file
#ln -s $DIR/
done
bash $DIR/setup_vim.sh
bash $DIR/setup_zsh.sh

