set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim

" Vundle plungin {{{
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-abolish'
if has('python3')
    Plugin 'SirVer/ultisnips'
    Plugin 'honza/vim-snippets'
    Plugin 'davidhalter/jedi-vim'
endif
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'nelstrom/vim-visual-star-search'
Plugin 'vim-scripts/Wombat'
Plugin 'tomasr/molokai'
Plugin 'godlygeek/tabular'

call vundle#end()
"}}}
" Absolute basic settings {{{
filetype plugin indent on
syntax on

" Remember more history
set history=1000
" Search settings
set incsearch
set ignorecase
set smartcase
set hls
nnoremap * *N
nnoremap # #n

" Indentation settings
set autoindent
set smartindent

set wildmenu
set backspace=indent,eol,start
set nu
set nowrap
set scrolloff=8
set splitright
set diffopt+=iwhite

" Nobackup at all
set hidden
set autoread
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

set t_Co=256
set background=dark

syntax on
if has('win32')
    set guifont=Consolas:h13
else
    set guifont=Ubuntu\ Mono\ 13
endif
set laststatus=2
set winaltkeys=yes
set guioptions-=l
set guioptions-=r
set guioptions-=T
set guioptions-=L
set guitablabel=\[%N\]\ %t\ %M
"set guitablabel=%{expand('%:t')}
" Remove error bells
au GUIEnter * set t_vb= visualbell
"}}}
" Tab and space settings {{{
set ts=4 sw=4 sts=4 expandtab
au FileType make setlocal noexpandtab
au FileType tex setlocal linebreak textwidth=72 spelllang=en_us spell
set encoding=utf8
" Use Unix as the standard file type
set ffs=unix,dos,mac
"}}}
" Shortcuts {{{
nnoremap <F2> :w!<CR>
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
"}}}
" Plugin specific settings {{{
" Vim Airline configuration
let g:airline_theme='simple'
let g:airline#extensions#whitespace#enabled = 0
let g:airline_section_x = '%{getcwd()}'
let g:ycm_extra_conf_globlist = ['./.ycm_extra_conf.py', '~/.ycm_extra_conf.py']
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
" Ultisnips Setting
let g:UltiSnipsUsePythonVersion = 3
let g:UltiSnipsExpandTrigger = "<C-j>"
"}}}
" List chars {{{
set list
set listchars=tab:▸\ ,eol:¬
highlight NonText guibg=#242424 guifg=#404040
highlight SpecialKey guibg=#242424 guifg=#404040
" }}}
" Tag option setting {{{
set tags=./tags;
" }}}
" Custom helper functions {{{
let g:a = 0
fu! Reset()
    let g:a = 0
endfu
fu! Dec()
    let val = g:a
    let g:a -= 1
    return val
endfu
fu! Inc()
    let val = g:a
    let g:a += 1
    return val
endfu
"}}}
" vim:fen:fdm=marker
