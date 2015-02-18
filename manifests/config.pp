class ntp::config (
    $configfile = $ntp::configfile,
    $servers  = $ntp::servers,
) {
    file { $ntp::configfile :
        content => template('ntp/ntp.conf.erb')
    }

}
