class profile::install7zip{
  package { 'notepadplusplus':
    ensure   => installed,
    provider => 'chocolatey',
  }
}
