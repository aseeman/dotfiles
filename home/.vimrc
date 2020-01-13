set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'mileszs/ack.vim'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-obsession'
Plugin 'othree/yajs.vim'
Plugin 'keith/swift.vim'
Plugin 'iCyMind/NeoSolarized'
Plugin 'othree/es.next.syntax.vim'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'tpope/vim-dadbod'
Plugin 'pangloss/vim-javascript'
Plugin 'tpope/vim-jdaddy'
Plugin 'maxmellon/vim-jsx-pretty'


" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set autoread
set number
set ignorecase
set nohlsearch
set noerrorbells visualbell t_vb=
set expandtab
set smartcase
set showmatch
set mat=2

set smarttab

set autoindent
set tabstop=4 |
set softtabstop=4 |
set shiftwidth=4 |
set termguicolors
colorscheme NeoSolarized

au BufNewFile,BufRead *.py
    \ set textwidth=79 |
    \ set fileformat=unix

let g:ackprg = 'ag --vimgrep --smart-case'                                                   
cnoreabbrev ag Ack
cnoreabbrev aG Ack
cnoreabbrev Ag Ack
cnoreabbrev AG Ack
