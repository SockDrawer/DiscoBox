# -*- mode: ruby -*-
# vi: set ft=ruby :

require File.join(File.dirname(__FILE__), 'vagrant-shell-scripts/vagrant')


# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
 
  config.vm.box = "ubuntu/trusty64"

  #Hosts file plugin
  #To install: vagrant plugin install vagrant-hostsupdater
  #This will let you access the VM at discourse.sockdrawer.local once it's up
  config.vm.network "private_network", ip: "192.168.33.12"
  #config.vm.hostname = "discourse.sockdrawer.local"

   config.vm.provider "virtualbox" do |vb|
     # Customize the amount of memory on the VM:
     vb.memory = "1024"
   end

	config.vm.provision :shell do |shell|
		vagrant_shell_scripts_configure(
			shell,
			File.dirname(__FILE__),
			'provision.sh'
		)
	end
end
