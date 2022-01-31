#!/bin/sh
set -e

cd ~/.vim_runtime

echo 'set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/remap.vim
source ~/.vim_runtime/vimrcs/extended.vim

try
source ~/.vim_runtime/my_configs.vim
catch
endtry' > ~/.vimrc


case "$OSTYPE" in
  linux*)   
      echo "OS: LINUX" 
      echo 'set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc' > ~/.config/nvim/init.vim
      ;;
  msys*)    
      echo "OS: WINDOWS" 
      echo 'set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc' > $LOCALAPPDATA/nvim/init.vim
      ;;
  cygwin*)  echo "ALSO WINDOWS" ;;
  *)        echo "unknown: $OSTYPE" ;;
esac

echo "Vim config installed"
