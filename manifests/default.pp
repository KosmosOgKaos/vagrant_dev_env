Exec {
	path => ["/usr/bin", "/bin", "/usr/sbin", "/sbin", "/usr/local/bin", "/usr/local/sbin"]
}

if versioncmp($::puppetversion,'3.6.1') >= 0 { 
	$allow_virtual_packages = hiera('allow_virtual_packages',false) 
	Package { 
		allow_virtual => $allow_virtual_packages, 
	} 
} 

include bootstrap
#include tools
include apache
include php
#include php::pear
#include php::pecl
include mysql
include motd
