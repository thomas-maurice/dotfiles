#!/bin/bash

setxkbmap -layout us
setxkbmap -option compose:rctrl

xrdb -merge ~/.Xresources

xset +fp ${HOME}/.fonts
xset fp rehash

cat >> ~/autostart.d/log <<EOF

# New log starting at $(date) #####################################

EOF

if [ -d ~/autostart.d ]; then
    for f in ~/autostart.d/*.sh; do
        source "${f}" >> ~/autostart.d/log
    done;
fi;