pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/your-username/Lab8_5.git'
            }
        }
        stage('Run Robot Tests') {
            steps {
                sh 'robot tests/Lab8.robot'
            }
        }
    }

    post {
        always {
            publishRobotResults(
                outputPath: '.',
                outputFileName: 'output.xml',
                reportFileName: 'report.html',
                logFileName: 'log.html',
                otherFiles: 'selenium-screenshot-*.png'
            )
        }
    }
}
