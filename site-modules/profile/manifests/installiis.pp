class profile::installiis{
  dsc_windowsfeature{'iis':
    dsc_ensure => 'Present',
    dsc_name   => 'Web-Server',
  }
}
