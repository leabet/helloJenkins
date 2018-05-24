#!/usr/bin/env groovy

node() {
    try {
        stage ('checkout scm') {
            checkout scm
        }

        stage ('clean up') {
            sh "make clean"
        }

        stage ('create file') {
            sh "make"
        }
    
        stage ('export env') {
           sh "export"
        }
    }
    catch(err) {
        echo "One of the pipeline stages failed with the following error: ${err}"
    }
}

