pipeline {
    agent any
    environment {
           registry = "public.ecr.aws/y0a7i3y8/dave_reg"
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
                
                 
                 sh 'docker push public.ecr.aws/y0a7i3y8/dave_reg:latest'
            
                 echo 'release..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
