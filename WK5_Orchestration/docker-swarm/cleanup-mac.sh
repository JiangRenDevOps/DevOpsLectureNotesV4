#!/bin/bash
set -e

docker swarm leave --force | cat

# remove all the containers
docker ps -q | xargs docker kill
docker ps -qa | xargs docker rm
