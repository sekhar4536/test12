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
		sshagent(credentials: ['ec2user']) {
			sh 'scp -o StrictHostKeyChecking=no target/*.war ec2-user@52.78.193.12:/opt/tomcat7/webapps'
			}

		/* stage('Deploy to tomcat'){
   		sshagent(['tomcat']) {
 		  sh 'sudo scp -o StrictHostKeyChecking=no target/*.war ec2-user@52.78.193.12:/opt/tomcat7/webapps'
			}
		} */
	}
