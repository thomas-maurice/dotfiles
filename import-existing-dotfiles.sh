#!/bin/bash

set -euo pipefail

echo reimporting compton.conf
cp ~/.config/compton.conf compton.conf

echo reimporting polybar config
cp -r ~/.config/polybar .

echo reimporting i3 config
cp -r ~/.config/i3 .

echo reimporting Xresources config
cp -r ~/.Xresources Xresources

echo reimporting tmux config
cp -r ~/.tmux.conf tmux.conf

echo reimporting session-start config
cp -r ~/.session-start.sh session-start.sh

echo reimporting conky config
cp -r ~/.config/conky .

echo reimporting bashrc config
cp -r ~/.bashrc bashrc

echo reimporting bashrc.d config
cp -r ~/bashrc.d .

echo reimporting screenlayout config
cp ~/.screenlayout/* screenlayout
