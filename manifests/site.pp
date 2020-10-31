node default {

}

node 'master.puppet.vm' {
  include role::master_server
  file { '/root/README':
    ensure => file,
    content => "Welcome to ${fqdn}\n",  
  }
  exec 
}

node /^web/ {
  include role::app_server
  include role::ssh_server
}

node /^db/ {
  include role::db_server
  include role::ssh_server
}
