#!/bin/bash

VOLUME_NAME="postgresql_data"

docker stop postgres_962
docker rm postgres_961 postgres_962
docker volume rm ${VOLUME_NAME}