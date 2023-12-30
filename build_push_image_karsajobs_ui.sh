#!/bin/bash

# build image:tag
docker build -t ghcr.io/haryis/karsajobs-ui:latest .

# login to Github Container Registry using Personal Access Token
echo $CR_PAT | docker login ghcr.io -u haryis --password-stdin

# push image to Github Container Registry
docker push ghcr.io/haryis/karsajobs-ui:latest