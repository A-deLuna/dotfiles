#!bin/bash

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

mkdir -p ${XDG_CONFIG_HOME:=$HOME/.config}
ln -s ~/.vim $XDG_CONFIG_HOME/nvim
ln -s ~/dotfiles/vimrc $XDG_CONFIG_HOME/nvim/init.vim
ln -s ~/dotfiles/bashrc ~/.bashrc


