set nocompatible " breaks compatibility with original vi
set backspace=indent,eol,start " allow backspace in insert mode
set autoindent    " text indenting
set history=100   " lines of command history
set showcmd       " show incomplete commands
set hlsearch      " highlight searched-for phrases
set incsearch     " highlight search as you type
set smarttab
set tabpagemax=15
set number
set expandtab
set ignorecase    " ignore case while searching '/'
set smartcase     " use sensitive case when searching somthing like 'The', at least one cappital letter
set nowrapscan    " do not wrap around for a search


" mapping for the search
nnoremap * /\<<C-R>=expand('<cword>')<CR>\><CR> 
nnoremap # ?\<<C-R>=expand('<cword>')<CR>\><CR>

syntax on
execute pathogen#infect()
filetype plugin indent on

set t_Co=256
colorscheme triplejelly
map <SPACE>o :FufBuffer<RETURN>
map <SPACE>f :FufFile<RETURN>

imap jj <Esc>

nmap <F5> <C-W><<C-W><
nmap <F6> <C-W>><C-W>>
nmap <F7> <C-W>=
nnoremap qq <C-W><C-W>

