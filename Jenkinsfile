pipeline {
    agent {
        label 'AGENT-1'
    }
    options {
        timeout(time: 30, unit: 'MINUTES')
        disableConcurrentBuilds()
        ansiColor('xterm')
    }
    stages {
        stage('read the version') {
            steps  {
                def packageJson = readJSON file: 'package.json'
                def appVersion = packageJson.version
                echo "application version: $appVersion"
            }
        }
        stage('Install Dependencies') {
            steps {
                sh """
                npm install
                echo "application version: $appVersion
                ls -ltr
                """
            }
        }
    }
    post {
        always { 
            echo 'I will always say Hello again!'
            deleteDir()
        }
        success {
            echo 'I will run when pipeline is Success'
        }
        failure {
            echo 'I will run when pipeline is Failure'
        }
    }
}