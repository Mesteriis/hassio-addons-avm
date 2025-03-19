#!/bin/bash

DOCKER_USER="mesteriis"
DOCKER_REPO="hassio"

find . -name 'Dockerfile' | while read dockerfile; do
    dir=$(dirname "$dockerfile")
    tag_name=$(echo "$dir" | sed 's|^\./||' | tr '/' '-' | tr -d '[:space:]' | tr '[:upper:]' '[:lower:]')
    git_sha=$(git rev-parse --short HEAD)

    base_tag="${DOCKER_USER}/${DOCKER_REPO}-${tag_name}"
    command="docker build -t ${base_tag}:${git_sha} -t ${base_tag}:latest $dir"
    echo $command
    docker build -t ${base_tag}:${git_sha} -t ${base_tag}:latest $dir
    docker push ${base_tag}:${git_sha}
    docker push ${base_tag}:latest

done
