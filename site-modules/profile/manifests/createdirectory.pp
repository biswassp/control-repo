class profile::createdirectory{
file { 'c:/puppet':
  ensure => 'directory',
#  owner  => 'puppetuser02',
#  group  => 'puppetuser02',
}
}
