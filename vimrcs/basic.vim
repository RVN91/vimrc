"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Basic vim settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set line numbers and end column
set number
set colorcolumn=80

" Delete lines using backspace
set backspace=indent,eol,start

" Set tab as 4 empty spaces wide
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

" Disable annoying sounds
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

" Set templates for file types
au BufNewFile * silent! 0r c:\Users\rasmus\.vim\skeleton\template.%:e

" Set mapleader
let mapleader=","

" Set to auto read when a file is changed from the outside
set autoread
au FocusGained,BufEnter * checktime

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

" Highlight search results
set hlsearch

" Add a bit extra margin to the left
set foldcolumn=1

