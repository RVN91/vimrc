# vimrc config for neovim
One configuration to rule them all (platforms).

## Install
### Linux (you know what to do...):
git clone --depth=1 https://github.com/rvn91/vimrc.git ~/.vim_runtime

sh ~/.vim_runtime/install.sh

### Windows:
Open GIT Bash inside of YOURUSERNAME/.vim_runtime/ and clone the git repo:

git clone --depth=1 https://github.com/rvn91/vimrc.git ~/.vim_runtime

This saves a runtime environment inside ./vim_runtime, where the plugins will be stored.

Run "install.sh" in GIT Bash: 

C:/Users/YOURUSERNAME/.vim_runtime/install.sh

#### Cmder
For cmder you need to enter the following in Settings -> Environment

"set TERM=xterm-256color"

## Plugins
NERDTree. File system explorer for the Vim editor (https://github.com/preservim/nerdtree)

Indent Guides. Plugin for visually displaying indent levels in Vim (https://github.com/nathanaelkane/vim-indent-guides)

virtualenv.vim. Access virtualenv inside VIM (https://github.com/jmcantrell/vim-virtualenv)

yankstank. Allows you to yank and delete things without worrying about losing the text that you yanked previously (https://github.com/maxbrunsfeld/vim-yankstack)

zig-vim. Zig language server. Codehighlighting for the Zig programming language (https://github.com/ziglang/zig.vim)

## Keymaps
### Leader
The leader is ",", so whenever you see \<leader\> it means ",".

### Mappings
\<leader\>t - Toggles file system explorer on and off

\<leader\>e - Reloads the vimrc configs.

\<C-Up\> - Increase the font size

\<C-Down\> - Decrease the font size

\<leader\>ig - Toggles the identation guides on and off

\<F5\> - Compiles the source file. Currentlyb only for markdown files using pandcc

\<C-c\> and \<C-p\> - Copy and paste from and to vim using system clipboard

## Templating
Automatic templates for C and Python files.

## Download and update plugins
Run update_plugins.py. Can be run with a default Python distribution.

From inside VIM:

!python update_plugins.py
