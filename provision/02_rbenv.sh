#!/bin/bash

cmd1="\"\$HOME/.rbenv/bin:/usr/local/bin:$PATH\""
cmd2="\"\$(rbenv init -)"\"

su vagrant -c "
  git clone git://github.com/sstephenson/rbenv.git /home/vagrant/.rbenv
  echo 'export PATH=${cmd1}' >> /home/vagrant/.bash_profile
  echo 'eval ${cmd2}' >> /home/vagrant/.bash_profile
  source ~/.bash_profile
  git clone git://github.com/sstephenson/ruby-build.git /home/vagrant/.rbenv/plugins/ruby-build
"

