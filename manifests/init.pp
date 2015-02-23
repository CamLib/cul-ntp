class ntp (
    $enable     = undef,
    $start      = undef,
    $packages   = undef,
    $version    = undef,
    $configfile = undef,
    $servers    = undef,
) {
    class{'ntp::install': } ->
    class{'ntp::config': } ~>
    class{'ntp::service': } ->
    Class["ntp"]
}
