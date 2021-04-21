#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=sv739/udacity-model:1.0

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run modeldemo \
      --generator=run-pod/v1\
      --image=$dockerpath\
      --port=80 --labels app=model

# Step 3:
# List kubernetes pods
sleep 30
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward modeldemo 8000:80 > kubernetes_out.txt
