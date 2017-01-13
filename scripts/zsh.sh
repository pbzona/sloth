#!/bin/bash

# Positions user in the install directory just in case
cd ~/sloth

# Gets zsh and sets it to the default shell (also checks for curl because some
# systems are weird like that)
echo "Pick a shell, any shell..."
apt-get install curl zsh
chsh $(which zsh)

# Gets install script for Oh My Zsh and runs it
echo "Oh My Zsh!!!"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Copies the local .zshrc to to user's home dir so it can be loaded
# Comment this line out if you want a base installation of zsh because mine
# includes a few plugins:
if [ -e "../../.zshrc" ]; then
    mv ~/.zshrc ~/.zshrc.backup
    echo "Old .zshrc is now located at ~/.zshrc.backup"
fi
echo "Setting up zsh configuration..."
cp ~/sloth/config/.zshrc ~/.zshrc

# Experimental - need to get my syntax down before taking this live
#read -n 1 -p "You must exit and log back in for the new shell to take effect. Press any key to continue." x
