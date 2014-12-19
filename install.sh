#!/bin/bash

# .vimrc
ln -s $HOME/dotfiles/.vimrc $HOME/.vimrc

#Git setup
git config --global user.name "aquilax"
git config --global user.email "aquilax@gmail.com"
git config --global color.ui true

#Vim setup

# Install Vundle
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Install all Vim plugins
vim +PluginInstall +qall
