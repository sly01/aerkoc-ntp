class ntp::params {
	$package_name 			= 'ntp'
	$package_ensure 		= 'present'
	$config_name 				= 'ntp.conf'
	$config_file_mode	  = '0644'
	$service_status  	  = 'running'
	$service_enable		  = true
	$service_hasstatus  = true
	$service_hasrestart = true

	case $::osfamily {
		'RedHat': {
			$servers = ['0.centos.pool.ntp.org', '1.centos.pool.ntp.org']
			$service_name = 'ntpd'
		}
		'Debian': { 
			$servers = ['0.ubuntu.pool.ntp.org', '1.ubuntu.pool.ntp.org']
			$service_name = 'ntp'
		}
		default: {
			notify { "This package doesn't support ${::osfamily}": }	
		}
	}
}
