#!/bin/sh
git add --all
timestamp() {
  date +"at %H:%M:%S on %d/%m/%Y"
}
git commit -am "Regular auto-commit $(timestamp)"
git push origin master

rm -R ~/.vim_runtime
git clone --depth=1 https://github.com/rvn91/vimrc.git ~/.vim_runtime
