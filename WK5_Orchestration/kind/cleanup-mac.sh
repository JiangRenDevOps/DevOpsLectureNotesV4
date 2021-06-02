#!/bin/bash

cd "$(dirname "$0")"

./scripts/delete-cluster.sh

# remove all the containers
docker ps -q | xargs docker kill
docker ps -qa | xargs docker rm
