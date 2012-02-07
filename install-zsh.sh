#!/bin/sh

cd
if [ ! -d ./work ]; then
    mkdir work
fi
if [ ! -d ./local ]; then
    mkdir local
fi

cd work
echo "install zsh...$HOME/local"
curl -L -o "zsh-4.3.15.tar.gz" http://sourceforge.net/projects/zsh/files/zsh-dev/4.3.15/zsh-4.3.15.tar.gz/download\?use_mirror=jaist
tar -zxvf ./zsh-4.3.15.tar.gz

cd zsh-4.3.15
./configure --enable-multibyte --prefix=$HOME/local
make
make install

echo "finished install zsh...$HOME/local/bin/zsh"
echo "please add to /etc/shells"
echo "$HOME/local/bin/zsh"
echo "and chsh"
echo "chsh -s $HOME/local/bin/zsh $USER"
