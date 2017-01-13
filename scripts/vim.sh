#!/bin/bash

# Positions user in the install file to make sure things get installed correctly
cd ~/sloth

# Just making sure vim is already installed, and same for git in case I host
# this elsewhere or someone wants to grab an old tar.gz version to install
# manually
echo "Checking for vim and git packages..."
apt-get -y install vim git

# Does a git pull so that this script can be done a vim updater as new stuff
# gets added to my bundle
echo "Cleaning out old files..."
git pull origin

echo "Installing vim plugins..."

# Creates directory structure for Pathogen and installs it
echo "Cloning Pathogen..."
mkdir -p ~/.vim/autoload ~/.vim/bundle ~/.vim/colors && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# Nice syntax highlighting for Javascript and NodeJS
echo "Enhancing JS syntax..."
git clone https://github.com/pangloss/vim-javascript.git ~/.vim/bundle/vim-javascript

# Support for oft-neglected Mustach/Handlebars templates
echo "Growing Mustache..."
git clone https://github.com/mustache/vim-mustache-handlebars.git ~/.vim/bundle/mustache

# My theme of choice, easy on the eyes and goes nice with the syntax
# highlighting we install here
echo "Getting Luna theme..."
git clone https://github.com/notpratheek/vim-luna.git ~/.vim/vim-luna && mv ~/.vim/vim-luna/colors/luna-term.vim ~/.vim/colors

# Powerline is overkill and its docs suck, airline is a little easier and takes
# less config
echo "Installing Airline..."
git clone https://github.com/vim-airline/vim-airline ~/.vim/bundle/airline
vim -u NONE -c "helptags ~/.vim/bundle/airline/doc" -c q

# Themes for airline, I prefer powerlineish but there are some other nice ones
echo "...and its themes..."
git clone https://github.com/vim-airline/vim-airline-themes ~/.vim/bundle/vim-airline-themes

# File viewer for vim. It's not even all that necessary, but it's cool to have
echo "Planting NERDtree..."
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
vim -u NONE -c "helptags ~/.vim/bundle/nerdtree/doc" -c q

# Git wrapper built into vim, a true hidden gem
echo "Capturing Fugitive..."
git clone git://github.com/tpope/vim-fugitive.git ~/.vim/bundle/fugitive
vim -u NONE -c "helptags ~/.vim/bundle/fugitive/doc" -c q

# Copies the .vimrc rather than moving it for easier testing, and opens up the
# new vim with a pleasant message :)
echo "Setting you up for success..."
if [ -e "../../.vimrc" ] && [ -s "../../.vimrc"]; then
    mv ~/.vimrc ~/.vimrc.backup
    echo "Old .vimrc saved at ~/.vimrc.backup"
fi
cp ~/sloth/config/vimrc ~/.vimrc
echo "Welcome to your new vim!" > ./testfile.txt
vim ./testfile.txt


