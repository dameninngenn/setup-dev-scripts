#!/bin/sh

cd
if [ ! -d ./work ]; then
    mkdir work
fi
if [ ! -d ./local ]; then
    mkdir local
fi

cd work
echo "install vim...$HOME/local"
curl -O ftp://ftp.vim.org/pub/vim/unix/vim-7.3.tar.bz2
tar jxf ./vim-7.3.tar.bz2

cd vim73
mkdir patches
cd patches

# XXX when adding patches
curl -O ftp://ftp.vim.org/pub/vim/patches/7.3/7.3.[001-434]

cd ..
cat patches/7.3.* | patch -p0

./configure --enable-multibyte --enable-xim --enable-fontset --with-features=big --disable-selinux --prefix=$HOME/local
make
make install

echo "finished install vim...$HOME/local/bin/vim"
echo "please add to .zshrc or .bashrc"
echo 'PATH=$PATH:$HOME/local/bin'
