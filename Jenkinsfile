pipeline {
    agent any

    environment {
        IMAGE_NAME = 'deepak3917/myp1:latest'
    }

    stages {
        stage('Clone Repository') {
            steps {
                git branch: 'main', url: 'https://github.com/deepakgitproject/portfolio.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                bat 'docker build -t deepak3917/myp1:latest .'
            }
        }

    }

    post {
        always {
            cleanWs()
        }
    }
}
