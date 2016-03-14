#!/bin/bash

yum -y -q install libffi-devel openssl-devel readline-devel zlib-devel
su vagrant -c "
  source ~/.bash_profile
  rbenv install 2.2.1
  rbenv global 2.2.1
"

