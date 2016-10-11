#!/bin/bash

echo "=========Vim========="

# test if vim is installed
vim_exists=`which vim > /dev/null 2>&1 || echo no`

if [[ $vim_exists == "no"  ]]; then
        echo "Vim is not installed. Aborting."
        exit 1
fi

for file in ~/.vimrc ~/.vim
do
        if [ -e $file ]; then
                rm -rf $file
        fi
done

# Install the vim configuration file
echo "# .vimrc"
ln -s $PWD/.vimrc ~/.vimrc


# Install pathogen
echo "# pathogen"
mkdir -p ~/.vim/autoload
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# Install plugins for vim
echo
echo "Update submodules for Vim and Zsh"
git submodule update --init --recursive

ln -s $PWD/bundle ~/.vim/
ln -s $PWD/bundle/vim-colorschemes/colors ~/.vim/

echo

