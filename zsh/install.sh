#!/bin/bash

echo "Zsh"

# test if zsh is installed
zsh_exists=`which zsh > /dev/null 2>&1 || echo no`

if [[ $zsh_exists == "no"  ]]; then
        echo "Zsh is not installed. Aborting."
        exit 1
fi

# Install the zsh configuration file
echo "# .zshrc"
if [ -e ~/.zshrc ]; then
        rm ~/.zshrc
fi
ln -s $PWD/.zshrc ~/.zshrc










# Install pathogen
#echo "# pathogen"
#mkdir -p ~/.vim/autoload
#curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
#
## Install plugins for vim
#echo "# Update submodule"
#git submodule update --init --recursive
#ln -s $PWD/bundle ~/.vim/bundle
#
#ln -s ~/.vim/bundle/vim-colorschemes/colors ~/.vim/colors

