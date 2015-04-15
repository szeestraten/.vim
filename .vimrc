call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

set hidden
set number
set vb t_vb=
set ts=2 sts=2 sw=2 expandtab
set smarttab
syntax on

set t_Co=256
set term=xterm-256color
syntax enable
set background=dark
colorscheme solarized

filetype on
filetype plugin on

set scrolloff=5
