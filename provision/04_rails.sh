#!/bin/bash

su vagrant -c "
  source ~/.bash_profile
  gem install rails --no-ri --no-rdoc -v 4.2.1
"


