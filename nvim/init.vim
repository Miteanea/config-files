lua require("cSharp")
lua require("lazyConfig")

set nocompatible
" enable syntax and plugins
syntax enable
filetype plugin on

set number
set relativenumber

set incsearch
set ignorecase

set shell=powershell

" mappings
let g:mapleader = " "

" search down into subfolders
" Provides tab-completion for all file-related tasks
set path+=**

" Display all matching files when we tab complete
set wildmenu
