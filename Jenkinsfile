pipeline {
    agent none

    stages {
        stage('Build') {
            agent { label 'agent1' }
            steps {
                echo "🔨 Starting Build Stage"
                bat 'build.bat'
            }
        }

        stage('Test') {
            agent { label 'agent1' }
            steps {
                echo "🧪 Running Tests"
                bat 'test.bat'  // If this fails, pipeline stops
            }
        }

        stage('Deploy to Staging') {
            agent { label 'agent1' }
            steps {
                echo "🚀 Deploying to Staging"
                bat 'deploy.bat staging'
            }
        }

        stage('Deploy to Production') {
            agent { label 'agent1' }
            when {
                branch 'main'
            }
            steps {
                echo "🚀 Deploying to Production (main branch only)"
                bat 'deploy.bat production'
            }
        }
    }

    post {
        success {
            echo "✅ Pipeline completed successfully!"
        }
        failure {
            echo "❌ Pipeline failed. Please check the logs and fix the issue."
        }
        always {
            echo "📝 Pipeline execution completed (success or failure)."
        }
    }
}
