#! /bin/bash

# Pushing the image to docker hub

# Fail on error
set -su

# login to your docker hub account
docker login --username $DOCKER_HUB_USERNAME --password $DOCKER_HUB_PASSWORD

# Use the docker tag command to give it a new tag
docker tag $IMAGE_TAG $DOCKER_HUB_USERNAME/$DOCKER_HUB_REPO_NAME

# Push the image 
docker push $DOCKER_HUB_USERNAME/$DOCKER_HUB_REPO_NAME
