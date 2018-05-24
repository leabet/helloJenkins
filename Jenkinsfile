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
		if ("master".equalsIgnoreCase(BRANCH_NAME)) {

           sh "export"
} else {
	echo "Branch is not master. no show"
}
        }
    }
    catch(err) {
        echo "One of the pipeline stages failed with the following error: ${err}"
    }
}

