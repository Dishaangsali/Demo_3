pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
               bat 'docker build -t calibrated_circle .'
            }
        }
        stage('Run') {
            steps {
                bat 'docker run -t calibrated_circle'
            }
        }
        stage('Authentication') {
            steps {
                bat 'docker tag calibrated_circle dishaangsali/calibrated_circle:%BUILD_ID%'
            }
        }
        stage('Push') {
            steps {
                bat 'docker push dishaangsali/calibrated_circle:%BUILD_ID%'
            }
        }
    }
}
