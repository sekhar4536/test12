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
		stage('Deploy to tomcat'){
   			sh 'sudo cp -r /var/lib/jenkins/workspace/Pipeline1/target/test12.war /opt/tomcat7/webapps'
			
		}
	}
