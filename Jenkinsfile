pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                bat 'build.bat'
            }
        }

        stage('Test') {
            steps {
                bat 'test.bat'
            }
        }

        stage('Deploy to Staging') {
            steps {
                bat 'deploy.bat staging'
            }
        }

        stage('Deploy to Production') {
            when {
                branch 'main'
            }
            steps {
                bat 'deploy.bat production'
            }
        }
    }

    post {
        failure {
            echo 'Pipeline failed!'
        }
    }
}
