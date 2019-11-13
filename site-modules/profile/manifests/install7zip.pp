class profile::install7zip{
  package { 'notepadplusplus':
    ensure   => installed,
    provider => 'chocolatey',
  }
  package { '7zip':
    ensure   => installed,
    provider => 'chocolatey',
  }
}
