#!/bin/bash

sudo apt-get install -y fonts-powerline powerline powerline-gitstatus tmux bash

if ! [ -d ~/.compile ]; then mkdir ~/.compile; fi;
if ! [ -d ~/.compile/powerline-fonts ]; then git clone https://github.com/powerline/fonts ~/.compile/powerline-fonts; fi 
(cd ~/.compile/powerline-fonts && ./install.sh )

cp -rv powerline ~/.config/powerline