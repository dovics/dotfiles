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

noremap J 5j
noremap K 5k
noremap L 7l
noremap H 7h

set clipboard+=unnamedplus

call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'

Plug 'jiangmiao/auto-pairs'
Plug 'godlygeek/tabular'

Plug 'morhetz/gruvbox'
Plug 'plasticboy/vim-markdown'
Plug 'iamcco/markdown-preview.vim', {'do':{ -> mkdp#util#install() } }

Plug 'Yggdroot/indentLine'
Plug 'luochen1990/rainbow'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" NERDTree
map tt :NERDTreeToggle<CR>
let g:NERDTreeShowHidden = 1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" indentLine
let g:indent_guides_guide_size            = 1
let g:indent_guides_start_level           = 2

" coc
let g:coc_global_extensions = ['coc-json','coc-css','coc-html',
                        \ 'coc-go', 'coc-python', 'coc-clangd', 'coc-rust-analyzer',
                        \ 'coc-yaml']

set updatetime=300

" Use tab for trigger completion with characters ahead and navigate.
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references):

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" theme
autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE " transparent bg
colorscheme gruvbox