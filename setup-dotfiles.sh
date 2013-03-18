#!/bin/sh

cd
if [ -d ./dot_files ]; then
    echo "already exists! $HOME/dot_files"
    exit;
fi
git clone git://github.com/dameninngenn/dot_files.git

if [ ! -d ./work ]; then
    mkdir work
fi

if [ -f ./.perltidyrc ]; then
    mv ./.perltidyrc ./work/
fi

if [ -f ./.screenrc ]; then
    mv ./.screenrc ./work/
fi

if [ -f ./.vimrc ]; then
    mv ./.vimrc ./work/
fi

if [ -f ./.zlogin ]; then
    mv ./.zlogin ./work/
fi

if [ -f ./.zshenv ]; then
    mv ./.zshenv ./work/
fi

if [ -f ./.zshrc ]; then
    mv ./.zshrc ./work/
fi
if [ ! -d ./.zsh ]; then
    mkdir ./.zsh
    touch ./.zsh/cdd_pwd_list
fi

ln -s ./dot_files/.perltidyrc ./.perltidyrc
ln -s ./dot_files/.screenrc ./.screenrc
ln -s ./dot_files/.vimrc ./.vimrc
ln -s ./dot_files/.zlogin ./.zlogin
ln -s ./dot_files/.zshenv ./.zshenv
ln -s ./dot_files/.zshrc ./.zshrc

echo "finished setup dotfiles"
echo "chsh to zsh and source ~/.zshrc"
