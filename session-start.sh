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
        ssh-add
    fi
else
    echo "Starting ssh-agent"
    eval $(ssh-agent | tee ~/.ssh/agent.env)
    ssh-add
fi

if [ -d ~/autostart.d ]; then
    for f in ~/autostart.d/*.sh; do
        source "${f}" >> ~/autostart.d/log
    done;
fi;