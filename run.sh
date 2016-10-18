#!/bin/bash
# docker run --name pyocv -v $PWD:/app -v /tmp:/tmp ocv bin/venv python faceDetect.py
docker run -P --name pyocv -v $PWD:/app -v /tmp:/tmp ocv bin/venv python faceDetect.py
