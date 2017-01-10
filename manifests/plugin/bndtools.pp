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
    repository => $repository
  }

}
