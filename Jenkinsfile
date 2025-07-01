pipeline {
    agent any

    stages {
        stage('Clone Repo') {
            steps {
                git 'https://github.com/dhruv11savani/AutoResume-Builder.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t resume-builder .'
            }
        }

        stage('Run LaTeX Builder') {
            steps {
                sh 'docker run --rm -v $PWD:/app resume-builder'
            }
        }

        stage('Archive PDF') {
            steps {
                archiveArtifacts artifacts: '*.pdf', fingerprint: true
            }
        }
    }
}
