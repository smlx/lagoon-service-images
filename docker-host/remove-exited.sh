#!/bin/bash
set -x
if ! docker -H ${DOCKER_HOST} info &> /dev/null; then
    echo "could not connect to ${DOCKER_HOST}"; exit 1
fi

docker ps -a | grep Exit | cut -d ' ' -f 1 | xargs docker rm
