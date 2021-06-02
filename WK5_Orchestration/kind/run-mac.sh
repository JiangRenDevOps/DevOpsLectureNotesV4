#!/bin/bash
set -e

cd scripts

if ! type "kind" 2>&1 > /dev/null ; then
    ./install-kind-and-kubectl-mac.sh
fi



./delete-cluster.sh
./create-cluster-mac.sh

./create-namespace.sh
./deploy-demoapp.sh
./deploy-demojob.sh
./deploy-dashboard.sh