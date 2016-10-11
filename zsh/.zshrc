# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export LD_LIBRARY_PATH=/home/mingault/local/bin/lib/zsh/5.2/zsh:$LD_LIBRARY_PATH
export PATH=/home/mingault/local/bin/bin:/sirius/tools/bin/:$PATH
export EDITOR=/usr/bin/vim

alias UILITE='cd /sirius/work/mingault/sirius_1/sirius/ue/src/ui_lite/src'

alias QWE='source ~/.zshrc'
alias makec_ram='makec -p taiji_lp1 -t ram -B /sirius/work/mingault/type_ram'
alias makec_arel='makec -p taiji_lp1 -t arel -B /sirius/work/mingault/taiji_lp1'
alias multi_ram='multi /sirius/work/mingault/type_ram/obj_taiji_lp1_ram/main.out&'
alias multi_arel='multi /sirius/work/mingault/taiji_lp1/obj_taiji_lp1_arel/main_dbg.out&'
alias cp_arel='cp /sirius/work/mingault/taiji_lp1/obj_taiji_lp1_arel/taiji_lp1_TJL1FAmingaX.fhx /dev/usb/lp0'


# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

find-grep () {
        if [[ "$#" == 1 && "$1" == "--help" ]]; then
                echo "[Usage]: find-grep location pattern-file pattern-inside-file"
                echo
                echo the number of argument should be 3.
                echo "find \$1 -name \$2 -exec grep -il \$3 {} \;"
        else
                if [[ "$#" != 3 ]]; then
                        echo "Use find-grep --help"
                else
                        find $1 -name $2 -exec grep -R -il $3 {} \;
                fi
        fi
 
}

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# with git prompt information
#ZSH_THEME="nico-plus"
# without git prompt information
ZSH_THEME="nico"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="dd.mm.yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-syntax-highlighting common-aliases)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
