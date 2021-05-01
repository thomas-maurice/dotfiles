#!/bin/bash

if ! [ -d ~/.compile/siji-font ]; then git clone https://github.com/stark/siji ~/.compile/siji-font; fi
(cd ~/.compile/siji-font && ./install.sh )

if [ -f /etc/fonts/conf.d/70-no-bitmaps.conf ]; then sudo rm /etc/fonts/conf.d/70-no-bitmaps.conf; fi

sudo fc-cache -f -v