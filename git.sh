#!/bin/sh
git add --all
timestamp() {
  date +"at %H:%M:%S on %d/%m/%Y"
}
git commit -am "Regular auto-commit $(timestamp)"
git push --all

Enter username for https://github.com: rvn91
Enter password for https://github.com: Rhenium186

rm -R ~/.vim_runtime
git clone --depth=1 https://github.com/rvn91/vimrc.git ~/.vim_runtime
