# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "chef/centos-7.0"
  # the bridge interface depends of your machine
  config.vm.network "public_network", bridge: 'en0: Wi-Fi (AirPort)'
  config.vm.synced_folder "../data", "/data"
  config.vm.provider "virtualbox" do |vb|
    vb.memory = "2048"
  end
  config.vm.provision "shell", inline: <<-SHELL
    sudo rpm -ivh /data/jre-7u76-linux-x64.rpm
    tar xvzf /data/apache-cassandra-2.0.14-bin.tar.gz
    mv apache-cassandra-2.0.14/ cassandra
  SHELL
end
