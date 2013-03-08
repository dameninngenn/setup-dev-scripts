#!/bin/sh

cd
if [ -d ./.vim ]; then
    echo "already exists! $HOME/.vim"
    exit;
fi
git clone git://github.com/dameninngenn/.vim.git

cd .vim
git submodule init
git submodule update

mkdir bundle
cd bundle
git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
vim +NeoBundleInstall +q

cd
if [ ! -d ./tmp ]; then
    mkdir tmp
fi
echo "finished setup vim plugins"
