# Vagrant Development Environment #

## Description
This is a local development environment that utilizes Vagrant setup with Puppet provisioning. 

## Setup


As a prequisite you must install Virtualbox and Vagrant.

Vagrant can be downloaded from https://www.vagrantup.com/downloads

Virtualbox can be downloaded from https://www.virtualbox.org/wiki/Downloads

### MacOSX
	
	brew tap caskroom/cask
	brew install brew-cask
	brew cask install virtualbox
	brew cask install vagrant



### Linux

### Windows
	
	Download Virtualbox from https://www.virtualbox.org/wiki/Downloads
	Download Vagrant from http://www.vagrantup.com/downloads.html
	
	Once Vagrant and Virtualbox is installed checkout the development setup from Github from command prompt or from a Git client.

	git clone --recursive git@github.com:KosmosOgKaos/vagrant_dev_env.git "name of your project"
	cd "name of your project"
	
	#start up your development instance
	vagrant up

## Usage

Open up a terminal of your choosing in the folder that contains the Vagrantfile.

	Start by fetching the Operating system box file by typing:
	vagrant box add kk-centos-6.5-x86_64 https://vagrantcloud.com/samueljon/kk-centos-6.5-x86_64.box/version/4/provider/virtualbox.box
	
	After the box has been added be sure to enable all git submodules by typing:
	
	git submodule init
	git submodule update

	After the box has been downloaded and submodules have been installed you can startup a Vagrant instance you simply type "vagrant up". 
	
	Other commands dealing with vagrant see: vagrant --help

	connect        -- Connects to a shared, remote Vagrant environment
	destroy        -- Destroys the vagrant environment
	halt           -- Halts the currently running vagrant environment
	provision      -- Run the provisioner
	reload         -- Reload the vagrant environment
	resume         -- Resumes a suspend vagrant environment
	ssh            -- SSH into the currently running environment
	status         -- Shows the status of the current Vagrant environment
	suspend        -- Suspends the currently running vagrant environment
	up             -- Creates the vagrant environment


