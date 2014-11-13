# Vars:
$home = "/home/vagrant"
$executes_as_vagrant = "sudo -u vagrant -H bash -l -c"

# Set default binary paths:
Exec {
  path => [ "/usr/bin", "/usr/local/bin" ]
}

# Prepare system before main stage:
stage { "init": }

class update_apt {
  exec { "apt-get -y update": }
}

class { "update_apt":
  stage => init,
}

Stage[ "init" ] -> Stage[ "main" ]

# Main packages:
package { "vim":
  ensure => "present",
}

package { "git":
  ensure => "present",
}

package { "build-essential":
  ensure => "present",
}

package { "curl":
  ensure => "present"
}

package { "memcached":
  ensure => "present"
}

package { "python-software-properties":
  ensure => "present"
}

# Install Node.js and additional package dependencies:
class { "nodejs":
  version => "stable",
}