" VIM
set nocompatible
set shell=/bin/bash

" Loading shortcuts
so ~/.vim/vimsc
so ~/.vim/vundle
so ~/.vim/vimar

" Trim spaces
highlight BadWhitespace ctermbg=red guibg=red
autocmd BufWritePre * :%s/\s\+$//e

" Buffer drawing
set lazyredraw

" File encoding
scriptencoding utf-8
set encoding=utf-8
set number

" Set dir to current pwd
set autochdir

" Switch to a new tab for quickfix
set switchbuf+=newtab

" Backup directory
" Don't forget to put '//' at the end
" https://coderwall.com/p/sdhfug/vim-swap-backup-and-undo-files
silent !mkdir ~/.vimbackup > /dev/null 2>&1
set backupdir=~/.vimbackup//
set directory=~/.vimbackup//
set undodir=~/.vimbackup//
set undofile
set undoreload=10000
set undolevels=1000
set backupcopy=yes

" Syntax
syntax on
set t_Co=256
let g:solarized_termcolors=256
set background=dark
colorscheme solarized

" Highlight current line
set cursorline
set updatetime=100

" Indentation
set expandtab
set shiftwidth=2
set softtabstop=2

" No wrap
set nowrap

"Left goes one line before
set whichwrap+=<,>,[,]

" Omni-Completion tip window to close when a selection is
" made, these lines close it on movement in insert mode or when leaving
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" Highlight search and find as you type
set hlsearch
set incsearch

" Ignore case when searching
set ignorecase

" Test syntax for others vim files
au BufRead vundle,vimsc,vimar set filetype=vim
