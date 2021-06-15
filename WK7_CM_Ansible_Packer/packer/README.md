# Description
This demos the most common usage of packer - build AMI (Amazon Machine Image)

# Pre-requisite: 

## Install docker, ansible
## Install packer

https://www.packer.io/docs/install


# Tasks
## Task 1: Learn packer - 1.docker example
This demos a very simple usage of packer - build a docker image.
make sure your docker is installed and then run
```
cd 1.docker-example
packer build build.json
```

# Task 2: Build AMIs
## build simple AMI - 2.bake-ec2-to-image-shell-provisioner
This demos a basic AMI creation by packer using shell provisioner. 
Please make sure your ssh key and AWS credentials are configured.
```
cd 2.bake-ec2-to-image-shell-provisioner
packer build build.json
```

## build AMI provisioned by ansible - 3.bake-ec2-to-image-ansible-provisioner
This demos an AMI creation by packer using ansible provisioner. 
```
cd 2.bake-ec2-to-image-shell-provisioner
packer build build.json
```

# Task 3: Use AMI
## Launch an EC2 instance by AMI - AWS Console
Please exercise this in AWS EC2 console. Select the AMI that we built. Verify that EC2 instance has the changes
 - /tmp/hello.txt
 - docker images / containers

## Launch an EC2 instance by AMI - Terraform or Cloudformation
Use Terraform or Cloudformation to create an EC2 instance by our AMI.
 - Configure "User Data" of EC2 instance to start up docker container during system start or use "Systemd" to do that.

