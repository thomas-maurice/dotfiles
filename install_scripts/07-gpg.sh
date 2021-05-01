#!/bin/bash

sudo apt-get install -y gnupg2
if ! [ -d ~/.gnupg ]; then mkdir ~/.gnupg; fi;
cp gnupg/* ~/.gnupg