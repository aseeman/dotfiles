set nocompatible              " required
filetype off                  " required

" Install vim-plug if we don't already have it
if empty(glob('~/.vim/autoload/plug.vim'))
silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'gmarik/Vundle.vim'
Plug 'vim-scripts/indentpython.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-obsession'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'mxw/vim-jsx'
Plug 'keith/swift.vim'
Plug 'iCyMind/NeoSolarized'
Plug 'tpope/vim-jdaddy'
Plug 'tpope/vim-dadbod'
Plug 'sophacles/vim-bundle-mako'
Plug 'peitalin/vim-jsx-typescript'
Plug 'arp242/auto_mkdir2.vim'
Plug 'pantharshit00/vim-prisma'
Plug 'jparise/vim-graphql'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'yasuhiroki/github-actions-yaml.vim'



" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)


" All of your Plugins must be added before the following line
call plug#end()            " required
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
set tabpagemax=40
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

autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescriptreact
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2
autocmd Filetype typescript setlocal ts=2 sts=2 sw=2
autocmd Filetype typescriptreact setlocal ts=2 sts=2 sw=2
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

set undofile
set undodir=~/.vim/undodir

nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

nmap <silent> gy <Plug>(coc-type-definition)

