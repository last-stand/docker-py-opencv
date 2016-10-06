#!/bin/bash

docker run -v $PWD:/app -v /tmp:/tmp py-opencv bin/venv python faceDetect.py
