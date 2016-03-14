#!/bin/bash
su vagrant -c "
  source ~/.bash_profile
  echo '-- check versions --'
  echo -n 'ruby    : '; ruby -v
  echo -n 'rails   : '; rails -v
  echo -n 'sqlite3 : '; sqlite3 -version
  echo -n 'node.js : '; node -v
  echo '-- finish --'
"

