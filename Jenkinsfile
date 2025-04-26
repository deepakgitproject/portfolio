pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                // Make sure to use the correct GitHub URL for your repository
                git branch: 'main', url: 'https://github.com/deepakgitproject/portfolio.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    sh 'docker build -t deepak3917/myp1:latest .'
                }
            }
        }

        stage('Stop Old Container') {
            steps {
                script {
                    sh 'docker stop portfolio-container || true'
                    sh 'docker rm portfolio-container || true'
                }
            }
        }

        stage('Run New Container') {
            steps {
                script {
                    sh 'docker run -d -p 2020:80 --name portfolio-container deepak3917/myp1:latest'
                }
            }
        }
    }

    post {
        always {
            echo '✅ Portfolio deployment finished.'
        }
    }
}
