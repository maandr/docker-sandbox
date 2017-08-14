# Assignment 7: Build and Run Compose

## Task Description

This time imagine just wanting to learn Drupal's admin and GUI, or maybe want to test software and you need to check a new theme for Drupal.

When configured properly, this compose environment will build a custom image and start everything with `docker-compose up` and store important database and config data in `volumes`, so the site will remember your changes across docker-compose restarts.

- Start off with the docker-compose file we created in the previous assignment and extend it to build and use a custom Drupal image instead of the offical one.
- Pin the image version from [DockerHub](https://www.dockerhub.com) this time. It is good practice to do that so a new major version release dosen't break your docker-compose setup when introducing new changes.

### Dockerfile

1. Create a custom _Dockerfile_ in the same directory were your _docker-compose_ file lives. Use `drupal:8.2` to base your image on.
2. run apt package manager command to install git `apt-get update && apt-get install -y git`
3. Cleanup after you your apt install `rm -rf /var/lib/apt/lists/*`.
4. Change to `WORKDIR /var/www/html/themes`
5. Use git to clone the theme using `git clone --branch 8.x-3.x --single-branch --depth 1 https://git.drupal.org/project/bootstrap.git`
6. This drupal container runs as _www-data_ user but the build runs as _root_ user. So we have to change the file owner to the proper user `chown -R www-data:www-data bootstrap`.
7. At the end change back the working directory to the default of the drupal image at `/var/www/html`.

- *HINT*: Make use of `\` and `&&` properly to combine multiple run commands, that will reduce docker build layers and minimize the size of the resulting image.

### Compose File

1. Rename image to `custom-drupal` as we want to make a new image based on the official image `drupal:8.2`.
2. Build the default Dockerfile in this directory by adding `build: .` to the `drupal` service. When we add a build and image value to a compose service, it knows from the image name that it has to write the image to our image cache, rather then to pull it from DockerHub.

### Start Containers, Configure Drupal

1. Start up your environment using `docker-compose up``
2. Run the Drupal web install
3. Once Drupal is up and running, navigate to `Appearance` in the top bar, and ensure a new theme called `Bootstrap` can be found here.
4. Click `Install and set as default`.
5. Click `back to site`
6. Now the website interface should look different and you have successfully installed and activated a new theme for Drupal in your own custom docker image.

- *HINT*: If you tear down your compose environment using `docker-compose down` it will stop and remove the containers, but not the volumes, so on the next `docker-compose up` everything will be in the state as configured before. If you want to cleanup also your volumes, add `-v` option to the `down` command.