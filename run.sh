#!/bin/bash
mkdir node{1..4}
for n in {1..4};
do
  cp Vagrantfile node${n}
done
mkdir data && cd data
wget --no-cookies --no-check-certificate --header \
  "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" \
  "http://download.oracle.com/otn-pub/java/jdk/7u76-b13/jre-7u76-linux-x64.rpm"
wget http://archive.apache.org/dist/cassandra/2.0.14/apache-cassandra-2.0.14-bin.tar.gz
cd ../node1 && vagrant up
vagrant ssh
