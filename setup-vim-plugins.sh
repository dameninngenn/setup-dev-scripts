#!/bin/sh

cd
if [ -d ./.vim ]; then
    echo "already exists! $HOME/.vim"
    exit;
fi
git clone git://github.com/dameninngenn/.vim.git

# XXX ssh or git
# do replace

cd .vim
git submodule init
git submodule update

cd
if [ ! -d ./tmp ]; then
    mkdir tmp
fi
echo "finished setup vim plugins"
