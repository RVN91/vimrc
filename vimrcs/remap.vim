"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remapping of keys
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Nerd Tree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>t :NERDTreeToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Fast editing and reloading of vimrc configs
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>e :e! ~/.vim_runtime/vimrcs/basic.vim<cr>
autocmd! bufwritepost ~/.vim_runtime/vimrcs/basic.vim source 
 \ ~/.vim_runtime/vimrcs/basic.vim
autocmd! bufwritepost ~/.vim_runtime/vimrcs/extended.vim source 
 \ ~/.vim_runtime/vimrcs/extended.vim
autocmd! bufwritepost ~/.vim_runtime/vimrcs/remap.vim source 
 \ ~/.vim_runtime/vimrcs/remap.vim
autocmd! bufwritepost ~/.vim_runtime/vimrcs/plugins_config.vim source 
 \ ~/.vim_runtime/vimrcs/plugins_config.vim

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Increase or decrease the font size 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Increase font size
nnoremap <C-Up> :silent! let &guifont = substitute(
 \ &guifont,
 \ ':h\zs\d\+',
 \ '\=eval(submatch(0)+1)',
 \ '')<CR>

" Decrease font size
nnoremap <C-Down> :silent! let &guifont = substitute(
 \ &guifont,
 \ ':h\zs\d\+',
 \ '\=eval(submatch(0)-1)',
 \ '')<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Copying and pasting to and from VIM
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" To copy into register <LETTER>: "<LETTER>y
" gvim lets you copy text to clipboard by: "+y
vnoremap <C-c> "+y
map <C-p> "+P

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Pandoc commands 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" This command avoids admin rights. But only god knows what it is doing 
augroup my_markdown
    autocmd!
    autocmd FileType markdown nnoremap <F5> :<c-u>silent call system('pandoc '.expand('%:p:S').' -s -o '.expand('%:p:r:S').'.pdf')<cr>
augroup ENDautocmd 
