#!/bin/bash

docker stop elastic1 elastic2
docker rm elastic1 elastic2
docker network rm ${NETWORK}