#!/bin/bash

cd /usr/local/src
wget https://nodejs.org/download/release/v0.12.7/node-v0.12.7.tar.gz
tar zxvf node-v0.12.7.tar.gz
cd node-v0.12.7
./configure
make -s
make -s install

