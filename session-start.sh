#!/bin/bash

xrdb -merge ~/.Xresources

xset +fp ${HOME}/.fonts
xset fp rehash
