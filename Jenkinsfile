pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh 'sh \'./build-image.sh\''
      }
    }
    stage('Push to Registry') {
      steps {
        sh 'sh \'./bs/push-image.sh\''
      }
    }
    stage('Deploy') {
      steps {
        sh 'sh \'./kube manifest files/init.sh\''
      }
    }
  }
}