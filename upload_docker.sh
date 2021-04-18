#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=sv739/udacity-model:1.0

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository
sudo docker tag model:1.0 sv739/udacity-model:1.0
sudo docker push sv739/udacity-model:1.0
