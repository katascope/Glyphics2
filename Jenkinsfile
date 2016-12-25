node { 
    checkout scm 
	echo "Running ${env.BUILD_ID} on ${env.JENKINS_URL}"

    stage('Build') { 
	 echo 'Building' 
	 bat 'msbuild Transcendental.sln'
    }
    stage('Test') {
	 echo 'echo Testing : disabled'
    }
    stage('Deploy') {
        if (currentBuild.result == 'SUCCESS') {
            bat 'echo Build good, deploying'
        }
    }
}