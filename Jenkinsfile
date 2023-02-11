pipeline {
    agent any
    options {
        skipStagesAfterUnstable()
    }
    stages {

        stage('Build') { 
            steps { 
                script{
                 app = docker.build("dave_private")
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
                    app.push("${env.BUILD_NUMBER}")
                    app.push("latest")
                    }
                }
            }
        }

        stage('login client - server delivery'){
         steps{
            sshagent(credentials:['client_server']){
               sh 'ssh  -o StrictHostKeyChecking=no  ubuntu@3.231.148.231 uptime "whoami"'
          }
        echo "success lgoin"
         }
       }
   
    }
}
