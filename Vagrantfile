# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

#Enable the Puppet provisioner, with will look in manifests
	config.vm.provision :puppet do |puppet|
		puppet.manifests_path = "manifests"
		puppet.manifest_file = "default.pp"
		puppet.module_path = "modules"
	end

	config.vm.box = "samueljon/kk-centos-6.5-x86_64.box"

	# Forward guest port 80 to host port 8888 and name mapping
	config.vm.network :forwarded_port, guest: 80, host: 8888
	config.vm.network :forwarded_port, guest: 3306, host: 33067
	config.vm.hostname = "Lamp"
	config.vm.synced_folder "webroot/", "/vagrant/webroot/", :owner => "apache"


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
