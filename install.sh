#!/bin/sh
mkdir -p .vim/backups
mkdir -p .vim/swaps
mkdir -p .vim/undo

echo ". ~/dotfiles/.bashrc" >> ~/.bash_profile
source ~/.bash_profile
