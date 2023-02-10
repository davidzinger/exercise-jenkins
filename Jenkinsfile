pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
              
                sh 'docker build -t flask_app /home/ubuntu/my_images/'
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
