# Nicoula's dotfiles

**[Nicoula's dotfiles](https://github.com/nicoula/dotfiles)** is a config files. 

## Table of contents

* [Quick Start](#quick-start)
* [What's in it?](#what_s_in_it)
* [Vim](#vim)
* [Zsh](#zsh)
* [Git](#git)

## <a name="quick-start">Quick Start

```
$ git clone https://github.com/nicoula/dotfiles.git ~/.dotfiles
$ cd ~/.dotfiles
$ make
```

## <a name="what_s_in_it">What's in it?
* [Zsh](http://zsh.org)
* [Vim](http://www.vim.org)
* [Git](https://git-scm.com/)

## <a name="vim">Vim

Vim's plugin managed using [Pathogen](https://github.com/tpope/vim-pathogen)

### Theme
* [TripleJelly](https://github.com/flazz/vim-colorschemes/blob/master/colors/triplejelly.vim)

### Plugin
* [Pathogen](https://github.com/tpope/vim-pathogen)
* [delitMate](https://github.com/Raimondi/delimitMate)
* [FuzzyFinder](https://github.com/vim-scripts/FuzzyFinder)
* [Supertab](https://github.com/ervandew/supertab.git)
* [vim-colorschemes](https://github.com/flazz/vim-colorschemes)
* [vim-fugitive](https://github.com/tpope/vim-fugitive)
* [L9](https://github.com/vim-scripts/L9)
* [vim-misc](https://github.com/xolox/vim-misc)

### Shortcut
* `Space + f` Open a file
* `Space + o` Open buffered file
* `jj` is mapping `<ESC>`
* `<F5>` during vertical split, reduce the size of the current split
* `<F6>` during vertical split, increase the size of the current split
* `<F7>` Equal split
* `qq` mapping for changing split


## <a name="zsh">Zsh
Zsh's plugin managed using [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)

### Theme
* Nico
* Nico-plus

They are the same as [xiong-chiamiov](https://github.com/robbyrussell/oh-my-zsh/blob/master/themes/xiong-chiamiov.zsh-theme) and [xiong-chiamiov-plus](https://github.com/robbyrussell/oh-my-zsh/blob/master/themes/xiong-chiamiov-plus.zsh-theme) but the date and time are stuck on the right side.

If you want to change it, please refer to [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh#selecting-a-theme).

### Plugin
I don't use extra plugins from oh-my-zsh. Please have a look at the long list of included plugins in [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins)


## <a name="git">Git
Nothing special, diff tool set to vimdiff.
