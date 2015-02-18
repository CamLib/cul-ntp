class ntp (
    $version    = 'latest',
    $enable     = 'true',
    $start      = 'true',
    $configfile = '/etc/ntp.conf',
    $servers    = [],
) {
    class{'ntp::install': } ->
    class{'ntp::config': } ~>
    class{'ntp::service': } ->
    Class["ntp"]
}
