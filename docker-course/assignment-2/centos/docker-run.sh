#!/bin/bash

docker build -t centos-curl .
docker run -it --rm centos-curl