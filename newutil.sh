#!/bin/bash
# Builds, tags, and pushes the dotnet-core-build image
# If using the docker hub/store, set to your username. Otherwise,
# set it to the registry URL (example: localhost:5000)

if [! $REGISTRY ]; then
REGISTRY=arleyschrock
fi

# adjust to modify the tag
IMAGEID=dotnet-core-build

sudo docker build . --tag ${REGISTRY}/dotnet-core-build
sudo docker push ${REGISTRY}/dotnet-core-build
