#!/bin/bash
# Test Apache provisiones with Ansible

ANSIBLE_ROLE="aplyca.Apache"
DOCKER_IMAGE="ansible/ubuntu14.04-ansible"

docker run -it --name test-apache -v `pwd`:/tmp/${ANSIBLE_ROLE} ${DOCKER_IMAGE} /tmp/${ANSIBLE_ROLE}/tests/tests.sh
docker stop test-apache && docker rm test-apache
