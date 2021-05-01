#!/bin/bash

sudo apt-get install -y bash

if ! [ -d ~/.asdf ]; then git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.8.0; fi

cp bashrc ~/.bashrc
cp -r bashrc.d ~/bashrc.d