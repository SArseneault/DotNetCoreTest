pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building Docker Image..'
		checkout scm
                sh "chmod +x build-image.sh"
		sh "build-image.sh"
		echo 'Pushing Image to Registry/Repo'
		sh "push-image.sh"
		echo 'Creating Application Deployment'
		sh "/kube manifest files/init.sh"
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
