#!/bin/bash
sudo add-apt-repository -y ppa:ethereum/ethereum
sudo apt-get update -y
sudo apt-get install ethereum -y
sudo mkdir /mnt/ebs/
sudo mount -t ext4 /dev/sdf /mnt/ebs/
