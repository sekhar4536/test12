node {
	   	 stage('SCM Checkout'){
             	git 'https://github.com/sekhar4536/test12'
            	}
		stage("compile "){
		def mvnHome = tool name: 'maven3.5.4', type: 'maven'
		sh "${mvnHome}/bin/mvn compile"
		}
		stage("test"){
		def mvnHome = tool name: 'maven3.5.4', type: 'maven'
		sh "${mvnHome}/bin/mvn test"
		}
		stage("Package"){
		def mvnHome = tool name: 'maven3.5.4', type: 'maven'
		sh "${mvnHome}/bin/mvn package"
		}
		sshagent(credentials: ['tomcat-dev']) {
			sh 'scp -o StrictHostKeyChecking=no target/*.war ec2-user@172.31.38.235: /opt/tomcat7/webapps'
		}

}
