pipeline {
  agent any
  stages {
    stage('Run Robot Tests') {
      steps {
        sh 'robot tests/' // ou 'robot .' si tous les fichiers sont à la racine
      }
    }
  }
  post {
    always {
      robot outputPath: 'output', passThreshold: 80.0, unstableThreshold: 50.0
    }
  }
}
