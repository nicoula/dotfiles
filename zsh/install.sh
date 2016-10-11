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
ln -s $PWD/oh-my-zsh ~/.oh-my-zsh

ln -s $PWD/nico-plus.zsh-theme ~/.oh-my-zsh/themes/nico-plus.zsh-theme
ln -s $PWD/nico.zsh-theme ~/.oh-my-zsh/themes/nico.zsh-theme


if [ -e ~/.oh-my-zsh/plugins/common-aliases/common-aliases.plugin ]; then
        rm ~/.oh-my-zsh/plugins/common-aliases/common-aliases.plugin
fi
ln -s $PWD/common-aliases.plugin.zsh ~/.oh-my-zsh/plugins/common-aliases/common-aliases.plugin.zsh











