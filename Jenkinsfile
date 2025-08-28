pipeline{
    agent any
    tools{
        maven 'maven_3.9.11'
    }
    stages{
        stage('Build Maven'){
            steps{
                checkout scmGit(branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/Nick-tikhe/jenkinscicdpracticeproject']])
                bat 'mvn clean install'
            }
        }
        stage('Build docker image'){
            steps{
                script{
                    bat 'docker build -t nikhiltikhe90/jenkinspracticeproject .'
                }
            }
        }
        stage('Push image to Hub'){
            steps{
                script{
                   withCredentials([string(credentialsId: 'jenkins-dockerhubpwd', variable: 'jenkinsdockerhubpwd')]) {
                    bat """
                echo %jenkinsdockerhubpwd% | docker login -u nikhiltikhe90 --password-stdin
                """
 }
                    bat 'docker push nikhiltikhe90/jenkinspracticeproject'
                }
            }
        }
    }
}