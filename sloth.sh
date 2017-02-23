#!/bin/bash

# Updates packages before installing anything
sudo apt-get update
# Positions the user in the proper directory for relative file paths
cd ~/sloth

# Installs and configures vim
sudo bash ./scripts/vim.sh

# Installs and configures NodeJS v6.x
sudo bash ./scripts/node.sh

# Installs and configures tmux
sudo bash ./scripts/tmux.sh

tmux 
