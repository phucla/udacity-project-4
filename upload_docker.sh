#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
credential_path=~/password.txt
dockerpath="phucla132/udacity"

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
cat $credential_path | sudo docker login --username phucla132 --password-stdin

# Step 3:
# Push image to a docker repository
docker push $dockerpath