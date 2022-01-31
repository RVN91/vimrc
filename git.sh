#!/bin/sh
git config --global user.email "rn@civil.dk"
git config --global user.name "rvn"
git add -A
timestamp() {
  date +"at %H:%M:%S on %d/%m/%Y"
}
git commit -am "Regular auto-commit $(timestamp)"
git push origin master
