#!/bin/bash

cd ~/sloth
echo "Installing tmux..."
apt-get install -y tmux
echo "Installing tmux plugin manager..."
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
echo "Configuring tmux..."
cp ./config/.tmux.conf ~/.tmux.conf

