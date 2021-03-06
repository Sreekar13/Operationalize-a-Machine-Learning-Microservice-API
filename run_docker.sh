#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
sudo docker build -t model:1.0 .

# Step 2: 
# List docker images
sudo docker images

# Step 3: 
# Run flask app
sudo docker run -it --name model_sample -p 8000:80 model:1.0 > docker_out.txt
