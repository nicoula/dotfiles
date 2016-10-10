#!/bin/bash

echo "Installing vim's files"

## Install the vim configuration file
#if [ -e ~/.vimrc ]; then
#        rm ~/.vimrc
#fi
#ln -s $(PWD)/.vimrc ~/.vimrc
#
## Install pathogen
#mkdir -p ~/.vim/autoload ~/.vim/bundle
#curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim





# Install the vim configuration file
VIMDIR=~/test
VIMRC_LOCATION=$(VIMDIR)/.vimrc
if [ -e $(VIMRC_LOCATION) ]; then
        rm $(VIMRC_LOCATION)
fi
ln -s $(PWD)/.vimrc $(VIMRC_LOCATION)

# Install pathogen
mkdir -p ~/$(VIMDIR)/.vim/autoload ~/$(VIMDIR)/.vim/bundle
curl -LSso ~/$(VIMDIR)/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
