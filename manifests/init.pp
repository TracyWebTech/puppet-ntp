
class ntp (
  $server='pool.ntp.org',
){
  package { 'ntpdate':
    ensure => installed,
  }

  cron { 'ntpdate':
    command => "/usr/sbin/ntpdate $server",
    user    => 'root',
    minute  => '0',
    require => Package['ntpdate'],
  }
}
