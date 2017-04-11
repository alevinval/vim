set encoding=utf-8
set nocompatible
filetype plugin indent off
syntax off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

call vundle#end()

syntax on
filetype plugin indent on

set updatetime=250
set hidden
set ignorecase
set smartcase
set incsearch
set number
set showmatch
set showcmd
set wildmenu
set hls
set clipboard=unnamedplus
set directory-=.
set list
set listchars=tab:..,trail:_,extends:>,precedes:<,nbsp:~
set scrolloff=5
set backspace=2 "
set cursorline
set synmaxcol=120
set laststatus=2

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep=' '
let g:airline#extensions#tabline#left_alt_sep='|'
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#hunks#enabled=1
let g:airline#extensions#branch#enabled=1

map q :q
map <Tab> tabnext

colorscheme delek
