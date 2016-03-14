#!/bin/bash

if [[ -d /usr/local/bin/ ]]; then
  mkdir -p /usr/local/bin
fi

if [[ -d /usr/local/src/ ]]; then
  mkdir -p /usr/local/src
fi

cd /usr/local/src
wget http://www.sqlite.org/2015/sqlite-autoconf-3090100.tar.gz
tar zxvf sqlite-autoconf-3090100.tar.gz
cd sqlite-autoconf-3090100
./configure
make -s
make -s install
sudo yum -y -q install sqlite-devel

su vagrant -c "
  source ~/.bash_profile
  gem install sqlite3
"

