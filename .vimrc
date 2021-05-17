set number 
set relativenumber

set nocompatible
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on

syntax on

set cursorline
set showmode
set showcmd

set mouse=a
set encoding=utf-8
set autoindent

set backspace=indent,eol,start

set foldmethod=indent
set foldlevel=99

let &t_SI = "\<ESC>]50;CursorShape=1\x7"

let &t_SR = "\<ESC>]50;CursorShape=2\x7"
let &t_EI = "\<ESC>]50;CursorShape=0\x7"

set wrap
set linebreak
set laststatus=2
set ruler

set ignorecase
set smartcase

set autoread
set wildmenu

set hlsearch
exec "nohlsearch"
set incsearch

map s <nop>
map S :w<CR>
map Q :q<CR>

map sh :set nosplitright<CR>:vsplit<CR>
map sl :set splitright<CR>:vsplit<CR>
map sj :set splitbelow<CR>:split<CR>
map sk :set nosplitbelow<CR>:split<CR>

map su <C-w>t<C-w>H
map si <C-w>t<C-w>K

noremap J 5j
noremap K 5k
noremap H 5h
noremap L 5l
