pipeline {
    agent any
    stages {
        stage('Run Robot Tests') {
            steps {
             
                sh 'robot tests/Lab8.robot'
            }
        }
    }
    post {
        always {
          
            archiveArtifacts artifacts: 'output.xml, report.html, log.html', fingerprint: true
        }
    }
}
