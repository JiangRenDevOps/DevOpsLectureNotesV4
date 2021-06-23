# Description

This is to demo the generic usage of Ansible.

# Tasks

## Task #1: Install Ansible
Install Ansible, boto3 and botocore via pip3. We install boto3 because it's required by Ansible Inventory EC2 plugin.
```
pip3 install ansible boto3 botocore
```
Validate by executing `ansible --version` and check it's using python3.

You may need to add `export PATH=$HOME/.local/bin:$PATH` to your `~/.bashrc` or `~/.zshrc`

Alternatively, you can follow https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html

## Task #2: Create AWS EC2 instances in us-east-1 region to test
- Please create a ssh key in AWS. Suggest to import your ssh public key below directly.
```
cat ~/.ssh/id_rsa.pub
```
- Use this [cloudformation template](CFN-EC2.yaml) to create three EC2 instances: https://console.aws.amazon.com/cloudformation/home?region=us-east-1#/stacks/create/template

## Task #3: Create an IAM user and configure three environment variables
Get the value from your AWS console.
```
export AWS_ACCESS_KEY=YOUR_AWS_ACCESS_KEY
export AWS_SECRET_KEY=YOUR_AWS_SECRET_KEY
export ANSIBLE_HOST_KEY_CHECKING=False
```

## Task #4: Run hello world to validate the setup of the EC2 instances
```
cd DevOpsLectureNotesV4/WK7_CM_Ansible_Packer/ansible-playbooks
ansible all -i inventory.aws_ec2.yaml -u ubuntu -m ping
```

about inventory: https://docs.ansible.com/ansible/latest/user_guide/intro_inventory.html

about ping module: https://docs.ansible.com/ansible/latest/collections/ansible/builtin/ping_module.html

about aws-ec2 plugin: https://docs.ansible.com/ansible/2.6/plugins/inventory/aws_ec2.html

## Task #5: Install a docker role from galaxy to your local laptop
```
ansible-galaxy install geerlingguy.docker
ansible-galaxy install geerlingguy.pip
```
More about galaxy: https://docs.ansible.com/ansible/latest/galaxy/user_guide.html

Alternatively, you can use `ansible-galaxy install -r requirements.yaml`

## Task #6: Read playbook under ansible-playbook-plain and execute
Read `site.yaml` under `ansible-playbook-plain`.
```
ansible-playbook -i ../inventory.aws_ec2.yaml site.yaml
```
More about play book: https://docs.ansible.com/ansible/latest/user_guide/playbooks.html

apt_repository module: https://docs.ansible.com/ansible/latest/collections/ansible/builtin/apt_repository_module.html

conditions: https://docs.ansible.com/ansible/latest/user_guide/playbooks_conditionals.html

variables: https://docs.ansible.com/ansible/latest/user_guide/playbooks_variables.html

special variables: https://docs.ansible.com/ansible/latest/reference_appendices/special_variables.html


## Task #7: Read playbook under ansible-playbook-roles and execute
Read `site.yaml` under `ansible-playbook-roles`.
```
ansible-playbook -i ../inventory.aws_ec2.yaml site.yaml
```

roles: https://docs.ansible.com/ansible/latest/user_guide/playbooks_reuse_roles.html

## Task #8: Install more software via Ansible and play around
Install sth like Jenkins, Kubernetes, wordpress, nginx etc.

# Homework

Learn packer and run packer examples in the `packer` folder.
