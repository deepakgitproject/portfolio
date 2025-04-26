pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/deepakgitproject/portfolio.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    sh 'docker build -t myportfolio:latest .'
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
                    sh 'docker run -d -p 2020:80 --name portfolio-container myportfolio:latest'
                }
            }
        }
    }

    post {
        always {
            echo '✅ Deployment finished.'
        }
    }
}
