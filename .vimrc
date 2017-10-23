set encoding=utf-8
set nocompatible

filetype plugin indent off
syntax off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'dyng/ctrlsf.vim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'fatih/vim-go'
Plugin 'mxw/vim-jsx'
Plugin 'pangloss/vim-javascript'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'vim-airline/vim-airline'
Plugin 'w0rp/ale'

call vundle#end()

syntax on
filetype plugin indent on

set autoindent
set autoread
set backspace=2 "
set clipboard=unnamed
set directory-=.
set display+=lastline
set expandtab
set grepprg=ag\ --nogroup\ --nocolor
set hidden
set hls
set ignorecase
set incsearch
set laststatus=2
set list
set listchars=tab:▸\ ,trail:▫
set mouse=a
set noswapfile
set number
set scrolloff=5
set shiftwidth=4
set showcmd
set showmatch
set smartcase
set smarttab
set synmaxcol=128
set tabstop=4
set updatetime=250
set wildignore+=*/node_modules/*,*/.git/*,*/.idea/*,*/vendor
set wildignore+=tmp/*,*.so,*.swp,*.zip
set wildmenu

let g:airline#extensions#ale#enabled=1
let g:airline#extensions#branch#enabled=1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_alt_sep=''
let g:airline#extensions#tabline#left_sep=''
let g:airline_theme='dark'

let g:ale_lint_on_save=1

let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden --ignore .git -g ""'
endif

let g:go_fmt_command = "goimports"

command FixTrailingWhitespace %s/\s\+$//e
command FixIndent normal! mzgg=G`z

let mapleader = "\<Space>"

au Filetype go nnoremap <leader>ga :GoAlternate<CR>
au Filetype go nnoremap <leader>gt :GoTest<CR>
au FileType go nnoremap <leader>gc :GoCoverage<CR>

au FileType python noremap <leader>b oimport ipdb; ipdb.set_trace()<esc>

nnoremap <leader>f viw:<C-U>CtrlSF<CR>
nnoremap <leader>ll :FixTrailingWhitespace<CR>
nnoremap <leader>li :FixIndent<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>

nnoremap <Tab> :bn<CR>
nnoremap <leader><Tab> :bp<CR>
nnoremap <C-c> :bd<CR>
nnoremap <Up> <nop>
nnoremap <Down> <nop>
nnoremap <Left> <nop>
nnoremap <Right> <nop>

colorscheme delek
