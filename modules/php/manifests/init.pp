class php {
	# package install list
	$packages = [
		"php",
		"php-pear",
		"php-tidy",
		"php-zipstream",
		"php-pecl-apc",
		"php-adodb",
		"php-pear-XML-RSS",
		"php-mysql",
		"php-gd",
		"php-common",
		"php-xml",
		"php-soap",
		"php-when",
		"php-pecl-memcache",
		"php-pear-Date",
		"php-mbstring",
		"php-mcrypt",
		"php-pdo",
		"php-intl",
		"php-cli",
		"php-dba",
		"php-devel",
	]
	package { $packages:
		ensure => present,
		notify => Service['httpd'],
	}

	file { 'kk_custom.ini':
		path       => '/etc/php.d/kk_custom.ini',
		ensure    => file,
		require  => Package['php'],
		content => template("php/kk_custom_ini.erb"),
	}

	exec {"Install Drush":
		command => "pear channel-discover pear.drush.org && pear install drush/drush",
		require => Package['php-pear']
	}
}
