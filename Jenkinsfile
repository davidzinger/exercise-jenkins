pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'ls'
                sh 'docker build -t flask_app .'
                echo 'Building.........'
            }
        }
        stage('release') {
            steps {
                docker.withRegistry("public.ecr.aws/y0a7i3y8/dave_reg", "ecr:us-east-1:D1") {
                docker.image("flask_app").push()
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
