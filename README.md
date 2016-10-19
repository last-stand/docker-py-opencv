Docker-python-opencv
================

Docker for Python-Opencv based on Debian sid

## Linux Package::  
 - python 2.7
 - python-pip  
 - python-opencv
 - python-matplotlib
 - nodejs
 - npm
 - imagemagick
 - bower
 - nodemon
 - grunt
 - grunt-cli

## Use created **docker** image and run server:

1. Go to [https://hub.docker.com/r/jaiprak/pyocv/](https://hub.docker.com/r/jaiprak/pyocv/) and pull the docker image.

	```sh
	$ docker pull jaiprak/pyocv
	```
2. Create and run docker container from build image,

	```sh
	$ docker-compose up
	```
3. Run `docker-machine ip` to get your docker-machine ip.

4. Go to your browser and run **http://docker_machine_ip:8000/** to see whether server is working or not.

5. Create a directory for example ocv_client wherever you want. Go to [https://github.com/last-stand/opencv-api/tree/master/access_cv_api](https://github.com/last-stand/opencv-api/tree/master/access_cv_api) and copy both files **test_api.py** and **url_to_image.py** inside the created directory.

6. Now give your server's url **(http://docker_machine_ip:8000/)** on this line `api_url = "http://localhost:8000/face_detection/detect/"` in **test_api.py** file and `image_url="someimage"` whatever image you want.
> **Note:** <br />
> In point 6, we have the code for both getting image via URL and file (from local storage). Just uncomment whatever you want.

## Create **docker** image and run server:

1. Go to docker-py-opencv folder, start your docker machine and build Docker images.

	```sh
	# start and setup docker machine environment
	$ docker-machine start machine1
	$ docker-machine env machine1
	$ eval $(docker-machine env machine1)

	# build docker image
	$ docker-compose build
	```
2. After building image follow the steps from **2** to **6** as mentioned above.

