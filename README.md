About
=====
This repository contains a template [Vagrantfile][vagrantfile] for creating new [ZooKeeper][zookeeper] cluster. As a result, you will have 64-bit [Ubuntu][ubuntu] 16.04 (Xenial Xerus) virtual machines running your own ZooKeeper cluster.

Getting Started
===============
To quickly get started:
- install [VirtualBox][virtualbox] (> 5.1.22);
- install [Vagrant][vagrant] (> 1.9.5);
- clone this repository;
- execute `vagrant up`.

Default Setup
=============
By default, 3 ZooKeeper instances will be created. Instance details are as follow:

| Name | IP  | RAM (MB) | CPUs | CPU Cap (%) |
| :---: | :---: | :---: | :---: | :---: |
| zk-01 | 10.10.10.11 | 1024 | 1 | 50 |
| zk-02 | 10.10.10.12 | 1024 | 1 | 50 |
| zk-03 | 10.10.10.13 | 1024 | 1 | 50 |

Custom Setup
============
You can override default configuration with your own `config.rb` file. See `config.rb.sample` for more information.

[vagrantfile]: https://www.vagrantup.com/docs/vagrantfile/
[zookeeper]: https://zookeeper.apache.org/
[ubuntu]: https://atlas.hashicorp.com/ubuntu/boxes/xenial64
[virtualbox]: https://www.virtualbox.org/
[vagrant]: https://www.vagrantup.com/
