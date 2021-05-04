# DevOps Workstation Initial Setup

This documentation will go through the setup for some common tools that you will use throughout this course.

# AWS

## Create your own AWS free account
Create your own personal AWS account:
https://aws.amazon.com/premiumsupport/knowledge-center/create-and-activate-aws-account/

## AWS Cost Control
Get notified when your bill goes out of control:
https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/monitor_estimated_charges_with_cloudwatch.html

## Install AWS CLI
https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html

## AWS Local Authentication (CLI access)
1. Create an IAM User
  - Login to your AWS Console using your root credentials
  - Follow [this](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_users_create.html#id_users_create_console) and create an IAM user for yourself. Give yourself **AdministratorAccess**
  - Don't forget to save the Access Key ID and Secret Access Key after you create the IAM user.
2. Configure your credentials in your command line tool (On Mac it's Terminal) using “aws --configure”
  - You can check your ~/.aws/credentials and ~/.aws/config files and make sure they are correctly setup
3. Authenticate to your IAM user on your command line. Below are commands to type on your terminal:
  - `export AWS_REGION=ap-southeast-2` (or other regions you want to authenticate into)
  - `export AWS_DEFAULT_REGION=ap-southeast-2` (need to match with the one above)
  - `export AWS_PROFILE=default` (profile name need to match the one in your ~/.aws/config file)
5. Verify your authentication using “aws s3 ls”. If you don't see any error message, you’re good to go!

AWS looks for above environment variables in your shell to match your identity. Therefore, you need to do above steps (3 export commands) every time you opens a new terminal tab to authenticate with AWS. To make this easier, you can put these commands in your ~/.bashrc or ~/.zshrc config file.

# Common tools installation
## Git
https://www.atlassian.com/git/tutorials/install-git

## Docker
https://docs.docker.com/get-docker/

## Python Local Environment Setup
Install virtualenv
https://pypi.org/project/virtualenv/

Activate your virtualenv
https://gist.github.com/pandafulmanda/730a9355e088a9970b18275cb9eadef3

Add the environment activate command to your shell init file e.g. ~/.bashrc or ~/.zshrc

## ZSH
https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH
