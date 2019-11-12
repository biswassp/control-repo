class profile::windows {
  user { 'puppetuser02':
   ensure   => present,
   password => 'p@ssw0rd',
   groups   => 'puppetgroup02'
   require  => Group['puppetgroup02'],
      }
 group { 'puppetgroup02':
   ensure => present,
      }
}
