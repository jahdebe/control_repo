class minecraft {
  file {'/opt/minecraft':
    ensure => directory,
  }
  file {'/opt/minecraft/server.jar':
    ensure => file,
    source => https://launcher.mojang.com/v1/objects/f02f4473dbf152c23d7d484952121db0b36698cb/server.jar
  }
  package {'java':
    ensure => present,
  }
  file { '/opt/minecraft/eula.txt:
    ensure => file,
    content => 'eula=true',
  }
  file {‘/etc/systemd/system/minecraft.service’:
    ensure => file,
    source => ‘puppet:///modules/minecraft/minecraft.service’,
  }
  service { ‘minecraft’:
    ensure => running,
    enable => true,
  }
}
