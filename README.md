# vagrant-boxes for Rails study

## Spec
centos67-x86_64 minimal with ...  
rbenv 1.0.0  
Ruby 2.2.1  
Rails 4.2.1  
sqlite3 3.9.1  
Node.js 0.12.7  

## Box
https://atlas.hashicorp.com/louk/centos67minimal  

## Installation for Mac

#### Install Vagrant
http://www.vagrantup.com/downloads.html

#### Install Vagrant Plugin
```sh
# on host os
$ vagrant plugin install vagrant-vbguest
```

#### Install Virtualbox
https://www.virtualbox.org/wiki/Downloads

#### Start up Vagrant box, and connect by ssh
```sh
# on host os
# note: you should change the directory '~/projects/..' below to your directories
$ mkdir -p ~/projects
$ git clone https://github.com/kiyotan/vagrant-boxes.git ~/projects/rails_study
$ cd ~/projects/rails_study
$ vagrant up
$ vagrant ssh
```

#### Create rails project, Start server, and access by a browser
```sh
# on guest os
# note: you should change the project name 'rails_study' below to your project
$ cd /vagrant
$ rails new . rails_study
$ bin/rails s -b 0.0.0.0

# on host os
access http://0.0.0.0:4000/
```
---

**_enjoy!_**


