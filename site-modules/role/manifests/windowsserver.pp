class role::windowsserver {
  include profile::windows
  include profile::createdirectory
  include profile::registry
  include profile::installiis
  include profile::basicweb
}
