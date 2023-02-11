pipeline {
    agent any
    options {
        skipStagesAfterUnstable()
    }
    stages {

        stage('Build') { 
            steps { 
                script{
                 app = docker.build("my-app")
                }
            }
        }
        stage('Test'){
            steps {
                 echo 'Empty'
            }
        }
        stage('Deploy') {
            steps {
                script{
                        docker.withRegistry('https://333082661382.dkr.ecr.us-east-1.amazonaws.com/dave_private', 'ecr:us-east-1:D1') {
                    
                    app.push("latest")
                    }
                }
            }
        }
    }
}

