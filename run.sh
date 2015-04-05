#!/bin/bash
mkdir node{1..5}
# Node 1 will be the seed for the others
cp Vagrantfile.node1 node1/Vagrantfile
for n in {2..5};
do
  cp Vagrantfile node${n}
done
# We need Oracle Java and Apache Cassandra
mkdir data && cd data
wget --no-cookies --no-check-certificate --header \
  "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" \
  "http://download.oracle.com/otn-pub/java/jdk/7u76-b13/jre-7u76-linux-x64.rpm"
wget http://archive.apache.org/dist/cassandra/2.0.14/apache-cassandra-2.0.14-bin.tar.gz
cd ../node1 && vagrant up
cd ../node2 && vagrant up
cd ../node3 && vagrant up
cd ../node4 && vagrant up
cd ../node5 && vagrant up
