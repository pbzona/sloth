#!/bin/bash

# Updates packages before installing anything
sudo apt-get update
# Positions the user in the proper directory for relative file paths
cd ~/sloth

# Adds MOTD - totally useless but I like it
sudo bash ./scripts/motd.sh

# Installs and configures vim
sudo bash ./scripts/vim.sh

# Installs and configures Node 8 (LTS)
sudo bash ./scripts/node.sh

# Installs and configures tmux
sudo bash ./scripts/tmux.sh

tmux
