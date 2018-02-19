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
    stage('Deploy App') {
      steps {
        sh 'sh \'./ds/appdeploy.sh\''
      }
    }
    stage('Deploy Ingress') {
      steps {
        sh 'sh \'./ds/ingressdeploy.sh\''
      }
    }
  }
}