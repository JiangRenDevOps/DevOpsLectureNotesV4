#!/bin/bash
set -e

# remove all the containers
docker ps -q | xargs docker kill
docker ps -qa | xargs docker rm

# remove all images
docker images -qa | xargs docker rmi -f
docker system prune
