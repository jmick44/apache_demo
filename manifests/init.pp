class apache_demo {

  package { 'httpd':
    ensure => installed,
  }

  file { '/var/www/html':
    ensure => directory,
    require => Package['httpd'],
  }

  file { '/var/www/html/index.html':
    ensure => file,
    content => "Puppet rocks!",
    require => File['/var/www/html'],
  }

  service { 'httpd':
    ensure => running,
    subscribe => File['/var/www/html/index.html'],
  }
}
