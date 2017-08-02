# Assignment 5: Named Volumes

## Task Description

In this assignment we will emulate the nessesity of a database version update, and demostrate how **docker volumes** can be utilized to tackle this particular use-case.

* Create a `postgres` container with a named volume `postgresql_data` linked to the directory `/var/lib/postgresql` within the container. The container should run postgres in version `9.6.1`.
* Stop the postgres container
* Create a new `postgres` container using the same named volume as the previous container and link it to `var/lib/postgresql` of the container again. This time the container should run postgres in version `9.6.2`.

The expected result is that the new postgres container in the updated version useses the same data volume das the previous container. And that no data persisted in the postgres database is lost during the version update.