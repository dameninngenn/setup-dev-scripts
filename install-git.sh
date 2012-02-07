#!/bin/sh

cd
if [ ! -d ./work ]; then
    mkdir work
fi
if [ ! -d ./local ]; then
    mkdir local
fi

cd work
echo "install git...$HOME/local"
curl -O http://git-core.googlecode.com/files/git-1.7.9.tar.gz
tar -zxvf ./git-1.7.9.tar.gz

cd git-1.7.9
./configure --prefix=$HOME/local
make
make install

echo "finished install git...$HOME/local/bin/tig"
echo "please add to .zshrc or .bashrc"
echo 'PATH=$PATH:$HOME/local/bin'
