pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/Ekjot-kaur479/React-TodoList.git'
            }
        }

        stage('Remove Old Container & Image') {
            steps {
                script {
                    sh '''
                    docker stop react-app-container || true
                    docker rm react-app-container || true
                    docker rmi todo-list || true
                    '''
                }
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    sh '''
                    docker build -t todo-list .
                    '''
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    sh '''
                    docker run -d -p 3000:3000 --name react-app-container todo-list
                    '''
                }
            }
        }
    }

    post {
        success {
            echo '✅ React app is now built and running at http://<your-server-ip>:3000'
        }
        failure {
            echo '❌ Build or deployment failed.'
        }
    }
}

