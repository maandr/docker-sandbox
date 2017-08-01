# Assignment 1: Manage Multiple Containers

## Task Description

Run a `nginx`, a `mysql` and a `httpd` (apache) server using `docker container run` (or `docker run`). Run all of them `--detached` or `-d`.
* Ngnix should listen on port `80` and be named *my_nginx*
* Apache should listen on port `8080` and be named *my_apache*
* MySql should listen on port `3306` and be named *my_mysql*

When running mysql pass the environment variable `MYSQL_RANDOM_ROOT_PASSWORD=yes` using the `--environment` (or `-e`) option.
Use `docker container logs` (or `docker logs`) on the mysql container to find the random password it created during it's startup.

Clean it all up using `docker container stop` (or `docker stop`) and `docker container rm` (or `docker rm`). *Hint*: Both commands are able to accept multiple container names or id's.
