# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "louk/centos67minimal"

  config.vm.box_check_update = false
#  config.vbguest.auto_update = false
  config.vbguest.no_remote = true

  config.vm.network "forwarded_port", guest: 3000, host: 4000
  config.vm.network "forwarded_port", guest: 1234, host: 1234

  config.vm.provision :shell, inline: "yum -y -q update"

  config.vm.provision :shell, path: "provision/01_git.sh"
  config.vm.provision :shell, path: "provision/02_rbenv.sh"
  config.vm.provision :shell, path: "provision/03_ruby.sh"
  config.vm.provision :shell, path: "provision/04_rails.sh"
  config.vm.provision :shell, path: "provision/05_sqlite3.sh"
  config.vm.provision :shell, path: "provision/06_node.sh"
  config.vm.provision :shell, path: "provision/07_check.sh"
end
