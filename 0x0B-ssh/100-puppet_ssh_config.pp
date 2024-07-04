# 100-puppet_ssh_config.pp

file { '/home/ubuntu/.ssh':
  ensure => directory,
  mode   => '0700',
}

file { '/home/ubuntu/.ssh/config':
  ensure  => file,
  mode    => '0600',
  content => template('ssh/config.erb'),
}
