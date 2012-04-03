#!/bin/sh

cd
if [ -d ./.rvm ]; then
    echo "already exists .rvm directory!"
    exit
fi

# bash -s stable < <(curl -s https://raw.github.com/wayneeseguin/rvm/master/binscripts/rvm-installer)
# [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
# rvm install 1.9.2
# rvm use 1.9.2
# rvm --default use 1.9.2

echo "finished install rvm"
echo "please add to .zshrc or .bashrc"
echo '[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"'
