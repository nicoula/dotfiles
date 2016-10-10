#!/bin/bash

echo "Vim"

# Install the vim configuration file
echo "# .vimrc"
if [ -e ~/.vimrc ]; then
        rm ~/.vimrc
fi
ln -s $PWD/.vimrc ~/.vimrc

# Install pathogen
echo "# pathogen"
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# Install plugins for vim
echo "# delitMate"
git clone https://github.com/Raimondi/delimitMate ~/.vim/bundle/delimitMate
echo "# FuzzyFinder"
git clone https://github.com/vim-scripts/FuzzyFinder.git ~/.vim/bundle/FuzzyFinder
echo "# Supertab"
git clone https://github.com/ervandew/supertab.git ~/.vim/bundle/supertab
echo "# vim-colorschemes"
git clone https://github.com/flazz/vim-colorschemes ~/.vim/bundle/vim-colorschemes
echo "# vim-fugitive"
git clone https://github.com/tpope/vim-fugitive ~/.vim/bundle/vim-fugitive
echo "# vim-l9"
git clone https://github.com/vim-scripts/L9 ~/.vim/bundle/vim-l9
echo "# vim-misc"
git clone URL: https://github.com/xolox/vim-misc ~/.vim/bundle/vim-misc

ln -s ~/.vim/bundle/vim-colorschemes/colors ~/.vim/colors

echo
echo
