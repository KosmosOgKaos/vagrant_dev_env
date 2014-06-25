# Vagrant Development Environment #

## Description
This is a local development environment that utilizes Vagrant setup with Puppet provisioning. 

## Setup


As a prequisite you must install Virtualbox and Vagrant.

Vagrant can be downloaded from https://www.vagrantup.com/downloads

Virtualbox can be downloaded from https://www.virtualbox.org/wiki/Downloads

### MacOSX
	
	#First time setup
	brew tap caskroom/cask
	brew install brew-cask
	brew cask install virtualbox
	brew cask install vagrant
	
	#Checking out the vagrant box and starting up the environment
	git clone --recursive git@github.com:KosmosOgKaos/vagrant_dev_env.git "name of your project"
	cd "name of your project"
	
	#start up your development instance
	vagrant up

Note: The initial bootstrap of the environment takes about 5-6 minutes.



### Linux

### Windows
	
	Download Virtualbox from https://www.virtualbox.org/wiki/Downloads
	Download Vagrant from http://www.vagrantup.com/downloads.html
	
	Once Vagrant and Virtualbox is installed checkout the development setup from Github from command prompt or from a Git client.

	git clone --recursive git@github.com:KosmosOgKaos/vagrant_dev_env.git "name of your project"
	cd "name of your project"
	
	#start up your development instance
	vagrant up

Note: The initial bootstrap of the environment takes about 5-6 minutes.

## Usage

Open up a terminal of your choosing in the folder that contains the Vagrantfile.

	After the box has been downloaded and installed you can startup a Vagrant instance you simply type "vagrant up". 
	
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
