pipeline {
    agent any

    stages {
        stage('Installer dépendances') {
            steps {
                powershell 'python --version'
                powershell 'python -m pip install --upgrade pip'
                powershell 'pip install -r requirements.txt'
            }
        }

        stage('Exécuter les tests Robot Framework') {
            steps {
                powershell 'robot --outputdir results tests/'
            }
        }
    }

    post {
        always {
            // Archive les fichiers (optionnel mais utile)
            archiveArtifacts artifacts: 'results/**', fingerprint: true

            // Active le rapport Robot Framework dans Jenkins
            robot outputPath: 'results/output.xml',
                  reportFileName: 'report.html',
                  logFileName: 'log.html'
        }
    }
}