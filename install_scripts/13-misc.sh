#!/bin/bash

pip3 install pew

# For arduino stuff
sudo usermod -a -G dialout "${CONFIGURED_USER}"

# Adds the directive to the ssh config to remember the keys
grep -qxF 'AddKeysToAgent yes' ~/.ssh/config || echo 'AddKeysToAgent yes' >> ~/.ssh/config