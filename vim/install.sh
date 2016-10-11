#!/bin/bash

echo "Vim"

# test if vim is installed
vim_exists=`which vim > /dev/null 2>&1 || echo no`

if [[ $vim_exists == "no"  ]]; then
        echo "Vim is not installed. Aborting."
        exit 1
fi

# Install the vim configuration file
echo "# .vimrc"
if [ -e ~/.vimrc ]; then
        rm ~/.vimrc
fi
ln -s $PWD/.vimrc ~/.vimrc

# Install pathogen
echo "# pathogen"
mkdir -p ~/.vim/autoload
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# Install plugins for vim
echo "# Update submodules for Vim and Zsh"
git submodule update --init --recursive
ln -s $PWD/bundle ~/.vim/bundle

ln -s ~/.vim/bundle/vim-colorschemes/colors ~/.vim/colors

echo
echo

