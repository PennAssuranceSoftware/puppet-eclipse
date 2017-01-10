# Class: eclipse::plugin::m2e_buildhelper
#
# This class installs the Eclipse M2E APT Connector
#
# Sample Usage:
#
#  include eclipse::plugin::m2e_apt
#
class eclipse::plugin::bndtools (
  $method           = 'package',
  $ensure           = present
) {

  include eclipse
  include eclipse::params

  $repository = 'https://dl.bintray.com/bndtools/bndtools/latest'

  eclipse::plugin { 'bndtools':
    iu         => 'bndtools.main.feature.feature.group',
    method     => $method,
    repository => "${repository},${eclipse::repository}"
  }

}
