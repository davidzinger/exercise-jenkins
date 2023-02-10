pipeline {
    agent any
    environment {
           registry = "333082661382.dkr.ecr.us-east-1.amazonaws.com/dave_reg"
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
                
                 sh 'aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin acct_id.dkr.ecr.us-east-2.amazonaws.com'
                 sh 'docker push 333082661382.dkr.ecr.us-east-1.amazonaws.com/dave_reg:latest'
}
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
