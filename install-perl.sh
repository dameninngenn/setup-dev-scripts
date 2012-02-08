#!/bin/sh

cd
if [ ! -d ./work ]; then
    mkdir work
fi
cd ./work

echo "install perlbrew..."
curl -LO --insecure http://xrl.us/perlbrew
chmod 755 ./perlbrew
./perlbrew install

$HOME/perl5/perlbrew/bin/perlbrew init
source $HOME/perl5/perlbrew/etc/bashrc

echo "finished install perlbrew...$HOME/perl5/perlbrew/bin"

echo "install perl..."
perlbrew install perl-5.12.2
perlbrew switch perl-5.12.2
hash -r
perl -v

echo "finished install perl!"

cd
if [ ! -d ./local ]; then
    mkdir local
fi
cd local
cd
if [ ! -d ./bin ]; then
    mkdir bin
fi
cd bin

echo "install cpanm...$HOME/local"
curl -LO --insecure http://xrl.us/cpanm
chmod 755 ./cpanm
echo "finished install cpanm...$HOME/local/bin/cpanm"
echo "please add to .zshrc or .bashrc"
echo 'PATH=$PATH:$HOME/local/bin'
echo 'source $HOME/perl5/perlbrew/etc/bashrc'
