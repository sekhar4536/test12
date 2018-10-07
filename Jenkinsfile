node {
	    stage('SCM Checkout'){
             git 'https://github.com/sekhar4536/test12'
            }
		stage("compile stage"){
		def mvnHome = tool name: 'maven3.5.4', type: 'maven'
		sh "${mvnHome}/bin/mvn package"
		}
		stage('email'){
        echo"HI"		
		}
	}
