# Description

This is a brief guideline on setting up CI/CD for our CMS project.

# Tasks

## Task #1: Signup for dockerhub 
Remember your username and password you will need those later when you doing the push.

![Alt text](images/Screen1.png?raw=true)

## Task #2: Create a private repository

![Alt text](images/screen2.png?raw=true)

you should see once created
![Alt text](images/created.png?raw=true)


## Task #3: Add following logic to allow Jenkinsfile to push docker image to your repository

You want to config usernameVariable/passwordVariable in jenkins
![Alt text](images/pipeline.png?raw=true)

``` 
stage('Push Docker image') {
    withCredentials([usernamePassword(credentialsId: 'docker-hub', usernameVariable: 'USER', passwordVariable: 'PASSWD')]) {
    container('docker') {
        sh "docker login --username ${USER} --password ${PASSWD}"
        sh "docker push ${image}"
    }
    }
}
```
More info about credentials-binding plugin
https://www.jenkins.io/doc/pipeline/steps/credentials-binding/

## Task #4 Configure Jekins with dockerhub credential
In Credentials management, add a global username password entry for dockerhub.
![Alt text](images/credential1.png?raw=true)
![Alt text](images/credential2.png?raw=true)
![Alt text](images/credential3.png?raw=true)
![Alt text](images/credential4.png?raw=true)



## Task #5: Trigger the build and you should see dockerhub showing the image has been pushed 
![Alt text](images/pushed.png?raw=true)
