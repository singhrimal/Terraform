#!/bin/bash

# Fail on any error
set -eu

# Build the docker image
docker build -f $IMAGE_TAG/Dockerfile -t $IMAGE_TAG .