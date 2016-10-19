#Dockerfile for python-opencv

# Pull base image.
FROM debian:sid

MAINTAINER jaiprak <jplko.simt@gmail.com>

# Install packages.
RUN apt-get -y update
RUN apt-get install -y curl
RUN apt-get install -y python python-dev python-pip
RUN apt-get install -y python-opencv
RUN apt-get install -y python-matplotlib

# Installing Node.js and npm
RUN apt-get install -y nodejs
RUN ln -s /usr/bin/nodejs /usr/bin/node

# Installing imagemagick 
RUN apt-get install -y imagemagick

# Installing npm and bower
RUN curl -L https://www.npmjs.org/install.sh | sh
RUN npm install -g bower

# Installing Node modules
RUN npm install -g nodemon
RUN npm install -g grunt-cli
RUN npm install -g grunt

# Define working directory.
WORKDIR /app

# Define default command.
CMD ["bash"]
