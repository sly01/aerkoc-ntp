class ntp::service(
	String $service_name   			= $ntp::service_name,
	String $service_status   		= $ntp::service_status,
	Boolean $service_enable		  = $ntp::service_enable,
	Boolean $service_hasstatus  = $ntp::service_hasstatus,
	Boolean $service_hasrestart = $ntp::service_hasrestart,
) {
	service { 'Service management':
		ensure 		 => $service_status,
		name 	     => $service_name,
		enable 		 => $service_enable,
		hasstatus  => $service_hasstatus,
		hasrestart => $service_hasrestart,

	}
}
