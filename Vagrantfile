# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

#Enable the Puppet provisioner, with will look in manifests
	config.vm.provision :puppet do |puppet|
		puppet.manifests_path = "manifests"
		puppet.manifest_file = "default.pp"
		puppet.module_path = "modules"
	end
	
# Forward Agent
#
# Enable agent forwarding on vagrant ssh commands. This allows you to use identities
# established on the host machine inside the guest. See the manual for ssh-add
  config.ssh.forward_agent = true
  
	config.vm.box = "samueljon/kk-centos-6.5-x86_64.box"

	# Forward guest port 80 to host port 8888 and name mapping
	config.vm.network :forwarded_port, guest: 80, host: 8888
	config.vm.network :forwarded_port, guest: 3306, host: 33067
	config.vm.hostname = "Lamp"
	config.vm.synced_folder "webroot/", "/vagrant/webroot/", :owner => "apache"

	# Customize provider
	config.vm.provider :virtualbox do |vb|
		# RAM and CPU
		host = RbConfig::CONFIG['host_os']
		# Give VM 1/4 system memory & access to all cpu cores on the host
		if host =~ /darwin/
			cpus = `sysctl -n hw.ncpu`.to_i
			# sysctl returns Bytes and we need to convert to MB
			mem = `sysctl -n hw.memsize`.to_i / 1024 / 1024 / 4
		elsif host =~ /linux/
			cpus = `nproc`.to_i
			# meminfo shows KB and we need to convert to MB
			mem = `grep 'MemTotal' /proc/meminfo | sed -e 's/MemTotal://' -e 's/ kB//'`.to_i / 1024 / 4
		else # sorry Windows folks, I can't help you
			cpus = 2
			mem = 2048
		end
		vb.customize ["modifyvm", :id, "--memory", mem ]
		vb.customize ["modifyvm", :id, "--cpus", cpus ]
		vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
		vb.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
	end

	config.vm.post_up_message = "
=========================================\n
Þróunarumhverfið þitt er tilbúið !\n
=========================================\n
þú getur tengst þjóni inn gegnum SSH í skel með \"vagrant ssh\".\n
Til að tengjast með Putty eða sambærilegt sjá \"vagrant ssh-config\".\n\n
Til að tengjast vefsvæði þá tengist þú með http://localhost:8888\n
Til að tengjast gagnagrunni localhost og port 33067
"
end
