#!/bin/bash

echo "=========Git========="
echo "# .gitconfig"

if [ -e ~/.gitconfig ]; then
        echo "========= CURRENT GIT CONFIG ========="
        cat ~/.gitconfig
        echo "======================================"

        while true; do
                echo "Do you want to keep it? [y/Y/n/N]"
                read keep

                case $keep in
                        y|Y ) 
                                break
                                ;;
                        n|N ) 
                                # Install the git configuration file
                                ln -s $PWD/.gitconfig ~/.gitconfig
                                break
                                ;;
                        * ) 
                                echo Invalid option 
                                ;;
                esac
        done

        #if [[ $keep == "y" ]]; then
        #        echo yes
        #fi

        rm -rf $file
fi


echo
echo

