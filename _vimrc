set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
if has('win32')
    set rtp+=~/vimfiles/bundle/Vundle.vim
    let path='~/vimfiles/bundle'
else
    set rtp+=~/.vim/bundle/Vundle.vim
endif

call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-abolish'
if has('python')
Plugin 'SirVer/ultisnips'
endif
Plugin 'bling/vim-airline'
Plugin 'nelstrom/vim-visual-star-search'
Plugin 'https://github.com/vim-scripts/Wombat'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" General useful items
set incsearch
set hls
set wildmenu
set backspace=indent,eol,start
set noswapfile
set nobackup
set nu
set nowrap
set scrolloff=8

let mapleader=","
nnoremap <leader>w :w!<CR>
nnoremap <leader>t :tabe 
nnoremap <space> /\v

if has('gui_running')
    colorscheme wombat
else
    colorscheme default
endif

set bg=dark
syntax on
set guifont=Consolas:h13
set laststatus=2
set winaltkeys=yes
set guioptions-=l
set guioptions-=r
set guioptions-=T

" Tab and space settings
set ts=4
set sw=4
set sts=4
set expandtab
au FileType make setlocal noexpandtab

" Vim Airline configuration
let g:airline_theme='simple'
let g:airline#extensions#whitespace#enabled = 0
let g:airline_section_x = '%{expand("%:p:h")}'
" Ultisnips Setting
if has('python')
    let g:UltiSnipsUsePythonVersion = 2
endif