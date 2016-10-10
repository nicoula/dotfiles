#!/bin/bash

echo "Installing vim's files"

# Install the vim configuration file
if [ -e ~/.vimrc ]; then
        rm ~/.vimrc
fi
ln -s $PWD/.vimrc ~/.vimrc

# Install pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

