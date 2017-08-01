#!/bin/bash

docker container run -d -p 80:80 --name my_nginx nginx
docker container run -d -p 8080:80 --name my_apache httpd
docker container run -d -p 3306:3306 --name my_mysql -e MYSQL_RANDOM_ROOT_PASSWORD=yes mysql