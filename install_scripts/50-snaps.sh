#!/bin/bash

sudo snap install --classic code
sudo snap install --stable spotify

# vscode config
mkdir -p ~/.config/Code/User || true
cp vscode/settings.json ~/.config/Code/User