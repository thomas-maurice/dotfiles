#!/bin/bash

sudo snap install --classic code

# vscode config
mkdir -p ~/.config/Code/User || true
cp vscode/User/settings.json ~/.config/Code/User

sudo snap install --stable spotify

sudo snap install --stable yq

