#!/bin/bash

docker build -t ubuntu-curl .
docker run --rm ubuntu-curl