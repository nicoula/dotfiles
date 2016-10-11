#!/bin/bash

echo "=========Zsh========="

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
done
ln -s $PWD/.zshrc ~/.zshrc
ln -s $PWD/oh-my-zsh ~/.oh-my-zsh


# Make symbolic link for my themes
nico_theme=oh-my-zsh/themes/nico.zsh-theme
nico_plus_theme=oh-my-zsh/themes/nico-plus.zsh-theme
common_aliases=oh-my-zsh/plugins/common-aliases/common-aliases.plugin.zsh

for file in $nico_theme $nico_plus_theme $common_aliases
do
        if [ -e $PWD/$file ]; then
                rm -f $PWD/$file
        fi
        cp `basename $file` $file
done

