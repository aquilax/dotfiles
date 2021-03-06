#!/bin/bash

POKOY_CONFIG=$HOME/.config/pokoy

# .vimrc
ln -s $HOME/dotfiles/.vimrc $HOME/.vimrc
ln -s $HOME/dotfiles/.tmux.conf $HOME/.tmux.conf
ln -s $HOME/dotfiles/.taskrc $HOME/.taskrc
ln -s $HOME/dotfiles/.screenrc $HOME/.screenrc

#Git setup
git config --global user.name "aquilax"
git config --global user.email "aquilax@gmail.com"
git config --global color.ui true
git config --global push.default current

#Vim setup

# Install Vundle
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Install all Vim plugins
vim +PluginInstall +qall

# Pokoy https://github.com/ttygde/pokoy
if [ ! -d "$POKOY_CONFIG" ]; then
	mkdir -p "$POKOY_CONFIG"
fi
ln -s $HOME/dotfiles/pokoyrc $POKOY_CONFIG/pokoyrc
