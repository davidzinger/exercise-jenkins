pipeline {
    agent any
        
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
                        withCredentials([[
                            $class:'AmazonWebServicesCredentialsBinding',
                            CredentialsID: 'D1',
                            accessKeyVariable: 'AWS_ACCESS_KEY_ID',
                            secretKeyVariable: 'AWS_SECRET_ACCESS_KEY']]){
  
                            
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

