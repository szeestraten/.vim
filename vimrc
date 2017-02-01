call pathogen#infect()
call pathogen#helptags()

set hidden
set number
set ts=2 sts=2 sw=2 expandtab
set autoindent
set smarttab
set cursorline
set showmatch
set scrolloff=15
set nofoldenable
set pastetoggle=<F2>

"Syntax and colors"
syntax enable
set t_Co=16
colorscheme solarized

"Make it nicer on GVIM"
if has("gui_running")
  set background=light
  set guifont=Monospace\ 11
else
  set background=dark
endif

map <F10> :let &background = ( &background == "dark"? "light" : "dark" )<CR>

set directory^=$HOME/.vim/tmp//

filetype plugin indent on
au BufRead,BufNewFile Vagrantfile set filetype=ruby
au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown

"Windows stuff"
set backspace=indent,eol,start

