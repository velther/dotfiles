#!/bin/sh
mkdir .vim/backups
mkdir .vim/swaps
mkdir .vim/undo

echo ". ~/dotfiles/.bashrc" >> ~/.bash_profile
source ~/.bash_profile
