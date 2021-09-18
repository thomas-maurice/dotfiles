#!/bin/bash

if ! [ -d ~/gowerline/src ]; then git clone https://github.com/thomas-maurice/gowerline ~/gowerline/src;
else rm -rf ~/gowerline/src; git clone https://github.com/thomas-maurice/gowerline ~/gowerline/src; fi

(cd ~/gowerline/src && make install-full)
pip3 install --upgrade gowerline