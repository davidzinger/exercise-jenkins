pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'ls'
                sh 'docker build -t flask_app /home/ubuntu/my_images/Dockerfile'
                echo 'Building.........'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
