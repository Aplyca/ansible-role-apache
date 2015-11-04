#!/bin/bash
# Build AWS CLI provisioned with Ansible

CONTAINER=apache
DOCKER_IMAGE="aplyca/${CONTAINER}"

echo "Building image"
docker build -t ${DOCKER_IMAGE} .

echo "Stopping and removing running db containers"
docker stop ${CONTAINER} && docker rm ${CONTAINER}

echo "Starting new db container"
docker run -d --name ${CONTAINER} -p 80:80 ${DOCKER_IMAGE}
