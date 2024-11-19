set nocompatible
" enable syntax and plugins
syntax enable
filetype plugin on

set number
set relativenumber

set incsearch
set ignorecase

call plug#begin()

Plug 'tpope/vim-sensible'
Plug 'OmniSharp/omnisharp-vim'

call plug#end()

let g:OmniSharp_server_stdio = 1

" search down into subfolders
" Provides tab-completion for all file-related tasks
set path+=**

" Display all matching files when we tab complete
set wildmenu
