#!/bin/bash
# This script cleans symlinks from the home directory
###

### Variables

dir=~/dotfiles         # dotfiles directory
# list of files/folders to symlink
source ./files.cfg

# change to the dotfiles directory
cd $dir

# clean symlinks 
echo "cleaning paths, answer [Y]es [n]o or [a]bort for each file"
for file in $files; do
    read -p "~/$file: " answer
    case $answer in
        [Nn]* ) continue;;
        [Aa]* ) break;;
        * ) rm ~/$file; echo -e "cleaned path ~/$file";;
    esac
done
for folder in $folders; do
    read -p "~/$folder: " answer
    case $answer in
        [Nn]* ) continue;;
        [Aa]* ) break;;
        * ) rm -r ~/$folder; echo -e "cleaned path ~/$folder";;
    esac
done
