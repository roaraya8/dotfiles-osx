#/bin/bash

# bash -c "$(curl -fsSL https://raw.github.com/roaraya8/dotfiles-osx/master/.dotfiles/bootstrap.sh)"

set -e

git init
git config branch.master.rebase true
git remote add origin git@github.com:roaraya8/dotfiles-osx.git
git fetch
git reset --hard origin/master
git submodule update --init --recursive
git branch --set-upstream-to=origin/master
chsh -s /bin/zsh
