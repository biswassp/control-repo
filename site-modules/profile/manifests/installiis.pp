class profile::installiis{
  dsc_windowsfeature{'iis':
    dsc_ensure => 'Present',
    dsc_name   => 'Web-Server',
  }
  dsc_windowsfeature{'aspnet46':
    dsc_ensure => 'Present',
    dsc_name   => 'Web-Asp-Net46',
  }
}
