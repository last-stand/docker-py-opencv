#!/bin/bash

echo "Installing python packages..."
pip install -r requirements.txt

echo "Server is listening on port 8000."
echo "Run http://<docker_machine_ip>:8000/ on your browser."
echo "To get docker-machine ip run 'docker-machine ip'"
