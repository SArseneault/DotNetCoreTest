pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building Docker Image..'
		checkout scm
                sh "./BuildScripts/build-image.sh"

		echo 'Pushing Image to Registry/Repo'
		sh '''
		  ./BuildScripts/push-image.sh
		'''
		echo 'Creating Application Deployment'
		sh '''
                  ./kube manifest files/init.sh
                '''
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
