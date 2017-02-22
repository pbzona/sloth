#!/bin/bash

# Updates packages before installing anything
apt-get update
# Positions the user in the proper directory for relative file paths
cd ~/sloth

# Installs and configures vim
bash ./scripts/vim.sh

# Installs and configures NodeJS v6.x
bash ./scripts/node.sh
