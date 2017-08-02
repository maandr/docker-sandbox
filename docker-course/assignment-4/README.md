# Assignment 4: Build Your Own Image

## Task Description

Take the existing Note.js app from the `app` directory and create a `Dockerfile` to dockerize it. Use the `alpine` version of the official `node 6:x` image to base on.
* Build your image
* Run your image
* Push your image

The expected result is to be able to access the app at `http://localhost` (or `http://192.168.99.100`).

Once it's running tag an push the created image to your [Docker Hub](https://dockerhub.com) account (free). Then remove the image from local cache, and run it again from Docker Hub.