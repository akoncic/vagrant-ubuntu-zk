About
=====
This repository contains a template [Vagrantfile][vagrantfile] for creating a new [ZooKeeper][zookeeper] cluster. As a result, you will have 64-bit [Ubuntu][ubuntu] 16.04 (Xenial Xerus) virtual machines running your own ZooKeeper cluster.

Getting Started
===============
Install [VirtualBox][virtualbox] (> 5.1.22), [Vagrant][vagrant] (> 1.9.5), clone this repository and execute `vagrant up`.

Default Setup
=============
By default, **3** ZooKeeper instances will be created. Instance details are as follow:

| Name | IP  | RAM (MB) | CPUs | CPU Cap (%) |
| --- | --- |
| zk-01 | 10.10.10.11 | 1024 | 1 | 50 |
| zk-02 | 10.10.10.12 | 1024 | 1 | 50 |
| zk-03 | 10.10.10.13 | 1024 | 1 | 50 |

Custom Setup
============
You can override default configuration with your own `config.rb` file. See `config.rb.sample` form more information.

Default configuration assumes maximum number of 3 instances. If you want to create more instances, you will need to manually add new `server.n` directive to `zoo.cfg` configuration file, where `n` is the instance number.

[vagrantfile]: https://www.vagrantup.com/docs/vagrantfile/
[zookeeper]: https://zookeeper.apache.org/
[ubuntu]: https://atlas.hashicorp.com/ubuntu/boxes/xenial64
[virtualbox]: https://www.virtualbox.org/
[vagrant]: https://www.vagrantup.com/
