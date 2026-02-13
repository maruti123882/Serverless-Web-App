pipeline {
    agent any

    stages {

        stage('Clone Repo') {
            steps {
                git 'https://github.com/yourrepo/project.git'
            }
        }

        stage('Build Backend') {
            steps {
                sh 'mvn clean package -DskipTests'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t your-dockerhub/backend:latest -f docker/Dockerfile .'
            }
        }

        stage('Push Image') {
            steps {
                sh 'docker push your-dockerhub/backend:latest'
            }
        }

        stage('Deploy K8s') {
            steps {
                sh 'kubectl apply -f k8s/'
            }
        }
    }
}
