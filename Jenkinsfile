node { 
    checkout scm 
	echo "Running ${env.BUILD_ID} on ${env.JENKINS_URL}"

    stage('Build') { 
	 echo 'Building' 
    }
    stage('Test') {
	 echo 'echo Testing'
    }
    stage('Deploy') {
        if (currentBuild.result == 'SUCCESS') {
            bat 'echo Build good, deploying'
        }
    }
}