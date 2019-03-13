" Install and run vim-plug on first run
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Specify a directory for plugins
call plug#begin('~/.vim/plugged')
Plug 'pearofducks/ansible-vim'
Plug 'vim-scripts/iptables'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'
Plug 'altercation/vim-colors-solarized'
Plug 'airblade/vim-gitgutter'
Plug 'itchyny/lightline.vim'

" Initialize plugin system
call plug#end()

"call pathogen#infect()
"call pathogen#helptags()

syntax enable
colorscheme solarized

set hidden
set number
set t_Co=16
set ts=2 sts=2 sw=2 expandtab
set autoindent
set smarttab
set cursorline
set showmatch
set scrolloff=15
set nofoldenable
set pastetoggle=<F2>

"netrw customization"
let g:netrw_banner=0
let g:netrw_liststyle=3
let g:netrw_winsize=25
"let netrw_browse_split=3"

"GVIM customization"
if has("gui_running")
  set background=light
  set guifont=Monospace\ 11
else
  set background=dark
endif
"Toggle light and dark on F10"
map <F10> :let &background = ( &background == "dark"? "light" : "dark" )<CR>

"Move vim swap files to another tmp dir"
set directory^=$HOME/.vim/tmp//

"Add syntax for filetypes"
filetype plugin indent on
au BufRead,BufNewFile Vagrantfile set filetype=ruby
au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown

"Windows only stuff"
set backspace=indent,eol,start

