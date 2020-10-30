node default {
}
node 'master.puppet.vm {
  include role::main_server
}
