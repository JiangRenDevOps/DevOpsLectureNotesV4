# Description

This is a brief guideline on setting up CI/CD for our CMS project.

# Tasks

## Task #1: Run a Jenkins in Kubernetes Cluster

## Task #2: Add a service account to jenkins
So Jenkins will have permission to create pods dynamically as Jenkins slave.
```
kubectl apply -f https://raw.githubusercontent.com/jenkinsci/kubernetes-plugin/master/src/main/kubernetes/service-account.yml
```

Add "serviceAccountName: jenkins" to Jenkins in workloads.
![Alt text](images/CI_CD_CMS_01.png?raw=true)

## Task #3: Install Kubernetes plugin and configure Kubernetes in Jenkins
Replace default setting as following value:
- Jenkins URL: http://[your_jenkins_ip_address] e.g. http://35.227.228.139
- Jenkins tunnel: jenkins-1-jenkins-agents-connector:50000
- Pod label key: jenkins
- Pod label value: slave

![Alt text](images/CI_CD_CMS_02.png?raw=true)


https://github.com/jenkinsci/kubernetes-plugin/blob/master/README.md

Test your connection with a new test pipeline
```
podTemplate {
    node(POD_LABEL) {
        stage('Run shell') {
            sh 'echo hello world'
        }
    }
}
```
![Alt text](images/CI_CD_CMS_05.png?raw=true)
![Alt text](images/CI_CD_CMS_04.png?raw=true)
You should see test pipeline running in a newly generated pod
![Alt text](images/CI_CD_CMS_06.png?raw=true)


## Task #4: Configure Credentials for Jenkins pipeline
Sample project: https://github.com/JiangRenDevOps/jrcms




## Task #5: Create Elastic Beanstalk environments in AWS
Create beanstock environments in aws:
Start with creating a new application. 
![Alt text](images/newapp.png?raw=true)

Then move to create a new environment for the application. Choose Web sever env:
![Alt text](images/createmoreenv.png?raw=true)

You want to make sure the application name matches the application you just created (* If you dont have an application created already or input a different name, AWS will try to create an new application with the name you provide)
![Alt text](images/reuseappname.png?raw=true)

Choose docker as platform and create
![Alt text](images/create.png?raw=true)

You will first see it in pending state, but shortly it will be ready. 
![Alt text](images/createapp.png?raw=true)
You can click on URL to see a sample application, later after the deployment, the sample app will be replaced by our CMS application
![Alt text](images/clicklinktosee.png?raw=true)

Repeat this until you have three more environments created which are test/staging/prod (feel free to name the differently to suit your need)
![Alt text](images/repeat.png?raw=true)

The name you are using here should match environments defined in Jenkinsfile.  

Now that we have all the environments created, we need to create a user with permission in IAM so our pipeline could have access to application/environments we just created
Look for IAM in search box
![Alt text](images/iam.png?raw=true)

Click add user, give it a name of your choice and select programatic access
![Alt text](images/iam2.png?raw=true)
Select Admin Access from attach existing policies
![Alt text](images/iam3.png?raw=true)

Leave the tags open
![Alt text](images/iam4.png?raw=true)
Click create user and save the access key & scret access key
![Alt text](images/iam5.png?raw=true)
![Alt text](images/iam6.png?raw=true)

Now go to jenkins, similar to what we did in for docker hub username&password, create a creadential for the user we just created, use Access key ID as username and secret access key as password
![Alt text](images/iam7.png?raw=true)

You will need to update the `Jenkinsfile` and files under `deployment` folder accordingly. In Jenkinsfile, you want to make sure that the test url matches the url of your beanstalk app / credentials matches / replace the prefix for the app you are deploying with your application name, e.g. in my case I'd update all occurances of "jrcms-" to "jrcmssean-"
![Alt text](images/name.png?raw=true)

![Alt text](images/testurl.png?raw=true)
![Alt text](images/prefix.png?raw=true)


## Task #6: Setup Github integration

![Alt text](images/jenkins-blueocean-pipeline-02.png?raw=true)
![Alt text](images/CI_CD_CMS_15.png?raw=true)

## Task #7: Play around
Make changes and test the auto deployment
