#!/bin/bash

HO='\033[7m'
HC='\033[0m'

echo -e ${HO}Running apt-get update/upgrade...${HC}
sudo apt-get update -y
sudo apt-get upgrade -y

echo -e ${HO}Installing 'openjdk-8-jre-headless'...${HC}
sudo apt-get install openjdk-8-jre-headless -y

echo -e ${HO}Installing 'zookeeperd'...${HC}
sudo apt-get install zookeeperd -y

sudo chmod u+x /vagrant/sh/*.sh

echo -e ${HO}Starting ZooKeeper...${HC}
sudo cp /vagrant/config/zoo.cfg /etc/zookeeper/conf/zoo.cfg
sudo echo $1 > /var/lib/zookeeper/myid
sudo service zookeeper restart

echo -e ${HO}Done!${HC}
