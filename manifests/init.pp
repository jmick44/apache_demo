class apache_demo {

  package { 'httpd':
    ensure => installed,
  }

  file { '/var/www/html':
    ensure => directory,
  }

  file { '/var/www/html/index.html':
    ensure => file,
    content => "Puppet rocks!",
  }

  service { 'httpd':
    ensure => running,
  }
}
