geth attach /mnt/nvm/ether/geth.ipc --exec "admin.peers.forEach(function(value){console.log(value.network.remoteAddress+'\t'+value.name)})"
