#!/bin/bash

docker container stop my_nginx my_apache my_mysql
docker container rm my_nginx my_apache my_mysql
