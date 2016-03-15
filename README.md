# vagrant-boxes for Rails study

## Spec
centos67-x86_64 minimal with  
rbenv 1.0.0  
Ruby 2.2.1  
Rails 4.2.1  
sqlite3 3.9.1  
Node.js 0.12.7  

## Box
https://atlas.hashicorp.com/louk/centos67minimal  

## Preparation for Mac

#### Install Vagrant
http://www.vagrantup.com/downloads.html

#### Install Virtualbox
https://www.virtualbox.org/wiki/Downloads

## Execution Rails Application

0. Install Vagrant Plugin
    ```sh
    # on host os
    $ vagrant plugin install vagrant-vbguest
    ```

0.  Start up Vagrant box, and Connect by ssh
    ```sh
    # on host os
    # note: you should change the directory '~/projects/..' below to your directories
    $ mkdir -p ~/projects
    $ git clone https://github.com/kiyotan/vagrant-boxes.git ~/projects/rails_study
    $ cd ~/projects/rails_study
    $ vagrant up
    $ vagrant ssh
    ```

0. Create Rails project, and Start WEBrick server
    ```sh
    # on guest os
    # note: you should change the project name 'rails_study' below to your project
    $ cd /vagrant
    $ rails new . rails_study
    $ bin/rails s -b 0.0.0.0
    ```

0. Access below URL on host os
    ```html
    <http://0.0.0.0:4000/>
    ```
    _[link to http://0.0.0.0:4000/](http://0.0.0.0:4000/)_

---

**_enjoy!_  (^o^)/**


