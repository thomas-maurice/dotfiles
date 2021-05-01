#!/bin/bash

setxkbmap -layout us
setxkbmap -option compose:rctrl

xrdb -merge ~/.Xresources

xset +fp ${HOME}/.fonts
xset fp rehash
