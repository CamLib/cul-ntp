class ntp (
    $enable     = true,
    $start      = true,
    $packages   = [],
    $version    = 'latest',
    $configfile = '/etc/ntp.conf',
    $servers    = [],
) {
    anchor { 'ntp::begin': } ->
    class{'ntp::install': } ->
    class{'ntp::config': } ~>
    class{'ntp::service': } ->
    anchor { 'ntp::end': }
#    Class["ntp"]
}
