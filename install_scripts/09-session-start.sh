#!/bin/bash

cp session-start.sh ~/.session-start.sh
if ! [ -d ~/autostart.d ]; then mkdir ~/autostart.d; fi;
touch ~/autostart.d/placeholder.sh