class profile::windows {
  user { 'puppetuser01':
   ensure => present,
   password => 'p@ssw0rd',
   groups => 'Administrators'
      }
 group { 'puppetgroup01':
   ensure => present,
      }
}
