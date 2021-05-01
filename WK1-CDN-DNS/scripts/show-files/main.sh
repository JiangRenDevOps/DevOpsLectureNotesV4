#!/bin/bash
set -e 

while true; do
    echo
    echo "##################################"
    ssh ec2-user@3.25.99.145 ls
    echo "##################################"
    sleep 1
done