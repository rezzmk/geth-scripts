#!/bin/bash

# shoutout to oleksiikoshlatyi https://github.com/oleksiikoshlatyi/geth-sync-tools.git

if [ -z "$1" ]; then
    filename='nodes.txt' #default value
else
    filename=$1
fi

counter=0
while read PEER
do
    echo $PEER
    if
        geth attach /mnt/nvm/ether/geth.ipc --exec "admin.addPeer('$PEER')";
    then
        counter=$((counter+1)) ; echo "node #$counter added"
    else
        echo "Failed to add node"
    fi
done < $filename
