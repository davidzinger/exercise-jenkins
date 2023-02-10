pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                git 'https://github.com/davidzinger/exercise-jenkins.git'
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
