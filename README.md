# vimrc
One configuration to rule them all (platforms)

## Install
### Linux:
git clone --depth=1 https://github.com/rvn91/vimrc.git ~/.vim_runtime

sh ~/.vim_runtime/install.sh

### Windows:
git clone --depth=1 https://github.com/rvn91/vimrc.git %HOMEPATH%\\.vim_runtime

Open GIT Bash inside of YOURUSERNAME/.vim_runtime/ and run "bash install.sh":
C:/Users/YOURUSERNAME/.vim_runtime/install.sh

## Plugins
NERDTree. File system explorer for the Vim editor (https://github.com/preservim/nerdtree)

Nord. An arctic, north-bluish clean and elegant Vim color theme (https://github.com/arcticicestudio/nord-vim)

## Keymaps
### Leader
The leader is ",", so whenever you see \<leader\> it means ",".

### Mappings
\<leader\>t - Toggles file system explorer on and off.
\<leader\>e - Reloads the vimrc configs.
\<C-up\>Up - Increase the font size
\<C-up\>Down - Decrease the font size

## Download and update plugins
Run update_plugins.py
