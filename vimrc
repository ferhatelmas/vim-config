" VIM
set nocompatible

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
set t_Co=256
syntax on
"colorscheme zenburn
"colorscheme github
colorscheme Benokai

" Highlight current line
set cursorline

" Indentation
set expandtab
set shiftwidth=2
set softtabstop=2

" Normal mode goes one char after
" TODO: we need to tweak it in order to have $, left with whichwrap, etc...
" set virtualedit=onemore

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

""""""""""""""""""""""""""""""""""""""""""""
"" copy and paste
"nnoremap <F2> :set invpaste paste?<CR>
"vmap <C-C> "+yi
"vmap <C-X> "+c
"vmap <C-V> c<ESC>"+p
"" auto toggle for paste mode
"imap <C-V> <ESC>:set paste<CR>i"+pa<ESC>:set nopaste
"
""map <Left> <Nop>
""map <Right> <Nop>
""map <Up> <Nop>
""map <Down> <Nop>
"
"
"" SingleCompile
"Bundle 'xuhdev/SingleCompile'
"nmap <F9> :SCCompile<cr>
"nmap <F10> :SCCompileRun<cr>
"
"" Unite
"Bundle "Shougo/unite.vim"
"nnoremap <silent> <Leader>m :Unite -buffer-name=recent -winheight=10 file<cr>
"nnoremap <Leader>f :Unite grep:.<cr>
"
"" Marvim
"Bundle "vim-scripts/marvim"
"
"
"" Ruby on rails
"Bundle "tpope/vim-rails.git"
"Bundle "tpope/vim-bundler.git"
"
"nmap <silent> <C-L>  <Plug>GoldenViewSplit
"
"" ColorScheme
"Plugin 'flazz/vim-colorschemes'
"
"" TaskList (<Leader>t)
"Plugin 'vim-scripts/TaskList.vim'
"
"" Vim Bookmark
""Plugin 'MattesGroeger/vim-bookmarks'
""highlight BookmarkSign ctermbg=NONE ctermfg=160
""highlight BookmarkLine ctermbg=194 ctermfg=NONE
""let g:bookmark_sign = '⚑'
""let g:bookmark_highlight_lines = 0
""let g:bookmark_auto_close = 1
""let g:bookmark_auto_save = 1
""let g:bookmark_auto_save_file = $HOME.'/.vim-bookmarks'
"
"" Vim-signature for marks
"Plugin 'kshenoy/vim-signature'
"
"" Solarized
"Plugin 'altercation/vim-colors-solarized.git'
"
"
"" Ag for ack
"" Install cmd: git clone https://github.com/ggreer/the_silver_searcher ag && cd ag && ./build.sh && sudo make install
"Plugin 'rking/ag.vim'
"
"" Vim CSS colors on code
"Plugin 'chrisbra/Colorizer'
"
"" SearchComplete
"" Bug with arrows :(
"" Plugin 'vim-scripts/SearchComplete'
"
"" Plugin for gnupg files
"Plugin 'jamessan/vim-gnupg'
"
"" Git wrapper :Gblame, :Gdiff
"Plugin 'tpope/vim-fugitive'
"
"" Golang plugin
"" To install: sudo chown -R kursion:kursion /usr/lib/go
"Plugin 'fatih/vim-go'
""let g:go_snippet_engine = "neosnippet"
"let g:go_fmt_command = "gofmt"
"autocmd FileType go autocmd BufWritePre <buffer> GoFmt
"autocmd FileType go autocmd BufWritePre <buffer> :GoLint
"let g:go_fmt_fail_silently = 1
"au FileType go nmap <Leader>i <Plug>(go-info)
"
"" Less plugin
"Plugin 'groenewege/vim-less'
"
"" CSS3 plugin
"Plugin 'hail2u/vim-css3-syntax'
"
"" Conque use shell interactively
"Plugin 'chilicuil/conque'
"
"" Syntax highlighting, matching rules and mappings for the original Markdown
"" and extensions.
"Bundle 'plasticboy/vim-markdown'
"au BufRead,BufNewFile *.md set filetype=markdown
"
"" Rainbow for parentheses colors :RainbowToggle
"Plugin 'kien/rainbow_parentheses.vim'
"au VimEnter * RainbowParenthesesToggle
"au Syntax * RainbowParenthesesLoadRound
"au Syntax * RainbowParenthesesLoadSquare
"au Syntax * RainbowParenthesesLoadBraces
"
"" Easymotion for better navigation (sc: \w)
"Plugin 'Lokaltog/vim-easymotion'
"
"" Coffeescript plugin
"Plugin 'kchmck/vim-coffee-script'
"
"
"" CtrlP for file navigation
"Plugin 'kien/ctrlp.vim'
"set wildignore+=*/tmp/*,*.so,*.swp,*.zip
"let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
"let g:ctrlp_working_path_mode='ra'
"let g:ctrlp_cmd = 'CtrlPMixed'
"set autochdir
"
"
"" delimitMate for brackets, parenthesis,...
"Plugin 'Raimondi/delimitMate'
"
"" closeTag to close html tags
"" Plugin 'docunext/closetag.vim'
"
"" superTab for stupid autocompletion
"" Plugin 'vim-scripts/supertab'
"" let g:SuperTabDefaultCompletionType = "<c-n>"
"" Plugin 'Shougo/neocomplete.vim'
"let g:neocomplete#enable_at_startup = 1
"let g:neocomplete#sources#syntax#min_keyword_length = 3
"inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
"inoremap <expr><S-TAB>  pumvisible() ? "\<C-p>" : "\<TAB>"
"let g:neocomplete#enable_cursor_hold_i = 1
"
"" Use vim-youcompletme-git from AU
""Plugin 'Valloric/YouCompleteMe'
""let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
"
"" Snippet
"Plugin 'Shougo/neosnippet.vim'
"
"" Tagbar for tag browsing <leader>l
"" Note: $ sudo pacman -S ctags
"Plugin 'majutsushi/tagbar.git'
"let g:tagbar_usearrows = 1
"nnoremap <leader>l :TagbarToggle<CR>
"" Coffeetags
"if executable('coffeetags')
"  let g:tagbar_type_coffee = {
"        \ 'ctagsbin' : 'coffeetags',
"        \ 'ctagsargs' : '',
"        \ 'kinds' : [
"        \ 'f:functions',
"        \ 'o:object',
"        \ ],
"        \ 'sro' : ".",
"        \ 'kind2scope' : {
"        \ 'f' : 'object',
"        \ 'o' : 'object',
"        \ }
"        \ }
"endif
"" Golang tags generator
"" go get -u github.com/jstemmer/gotags
"let g:tagbar_type_go = {
"  \ 'ctagstype' : 'go',
"  \ 'kinds'     : [
"      \ 'p:package',
"      \ 'i:imports:1',
"      \ 'c:constants',
"      \ 'v:variables',
"      \ 't:types',
"      \ 'n:interfaces',
"      \ 'w:fields',
"      \ 'e:embedded',
"      \ 'm:methods',
"      \ 'r:constructor',
"      \ 'f:functions'
"  \ ],
"  \ 'sro' : '.',
"  \ 'kind2scope' : {
"      \ 't' : 'ctype',
"      \ 'n' : 'ntype'
"  \ },
"  \ 'scope2kind' : {
"      \ 'ctype' : 't',
"      \ 'ntype' : 'n'
"  \ },
"  \ 'ctagsbin'  : 'gotags',
"  \ 'ctagsargs' : '-sort -silent'
"\ }
"" NerdTree
"
"Plugin 'scrooloose/nerdtree'
"map <C-e> :NERDTreeToggle<CR>
"map <Leader>e :NERDTreeToggle<CR>
"
"" EasyGrep
"Plugin 'dkprice/vim-easygrep'
"
"" Syntastic to check syntax with external modules
"Plugin 'https://github.com/scrooloose/syntastic.git'
"let g:syntastic_enable_signs=1
"let g:syntastic_auto_loc_list=1
"let g:syntastic_auto_jump = 0
"let g:syntastic_loc_list_height = 2
"" let g:syntastic_go_checkers= ['']
"let g:syntastic_python_checkers= ['python2']
"let g:syntastic_php_checkers= ['php']
"

"" Trick to remove garbage characters
"set t_RV=
"
"" Force redraw
"nmap <Leader>r :redraw!<CR>
"
"
"
"" One more character in visual mode
"set virtualedit=onemore
"map <End> <End><Right>
"map $$ <End>
"
"set backspace=indent,eol,start  " Backspace for dummies
"
"" Highlight
"autocmd InsertEnter * :setlocal nohlsearch
"autocmd InsertLeave * :setlocal hlsearch
"hi CursorLine   cterm=NONE ctermbg=8 ctermfg=15 guibg=darkred guifg=white
"hi CursorColumn cterm=NONE ctermbg=8 ctermfg=15 guibg=darkred guifg=white
"nnoremap <Leader>c :set cursorline!<CR>
"nnoremap <Leader>v :set cursorcolumn!<CR>
"
"""" Custom shortcuts
"map <C-n> :e . <Enter>
"map <C-f> /
"imap <C-f> <Esc>/
"
"" Home & End
"map <End> <End><Right>
"
"" Tabulation simplification
"nmap <Tab> i<Tab>
"xmap <Tab> >gv
"xmap <S-Tab> <gv
"map < <gv
"map > >gv
"
"
"" Grep
"nnoremap gr :grep <cword> *<CR>
"nnoremap Gr :grep <cword> %:p:h/*<CR>
"nnoremap gR :grep '\b<cword>\b' *<CR>
"nnoremap GR :grep '\b<cword>\b' %:p:h/*<CR>
"" Show number on lines
"nmap <Leader>n :set invnumber<CR>
"
"
"" Color scheme
"set t_Co=256
"syntax enable
"set background=dark
"let g:solarized_termcolors=256
"let g:solarized_visibility = "high"
"let g:solarized_contrast = "high"
""let g:solarized_termtrans = 1
"colorscheme jellybeans
"" let g:jellybeans_use_lowcolor_black = 0
"" hi Normal ctermbg=White ctermfg=Black guifg=Black guibg=White
"hi Normal ctermfg=252 ctermbg=none
"
"" Gvim settings
"set guioptions-=m  "remove menu bar
"set guioptions-=T  "remove toolbar
"
"
"" Plugins configuration
"
"
"" Airline
"set laststatus=2
"let g:airline_powerline_fonts = 1
"
"" Easymotion
"let g:EasyMotion_do_mapping = 0 " Disable default mappings
"" Bi-directional find motion
"" Jump to anywhere you want with minimal keystrokes, with just one key binding.
"" `s{char}{label}`
"nmap s <Plug>(easymotion-s)
"" or
"" `s{char}{char}{label}`
"" Need one more keystroke, but on average, it may be more comfortable.
"nmap s <Plug>(easymotion-s2)
"" Turn on case sensitive feature
"let g:EasyMotion_smartcase = 1
"" JK motions: Line motions
"map <Leader>j <Plug>(easymotion-j)
"map <Leader>k <Plug>(easymotion-k)
"
