#!/bin/bash

apt-get update && apt-get -y upgrade

echo "Installing vim and git packages..."
apt-get -y install vim git

echo "Installing vim plugins..."

echo "Cloning Pathogen..."
mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

echo "Enhancing JS syntax..."
git clone https://github.com/pangloss/vim-javascript.git ~/.vim/bundle/vim-javascript

echo "Getting Luna theme..."
git clone https://github.com/notpratheek/vim-luna.git ~/.vim && mkdir -p ~/.vim/colors && mv ~/.vim/vim-luna/colors/luna-term.vim ~/.vim/colors

echo "Installing Airline..."
git clone https://github.com/vim-airline/vim-airline ~/.vim/bundle/vim-airline
vim -u NONE -c "helptags" -c q

echo "...and its themes..."
git clone https://github.com/vim-airline/vim-airline-themes ~/.vim/bundle/vim-airline-themes

echo "Planting NERDtree..."
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
vim -u NONE -c "helptags ~/.vim/bundle/nerdtree/doc" -c q

echo "Capturing Fugitive..."
git clone git://github.com/tpope/vim-fugitive.git ~/.vim/bundle/fugitive
vim -u NONE -c "helptags ~/.vim/bundle/fugitive/doc" -c q

echo "Configuring vim..."
mv ./.vimrc ~/

vim ./testfile.txt


