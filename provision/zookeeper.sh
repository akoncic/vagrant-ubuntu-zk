#!/bin/bash

echo -e Running apt-get update/upgrade...
sudo apt-get update -y
sudo apt-get upgrade -y

echo -e Installing 'openjdk-8-jre-headless'...
sudo apt-get install openjdk-8-jre-headless -y

echo -e Installing 'zookeeperd'...
sudo apt-get install zookeeperd -y

echo -e Starting ZooKeeper...

sudo cp -f /etc/zookeeper/conf/zoo.cfg /etc/zookeeper/conf/zoo.cfg.backup

sudo echo "server.$1=10.10.10.$((10+$1)):2888:3888" >> /etc/zookeeper/conf/zoo.cfg

sudo echo $1 > /var/lib/zookeeper/myid
sudo service zookeeper restart

echo -e ZooKeeper started!
