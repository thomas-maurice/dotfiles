#!/bin/bash

sudo apt-get install -y vim-nox

if ! [ -d ~/.vim/bundle/Vundle.vim ]; then git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim; fi
cp vimrc ~/.vimrc

vim +PluginInstall +qall