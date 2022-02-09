#!/bin/bash

sudo snap install --classic code

# vscode config
mkdir -p ~/.config/Code/User || true
cp vscode/User/settings.json ~/.config/Code/User
cat vscode-extensions | xargs -L 1 code --install-extension

sudo snap install --stable spotify

sudo snap install --stable yq

