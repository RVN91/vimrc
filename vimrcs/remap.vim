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
