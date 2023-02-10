pipeline {
    agent any
        environment {
            AWS_ACCESS_KEY_ID = credentials('aws-access-key')
            AWS_SECRET_ACCESS_KEY = credentials('aws-secret-key')
        }
            stages {
                stage('Build') {
                    steps {
                        sh 'ls'
                        sh 'docker build -t dave_reg .'
                        echo 'Building.........'
                    }
                }
                stage('release') {
                    steps {
  
                        withCredentials([string(credentialsId: 'D1', variable: 'AWS_ACCESS_KEY_ID'),
                                string(credentialsId: 'D1', variable: 'AWS_SECRET_ACCESS_KEY')]) {
                            sh 'docker push public.ecr.aws/y0a7i3y8/dave_reg:latest'
                    
                            echo 'release..'
                        }
                        }
                    }
                
                stage('Deploy') {
                    steps {
                        echo 'Deploying....'
                    }
                }
            }

}

