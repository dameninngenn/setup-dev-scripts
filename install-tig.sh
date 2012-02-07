#!/bin/sh

cd
if [ ! -d ./work ]; then
    mkdir work
fi
if [ ! -d ./local ]; then
    mkdir local
fi

cd work
echo "install tig...$HOME/local"
curl -O http://jonas.nitro.dk/tig/releases/tig-0.18.tar.gz
tar -zxvf ./tig-0.18.tar.gz

cd tig-0.18
./configure --prefix=$HOME/local
make
make install

echo "finished install tig...$HOME/local/bin/tig"
echo "please add to .zshrc or .bashrc"
echo 'PATH=$PATH:$HOME/local/bin'
