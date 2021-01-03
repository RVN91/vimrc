"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Main ~/.vimrc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => GUI related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Disable scrollbars
set guioptions-=r
set guioptions-=R
set guioptions-=l
set guioptions-=L

" Colorscheme
packadd! dracula
syntax enable
colorscheme dracula

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Fast editing and reloading of vimrc configs
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>e :e! ~/.vim_runtime/my_configs.vim<cr>
autocmd! bufwritepost ~/.vim_runtime/my_configs.vim source ~/.vim_runtime/my_configs.vim

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Turn persistent undo on 
"    means that you can undo even when you close a buffer/VIM
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
try
    set undodir=~/.vim_runtime/temp_dirs/undodir
    set undofile
catch
endtry

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim settings
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