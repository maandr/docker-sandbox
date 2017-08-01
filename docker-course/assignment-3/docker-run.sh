#!/bin/bash

# create a new network
docker network create ${NETWORK}

# run two elasticsearch container attached to the created network with the same network alias
docker container run -d --name elastic1 --net ${NETWORK} --net-alias ${NET_ALIAS} elasticsearch:2
docker container run -d --name elastic2 --net ${NETWORK} --net-alias ${NET_ALIAS} elasticsearch:2

# perform a nslookup on the containers network alias
docker container run --rm --net ${NETWORK} alpine nslookup ${NET_ALIAS}

echo "wait for elastic search to startup .."
sleep 10

# perform a request against the network alias of the two elasticsearch instances
for I in 1 2 3 4 5
do
    docker container run --rm --net ${NETWORK} centos curl -s ${NET_ALIAS}:9200
done
