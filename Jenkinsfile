node { 
    checkout scm 
	echo "Running ${env.BUILD_ID} on ${env.JENKINS_URL}"

    stage('Build') { 
	 echo 'Building' 
	 bat 'nuget Restore Transcendental.sln'
	 bat '\"c:\\program files (x86)\\msbuild\\12.0\\bin\\msbuild\" Transcendental.sln'
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