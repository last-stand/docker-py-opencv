Docker-python-opencv
================

Docker for Python-Opencv based on Debian sid

### Linux Package::  
 - python (2.7)  
 - python-pip  
 - python-opencv
 - python-matplotlib

### Usage
1. Build Docker images

```sh
$ docker-compose build
```
2. Create and run docker container from build image,

```sh
$ docker-compose up
```
3. Run `docker-machine ip` to get your docker-machine ip.

4. Go to your browser and run **http://docker_machine_ip:8000/** to see whether server is working or not.

#### Example
- Files structure

```sh
$ ls
docker-py-opencv
$ tree
docker-py-opencv
├── cv_api
│   └── cv_api
│   └── face_detector
│   └── manage.py
├── Dockerfile
├── docker-compose.yml
├── README.md
└── requirements.txt
```
