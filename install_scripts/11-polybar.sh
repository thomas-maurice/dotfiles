#!/bin/bash

if [ -n "${INSTALL_I3}" ]; then

sudo apt-get install -y \
    build-essential \
    git cmake cmake-data pkg-config \
    python3-sphinx python3-packaging \
    libcairo2-dev libxcb1-dev libxcb-util0-dev \
    libxcb-randr0-dev libxcb-composite0-dev \
    python3-xcbgen xcb-proto \
    libxcb-image0-dev libxcb-ewmh-dev libxcb-icccm4-dev

sudo apt-get install -y \
    libxcb-xkb-dev libxcb-xrm-dev libxcb-cursor-dev \
    libasound2-dev libpulse-dev i3-wm \
    libjsoncpp-dev libmpdclient-dev \
    libcurl4-openssl-dev libnl-genl-3-dev

if ! [ -d ~/.compile/polybar ]; then git clone --recursive https://github.com/polybar/polybar ~/.compile/polybar; fi
(cd ~/.compile/polybar && ./build.sh -A --all-features -f -C -g -j 4)

if ! [ -d ~/.config/polybar ]; then mkdir ~/.config/polybar; cp /usr/local/share/doc/polybar/config ~/.config/polybar; fi

fi;
