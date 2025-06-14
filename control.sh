#!/usr/bin/env bash
set -e
docker build . -t memrobot/basic-control:latest
# docker run --rm --privileged -p 8081:80 -v /dev/:/dev/ memrobot/basic-control
docker run --rm -it --privileged -p 8081:80 -v /dev/:/dev/ memrobot/basic-control /bin/bash
