node{
   stage('SCM Checkout'){
   		// Cloning the test12 project code to the git hub repo
     	git 'https://github.com/sekhar4536/test12'
    		}
   stage("Compile "){
 		//declaring the variables called maven tool configuration
		def mvnHome = tool name: 'maven3.5.4', type: 'maven'
		sh "${mvnHome}/bin/mvn compile"
			}
    stage("Test"){
 		//declaring the variables called maven tool configuration
		def mvnHome = tool name: 'maven3.5.4', type: 'maven'
		sh "${mvnHome}/bin/mvn test"
			}
    stage("Package"){
    	//declaring the variables called maven tool configuration
		def mvnHome = tool name: 'maven3.5.4', type: 'maven'
		sh "${mvnHome}/bin/mvn package"
			}
    stage('Deploy to tomcat'){
  		// Calling the script for copying war content in to tomcat server
    	sh "/opt/copy1"
   			}
	}
