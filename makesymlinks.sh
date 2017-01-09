#!/bin/bash
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles

### Variables

dir=~/dotfiles         # dotfiles directory
# list of files/folders to symlink in homedir
source ./files.cfg

# change to the dotfiles directory
cd $dir

# create symlinks
for folder in $folders; do
    ln -s $dir/$folder ~/$folder
    echo "symlink created for $folder"
done
# create hardlinks
for file in $files; do
    ln $dir/$file ~/$file
    echo "symlink created for $file"
done

# vscode
ln ~/dotfiles/.vscode/settings.json $HOME/Library/Application\ Support/Code/User/settings.json
ln ~/dotfiles/.vscode/keybindings.json $HOME/Library/Application\ Support/Code/User/keybindings.json
ln -s ~/dotfiles/.vscode/snippets $HOME/Library/Application\ Support/Code/User
