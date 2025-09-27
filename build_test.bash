#!/bin/bash
#
# Docker Container build Test Script.
#
# Compiles and launches app within the local docker container.


REPO="markserv"
RUN_ARGS="-v ./:/app -p 8642:8642 -p 35729:35729"

docker build -t jimurrito/$REPO:test .
docker run -it --rm $RUN_ARGS jimurrito/$REPO:test
