# Assignment 6: Writing A Compose File

## Task Description

Build a basic docker-compose file for a `Drupal`content management system based website. Use [DockerHub](http://www.dockerhub.com) to find a proper images.

Use the `drupal` image along with the `postgres` image to build the environment.

### Drupal
Use docker-composes `ports` declaration to expose Drupal on port `8080` so that you are able to reach it under `${DOCKER_IP}:8080`. Create volumes to store drupals unique data:
- *drupal-modules* `/var/www/html/modules`
- *drupal-profiles* `/var/www/html/profiles`
- *drupal-sites* `/var/www/html/sites`
- *drupal-themes* `/var/www/html/themes`

### Postgres
Make sure you set a `POSTGRES_USER` and `POSTGRES_PASSWORD` that will be used by your PostgreSQL instance. Also specify a volume to store postgres data into. You can use the environment variable `POSTGRES_DATA` to specify the directory where postgres will store it's data.

### Test your docker-compose environment
Once you able to start up you docker-compose environment run though the Drupal setup using your browser.

_Hint_: Drupal assumes the Database is running on `localhost`, but it's actually the service name.