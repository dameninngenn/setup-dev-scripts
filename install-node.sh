#!/bin/sh

cd
if [ -d ./.nvm ]; then
    echo "already exists .nvm directory!"
    exit
fi

git clone git://github.com/creationix/nvm.git ~/.nvm
source ~/.nvm/nvm.sh
nvm install v0.6.12
nvm alias default v0.6.12
nvm use v0.6.12

echo "finished install nvm"
echo "please add to .zshrc or .bashrc"
echo "source ~/.nvm/nvm.sh"
