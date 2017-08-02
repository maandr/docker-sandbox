#!/bin/bash

docker build -t node-test .
docker run -d -p 80:3000 --name my_app node-test