# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

#Enable the Puppet provisioner, with will look in manifests
	config.vm.provision :puppet do |puppet|
		puppet.manifests_path = "manifests"
		puppet.manifest_file = "default.pp"
		puppet.module_path = "modules"
	end

	# Add box prior to doing a vagrant up : vagrant box add kk-centos-6.5-x86_64 https://vagrantcloud.com/samueljon/kk-centos-6.5-x86_64.box/version/2/provider/virtualbox.box
	config.vm.box = "kk-centos-6.5-x86_64"

	# Forward guest port 80 to host port 8888 and name mapping
	config.vm.network :forwarded_port, guest: 80, host: 8888
	config.vm.hostname = "kosmosdevelopment"
	#  config.vm.synced_folder "webroot/", "/vagrant/webroot/", :owner => "www-data"
end
