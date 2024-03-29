#!/bin/bash

setxkbmap -layout us
setxkbmap -option compose:rctrl

xrdb -merge ~/.Xresources

cat >> ~/autostart.d/log <<EOF

# New log starting at $(date) #####################################

EOF

if [ -f ~/.ssh/agent.env ] ; then
    . ~/.ssh/agent.env > /dev/null
    if ! kill -0 $SSH_AGENT_PID > /dev/null 2>&1; then
        echo "Stale agent file found. Spawning a new agent. "
        eval $(ssh-agent | tee ~/.ssh/agent.env)
    fi
else
    echo "Starting ssh-agent"
    eval $(ssh-agent | tee ~/.ssh/agent.env)
fi

ln -sf "${SSH_AUTH_SOCK}" "${HOME}/.ssh/ssh-agent.sock"
export SSH_AUTH_SOCK="${HOME}/.ssh/ssh-agent.sock"

if [ -d ~/autostart.d ]; then
    for f in ~/autostart.d/*.sh; do
        source "${f}" >> ~/autostart.d/log
    done;
fi;

if [ -f ~/.screenlayout/layout.sh ]; then bash ~/.screenlayout/layout.sh; fi

(sleep 2 && ~/.config/polybar/launch.sh ) &
(sleep 2 && feh --bg-scale ~/Pictures/wallpaper.jpg ) &
(sleep 3 && compton ) &
(sleep 3 && systemctl start --user gowerline ) &
(sleep 3 && ~/.config/conky/launch.sh ) &
