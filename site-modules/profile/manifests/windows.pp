class profile::windows {
  user { 'puppetuser02':
   ensure   => present,
   password => 'p@ssw0rd',
      }
 group { 'puppetgroup02':
   ensure  => present,
   members => ['puppetuser02'],
      }
}
