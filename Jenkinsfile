pipeline {
    agent {
        docker {
            image 'node:18' // This image has node + npm preinstalled
        }
    }
    stages {
        stage('Clone Repo') {
            steps {
                git 'https://github.com/Ekjot-kaur479/React-TodoList.git'
            }
        }
        stage('Install Dependencies') {
            steps {
                sh 'npm install'
            }
        }
        stage('Build Project') {
            steps {
                sh 'npm run build'
            }
        }
        // Optional Docker image creation
        // Add more stages if you want to containerize the app
    }
}

