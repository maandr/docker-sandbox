# Assignment 3: DNS Round Robin

## Task Description

Ever since Docker Engine 1.11, we can have multiple containers on the same network resolve to the same DNS record.

Create a new virtual network (using the *default bridge driver*) and create two containers from the `elasticsearch:2` image on that virtual network. Use `--net-alias search` when creating the containers to have them being resolved to the same DNS record.
* Run `alpine nslookup search` within the same network as the created elasticsearch containers to ensure the two containers are resolving to the same DNS record.
* Run `centos curl -s search:9200` within the same network as the created elasticsearch containers multiple times until you see both elasticsearch instances answering the request.
