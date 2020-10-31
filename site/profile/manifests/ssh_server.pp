class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC6lx2Cs5IBYt4NtBdK5A/9hkwLtNqz5/inIeJcY5kt1fbVYOGgko5YIRdwNnSsaN7rcXgxP5kU8wb4JHBHW80rUgmv9Zy2zI4O1sZz5fkojEI2lu1mZRCYHxgezT9AD7G8WtLWNS2YTkXtrycfuLiFEowVA+A7mdMfZNojAejS8fymqu7ijL2x7HWRgGUJ+ToYqibN3t/vTjJQf5JSB0lY1Ri3yRkSJNzavWOFFvnjBoNcYKZsKFBSbhULuhYTCSSK7b7APqjYBi+buKnh09PAQ1t/2VEykXZRk9r2bH+fe1QSfMrHK9DfPey+K7O/kyhvdLmtal1ajipe1TTtO+FZ',
	}  
}
