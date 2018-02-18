pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building Docker Image..'
		checkout scm
		sh $WORKSPACE/build-image.sh -label $JOB_NAME -$BUILD_NUMBER -java_home $JAVA_HOME

		echo 'Pushing Image to Registry/Repo'
		sh '''
		  ./bs/push-image.sh
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
