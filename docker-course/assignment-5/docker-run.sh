#!/bin/bash

VOLUME_NAME="postgresql_data"

docker volume create --name ${VOLUME_NAME}
docker run -d --name postgres_961 -v ${VOLUME_NAME}:/var/lib/postgresql postgres:9.6.1
docker stop postgres_961
docker run -d --name postgres_962 -v ${VOLUME_NAME}:/var/lib/postgresql postgres:9.6.2