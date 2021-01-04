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

" UTF-8 Support
set encoding=utf-8

" Disable annoying sounds
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

" Set templates for new file types
au BufNewFile * silent! 0r c:\Users\rasmus\.vim_runtime\templates\template.%:e

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

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Fontsize
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set guifont=Consolas:h11

nnoremap <C-Up> :silent! let &guifont = substitute(
 \ &guifont,
 \ ':h\zs\d\+',
 \ '\=eval(submatch(0)+1)',
 \ '')<CR>
nnoremap <C-Down> :silent! let &guifont = substitute(
 \ &guifont,
 \ ':h\zs\d\+',
 \ '\=eval(submatch(0)-1)',
 \ '')<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Python indentation 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
au BufNewFile,BufRead *.py
    \ set tabstop=4      |
    \ set softtabstop=4  |
    \ set shiftwidth=4   |
    \ set textwidth=79   |
    \ set expandtab      |
    \ set autoindent     |
    \ set fileformat=unix



