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
for file in ~/.zshrc ~/.oh-my-zsh
do
        if [ -e $file ]; then
                rm -rf $file
        fi
        ln -s $PWD/`basename $file` $file
done

# Make symbolic link for my themes
nico-theme=oh-my-zsh/themes/nico.zsh-theme
nico-plus-theme=oh-my-zsh/themes/nico-plus.zsh-theme
common-aliases=oh-my-zsh/plugins/common-aliases/common-aliases.plugin.zsh

for file in $nico-theme $nico-plus-theme $common-aliases
do
        if [ -e $file ]; then
                rm -f $file
        fi
        ln -s $PWD/$file $file
done







