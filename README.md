# vimrc config
One configuration to rule them all (platforms)

## Install
### Linux:
git clone --depth=1 https://github.com/rvn91/vimrc.git ~/.vim_runtime

sh ~/.vim_runtime/install.sh

### Windows:
git clone --depth=1 https://github.com/rvn91/vimrc.git ~/.vim_runtime

Open GIT Bash inside of YOURUSERNAME/.vim_runtime/ and run "bash install.sh":

C:/Users/YOURUSERNAME/.vim_runtime/install.sh

## Plugins
NERDTree. File system explorer for the Vim editor (https://github.com/preservim/nerdtree)

Nord. An arctic, north-bluish clean and elegant Vim color theme (https://github.com/arcticicestudio/nord-vim)

Indent Guides. Plugin for visually displaying indent levels in Vim (https://github.com/nathanaelkane/vim-indent-guides)

virtualenv.vim. Access virtualenv inside VIM (https://github.com/jmcantrell/vim-virtualenv)

yankstank. Allows you to yank and delete things without worrying about losing the text that you yanked previously (https://github.com/maxbrunsfeld/vim-yankstack)

## Keymaps
### Leader
The leader is ",", so whenever you see \<leader\> it means ",".

### Mappings
\<leader\>t - Toggles file system explorer on and off

\<leader\>e - Reloads the vimrc configs.

\<C-Up\> - Increase the font size

\<C-Down\> - Decrease the font size

\<leader\>ig - Toggles the identation guides on and off

## Download and update plugins
Run update_plugins.py
