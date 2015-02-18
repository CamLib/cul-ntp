class ntp (
    $enable     = true,
    $start      = true,
    $packages   = [],
    $version    = 'latest',
    $configfile = '/etc/ntp.conf',
    $servers    = [],
) {
    class{'ntp::install': } ->
    class{'ntp::config': } ~>
    class{'ntp::service': } ->
    Class["ntp"]
}
