class mysql {

	# root mysql password
	$mysqlpw = "d3v0p5"

	# install mysql server
	package { "mysql-server":
		ensure      => present,
		#require => Exec["/usr/bin/yum update"]
	}

	#start mysql service
	service { "mysqld":
		ensure => running,
		require   => Package["mysql-server"],
	}

	# set mysql password
	exec { "set-mysql-password":
		unless   => "mysqladmin -uroot -p$mysqlpw status",
		command     => "mysqladmin -uroot password $mysqlpw",
		require => Service["mysqld"],
	}
}

