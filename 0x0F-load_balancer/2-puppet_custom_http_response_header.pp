# Puppet manifest to setup up an ubuntu server
# Update nginx, and custom http headers


# Update the system
exec { 'update_system':
  command => '/usr/bin/apt-get -y update',
  path    => ['/bin', '/usr/bin'],
}

# Install or update nginx
package { 'nginx':
  ensure  => 'latest',
  require => Exec['update_system'],
}

# Configure custom HTTP header
file { '/etc/nginx/sites-available/default':
  ensure  => file,
  content => template('nginx/default.erb'),
  require => Package['nginx'],
  notify  => Service['nginx'],
}

# Define custom HTTP header template
file { '/etc/nginx/sites-available/default':
  ensure  => file,
  content => "# Custom HTTP header\n\tadd_header X-Served-By ${::hostname};",
  require => Package['nginx'],
  notify  => Service['nginx'],
}

# Restart nginx to apply changes
service { 'nginx':
  ensure  => running,
  enable  => true,
  require => Package['nginx'],
}
