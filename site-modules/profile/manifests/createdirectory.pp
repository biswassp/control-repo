class profile::createdirectory{
file { 'c:/puppet':
  ensure => 'directory',
#  owner  => 'puppetuser02',
#  group  => 'puppetuser02',
}
acl { 'c:/puppet':
  target                     => 'c:/puppet',
  purge                      => false,
  permissions                => [
   { identity => 'puppetuser01', rights => ['full'], perm_type=> 'allow', child_types => 'all', affects => 'all' },
   { identity => 'puppetuser02', rights => ['read'], perm_type=> 'allow', child_types => 'all', affects => 'all' }
  ],
  owner                      => 'puppetuser01', #Creator_Owner specific, doesn't manage unless specified
  group                      => 'puppetuser02', #Creator_Group specific, doesn't manage unless specified
  inherit_parent_permissions => true,
}
}
