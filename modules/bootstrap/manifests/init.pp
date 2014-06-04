class bootstrap {

	# silence puppet and vagrant annoyance about the puppet group
	group { 'puppet':
		ensure => 'present'
	}

	# ensure local apt cache index is up to date before beginning
	exec { 'check-for-updates': 
	command => '/usr/bin/yum -y check-update',
	returns => [0,100]
	}
	exec { 'update-all-packages': 
	command => '/usr/bin/yum -y update', 
	require => Exec['check-for-updates'],
	returns => [0,100]
	} 
	# you can specify the packages in an array ...
	$enhancers = [ "centos-release-SCL", "strace", "sudo","htop","ccze","ntsysv","vim-enhanced","nano","links","man","finger","wget","telnet","bind-utils","sendmail","chkconfig","figlet" ]
	package { 
	$enhancers: ensure => "installed" 
	}
}

