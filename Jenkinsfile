pipeline {
    agent { docker { image 'python:3.5.1' } }
    stages {
        stage('build') {
            steps {
                sh 'python --version'
            }
        }
        stage('test') {
            steps {
                echo 'Testing..'
                sh 'sleep 10'
                echo 'Test finished'
            }
        }
        stage('deploy') {
            steps {
                echo 'Deploying'
                sh 'sleep 5'
                echo 'Done!'
            }
        }
    }
}
