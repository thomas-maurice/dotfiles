#!/bin/bash

sudo apt-get install -y vim-nox

if ! [ -d ~/.vim/bundle/Vundle.vim ]; then git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim; fi
# use .pre so the installer wont complain about the molokai theme not being installed
cp vimrc.pre ~/.vimrc

vim +PluginInstall +qall

cp vimrc ~/.vimrc
