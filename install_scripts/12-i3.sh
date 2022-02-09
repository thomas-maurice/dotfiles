#!/bin/bash

if [ -n "${INSTALL_I3}" ]; then

sudo apt-get install -y \
    i3 \
    rofi \
    conky-all \
    dzen2

if ! [ -d ~/.config/i3 ]; then mkdir ~/.config/i3; fi
cp i3/config ~/.config/i3

# install rofi themes
git clone https://github.com/adi1090x/rofi ~/.rofi-themes
(cd ~/.rofi-theme; echo 1 | ./setup.sh )

fi;
