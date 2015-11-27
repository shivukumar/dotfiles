set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim

" Vundle plungin {{{
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-abolish'
if has('python')
    Plugin 'SirVer/ultisnips'
endif
Plugin 'bling/vim-airline'
Plugin 'nelstrom/vim-visual-star-search'
Plugin 'vim-scripts/Wombat'
Plugin 'tomasr/molokai'
Plugin 'godlygeek/tabular'

call vundle#end()
"}}}
" Absolute basic settings {{{
filetype plugin indent on
syntax on

" Search settings
set incsearch
set ignorecase
set smartcase
set hls

" Indentation settings
set autoindent
set smartindent

set wildmenu
set backspace=indent,eol,start
set nu
set nowrap
set scrolloff=8
set splitright
" Nobackup at all
set hidden
set noswapfile
set nobackup
set nowritebackup
" }}}
" GUI settings {{{
if has('gui_running')
    colorscheme wombat
else
    colorscheme default
endif

set background=dark
syntax on
if has('win32')
    set guifont=Consolas:h13
else
    set guifont=Ubuntu\ Mono\ 13
endif
set laststatus=2
set winaltkeys=yes
set guioptions-=lrT
"}}}
" Tab and space settings {{{
set ts=4 sw=4 sts=4 expandtab
au FileType make setlocal noexpandtab
set encoding=utf8
" Use Unix as the standard file type
set ffs=unix,dos,mac
"}}}
" Shortcuts {{{
let mapleader=","
" Superfast leader settings
nnoremap <leader>w :w!<CR>
nnoremap <leader>t :tabe 
nnoremap <leader>s :s/\v
nnoremap <leader>n :normal 
nnoremap <leader>g :g/\v
nnoremap <leader>cd :cd %:p:h<cr>:pwd<cr>
nnoremap <space> /\v

" Smart navigation between split windows
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-h> <C-W>h
nnoremap <C-l> <C-W>l

" Easy up down between wraped lines
map j gj
map k gk

" Tag commands
set tags=./tags/;
"}}}
" Plugin specific settings {{{
" Vim Airline configuration
let g:airline_theme='simple'
let g:airline#extensions#whitespace#enabled = 0
let g:airline_section_x = '%{getcwd()}'
" Ultisnips Setting
let g:UltiSnipsUsePythonVersion = 2
"}}}
