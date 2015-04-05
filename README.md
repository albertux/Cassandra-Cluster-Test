# Cassandra-cluster-test
#### Bootstrap first node:
```bash
./run.sh 
```
### TODO:
* Update $PATH to include cassandra bin
* bootstrap other nodes: cd node{2,3,4} && vagrant up
* Need update cassandra.yaml for each node
```yaml
cluster_name "_CLUSTER_NAME_"
seed_provider
 -seeds "_IPS_OF_SEEDS_"
listen_address "_IP_"
rpc_address "0.0.0.0"
```
#### Example running 2 nodes:
```bash
[vagrant@localhost ~]$ sudo cassandra/bin/nodetool status
Datacenter: datacenter1
=======================
Status=Up/Down
|/ State=Normal/Leaving/Joining/Moving
--  Address        Load       Tokens  Owns (effective)  Host ID                               Rack
UN  192.168.1.110  116.16 KB  256     100.0%            eeb9801a-fc66-42a8-a82f-0d7b88a8516c  rack1
UN  192.168.1.109  108.04 KB  256     100.0%            ecb0ebfd-3463-4c45-a111-188be767da96  rack1
[vagrant@localhost ~]$
```
