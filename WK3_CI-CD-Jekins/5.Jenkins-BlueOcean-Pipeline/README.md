# Description

This is to demo how to build Jenkins pipeline using Blue Ocean interface

About Blue Ocean:
Blue Ocean is a new user experience for Jenkins based on a personalizable, modern design that allows users to graphically create, visualize and diagnose Continuous Delivery (CD) Pipelines. For more info please refer to https://www.jenkins.io/projects/blueocean/about/

# Pre-requisite

- Github Account
- Jenkins Server

# Task

## Step #1: In Github, fork a repo with Jenkinsfile under your account
Fork https://github.com/JiangRenDevOps/hello-Jenkinsfile into your account.
![Alt text](images/jenkins-blueocean-pipeline-01.png?raw=true)


## Step #2: Enter Blue Ocean view by clicking the "Open Blue Ocean" button on Jenkins homepage.

![Alt text](images/jenkins-blueocean-pipeline-02.png?raw=true)


## Step #3: Create pipeline from your github repository
![Alt text](images/jenkins-blueocean-pipeline-03.png?raw=true)
1. Click "New Pipeline" on the top right corner.
Choose "Github" as the source.
2. Generate a token by clicking "Create an access token here" and provide the token to Jenkins.
3. Choose your account as the organization this repository belongs to.
4. Choose the repository you just forked into your account.
5. Create pipeline.



## Step #4: View your pipeline deployment process
![Alt text](images/jenkins-blueocean-pipeline-04.png?raw=true)
You should be able to see all Build, Test and Deploy stage output.


## Step #5: Update pipeline configuration
![Alt text](images/jenkins-blueocean-pipeline-05.png?raw=true)
In "configure", update the "Scan repository triggers" to every minute.


## Step #6: Create another branch in your forked repository
Create a "develop" branch in your repository, make some changes to the Jenkinsfile and push the branch.


## Step #7: You should see Jenkins pipeline automatically trigger the build for develop branch shortly after you push it
![Alt text](images/jenkins-blueocean-pipeline-06.png?raw=true)

## Step #8: Update your Jenkins file and observe how that changes your pipeline deployment behaviour.
Refer to these Jenkinsfile examples to update your config.
https://github.com/JiangRenDevOps/DevOpsLectureNotesV3/tree/master/WK3_CI-CD-Jekins/Pipeline-examples
