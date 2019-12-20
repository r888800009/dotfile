#!/bin/bash
DIR=$($pwd)
platform='unknown'
#setup.sh home dotfile
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

#
#
#
PM_apt=$(which apt)
PM_pacman=$(which pacman)
unamestr=$(uname)

if [[ ! -z $PM_pacman ]]; then
    echo 
elif [[ ! -z $PM_apt ]];then
    #sudo apt update
    echo
fi


source $DIR/setup_vim.sh
source $DIR/setup_zsh.sh

