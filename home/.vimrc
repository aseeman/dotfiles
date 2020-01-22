set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-obsession'
Plugin 'pangloss/vim-javascript'
Plugin 'leafgarland/typescript-vim'
Plugin 'mxw/vim-jsx'
Plugin 'keith/swift.vim'
Plugin 'iCyMind/NeoSolarized'
Plugin 'tpope/vim-jdaddy'
Plugin 'tpope/vim-dadbod'


" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

syntax enable

set autoread
set number
set relativenumber
set ignorecase
set nohlsearch
set noerrorbells visualbell t_vb=
set expandtab
set smartcase
set showmatch
set mat=2
set tabpagemax=20
set bs=2
set splitbelow
set splitright
set ruler

set smarttab

set autoindent
set tabstop=4 |
set softtabstop=4 |
set shiftwidth=4 |
set termguicolors

colorscheme NeoSolarized
set background=dark

setlocal foldmethod=syntax

au BufNewFile,BufRead *.py
    \ set textwidth=79 |
    \ set fileformat=unix

autocmd Filetype javascript setlocal ts=2 sts=2 sw=2

set undofile
set undodir=~/.vim/undodir
