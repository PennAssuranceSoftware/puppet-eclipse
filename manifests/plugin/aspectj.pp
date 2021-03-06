# Class: eclipse::plugin::aspectj
#
# This class installs the Eclipse AspectJ Plugins
#
# Sample Usage:
#
#  include eclipse::plugin::aspectj
#
class eclipse::plugin::aspectj (
  $method           = 'package',
  $ensure           = present
) {

  include eclipse
  include eclipse::params

  $repository = 'http://download.eclipse.org/tools/ajdt/44/dev/update/'

  eclipse::plugin { 'aspectj-compiler':
    iu         => 'org.aspectj.feature.group',
    method     => $method,
    repository => "${repository},${eclipse::repository}"
  }
  
  eclipse::plugin { 'aspectj-development-tools':
    iu         => 'org.eclipse.ajdt.feature.group',
    method     => $method,
    repository => "${repository},${eclipse::repository}"
  }
  
  eclipse::plugin { 'cross-ref':
    iu         => 'org.eclipse.contribution.xref.feature.group',
    method     => $method,
    repository => "${repository},${eclipse::repository}"
  }

  eclipse::plugin { 'equinox-weaving-sdk':
    iu         => 'org.eclipse.equinox.weaving.sdk.feature.group',
    method     => $method,
    repository => "${repository},${eclipse::repository}"
  }
  
  eclipse::plugin { 'cross-ref-source':
    iu         => 'org.eclipse.contribution.xref.source.feature.group',
    method     => $method,
    repository => "${repository},${eclipse::repository}"
  }
  
  eclipse::plugin { 'eclipse-weaving-service':
    iu         => 'org.eclipse.contribution.weaving.feature.group',
    method     => $method,
    repository => "${repository},${eclipse::repository}"
  }

  eclipse::plugin { 'eclipse-weaving-service-source':
    iu         => 'org.eclipse.contribution.weaving.source.feature.group',
    method     => $method,
    repository => "${repository},${eclipse::repository}"
  }

}
