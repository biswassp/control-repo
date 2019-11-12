class profile::windows {
  user { 'puppetuser02':
   ensure   => present,
   password => 'p@ssw0rd',
      }
 group { 'puppetgroup02':
   ensure  => present,
   members => ['puppetuser02'],
      }
 local_security_policy { 'Log on as a service':
  ensure => present,
  policy_value => 'windows2-16\puppetuser02',
}
}
