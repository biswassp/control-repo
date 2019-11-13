class profile::basicweb{
# Delete the default website to prevent a port binding conflict.
iis_site {'Default Web Site':
  ensure  => absent,
}

iis_site { 'minimal':
  ensure          => 'started',
  physicalpath    => 'c:\\inetpub\\minimal',
  applicationpool => 'DefaultAppPool',
  require         => [File['minimal'],],
}

file { 'minimal':
  ensure => 'directory',
  path   => 'c:\\inetpub\\minimal',
}
}
