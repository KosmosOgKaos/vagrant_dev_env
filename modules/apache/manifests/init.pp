class apache {
	# Install Apache package
	package { "httpd":
		ensure => present,
	}

	# Enable the httpd service (same as doing chkconfig httpd on)
	service { "httpd":
		ensure  => running,
		require => Package["httpd"],
	}

	# Remove the initial welcome page 
	file { "/etc/httpd/conf.d/welcome.conf":
		ensure  => absent,
		require => Package["httpd"]
	}
	# Create inital web directory for storing kk websites
	file { "/home/websites":
		ensure => "directory",
	}

	file { 'kk_custom.conf':
		path    => '/etc/httpd/conf.d/kk_custom.conf',
		ensure  => file,
		require => Package['httpd'],
		content => template("apache/kk_custom_conf.erb"),
		notify	 => Service["httpd"]
	}

	file { 'kk_default_vhost':
		path	 => '/etc/httpd/conf.d/kk_default_vhost.conf',
		ensure	 => file,
		require  => Package['httpd'],
		content	 => template("apache/kk_default_vhost.erb"),
		notify	 => Service['httpd']
	}
}
