#!/bin/bash

# build image:tag
docker build -t item-app:v1 .

# show local images
docker images

# tag image item-app:v1
docker tag item-app:v1 ghcr.io/haryis/item-app:v1 

# login to Github Container Registry using Personal Access Token
echo $CR_PAT | docker login ghcr.io -u haryis --password-stdin

# push image to Github Container Registry
docker push ghcr.io/haryis/item-app:v1