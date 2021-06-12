#!/bin/bash

sudo apt-get install -y openssh-client
if ! [ -d ~/.ssh ]; then mkdir ~/.ssh; chmod 700 ~/.ssh; fi;
cp sshconfig ~/.ssh/config
chmod 600 ~/.ssh/config