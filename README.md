# Cassandra-cluster-test

Requirements:
* VirtualBox
* Vagrant
* RAM

#### Please edit Vagrantfile and Vagrantfile.node1 (bridge interface)

#### Cassandra Cluster (5 nodes):
```bash
./run.sh
```

#### Result
```bash
cd node1
vagrant ssh
[vagrant@localhost ~]$ sudo cassandra/bin/nodetool status
Datacenter: datacenter1
=======================
Status=Up/Down
|/ State=Normal/Leaving/Joining/Moving
--  Address        Load       Tokens  Owns (effective)  Host ID                               Rack
UN  192.168.1.122  96.38 KB   256     39.0%             0dedbd68-6bf6-48de-b3a9-b2d749185f94  rack1
UN  192.168.1.120  92.77 KB   256     40.5%             83f3c5a1-b210-424f-8145-e0216158aa00  rack1
UN  192.168.1.121  96.51 KB   256     38.0%             19bd4c08-667e-4508-9cce-4effe6ccdecb  rack1
UN  192.168.1.118  45.86 KB   256     38.9%             2b7a6359-9d79-4daa-8282-e397e3f0d603  rack1
UN  192.168.1.119  76.61 KB   256     43.6%             826f31f6-b695-4d68-9af4-e7035d0a7006  rack1
[vagrant@localhost ~]$
```
