#!/bin/bash

if [ -n "${INSTALL_I3}" ]; then

sudo add-apt-repository -y ppa:regolith-linux/stable
sudo apt-get install -y \
    i3-gaps \
    rofi \
    conky-all \
    dzen2 \
    compton \
    lxappearance \
    arandr \
    fonts-symbola \
    fonts-font-awesome \
    rxvt-unicode

if ! [ -d ~/.config/i3 ]; then mkdir ~/.config/i3; fi
cp i3/config ~/.config/i3
cp compton.conf ~/.config/compton.conf

if ! [ -d ~/.config/conky ]; then mkdir ~/.config/conky; fi
cp -r conky/* ~/.config/conky

# install rofi themes
if ! [ -d ~/.rofi-themes ]; then git clone https://github.com/adi1090x/rofi ~/.rofi-themes; fi
(cd ~/.rofi-themes; echo 1 | ./setup.sh )

cp -v wallpapers/* ~/Pictures

if ! [ -d ~/.screenlayout ]; then mkdir ~/.screenlayout; fi;
cp -r screenlayout/*.sh ~/.screenlayout

fi;
